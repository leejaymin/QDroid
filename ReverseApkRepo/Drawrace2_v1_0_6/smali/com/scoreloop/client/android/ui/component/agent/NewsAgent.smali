.class public Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;
.super Ljava/lang/Object;
.source "NewsAgent.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/framework/ValueStore$ValueSource;


# static fields
.field public static final SUPPORTED_KEYS:[Ljava/lang/String;


# instance fields
.field private _feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "newsNumberUnreadItems"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "newsFeed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRetrieving()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->getState()Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->PENDING:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public retrieve(Lcom/scoreloop/client/android/ui/framework/ValueStore;)V
    .locals 4
    .parameter "valueStore"

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-direct {v0, v3}, Lcom/scoreloop/client/android/core/addon/RSSFeed;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->reloadOnNextRequest()V

    .line 52
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->_feed:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    new-instance v1, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent$1;-><init>(Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;Lcom/scoreloop/client/android/ui/framework/ValueStore;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->requestAllItems(Lcom/scoreloop/client/android/core/model/Continuation;ZLcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)Z

    .line 70
    return-void
.end method

.method public supportedKeys(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/scoreloop/client/android/ui/component/agent/NewsAgent;->SUPPORTED_KEYS:[Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 75
    return-void
.end method
