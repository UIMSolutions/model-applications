module models.applications.foundations.crm.solutions.customers.segments.membership;

@safe:
import models.applications;

// Members participating in a given segment.
class DAPLSegmentMembership : DOOPEntity {
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
      "customerProfileId": StringAttribute, // Customer Profile Id"]),
      "lastEvaluationDate": DateAttribute, // Latest date when a segment memberships is evaluated/refreshed."]),
      "segmentId": StringAttribute, // Segment identifiers customers are associated with."]),
      "segmentMembershipId": StringAttribute, // Unique identifier for entity instances"]),
      "version": StringAttribute, // Denotes latest version of the customer segment membership for manual tracking."]),
      "stateCode": StateCodeAttribute, // Status of the Segment Membership"]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the Segment Membership"]),
      "statusCode_display": StringAttribute, // 
    ]);
  }

  override string entityClass() { return "aplSegmentMembership"; }
  override string entityClasses() { return "aplSegmentMemberships"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLSegmentMembership"));
}
auto APLSegmentMembership() { return new DAPLSegmentMembership; } 
auto APLSegmentMembership(Json json) { return new DAPLSegmentMembership(json); } 

version(test_library) {
  unittest {
    
    assert(APLSegmentMembership);

  auto entity = APLSegmentMembership;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}