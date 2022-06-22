module models.applications.foundations.crm.projects.service_automation.invoices.frequency;

@safe:
import models.applications;

// InvoiceFrequency of a user in the hierarchy
class DAPLInvoiceFrequency : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "daysOfRun": StringAttribute, // Describes how the run days per period interval are setup. As weekdays (Monday, Tuesday...) or day of period (1st, 2nd…)"]),
      "daysOfRun_display": StringAttribute, // 
      "period": StringAttribute, // Select the period used for the setup of invoice frequency: supported values are Monthly, Weekly or Bi Weekly."]),
      "period_display": StringAttribute, // 
      "runsPerMonth": StringAttribute, // Select the number of times invoicing should run in a period."]),
      "runsPerMonth_display": StringAttribute, // 
    ])
    .addValues([
      StateCodeAttribute, // Status of the Invoice Frequency
      StatusCodeAttribute // Reason for the status of the Invoice Frequency
    ]);      
  }

  override string entityClass() { return "aplInvoiceFrequency"; }
  override string entityClasses() { return "aplInvoiceFrequencies"; }

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
auto APLInvoiceFrequency() { return new DAPLInvoiceFrequency; } 
auto APLInvoiceFrequency(Json json) { return new DAPLInvoiceFrequency(json); } 

version(test_library) {
  unittest {
    
    assert(APLInvoiceFrequency);

  auto entity = APLInvoiceFrequency;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}