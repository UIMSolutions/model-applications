module models.applications.connections.connection;

@safe:
import uim.entities;

/* static this() {
  jsonToEntity["applications.connections.connection"] = (Json json) => APLConnection(json); }
version(test_library) {
  unittest {
    
    auto entity = jsonToEntity["applications.connections.connection"](Json.emptyObject); }} */

// Role describing a relationship between a two records.
class DAPLConnection : DOOPEntity {
  mixin(EntityThis!("APLConnection"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "connectionRoleId": UUIDAttribute, // Unique identifier of the connection role."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "category": StringAttribute, // Categories for connection roles."]),
        "category_display": StringAttribute, // 
        "organizationId": UUIDAttribute, // Unique identifier of the organization that this connection role belongs to."]),
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution."]),
        "componentState": StringAttribute, // State of the component."]),
        "componentState_display": StringAttribute, // 
        "overwriteTime": TimeAttribute, // Date and time when the record was last overwritten."]),
        "connectionRoleIdUnique": StringAttribute, // Unique identifier of the published or unpublished connection role record."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the relationship role."]),
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the relationship role."]),
        "isManaged": BooleanAttribute, // Indicates whether the solution component is part of a managed solution."]),
        "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized."]),
        "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced."]),
      ])
      .addValues([
        StateCodeAttribute, // Status of the connection role.
        StatusCodeAttribute // Reason for the status of the connection role.
      ])
      .registerPath("applications_connections");
  }
}
mixin(EntityCalls!("APLConnection"));

version(test_library) {
  unittest {
    
    assert(APLConnection);
  
  auto entity = APLConnection;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}