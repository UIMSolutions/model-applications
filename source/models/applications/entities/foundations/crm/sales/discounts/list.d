module models.applications.foundations.crm.sales.discounts.list;

@safe:
import models.applications;

// Type of discount specified as either a percentage or an amount.
class DAPLDiscountList : DOOPEntity {
  this() { super();
    this.addValues([
      "discountTypeId": StringAttribute, // Unique identifier of the discount list."]), 
      "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the discounttype."]), 
      "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the discounttype."]), 
      "organizationId": StringAttribute, // Unique identifier for the organization"]), 
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]), 
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]), 
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]), 
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]), 
      "isAmountType": BooleanAttribute, // Information about whether the discount list amounts are specified as monetary amounts or percentages."]), 
      "transactionCurrencyId": StringAttribute, // Unique identifier of the currency associated with the discount type."]), 
    ])
    .addValues([
      StateCodeAttribute, // Status of the discount list.
      StatusCodeAttribute // Reason for the status of the discount list.
    ]);    
  }

  override string entityClass() { return "aplDiscountList"; }
  override string entityClasses() { return "aplDiscountLists"; }

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
auto APLDiscountList() { return new DAPLDiscountList; } 
auto APLDiscountList(Json json) { return new DAPLDiscountList(json); } 

version(test_library) {
  unittest {
    
    assert(APLDiscountList);
  
  auto entity = APLDiscountList;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}