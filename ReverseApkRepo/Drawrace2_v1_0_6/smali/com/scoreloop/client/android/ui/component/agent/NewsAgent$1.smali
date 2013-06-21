.class Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;
.super Ljava/lang/Object;
.source "NewsAgent.java"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/model/Continuation",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/scoreloop/client/android/core/addon/RSSItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;

.field final synthetic val$valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;->this$0:Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;->val$valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;->withValue(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public withValue(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter "failure"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, feed:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/addon/RSSItem;>;"
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;->val$valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v4, "newsFeed"

    invoke-virtual {v3, v4, p1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, numberUnread:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 63
    .local v1, item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/addon/RSSItem;->hasPersistentReadFlag()Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    .end local v1           #item:Lcom/scoreloop/client/android/core/addon/RSSItem;
    :cond_2
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;->val$valueStore:Lcom/scoreloop/client/android/ui/framework/ValueStore;

    const-string v4, "newsNumberUnreadItems"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
