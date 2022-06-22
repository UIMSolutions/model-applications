module models.applications.foundations.crm.services.resources.expansion;

@safe:
import models.applications;

// 
class DAPLResourceExpansion : DOOPEntity {
  this() { super();
    this.addValues([
      "resourceGroupExpansionId": UUIDAttribute, // Unique identifier of the resource expansion record."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "itemId": UUIDAttribute, // Item that is part of expansion of resource identified by object ID. One object ID can have many item IDs."]),
      "methodCode": StringAttribute, // Code for retrieval method."]),
      "methodCode_display": StringAttribute, // 
      "modifiedOn": StringAttribute, // Date and time when the record was last modified."]),
      "objectId": UUIDAttribute, // Object being expanded."]),
    ]);
  }

  override string entityClass() { return "aplResourceExpansion"; }
  override string entityClasses() { return "aplResourceExpansions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLResourceExpansion() { return new DAPLResourceExpansion; } 
auto APLResourceExpansion(Json json) { return new DAPLResourceExpansion(json); } 

version(test_library) {
  unittest {
    
    assert(APLResourceExpansion);
  
  auto entity = APLResourceExpansion;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}