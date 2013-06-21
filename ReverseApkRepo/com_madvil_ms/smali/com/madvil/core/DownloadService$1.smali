.class Lcom/madvil/core/DownloadService$1;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/core/DownloadService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/core/DownloadService;


# direct methods
.method constructor <init>(Lcom/madvil/core/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/core/DownloadService$1;->this$0:Lcom/madvil/core/DownloadService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/madvil/core/DownloadService;->started:Z

    if-nez v0, :cond_1

    .line 60
    :goto_1
    return-void

    .line 53
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/madvil/core/DownloadService$1;->sleep(J)V

    .line 54
    sget-object v0, Lcom/madvil/core/DownloadService;->singletone:Lcom/madvil/core/DownloadService;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/madvil/core/DownloadService$1;->this$0:Lcom/madvil/core/DownloadService;

    #getter for: Lcom/madvil/core/DownloadService;->downloadsUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/madvil/core/DownloadService;->access$1(Lcom/madvil/core/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_1
.end method
