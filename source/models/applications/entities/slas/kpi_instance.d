module models.applications.slas.kpi_instance;

@safe:
import uim.entities;

// Service level agreement (SLA) key performance indicator (KPI) instance that is tracked for an individual case
class DAPLSLAKpiInstance : DOOPEntity {
  this() { super();
    this
      .addValues([ // fix values
        OwnerIdAttribute,// Owner Id
      ])
      .addValues([ // individual values
      "computedFailureTime": TimeAttribute, // Computed Failure Date and time"]),
      "computedWarningTime": TimeAttribute, // Computed Warning Date and time"]),
      "failureTime": TimeAttribute, // Enter the date and time when the service level agreement (SLA) key performance indicator (KPI) will expire."]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningUserId": UserIdAttribute, // Owning User."]),
      "owningTeamId": TeamIdAttribute, // , // OwningTeam."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Owning Business Unit."]),
      "regarding": StringAttribute, // Unique identifier of the record that this service level agreement (SLA) key performance indicator (KPI) instance is associated with."]),
      "status": StringAttribute, // Reason for the status of the service level agreement (SLA) key performance indicator (KPI) instance. For example, the SLA KPI could be Noncompliant or Succeeded."]),
      "status_display": StringAttribute, // 
      "succeededOn": DatetimeAttribute, // Shows the date and time when the service level agreement (SLA) key performance indicator (KPI) success criteria was met."]),
      "warningTime": TimeAttribute, // Enter the date and time when the service level agreement (SLA) key performance indicator (KPI)will go to a warning state."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // For internal use only."]),
      "createdOnBehalfBy": UserIdAttribute, // For internal use only."]),
      "modifiedOnBehalfBy": UserIdAttribute, // For internal use only."]),
      "warningTimeReached": StringAttribute, // Shows information about whether the case has reached its warning time."]),
      "warningTimeReached_display": StringAttribute, // 
      ])
      .registerPath("apl_slakpiinstances");
  }

  override string entityClass() { return "aplSLAKpiInstance"; }
  override string entityClasses() { return "aplSLAKpiInstances"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLSLAKpiInstance() { return new DAPLSLAKpiInstance; } 
auto APLSLAKpiInstance(Json json) { return new DAPLSLAKpiInstance(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLSLAKpiInstance);
  
  auto entity = APLSLAKpiInstance;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}