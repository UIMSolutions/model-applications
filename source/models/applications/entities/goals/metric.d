module models.applications.goals.metric;

@safe:
import uim.entities;

static this() {
  createEntities[DAPLGoalMetric.namespace] = (Json json) => APLGoalMetric(json); 
  createEntities["aplGoalMetric"] = (Json json) => APLGoalMetric(json); 
  createEntities["goalMetric"] = (Json json) => APLGoalMetric(json); 
}

// GoalMetric that is attached to one or more objects, including other notes.
class DAPLGoalMetric : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier of the organization."]),
      "stateCode": StateCodeAttribute, // Status of the goal metric."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the goal metric."]),
      "statusCode_display": StringAttribute, // 
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "amountDataType": StringAttribute, // Data type of the amount."]),
      "amountDataType_display": StringAttribute, // 
      "isAmount": BooleanAttribute, // Information that indicates whether the metric type is Count or Amount."]),
      "isStretchTracked": BooleanAttribute, // Indicates whether the goal metric tracks stretch targets."]),
    ]);
  }

  override string entityClass() { return "aplGoalMetric"; }
  override string entityClasses() { return "aplGoalMetrics"; }

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
auto APLGoalMetric() { return new DAPLGoalMetric; } 
auto APLGoalMetric(Json json) { return new DAPLGoalMetric(json); } 

version(test_library) {
  unittest {
    
    assert(APLGoalMetric);
  
  auto entity = APLGoalMetric;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}