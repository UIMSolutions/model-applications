module models.applications.activities;

@safe:
import uim.entities;

/* public import models.applications.activities.activity;

public import models.applications.activities.party; */

unittest {
  auto activity = createEntities["aplActivity"](Json.emptyObject);
  writeln(activity.toJson);
  auto party = createEntities["aplActivityParty"](Json.emptyObject);
  writeln(party.toJson);
}
