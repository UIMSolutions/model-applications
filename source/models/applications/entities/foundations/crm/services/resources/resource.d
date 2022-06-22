module models.applications.foundations.crm.services.resources.resource;

@safe:
import models.applications;

// 
class DAPLResource : DOOPEntity {
  this() { super();
    this.addValues([
      "resourceId": UserIdAttribute, // Unique identifier of the resource."]),
      "businessUnitId": UserIdAttribute, // Business Unit Id"]),
      "importSequenceNumber": UserIdAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": UserIdAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": UserIdAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": UserIdAttribute, // Time zone code that was in use when the record was created."]),
      "calendarId": UUIDAttribute, // Unique identifier of the calendar for the resource."]),
      "displayInServiceViews": UserIdAttribute, // For internal use only."]),
      "isDisabled": BooleanAttribute, // Information about whether the resource is enabled."]),
      "objectTypeCode": UserIdAttribute, // Type of entity with which the resource is associated."]),
      "organizationId": UserIdAttribute, // Unique identifier of the organization with which the resource is associated."]),
      "siteId": UserIdAttribute, // Unique identifier of the site at which the resource is located."]),
      "entityImageId": UserIdAttribute, // 
    ]);
  }

  override string entityClass() { return "aplResource"; }
  override string entityClasses() { return "aplResources"; }

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
auto APLResource() { return new DAPLResource; } 
auto APLResource(Json json) { return new DAPLResource(json); } 

version(test_library) {
  unittest {
    
    assert(APLResource);
  
  auto entity = APLResource;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}