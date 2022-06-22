module models.applications.customer_relationship;

@safe:
import uim.entities;

// Relationship between a customer and a partner in which either can be an account or contact.
class DAPLCustomerRelationship : DOOPEntity {
  mixin(EntityThis!("APLCustomerRelationship"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id
      ])
      .addValues([ // individual values
        "customerRoleId": UUIDAttribute, // Choose the primary party's role or nature of the relationship the customer has with the second party. The field is read-only until both parties have been selected. Administrators can configure role values under Business Management in the Settings area."]),
        "customerRelationshipId": UUIDAttribute, // Unique identifier of the customer relationship."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "partnerId": UUIDAttribute, // Select the secondary account or contact involved in the customer relationship."]),
        "partnerIdType": StringAttribute, // The type of partner, either Account or Contact."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit that owns the customer relationship."]),
        "converseRelationshipId": UUIDAttribute, // Unique identifier of the converse relationship of the customer relationship."]),
        "partnerRoleId": UUIDAttribute, // Choose the secondary party's role or nature of the relationship the customer has with the primary party. The field is read-only until both parties have been selected. Administrators can configure role values under Business Management in the Settings area."]),
        "customerRoleDescriptiOn": DatetimeAttribute, // Type additional information about the primary party's role in the customer relationship, such as the length or quality of the relationship."]),
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
        "partnerRoleDescriptiOn": DatetimeAttribute, // Type additional information about the secondary party's role in the customer relationship, such as the length or quality of the relationship."]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the customer relationship."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier of the team who owns the customer relationship."]),
      ])
      .registerPath("applications_customerrelationships");
  }
}
mixin(EntityCalls!("APLCustomerRelationship"));

version(test_library) {
  unittest {
    
    assert(APLCustomerRelationship);
  
  auto entity = APLCustomerRelationship;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}