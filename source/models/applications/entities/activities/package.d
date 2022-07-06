module models.applications.entities.activities;

@safe:
import models.applications;

/* public import models.applications.entities.activities.activity;

public import models.applications.entities.activities.party; */

unittest {
  auto activity = createEntities["aplActivity"](Json.emptyObject);
  writeln(activity.toJson);
  auto party = createEntities["aplActivityParty"](Json.emptyObject);
  writeln(party.toJson);
}
