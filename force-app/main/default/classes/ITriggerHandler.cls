/*
* @author Om Deshmukh
* @date 16/04/2020
* @description This interface holds the declarations of all trigger event handlers
*/
public interface ITriggerHandler {
    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr before insert operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void beforeInsert(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr before update operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void beforeUpdate(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr before delete operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void beforeDelete(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr after insert operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void afterInsert(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr after update operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void afterUpdate(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr after delete operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void afterDelete(TriggerContext context);

    /** 
	* @author Om Deshmukh
	* @date 16/04/2020
    * @description Called by the TriggerFramework to triggr after unDelete operations.
    * @param TriggerContext contains the Trigger Context variables
	*/
    void afterUnDelete(TriggerContext context);
}