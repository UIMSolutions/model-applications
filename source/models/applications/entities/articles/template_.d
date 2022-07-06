module models.applications.articles.template_;

@safe:
import models.applications;

// Template for a knowledge base article that contains the standard attributes of an article.
class DAPLArticleTemplateEntity : DOOPEntity {
  mixin(EntityThis!("APLArticleTemplateEntity"));
  
  override void initialize() {
    super.initialize;
    
    this.addValues([
      "kbArticleTemplateId": UUIDAttribute, // Unique identifier of the knowledge base article template.
      "structureXml": StringAttribute, // XML structure of the knowledge base article.
      "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the template.
      "formatXml": StringAttribute, // XML format of the knowledge base article template.
      "title": StringAttribute, // Title of the knowledge base article template.
      "isActive": BooleanAttribute, // Information about whether the knowledge base article is active.
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
      "languageCode": IntegerAttribute, // Language of the Article Template
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
      "kbArticleTemplateIdUnique": StringAttribute, // For internal use only.
      "componentState": StringAttribute, // For internal use only.
      "componentState_display": StringAttribute, // 
      "solutionId": UUIDAttribute, // Unique identifier of the associated solution.
      "overwriteTime": TimeAttribute, // For internal use only.
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the kbarticletemplate.
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the kbarticletemplate.
      "isManaged": BooleanAttribute, // 
      "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized.
      "introducedVersiOn": DatetimeAttribute, // Version in which the form is introduced.
    ]);
      .registerPath("applications_articles.templates");
  }
}
mixin(EntityCalls!("APLArticleTemplateEntity"));

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
