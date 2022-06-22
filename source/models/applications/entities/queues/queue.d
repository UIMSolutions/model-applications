module models.applications.queues.queue;

@safe:
import models.applications;

// A list of records that require action, such as accounts, activities, and cases.
class DAPLQueue : DOOPEntity {
  this() { super();
    this.addValues([
      "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the queue is associated."]),
      "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the queue."]),
      "emailAddress": StringAttribute, // Email address that is associated with the queue."]),
      "primaryUserId": UserIdAttribute, // Unique identifier of the owner of the queue."]),
      "queueTypeCode": IntegerAttribute, // Type of queue that is automatically assigned when a user or queue is created. The type can be public, private, or work in process."]),
      "queueTypeCode_display": StringAttribute, // 
      "queueSemantics": StringAttribute, // For internal use only."]),
      "ignoreUnsolicitedEmail": StringAttribute, // Information that specifies whether a queue is to ignore unsolicited email (deprecated)."]),
      "isFaxQueue": BooleanAttribute, // Indication of whether a queue is the fax delivery queue."]),
      "emailPassword": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.Password attribute."]),
      "incomingEmailDeliveryMethod": StringAttribute, // Incoming email delivery method for the queue."]),
      "incomingEmailDeliveryMethod_display": StringAttribute, // 
      "emailUsername": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.UserName attribute."]),
      "outgoingEmailDeliveryMethod": StringAttribute, // Outgoing email delivery method for the queue."]),
      "outgoingEmailDeliveryMethod_display": StringAttribute, // 
      "allowEmailCredentials": StringAttribute, // This attribute is no longer used. The data is now in the Mailbox.AllowEmailConnectorToUseCredentials attribute."]),
      "incomingEmailFilteringMethod": StringAttribute, // Convert Incoming Email To Activities"]),
      "incomingEmailFilteringMethod_display": StringAttribute, // 
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "statusCode": IntegerAttribute, // Reason for the status of the queue."]),
      "statusCode_display": StringAttribute, // 
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the queue."]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the queue."]),
      "stateCode": IntegerAttribute, // Status of the queue."]),
      "stateCode_display": StringAttribute, // 
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the queue."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the queue."]),
      "numberOfItems": StringAttribute, // Number of Queue items associated with the queue."]),
      "numberOfMembers": StringAttribute, // Number of Members associated with the queue."]),
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier of the team who owns the queue."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the queue."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the queue with respect to the base currency."]),
      "emailRouterAccessApproval": StringAttribute, // Shows the status of the primary email address."]),
      "emailRouterAccessApproval_display": StringAttribute, // 
      "defaultMailbox": StringAttribute, // Select the mailbox associated with this queue."]),
      "entityImageId": UUIDAttribute, // For internal use only."]),
      "isEmailAddressApprovedByO365Admin": StringAttribute, // Shows the status of approval of the email address by O365 Admin."]),
      "queueViewType": StringAttribute, // Select whether the queue is public or private. A public queue can be viewed by all. A private queue can be viewed only by the members added to the queue."]),
      "queueViewType_display": StringAttribute, // 
    ]);
  }

  override string entityClass() { return "aplQueue"; }
  override string entityClasses() { return "aplQueues"; }

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
auto APLQueue() { return new DAPLQueue; } 
auto APLQueue(Json json) { return new DAPLQueue(json); } 

version(test_library) {
  unittest {
    
    auto entity = APLQueue;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}