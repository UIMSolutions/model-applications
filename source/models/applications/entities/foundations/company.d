module models.applications.foundations.company;

@safe:
import models.applications;

// Task performed, or to be performed, by a user. An activity is any action for which an entry can be made on a calendar.
class DAPLCompany : DOOPEntity {
  this() { super();
    .addValues([
      OwnerIdAttribute, // Owner Id"]),
      StateCodeAttribute, // Status of the Company
      StatusCodeAttribute // Reason for the status of the Company
    ]);
    this.addValues([
      "createdOnBehalfId": UUIDAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfId": UUIDAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
      "companyId": UUIDAttribute, // Unique identifier of the company."]),
      "companyType": StringAttribute, // The type of company."]),
      "companyType_display": StringAttribute, // 
    ])
  }

  override string entityClass() { return "aplCompany"; }
  override string entityClasses() { return "aplCompanies"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLCompany() { return new DAPLCompany; } 
auto APLCompany(Json json) { return new DAPLCompany(json); } 

version(test_library) {
  unittest {
    
    assert(APLCompany);

  auto entity = APLCompany;  
  // writeln("test.", entity.entityClasses, " -> ", entity.toJson);
  // // auto repository = OOPRepository("mongodb://127.0.0.1:27018/?safe=true").connect;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); 

  repository.cleanupConnections; */
  }
}