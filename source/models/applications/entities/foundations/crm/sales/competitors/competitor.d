module models.applications.foundations.crm.sales.competitors.competitor;

@safe:
import models.applications;

// Business competing for the sale represented by a lead or opportunity.
class DAPLCompetitor : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "address1AddressId": UUIDAttribute, // Unique identifier for address 1."]),
      "address1AddressTypeCode": StringAttribute, // Select the primary address type."]),
      "address1AddressTypeCode_display": StringAttribute, // 
      "address1City": StringAttribute, // Type the city for the primary address."]),
      "address1Country": StringAttribute, // Type the country or region for the primary address."]),
      "address1Composite": StringAttribute, // Shows the complete primary address."]),
      "address1County": StringAttribute, // Type the county for the primary address."]),
      "address1Fax": StringAttribute, // Type the fax number associated with the primary address."]),
      "address1Latitude": StringAttribute, // Type the latitude value for the primary address for use in mapping and other applications."]),
      "address1Line1": StringAttribute, // Type the first line of the primary address."]),
      "address1Line2": StringAttribute, // Type the second line of the primary address."]),
      "address1Line3": StringAttribute, // Type the third line of the primary address."]),
      "address1Longitude": StringAttribute, // Type the longitude value for the primary address for use in mapping and other applications."]),
      "address1Name": StringAttribute, // Type a descriptive name for the primary address, such as Corporate Headquarters."]),
      "address1PostalCode": StringAttribute, // Type the ZIP Code or postal code for the primary address."]),
      "address1PostOfficeBox": StringAttribute, // Type the post office box number of the primary address."]),
      "address1ShippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
      "address1ShippingMethodCode_display": StringAttribute, //  
      "address1StateOrProvince": StringAttribute, // Type the state or province of the primary address."]),
      "address1Telephone1": StringAttribute, // Type the main phone number associated with the primary address."]),
      "address1Telephone2": StringAttribute, // Type a second phone number associated with the primary address."]),
      "address1Telephone3": StringAttribute, // Type a third phone number associated with the primary address."]),
      "address1UPSZone": StringAttribute, // Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
      "address1UTCOffset": StringAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
      "address2AddressId": UUIDAttribute, // Unique identifier for address 2."]),
      "address2AddressTypeCode": StringAttribute, // Select the secondary address type."]),
      "address2AddressTypeCode_display": StringAttribute, // 
      "address2City": StringAttribute, // Type the city for the secondary address."]),
      "address2Composite": StringAttribute, // Shows the complete secondary address."]),
      "address2Country": StringAttribute, // Type the country or region for the secondary address."]),
      "address2County": StringAttribute, // Type the county for the secondary address."]),
      "address2Fax": StringAttribute, // Type the fax number associated with the secondary address."]),
      "address2Latitude": StringAttribute, // Type the latitude value for the secondary address for use in mapping and other applications."]),
      "address2Line1": StringAttribute, // Type the first line of the secondary address."]),
      "address2Line2": StringAttribute, // Type the second line of the secondary address."]),
      "address2Line3": StringAttribute, // Type the third line of the secondary address."]),
      "address2Longitude": StringAttribute, // Type the longitude value for the secondary address for use in mapping and other applications."]),
      "address2Name": StringAttribute, // Type a descriptive name for the secondary address, such as Corporate Headquarters."]),
      "address2PostalCode": StringAttribute, // Type the ZIP Code or postal code for the secondary address."]),
      "address2PostOfficeBox": StringAttribute, // Type the post office box number of the secondary address."]),
      "address2ShippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
      "address2ShippingMethodCode_display": StringAttribute, //  
      "address2StateOrProvince": StringAttribute, // Type the state or province of the secondary address."]),
      "address2Telephone1": StringAttribute, // Type the main phone number associated with the secondary address."]),
      "address2Telephone2": StringAttribute, // Type a second phone number associated with the secondary address."]),
      "address2Telephone3": StringAttribute, // Type a third phone number associated with the secondary address."]),
      "address2UPSZone": StringAttribute, // Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly , if shipped by UPS."]),
      "address2UTCOffset": StringAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
      "keyProductCode": IntegerAttribute, // Type the competitor's primary product, service, or specialty."]),
      "opportunities": StringAttribute, // Type notes or other information about the competitive opportunities or selling points you can make."]),
      "overview": StringAttribute, // Type notes or other information about the competitor's business, such as location, revenue, or distribution channel."]),
      "referenceInfoUrl": UrlAttribute, // Type the URL for the website used to obtain reference information about the competitor."]),
      "reportedRevenue": StringAttribute, // Type the amount of revenue reported in the competitor's annual report or other source."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "reportedRevenueBase": StringAttribute, // Value of the Reported Revenue in base currency."]),
      "reportingQuarter": StringAttribute, // Type the quarter number during which the competitor's reported revenue was recorded or announced for use in reporting and analysis."]),
      "reportingYear": StringAttribute, // Type the fiscal year during which the competitor's reported revenue was announced for use in reporting and analysis."]),
      "stockExchange": StringAttribute, // Type the stock exchange at which the competitor is listed to track their stock and financial performance of the company."]),
      "strengths": StringAttribute, // Type notes or other information about the competitor's strengths, such as top-selling products and targeted industries or markets."]),
      "threats": StringAttribute, // Type notes or other information about the competitor's threats to your organization when you sell to the same prospect or customer."]),
      "tickerSymbol": StringAttribute, // Type the stock exchange symbol for the competitor to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money."]),
      "weaknesses": StringAttribute, // Type notes or other information about the competitor's weaknesses or areas in which your organization outperforms the competitor."]),
      "webSiteUrl": UrlAttribute, // Type the website URL for the competitor."]), 
      "winPercentage": PercentageAttribute, // Type the percentage of your organization's lost opportunities that are won by the competitor to identify your strongest competitors."]),
      "entityImageId": UUIDAttribute, // 
      "yomiName": StringAttribute, // Type the phonetic spelling of the competitor's name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications."]),
    ]);
  }

  override string entityClass() { return "aplCompetitor"; }
  override string entityClasses() { return "aplCompetitors"; }

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
auto APLCompetitor() { return new DAPLCompetitor; } 
auto APLCompetitor(Json json) { return new DAPLCompetitor(json); } 

version(test_library) {
  unittest {
    
    assert(APLCompetitor);

  auto entity = APLCompetitor;
  
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}