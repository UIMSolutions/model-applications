module models.applications.foundations.crm.projects.service_automation.invoices.frequency_detail;

@safe:
import models.applications;

// InvoiceFrequencyDetail of a user in the hierarchy
class DAPLInvoiceFrequencyDetail : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "stateCode": StateCodeAttribute, // Status of the Invoice Frequency Detail"]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the Invoice Frequency Detail"]),
      "statusCode_display": StringAttribute, // 
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "dayOfMonth": StringAttribute, // Specify the day(s) of the month on which invoicing should run"]),
      "dayOfMonth_display": StringAttribute, // 
      "invoiceFrequency": StringAttribute, // Select the invoice frequency."]),
      "occurrenceOfWeekday": StringAttribute, // Specifies which occurrence of a weekday the invoicing job should run if there are multiple occurrences of a weekday in the selected period"]),
      "occurrenceOfWeekday_display": StringAttribute, // 
      "weekday": StringAttribute, // Select the weekday of the invoicing job run."]),
      "weekday_display": StringAttribute, // 
    ]);
  }

  override string entityClass() { return "aplInvoiceFrequencyDetail"; }
  override string entityClasses() { return "aplInvoiceFrequencyDetails"; }

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
auto APLInvoiceFrequencyDetail() { return new DAPLInvoiceFrequencyDetail; } 
auto APLInvoiceFrequencyDetail(Json json) { return new DAPLInvoiceFrequencyDetail(json); } 

version(test_library) {
  unittest {
    
    assert(APLInvoiceFrequencyDetail);

  auto entity = APLInvoiceFrequencyDetail;
  // auto repository = OOPFileRepository("./tests");
 /*/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}