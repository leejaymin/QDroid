.class public Lcom/chillingo/crystal/http/AsyncHttpManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/http/AsyncHttp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/http/AsyncHttpManager$EncodingRedirectHandler;,
        Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;
    }
.end annotation


# static fields
.field private static final KAllowedSimultaneousOps:I = 0x6


# instance fields
.field _cookieStore:Lorg/apache/http/client/CookieStore;

.field _helpers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/chillingo/crystal/PersistableCookieStore;->instance()Lcom/chillingo/crystal/PersistableCookieStore;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager;->_cookieStore:Lorg/apache/http/client/CookieStore;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager;->_helpers:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager;->runRequest(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager;->helperFinished(Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V

    return-void
.end method

.method private canProcessData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttp - Network op is already in progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpAttemptCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttp - Already at max attempts for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->fetchPriority()I

    move-result v2

    sget-object v3, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    iget v3, v3, Lcom/chillingo/crystal/serverdata/FetchPriority;->Value:I

    if-gt v2, v3, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttp - Display priority for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager;->_helpers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_5

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v1, "Crystal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttp - Too many network ops in progress. Can\'t do "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private helperFinished(Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager;->_helpers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private runRequest(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 3

    new-instance v0, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;-><init>(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/http/AsyncHttpManager$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chillingo/crystal/serverdata/AbstractServerData;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/AsyncHttpManager$AsyncHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager;->_helpers:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public processData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager;->canProcessData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v0, "Crystal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttp - OK to proceed with request for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->networkOpAttemptCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpAttemptCount(I)V

    invoke-virtual {p1, v3}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->setNetworkOpInProgress(Z)V

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->activeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/http/AsyncHttpManager$1;

    invoke-direct {v1, p0, p1}, Lcom/chillingo/crystal/http/AsyncHttpManager$1;-><init>(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
