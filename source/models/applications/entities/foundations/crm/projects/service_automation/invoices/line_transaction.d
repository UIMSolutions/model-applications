module models.applications.foundations.crm.projects.service_automation.invoices.line_transaction;
@safe:
import models.applications;

// Transactions that are associated to an invoice line.
class DAPLInvoiceLineTransaction : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "invoiceLineTransactionId": UUIDAttribute, // Shows the entity instances."]),
      "stateCode": StateCodeAttribute, // Status of the Invoice Line Detail"]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the Invoice Line Detail"]),
      "statusCode_display": StringAttribute, // 
      "accountCustomer": StringAttribute, // Select the customer who this invoice will be sent to."]),
      "accountingDate": DateAttribute, // 
      "accountVendor": StringAttribute, // 
      "amount": StringAttribute, // Enter the amount on the transaction."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the entity."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "amountBase": StringAttribute, // Value of the Amount in base currency."]),
      "amountMethod": StringAttribute, // Select the name of the amount calculation method."]),
      "amountMethod_display": StringAttribute, // 
      "basisAmount": StringAttribute, // 
      "basisAmountBase": StringAttribute, // Value of the Basis Amount in base currency."]),
      "basisPrice": StringAttribute, // 
      "basisPriceBase": StringAttribute, // Value of the Basis Price in base currency."]),
      "basisQuantity": StringAttribute, // 
      "billingType": StringAttribute, // Select whether this transaction will be charged to the customer or not. Only chargeable transactions will add to the invoice total"]),
      "billingType_display": StringAttribute, // 
      "bookableResource": StringAttribute, // Shows the resource."]),
      "contactCustomer": StringAttribute, // Select the customer who this invoice will be sent to."]),
      "contactVendor": StringAttribute, // 
      "contractingUnit": StringAttribute, // Select the organizational unit in charge of the related contract."]),
      "correction": StringAttribute, // Indicates if this transaction is correcting a previous transaction."]),
      "customerType": StringAttribute, // Select whether the customer was a account or a contact"]),
      "customerType_display": StringAttribute, // 
      "documentDate": DateAttribute, // Enter the date on which this invoice line detail was sent to the customer"]),
      "endDateTime": DatetimeAttribute, // Date of invoiced transaction"]),
      "exchangeRateDate": DateAttribute, // 
      "externalDescription": StringAttribute, // The external description of the invoice line detail"]),
      "invoice": StringAttribute, // The invoice to which this invoice line detail belongs."]),
      "invoiceLine": StringAttribute, // Deprecated) Shows the invoice line that this invoice line transaction is associated to."]),
      "invoiceLineId": UUIDAttribute, // Unique identifier for Invoice Line associated with Invoice Line Detail."]),
      "originalInvoiceLineDetail": StringAttribute, // The original transaction that is being corrected if this is a correction transaction."]),
      "percent": StringAttribute, // Relevant when amount calculation method on the invoice line transaction is 'Multiply basis amount by percent'"]),
      "previousAmount": StringAttribute, // Amount that was previously invoiced if this is a correction."]),
      "previousamountBase": StringAttribute, // Value of the Previous Amount in base currency."]),
      "price": StringAttribute, // Enter the price of the transaction."]),
      "priceBase": StringAttribute, // Value of the Price in base currency."]),
      "priceList": StringAttribute, // Select the price list used for defaulting price on this transaction."]),
      "product": StringAttribute, // Select the product on this invoice line transaction."]),
      "project": StringAttribute, // Select the name of the project on which this transaction was created."]),
      "quantity": StringAttribute, // Enter the quantity of the transaction."]),
      "resourceCategory": StringAttribute, // Select the role that the user resource who logged this transaction worked as."]),
      "resourceOrganizationalUnitId": UUIDAttribute, // Select the organizational unit at the time the entry was registered of the resource who performed the work."]),
      "salesContract": StringAttribute, // Select the name of the project contract that this invoice belongs to."]),
      "salesContractLine": StringAttribute, // Deprecated) Shows the ID of the project contract line for this invoice line"]),
      "salesContractLineId": UUIDAttribute, // Unique identifier for Order Line associated with Invoice Line Detail."]),
      "startDateTime": DatetimeAttribute, // Enter the start date of the transaction."]),
      "task": StringAttribute, // Select the name of the project task for which this transaction was created."]),
      "transactionCategory": StringAttribute, // Select the category of the transaction."]),
      "transactionClassification": StringAttribute, // Transaction classification of the invoice line"]),
      "transactionClassification_display": StringAttribute, // 
      "transactionTypeCode": StringAttribute, // Transaction type of the invoice line"]),
      "transactionTypeCode_display": StringAttribute, // 
      "unit": StringAttribute, // Select the unit of the transaction quantity."]),
      "unitSchedule": StringAttribute, // Select the unit group of the invoice line transaction."]),
      "vendorType": StringAttribute, // 
      "vendorType_display": StringAttribute, // 
      "invoiceAmount": StringAttribute, // Amount to be invoiced. This is the line amount less the previously invoiced amount when this is a correction."]),
      "invoiceamountBase": StringAttribute, // Value of the Invoice Amount in base currency."]),
    ]);
  }

  override string entityClass() { return "aplInvoiceLineTransaction"; }
  override string entityClasses() { return "aplInvoiceLineTransactions"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLInvoiceLineTransaction() { return new DAPLInvoiceLineTransaction; } 
auto APLInvoiceLineTransaction(Json json) { return new DAPLInvoiceLineTransaction(json); } 

version(test_library) {
  unittest {
    
    assert(APLInvoiceLineTransaction);

  auto entity = APLInvoiceLineTransaction;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}