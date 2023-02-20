module models.applications.values.owner;

@safe:
import models.applications;

class DOwnerValue : DElementValue {
  mixin(ValueThis!("OwnerValue", "DOOPElement"));  

  override void initialize() {
    super.initialize(configSettings);

    this
      .value(OwnerElement);
  }
}
mixin(ValueCalls!("OwnerValue", "DOOPElement"));  

version(test_models_applications) {
  unittest {  
    assert(OwnerValue);

    writeln(OwnerValue);
}}
