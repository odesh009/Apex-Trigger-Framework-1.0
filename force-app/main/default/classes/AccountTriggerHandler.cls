/**
* @author Om Deshmukh
* @date 16/04/2020
* @description This class handles all the account trigger event.
* Inherit every trigger handler from TriggerHandlerBase virtual class and override the releavant trigger event method.
* As this is virtual class, you need not to define all the methods from TriggerHandlerBase class.
* Make sure your method is defined with correct signature.
*/
public with sharing class AccountTriggerHandler extends TriggerHandlerBase{
    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description beforeInsert method to handle beforeInsert trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void beforeInsert(TriggerContext context){
        System.debug('Inside beforeInsert ');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description beforeUpdate method to handle beforeUpdate trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void beforeUpdate(TriggerContext context){
        System.debug('Inside beforeUpdate ');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description beforeDelete method to handle beforeDelete trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void beforeDelete(TriggerContext context){
        System.debug('Inside beforeDelete ');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description afterInsert method to handle afterInsert trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void afterInsert(TriggerContext context){
        System.debug('Inside afterInsert ');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description afterUpdate method to handle afterUpdate trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void afterUpdate(TriggerContext context){
        System.debug('Inside afterUpdate');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description afterDelete method to handle afterDelete trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void afterDelete(TriggerContext context){
        System.debug('Inside afterDelete ');
    }

    /** 
    * @author Om Deshmukh
    * @date 16/04/2020
    * @description afterUnDelete method to handle afterUnDelete trigger event.
    * @param TriggerContext TriggerContext instance.
    */
    public override void afterUnDelete(TriggerContext context){
        System.debug('Inside afterUnDelete');
    }
}