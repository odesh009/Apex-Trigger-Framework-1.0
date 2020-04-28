/**
 * @author Om Deshmukh
 * @date 16/04/2020
 * @description This class creates a hendler class and fire the trigger event. Handlers are automatically created using Type API hence handler registration is not required.
 */
public with sharing class TriggerFramework {
    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description fires trigger event
	* @param Schema.sObjectType Object type to process (SObject.sObjectType)
	*/
    public static void executeTrigger(Schema.SObjectType soType){
        try{
            TriggerContext context = new TriggerContext(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap,
                Trigger.isInsert, Trigger.isUpdate, Trigger.isDelete, Trigger.isUnDelete, Trigger.isAfter, Trigger.isBefore, Trigger.isExecuting); 
            
            ITriggerHandler handler = getTriggerHandler(soType);

            if(Trigger.isBefore){
                if(Trigger.isInsert) handler.beforeInsert(context);
                if(Trigger.isUpdate) handler.beforeUpdate(context);
                if(Trigger.isDelete) handler.beforeDelete(context);
            }else if(Trigger.isAfter){
                if(Trigger.isInsert) handler.afterInsert(context);
                if(Trigger.isUpdate) handler.afterUpdate(context);
                if(Trigger.isDelete) handler.afterDelete(context);
                if(Trigger.isUnDelete) handler.afterUnDelete(context);
            }
        }catch(Exception ex){
            System.debug('Exception :'+ex.getMessage());
        }
    }

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description Gets the appropriate handler based on the SObject. It constructs the instance of the handler
	*				dynamically using the Type API. The name of the handler has to follow this format:
	*				<ObjectName>TriggerHandler. For e.g. for the Test__c object, the handler has to be named
	*				as TestTriggerHandler.
	* @param Schema.sObjectType Object type to process (SObject.sObjectType)
	*/
    private static ITriggerHandler getTriggerHandler(Schema.SObjectType soType){
        String objectName = soType.getDescribe().getName();
        String handlerClassName = null;

        if(objectName.toLowerCase().endsWith('__c')){
            Integer index = objectName.toLowerCase().indexOf('__c');
            handlerClassName = objectName.toLowerCase().substring(0,index)+'TriggerHandler';
        }else{
            handlerClassName = objectName + 'TriggerHandler';
        }

        Type helperType = Type.forName(handlerClassName);
        ITriggerHandler handlerClass = (helperType == null) ? null : (ITriggerHandler) helperType.newInstance();
        return handlerClass;
    }
}