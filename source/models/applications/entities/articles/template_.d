module models.applications.articles.template_;

@safe:
import models.applications;

/* static this() {
  jsonToEntity["applications.articles.template"] = (Json json) => APLArticleTemplate(json); }
version(test_library) {
  unittest {
    
    auto entity = jsonToEntity["applications.articles.template"](Json.emptyObject); }} */

// Template for a knowledge base article that contains the standard attributes of an article.
class DAPLArticleTemplate : DOOPEntity {
  this() { super();
    this.addValues([
      "kbArticleTemplateId": UUIDAttribute, // Unique identifier of the knowledge base article template."]),
      "structureXml": StringAttribute, // XML structure of the knowledge base article."]),
      "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the template."]),
      "formatXml": StringAttribute, // XML format of the knowledge base article template."]),
      "title": StringAttribute, // Title of the knowledge base article template."]),
      "isActive": BooleanAttribute, // Information about whether the knowledge base article is active."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "languageCode": IntegerAttribute, // Language of the Article Template"]),
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
      "kbArticleTemplateIdUnique": StringAttribute, // For internal use only."]),
      "componentState": StringAttribute, // For internal use only."]),
      "componentState_display": StringAttribute, // 
      "solutionId": UUIDAttribute, // Unique identifier of the associated solution."]),
      "overwriteTime": TimeAttribute, // For internal use only."]),
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the kbarticletemplate."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the kbarticletemplate."]),
      "isManaged": BooleanAttribute, // 
      "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized."]),
      "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced."]),
    ]);
  }
  
  override string entityClass() { return "aplArticleTemplate"; }
  override string entityClasses() { return "aplArticleTemplates"; }

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
auto APLArticleTemplate() { return new DAPLArticleTemplate; } 
auto APLArticleTemplate(Json json) { return new DAPLArticleTemplate(json); } 

version(test_library) {
  unittest {
    
    assert(APLArticleTemplate);
  
  auto entity = APLArticleTemplate;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}