RuleSet: ProducerShallPutInNarrative(elementName)
* {elementName} ^extension[$obligation][+].extension[code].valueCode = #SHALL:in-narrative
* {elementName} ^extension[$obligation][=].extension[actor].valueCanonical = Canonical(CareCommunicationProducerActor)

Instance: CareCommunicationProducerActor
InstanceOf: ActorDefinition
* name = "Producer of FHIR resources"
* title = "Producer of FHIR resources"
* status = #active
* type = #system
* description = "The system that creates FHIR resources"
