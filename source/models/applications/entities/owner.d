module models.applications.owner;

@safe:
import uim.entities;

// Group of undeleted system users and undeleted teams. Owners can be used to control access to specific objects.
class DAPLOwner : DOOPEntity {
  mixin(EntityThis!("APLOwner"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        OwnerIdAttribute, // Unique identifier for the Owner: systemuserid or teamid."]),
      ])
      .addValues([
        "ownerIdType": StringAttribute, // 
        "yomiName": StringAttribute, // Pronunciation of the name of the owner, written in phonetic hiragana or katakana characters."]),
      ])
      .registerPath("applications_owners");
  }
}
mixin(EntityCalls!("APLOwner"));

version(test_library) {
  unittest {
    
    assert(APLOwner);
  
  auto entity = APLOwner;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}