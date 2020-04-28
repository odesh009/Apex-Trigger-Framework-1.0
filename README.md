 Apex Trigger Framework 1.0 is simple trigger framework built on force.com platform. The business solution implemented using this framework needs to follow certain rules. As the number of claases written for this framework are very less so it reduce the complexity of framework. This framework is suitable for small application only. 

For applications with complex business logic and large no of classes, use “Apex Trigger Framework 2.0” : Coming Soon

Source Code is availbale on GitHub, you can download it or deploy it from here. 

Components

TriggerFramework : This is the main class of trigger framework. This class creates an instance of the trigger helper for object which will come from caller i.e trigger and invoke the appropriate event handler method (‘beforeInsert’, ‘afterInsert’.. etc). This class also provides a mechanism which automatically finds the correct handler class for the object that the trigger is asociated. 

This mechanism uses a Type API to construct the instance of the handler. This helps o avoid modifying TriggerFramework class everytime. The name of the handler has to follow this format: <ObjectName>TriggerHandler. For e.g. for the Test__c object, the handler has to be named as TestTriggerHandler. This also promotes the idea of ‘One trigger to rule them all’.

ITriggerHandler : ITriggerHandler interface contains all the event handler method that needs to be implemented.

TriggerHandlerBase : The TriggerHandlerBase class implements the interface ITriggerHandler, provides virtual implementations of the interface methods, but the developers need to provide their own handler class, which is derived from either the virtual base class for each object that they want to have this framework applied. Ideally, the developers want to inherit from the TriggerHandlerBase, as it not only provides the virtual methods – giving the flexibility to the developers to implement the event handlers only that they are interested in their handler class, but also the ability to provide reentrant feature to their logic.

TriggerContext : TriggerContext class encapsulates the trigger parameters that the force.com platform provides during the invocation of a trigger. It is simply a convenience, as it avoid repeating all those parameters typing again and again in the event handler methods.

<Object>TriggerHandler : Handlers contains the actual business logic that needs to be executed for a particular trigger event. Ideally, every trigger event will have an associated handler method to handle the logic for that particular event. This increases the number of methods to be written, but this provides a very clean organization and structure to the code base. This approach proves itself – as in the long run, the maintenance and enhancements are much easier as even a new developer would know exactly where to make the changes as far as he/she gets an understanding on how this framework works.
