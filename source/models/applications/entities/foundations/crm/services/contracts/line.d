module models.applications.foundations.crm.services.contracts.line;

@safe:
import models.applications;

// Line item in a contract that specifies the type of service a customer is entitled to.
class DAPLContractLine : DOOPEntity {
  mixin(EntityThis!("APLContractLine"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id
        CustomerIdAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.
        AccountIdAttribute, // Unique identifier of the account with which the contract is associated.
        ContactIdAttribute, // Unique identifier for the contact associated with the contract line.
        StateCodeAttribute, // Shows whether the contract line is existing, renewed, canceled, or expired. You can't edit a contract line after it is saved, regardless of the status.
        StatusCodeAttribute, //Select the contract line's status.
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": StringAttribute, // Unique identifier of the user that owns the activity.
        "owningTeamId": StringAttribute, // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "contractDetailId": UUIDAttribute, // Unique identifier of the contract line.
        "title": StringAttribute, // Type a title or name that describes the contract line.
        "activeOn": StringAttribute, // Enter the date when the contract line becomes active.
        "allotmentsOverage": StringAttribute, // Shows the number of minutes over the Total Allotments field that have been spent on resolved cases related to the contract line.
        "allotmentsRemaining": StringAttribute, // Shows the number of cases or minutes remaining, based on the resolved cases logged to the contract line.
        "allotmentsUsed": StringAttribute, // Shows the number of cases or minutes used in the resolved cases on the contract line.
        "contractId": UUIDAttribute, // Unique identifier of the contract associated with the contract line.
        "contractStateCode": StringAttribute, // Status of the contract.
        "contractStateCode_display": StringAttribute, // 
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact.
        "discount": StringAttribute, // Type the discount amount for the contract line to deduct any negotiated or other savings from the net amount due.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "discountBase": StringAttribute, // Value of the Discount in base currency.
        "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Total Price, for use in calculating the net amount due for the contract line.
        "effectivityCalendar": StringAttribute, // Days of the week and times for which the contract line item is effective.
        "expiresOn": StringAttribute, // Enter the date when the contract line expires. The date is automatically filled with the contract date, but you can change it if required.
        "initialQuantity": StringAttribute, // Type the number of units of the specified product or service that are eligible for support on the contract line.
        "lineItemOrder": StringAttribute, // Type the line item number for the contract line to easily identify the contract line and make sure it's listed in the correct order in the parent contract.
        "net": StringAttribute, // Shows the total charge to the customer for the contract line, calculated as the Total Price minus any discounts.
        "netBase": StringAttribute, // Value of the Net in base currency.
        "price": StringAttribute, // Type the total service charge for the contract line before any discounts are credited.
        "priceBase": StringAttribute, // Value of the Total Price in base currency.
        "productId": UUIDAttribute, // Choose the product that is eligible for services on the contract line.
        "productSerialNumber": NumberAttribute, // Type the serial number for the product that is eligible for services on the contract line.
        "rate": StringAttribute, // Shows the cost per case or minute, calculated by dividing the Total Price value by the total number of cases or minutes allocated to the contract line.
        "rateBase": StringAttribute, // Value of the Rate in base currency.
        "serviceAddress": StringAttribute, // Choose the address for the customer account or contact where the services are provided.
        "serviceContractUnitsCode": StringAttribute, // Select the unit type allotted in the contract line, such as cases or minutes, to determine the level of support.
        "serviceContractUnitsCode_display": StringAttribute, // 
        "totalAllotments": StringAttribute, // Type the total number of minutes or cases allowed for the contract line.
        "uoMId": UUIDAttribute, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen.
        "uoMScheduleId": UUIDAttribute, // Unique identifier of the unit group associated with the contract line.
      ])
      .registerPath("applications_letters");
  }
}
mixin(EntityCalls!("DAPLContractLine"));

version(test_library) {
  unittest {
    
    assert(APLContractLine);
  
  auto entity = APLContractLine;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}