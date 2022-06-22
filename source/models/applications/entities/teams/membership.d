module models.applications.teams.membership;

@safe:
import models.applications;

// TeamMembership that is attached to one or more objects, including other notes.
  class DTeamMembershipEntity : DOOPEntity {
  mixin(EntityThis!("TeamMembershipEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "systemUserId":UUIDAttribute, // 
        "teamId":UUIDAttribute, // 
      ])
      .registerPath("applications_teammemberships");
  }
}
mixin(EntityCalls!("TeamMembershipEntity"));

version(test_library) {
  unittest {
    
    assert(TeamMembershipEntity);
  
  auto entity = TeamMembershipEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}