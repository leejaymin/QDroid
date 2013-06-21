.class Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$5;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner$5;->this$1:Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->_uiDescription:Lcom/chillingo/crystal/serverdata/UIDescription;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->access$900(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/chillingo/crystal/http/FetchManager;->queueServerData(Lcom/chillingo/crystal/serverdata/AbstractServerData;Lcom/chillingo/crystal/serverdata/FetchPriority;I)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "GenericTableLayout"

    const-string v2, "Ignoring null pointer in fetch request because we are closing down"

    invoke-static {v1, v2, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
