module models.applications.articles.comment;

@safe:
import models.applications;

// Comment on a knowledge base article.
class DAPLArticleComment : DOOPEntity {
  mixin(EntityThis!("APLArticleComment"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "kbArticleCommentId": UUIDAttribute, // Unique identifier of the knowledge base article comment."]),
        "kbArticleId": UUIDAttribute, // Unique identifier of the knowledge base article to which the comment applies."]),
        "title": StringAttribute, // Title of the knowledge base article comment."]),
        "commentText": StringAttribute, // Comment text for the knowledge base article."]),
        "organizationId": UUIDAttribute, // Unique identifier of the organization with which the article comment is associated."]),
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the kbarticlecomment."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the kbarticlecomment."]),
      ])
      .registerPath("applications_articlecomments");
  }
}
mixin(EntityCalls!("APLArticleComment"));

version(test_library) {
  unittest {
    
    assert(APLArticleComment);
  
    auto entity = APLArticleComment;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities",  entity.entityClasses, entity.toJson);
/*  */
/*   auto json = repository.findOne ("entities", entity.entityClasses, ["id":entity.id.toString]);
/*   assert(json != Json(null), entity.id.toString~" not found");
/*  */
/*   repository.cleanupConnections; */
  }
}
