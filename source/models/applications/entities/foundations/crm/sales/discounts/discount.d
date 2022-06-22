module models.applications.foundations.crm.sales.discounts.discount;

@safe:
import models.applications;

// Price reduction made from the list price of a product or service based on the quantity purchased.
class DAPLDiscount : DOOPEntity {
  this() { super();
    this.addValues([
      "discountId": StringAttribute, // nique identifier of the discount."]),
      "createdOnBehalfBy": StringAttribute, // nique identifier of the delegate user who created the discount."]),
      "modifiedOnBehalfBy": StringAttribute, // nique identifier of the delegate user who last modified the discount."]),
      "importSequenceNumber": NumberAttribute, // equence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // ate and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // or internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // ime zone code that was in use when the record was created."]),
      "amount": StringAttribute, // mount of the discount, specified either as a percentage or as a monetary amount."]),
      "transactionCurrencyId": StringAttribute, // hoose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // hows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "amountBase": StringAttribute, // alue of the Amount in base currency."]),
      "discountTypeId": StringAttribute, // nique identifier of the discount list associated with the discount."]),
      "highQuantity": StringAttribute, // pper boundary for the quantity range to which a particular discount can be applied."]),
      "isAmountType": BooleanAttribute, // pecifies whether the discount is specified as a monetary amount or a percentage."]),
      "lowQuantity": StringAttribute, // ower boundary for the quantity range to which a particular discount is applied."]),
      "organizationId": StringAttribute, // nique identifier of the organization associated with the discount."]),
      "percentage": PercentageAttribute, // ercentage discount value."]),
    ])
    .addValues([
      StatusCodeAttribute // Select the discount's status.
    ]);       
  }

  override string entityClass() { return "aplDiscount"; }
  override string entityClasses() { return "aplDiscounts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

}
auto APLDiscount() { return new DAPLDiscount; } 
auto APLDiscount(Json json) { return new DAPLDiscount(json); } 

version(test_library) {
  unittest {
    
    assert(APLDiscount);
  
  auto entity = APLDiscount;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}