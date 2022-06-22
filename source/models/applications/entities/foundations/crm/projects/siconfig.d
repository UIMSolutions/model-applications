module models.applications.foundations.crm.projects.siconfig;

@safe:
import models.applications;

// 
class DAPLSiconfig : DOOPEntity {
  this() { super();
    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "siConfigId": UUIDAttribute, // Unique identifier for entity instances"]),
        "version": StringAttribute, // The name of the custom entity."]),
      ])
      .addValues([
        StateCodeAttribute, // Status of the siconfig
        StatusCodeAttribute // Reason for the status of the siconfig
      ]);        
  }

  override string entityClass() { return "aplSiconfig"; }
  override string entityClasses() { return "aplSiconfigs"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLSiconfig() { return new DAPLSiconfig; } 
auto APLSiconfig(Json json) { return new DAPLSiconfig(json); } 

version(test_library) {
  unittest {
    
    assert(APLSiconfig);
  
  auto entity = APLSiconfig;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}