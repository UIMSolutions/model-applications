module models.applications.foundations.crm.solutions.customers.segments.segment;

@safe:
import models.applications;

// Defines a group of members that exhibit common traits.
class DAPLSegment : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": StringAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "lastEvaluationDate": DateAttribute, // Latest date when segments are evaluated/refreshed."]),
      "memberCount": StringAttribute, // Count of customers/members associated with a segment."]),
      "queryDefinition": StringAttribute, // Segment definition including groups, filters, conditions etc."]),
      "segmentId": StringAttribute, // Unique identifier for entity instances"]),
      "segmentType": StringAttribute, // Segment type."]),
      "segmentType_display": StringAttribute, // 
      "version": StringAttribute, // Denotes latest version of a segment for manual tracking."]),
      "stateCode": StateCodeAttribute, // Status of the Segment"]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the Segment"]),
      "statusCode_display": StringAttribute, // 
    ]);
  }

  override string entityClass() { return "aplSegment"; }
  override string entityClasses() { return "aplSegments"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLSegment"));
}
auto APLSegment() { return new DAPLSegment; } 
auto APLSegment(Json json) { return new DAPLSegment(json); } 

version(test_library) {
  unittest {
    
    assert(APLSegment);

  auto entity = APLSegment;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}