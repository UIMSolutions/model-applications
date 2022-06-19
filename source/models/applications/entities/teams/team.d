module models.applications.teams.team;

@safe:
import uim.entities;

// Collection of system users that routinely collaborate. Teams can be used to simplify record sharing and provide team members with common access to organization data when team members belong to different Business Units.
class DAPLTeam : DOOPEntity {
  this() { super();
    this.addValues([
      "TeamId": TeamIdAttribute, // , // Unique identifier for the team."]),
      "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the team."]),
      "businessUnitId": BusinessUnitIdAttribute, // Unique identifier of the business unit with which the team is associated."]),
      "emailAddress": StringAttribute, // Email address for the team."]),
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "administratorId": UUIDAttribute, // Unique identifier of the user primary responsible for the team."]),
      "isDefault": BooleanAttribute, // Information about whether the team is a default business unit team."]),
      "yomiName": StringAttribute, // Pronunciation of the full name of the team, written in phonetic hiragana or katakana characters."]),
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the team."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the team."]),
      "traversedPath": StringAttribute, // For internal use only."]),
      "queueId": UUIDAttribute, // Unique identifier of the default queue for the team."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the team."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the team with respect to the base currency."]),
      "teamType": StringAttribute, // Select the team type."]),
      "teamType_display": StringAttribute, // 
      "teamTemplateId": UUIDAttribute, // Shows the team template that is associated with the team."]),
      "regardingObjectId": UUIDAttribute, // Choose the record that the team relates to."]),
      "systemManaged": StringAttribute, // Select whether the team will be managed by the system."]),
      "stageId": UUIDAttribute, // Shows the ID of the stage."]),
      "processId": UUIDAttribute, // Shows the ID of the process."]),
    ]);
  }

  override string entityClass() { return "aplTeam"; }
  override string entityClasses() { return "aplTeams"; }

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
auto APLTeam() { return new DAPLTeam; } 
auto APLTeam(Json json) { return new DAPLTeam(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLTeam);

  auto entity = APLTeam;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}