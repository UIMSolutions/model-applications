module models.applications.values.owner;

@safe:
import models.applications;

class DOwnerValue : DElementValue {
  mixin(ValueThis!("OwnerValue", "DElementValue"));  

  override void initialize() {
    super.initialize;

    this
      .addValues([ // individual values
        "id": UUIDAttribute, // The id of owner, either User or Team.
        "type": StringAttribute, // The type of owner, either User or Team.
        "businessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "userId": UserIdAttribute, // Unique identifier of the user that owns the activity.
        "teamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
      ]);
    }
}
mixin(ValueCalls!("OwnerValue", "DElementValue"));  

version(test_models_applications) {
  unittest {  
    assert(OwnerValue);

    writeln(OwnerValue);
}}
