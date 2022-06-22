module models.applications.foundations.crm.sales.competitors.address;

@safe:
import uim.oop;
import uim.entities;

// Additional addresses for a competitor. The first two addresses are stored in the competitor object.
class DAPLCompetitorAddress : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the competitor address."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the competitor address."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "addressNumber": NumberAttribute, // Information about which competitor address is applicable."]),
      "addressTypeCode": StringAttribute, // Type of address for the competitor, such as primary address."]),
      "addressTypeCode_display": StringAttribute, // 
      "city": StringAttribute, // City name in the competitor address."]),
      "composite": StringAttribute, // Shows the complete address."]),
      "country": StringAttribute, // Country/region name in the competitor address."]),
      "county": StringAttribute, // County name in the competitor address."]),
      "fax": StringAttribute, // Fax number for the competitor address."]),
      "latitude": StringAttribute, // Latitude for the competitor address."]),
      "line1": StringAttribute, // First line for entering address information."]),
      "line2": StringAttribute, // Second line for entering address information."]),
      "line3": StringAttribute, // Third line for entering address information."]),
      "longitude": StringAttribute, // Longitude for the address for the competitor."]),
      "parentId": UUIDAttribute, // Unique identifier of the parent object with which the competitor address is associated."]),
      "postalCode": StringAttribute, // ZIP Code or postal code in the competitor address."]),
      "postOfficeBox": StringAttribute, // Post office box number in the competitor address."]),
      "shippingMethodCode": StringAttribute, // Method of shipment for the competitor."]),
      "shippingMethodCode_display": StringAttribute, // 
      "stateOrProvince": StringAttribute, // State or province in the competitor address."]),
      "telephone1": StringAttribute, // First telephone number for the competitor address."]),
      "telephone2": StringAttribute, // Second telephone number for the competitor address."]),
      "telephone3": StringAttribute, // Third telephone number for the competitor address."]),
      "UPSZone": StringAttribute, // United Parcel Service (UPS) zone for the address of the competitor."]),
      "utcOffset": StringAttribute, // utc offset for address 1. This is the difference between local time and standard Coordinated Universal Time."]),
    ]);
  }

  override string entityClass() { return "aplCompetitorAddress"; }
  override string entityClasses() { return "aplCompetitorAddresss"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLCompetitorAddress() { return new DAPLCompetitorAddress; } 
auto APLCompetitorAddress(Json json) { return new DAPLCompetitorAddress(json); } 

version(test_library) {
  unittest {
    
    assert(APLCompetitorAddress);
  
  auto entity = APLCompetitorAddress;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}