module models.applications.connections.role;

@safe:
import uim.entities;

// Role describing a relationship between a two records.
  class DAPLConnectionRole : DOOPEntity {
  this() { super();
    this.addValues([
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
    ]);
  }

  override string entityClass() { return "aplConnectionRole"; }
  override string entityClasses() { return "aplConnectionRoles"; }

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
auto APLConnectionRole() { return new DAPLConnectionRole; } 
auto APLConnectionRole(Json json) { return new DAPLConnectionRole(json); } 

version(test_library) {
  unittest {
    
    assert(APLConnectionRole);
  
  auto entity = APLConnectionRole;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}