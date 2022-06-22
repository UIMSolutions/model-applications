module models.applications.foundations.crm.services.resources.specification;


@safe:
import models.applications;

// Selection rule that allows the scheduling engine to select a number of resources from a pool of resources. The rules can be associated with a service.
class DAPLResourceSpecification : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the resourcespec."]),
      "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the resourcespec."]),
      "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the resource specification is associated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "constraints": StringAttribute, // Additional constraints, specified as expressions, which are used to filter a set of valid resources."]),
      "effortRequired": StringAttribute, // Number that specifies the minimal effort required from resources."]),
      "groupObjectId": UUIDAttribute, // Unique identifier of the scheduling group with which the resource specification is associated."]),
      "objectiveExpression": StringAttribute, // Search strategy to use for the resource specification."]),
      "objectTypeCode": StringAttribute, // Type of entity with which the resource specification is associated."]),
      "organizationId": UUIDAttribute, // Unique identifier of the organization with which the resource specification is associated."]),
      "requiredCount": StringAttribute, // Required number of resources that must be available. Use -1 to indicate all resources."]),
      "sameSite": StringAttribute, // Value that specifies that all valid and available resources must be in the same site."]),
    ]);
  }

  override string entityClass() { return "aplResourceSpecification"; }
  override string entityClasses() { return "aplResourceSpecifications"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLResourceSpecification() { return new DAPLResourceSpecification; } 
auto APLResourceSpecification(Json json) { return new DAPLResourceSpecification(json); } 

version(test_library) {
  unittest {
    
    assert(APLResourceSpecification);
  
  auto entity = APLResourceSpecification;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}