module models.applications.currency;

@safe:
import uim.entities;

// Currency in which a financial transaction is carried out.
class DAPLCurrency : DOOPEntity {
  mixin(EntityThis!("APLCurrency"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Unique identifier of the delegate user who created the transactioncurrency."]),
        ModifiedOnBehalfByAttribute, // Unique identifier of the delegate user who last modified the transactioncurrency."]),
      ])
      .addValues([
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the transaction currency."]),
        "exchangeRate": StringAttribute, // Exchange rate between the transaction currency and the base currency."]),
        "currencySymbol": StringAttribute, // Symbol for the transaction currency."]),
        "currencyName": StringAttribute, // Name of the transaction currency."]),
        "ISOCurrencyCode": IntegerAttribute, // ISO currency code for the transaction currency."]),
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the transaction currency."]),
        "currencyPrecisiOn": DatetimeAttribute, // Number of decimal places that can be used for currency."]),
        "entityImageId": UUIDAttribute, // For internal use only."]),
      ])
      .addValues([
        StateCodeAttribute, // Status of the transaction currency.
        StatusCodeAttribute // Reason for the status of the transaction currency.
      ])        
      .registerPath("apl_currencies");
  }
}
mixin(EntityCalls!("APLCurrency"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLCurrency);

  auto entity = APLCurrency;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}