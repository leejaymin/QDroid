.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;->requestNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V
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

.field private synthetic b:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 535
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-interface {v0, v2, p1, v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;->collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)V

    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->b(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)Lcom/scoreloop/client/android/core/addon/RSSItem;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    sget-object v2, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    invoke-static {v1, v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$State;)Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;->feedDidReceiveNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    sget-object v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$State;)Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-interface {v0, v1, p2}, Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;->feedDidFailToReceiveNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/lang/Exception;)V

    goto :goto_0
.end method
