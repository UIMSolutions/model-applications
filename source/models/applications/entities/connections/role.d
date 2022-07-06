module models.applications.connections.role;

@safe:
import models.applications;

// Role describing a relationship between a two records.
class DConnectionRoleEntity : DOOPEntity {
  mixin(EntityThis!("ConnectionRoleEntity"));
    
  override void initialize() {
    super.initialize;

    this
      .addValues([
        StateCodeAttribute, // Status of the connection role.
        StatusCodeAttribute // Reason for the status of the connection role.
      ])
      .addValues([
        "connectionRoleId": UUIDAttribute, // Unique identifier of the connection role.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "category": StringAttribute, // Categories for connection roles.
        "category_display": StringAttribute, // 
        "organizationId": UUIDAttribute, // Unique identifier of the organization that this connection role belongs to.
        "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
        "componentState": StringAttribute, // State of the component.
        "componentState_display": StringAttribute, // 
        "overwriteTime": TimeAttribute, // Date and time when the record was last overwritten.
        "connectionRoleIdUnique": StringAttribute, // Unique identifier of the published or unpublished connection role record.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the relationship role.
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the relationship role.
        "isManaged": BooleanAttribute, // Indicates whether the solution component is part of a managed solution.
        "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized.
        "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced.
      ])
      .registerPath("applications_connections.roles");
  }
}
mixin(EntityCalls!("ConnectionRoleEntity")); 

version(test_library) {
  unittest {
    assert(ConnectionRoleEntity);
  
    auto entity = ConnectionRoleEntity;
  }
}
