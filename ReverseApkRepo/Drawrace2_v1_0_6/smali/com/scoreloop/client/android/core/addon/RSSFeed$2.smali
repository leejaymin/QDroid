.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;->requestAllItems(Lcom/scoreloop/client/android/core/model/Continuation;ZLcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)Z
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
.field private synthetic a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

.field private synthetic b:Z

.field private synthetic c:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic d:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;ZLcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->d:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    iput-boolean p3, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->b:Z

    iput-object p4, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->c:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 587
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->d:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-interface {v1, v2, p1, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;->collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V

    move-object p1, v0

    :cond_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->b:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->d:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v2, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->d:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    sget-object v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$State;)Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;->c:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-interface {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method
