/**
* @author Om Deshmukh
* @date 16/04/2020
* @description This class holds the trigger context variables.
*/
public with sharing class TriggerContext{
        public List<SObject> newList {get; private set;}
        public List<SObject> oldList {get; private set;}
        public Map<Id, SObject> newMap {get; private set;}
        public Map<Id, SObject> oldMap {get; private set;}
        public Boolean isInsert {get; private set;}
        public Boolean isUpdate {get; private set;}
        public Boolean isDelete {get; private set;}
        public Boolean isUnDelete {get; private set;}
        public Boolean isAfter {get; private set;}
        public Boolean isBefore {get; private set;}
        public Boolean isExecuting {get; private set;}

        /** 
        * @author Om Deshmukh
        * @date 16/04/2020
        * @description Constructs the TriggerContext object.
        * @param List<SObject> A list of new records.
        * @param List<SObject> A list of old records.
        * @param Map<Id, SObject> A map of new records.
        * @param Map<Id, SObject> A map of old records.
        * @param Boolean A flag to indicate 'isInsert' event.
        * @param Boolean A flag to indicate 'isUpdate' event.
        * @param Boolean A flag to indicate 'isDelete' event.
        * @param Boolean A flag to indicate 'isUnDelete' event.
        * @param Boolean A flag to indicate 'isAfter' event.
        * @param Boolean A flag to indicate 'isBefore' event.
        * @param Boolean A flag to indicate 'isExecuting'.
        */
        public TriggerContext(List<SObject> newList, List<SObject> oldList, Map<Id,SObject> newMap, Map<Id,SObject> oldMap, Boolean isInsert,
                                Boolean isUpdate, Boolean isDelete, Boolean isUnDelete, Boolean isAfter, Boolean isBefore, Boolean isExecuting){
            this.newList = newList;
            this.oldList = oldList;
            this.newMap = newMap;
            this.oldMap = oldMap;
            this.isInsert = isInsert;
            this.isUpdate = isUpdate;
            this.isDelete = isDelete;
            this.isUnDelete = isUnDelete;
            this.isAfter = isAfter;
            this.isBefore = isBefore;
            this.isExecuting = isExecuting;
        }
    }