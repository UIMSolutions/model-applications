module models.applications.slas.sla;

@safe:
import models.applications;

// Contains information about the tracked service-level KPIs for cases that belong to different customers.
class DAPLSLA : DOOPEntity {
  this() { super();
    this.addValues([
      "businessHoursId": UUIDAttribute, // Choose the business hours for calculating SLA item timelines."]),
      "objectTypeCode": IntegerAttribute, //Choose the entity type that the SLA is defined."]),
      "objectTypeCode_display": StringAttribute, // 
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UUIDAttribute, // Unique identifier for the user that owns the record."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "changedAttributeList": StringAttribute, // Type additional information to describe the SLA"]),
      "applicableFrom": StringAttribute, // Select the field that specifies the date and time from which the SLA items will be calculated for the case record. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created."]),
      "isDefault": BooleanAttribute, // Tells whether this SLA is the default one."]),
      "exchangeRate": StringAttribute, // Exchange rate between the currency associated with the SLA record and the base currency."]),
      "transactionCurrencyId": UUIDAttribute, // Unique identifier of the currency associated with the SLA record."]),
      "stateCode": IntegerAttribute, //Shows whether the Service Level Agreement (SLA) is active or inactive."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": IntegerAttribute, //Select the status of the service level agreement (SLA)."]),
      "statusCode_display": StringAttribute, // 
      "solutionId": UUIDAttribute, // Unique identifier of the associated solution."]),
      "componentState": StringAttribute, // For internal use only."]),
      "componentState_display": StringAttribute, // 
      "overwriteTime": TimeAttribute, // For internal use only."]),
      "isManaged": BooleanAttribute, // For internal use only."]),
      "SLAIdUnique": StringAttribute, // For internal use only."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "applicableFromPickList": StringAttribute, // Select the field that specifies the date and time from which the SLA items will be calculated. For example, if you select the Case Created On field, SLA calculation will begin from the time the case is created."]),
      "applicableFromPickList_display": StringAttribute, // 
      "workflowId": UUIDAttribute, // Workflow associated with the SLA."]),
      "allowPauseResume": StringAttribute, // Select whether this SLA will allow pausing and resuming during the time calculation."]),
      "SLAType": StringAttribute, // Select the type of service level agreement (SLA)."]),
      "SLAType_display": StringAttribute, // 
      "createdOnBehalfBy":UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy":UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "primaryEntityOTC": StringAttribute, // Shows the primary entity that the SLA has been created for."]),
    ]);
  }

  override string entityClass() { return "aplSLA"; }
  override string entityClasses() { return "aplSLAs"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLSLA() { return new DAPLSLA; } 
auto APLSLA(Json json) { return new DAPLSLA(json); } 

version(test_library) {
  unittest {
    
    assert(APLSLA);
  
  auto entity = APLSLA;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}