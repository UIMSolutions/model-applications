module models.applications.foundations.crm.projects.service_automation.estimates.estimate;

@safe:
import models.applications;

// Labor, cost, and revenue estimates for a project.
class DAPLEstimate : DOOPEntity {
  mixin(EntityThis!("APLEstimate"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Estimate
        StatusCodeAttribute // Reason for the status of the Estimate
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "estimateId": UUIDAttribute, // Unique identifier for entity instances"]),
        "estimateHeaderType": StringAttribute, // Select the type of estimate."]),
        "estimateHeaderType_display": StringAttribute, // 
        "project": StringAttribute, // Select the name of the project."]),
      ])
      .registerPath("applications_estimates");
  }
}
mixin(EntityCalls!("APLEstimate"));

version(test_library) {
  unittest {
    assert(APLEstimate);

  auto entity = APLEstimate;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}