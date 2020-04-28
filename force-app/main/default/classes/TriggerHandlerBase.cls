/**
* @author Om Deshmukh
* @date 16/04/2020
* @description This class implements the ITriggerHandler. This virtual class avoids implementing all the methods from ITriggerHandler
*/
public virtual class TriggerHandlerBase implements ITriggerHandler{
    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an beforeInsert event. 
	*/
    public virtual void beforeInsert(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an beforeUpdate event. 
	*/
    public virtual void beforeUpdate(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an beforeDelete event. 
	*/
    public virtual void beforeDelete(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an afterInsert event. 
	*/
    public virtual void afterInsert(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an afterUpdate event. 
	*/
    public virtual void afterUpdate(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an afterDelete event. 
	*/
    public virtual void afterDelete(TriggerContext context){}

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
	* @description This method is called prior to execution of an afterUnDelete event. 
	*/
    public virtual void afterUnDelete(TriggerContext context){}
}