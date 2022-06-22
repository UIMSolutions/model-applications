module models.applications.foundations.crm.team_membership;

@safe:
import models.applications;

// TeamMembership that is attached to one or more objects, including other notes.
 /*  class DAPLTeamMembership : DOOPEntity {
  this() { super();
    this.addValues([
      "systemUserId":OOPAttributeUUID"datatype":"UUID", "descriptions":{}}`,
      "teamId":OOPAttributeUUID"datatype":"UUID", "descriptions":{}}`,
    ]);
  }

  override string entityClass() { return "aplTeamMembership"; }
  override string entityClasses() { return "aplTeamMemberships"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLTeamMembership() { return new DAPLTeamMembership; } 
auto APLTeamMembership(Json json) { return new DAPLTeamMembership(json); }  */

version(test_library) {
  unittest {
    
  /* // auto entity = APLTeamMembership;
  // auto repository = OOPFileRepository("./tests");
  repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found"); */
  }
}