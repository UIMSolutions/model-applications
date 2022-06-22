module models.applications.foundations.crm.projects.relationship_insights_unified_config;

@safe:
import models.applications;

// 
class DAPLRelationshipInsightsUnifiedConfig : DOOPEntity {
  mixin(EntityThis!("APLBookableResourceCategoryAssociation"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the msdyn_relationshipinsightsunifiedconfig
        StatusCodeAttribute // Reason for the status of the msdyn_relationshipinsightsunifiedconfig
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
        "relationshipInsightsUnifiedConfigId": UUIDAttribute, // Unique identifier for entity instances"]),
        "newName": StringAttribute, // The name of the custom entity."]),
        "useNewConfigExperience": StringAttribute, // 
      ])
      .registerPath("applications_relationshipinsightsunifiedconfig");
  }
}
mixin(EntityCalls!("APLRelationshipInsightsUnifiedConfig"));

version(test_library) {
  unittest {
    assert(APLRelationshipInsightsUnifiedConfig);
  
  auto entity = APLRelationshipInsightsUnifiedConfig;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}