.class Lcom/stickycoding/rokon/RokonActivity$1;
.super Landroid/os/Handler;
.source "RokonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/RokonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stickycoding/rokon/RokonActivity;


# direct methods
.method constructor <init>(Lcom/stickycoding/rokon/RokonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonActivity$1;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 52
    sget-object v2, Lcom/stickycoding/rokon/RokonActivity;->runnableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_0
    sget-object v3, Lcom/stickycoding/rokon/RokonActivity;->currentScene:Lcom/stickycoding/rokon/Scene;

    if-nez v3, :cond_0

    monitor-exit v2

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "index"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, index:I
    sget-object v3, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 56
    sget-object v3, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    aget-object v1, v3, v0

    .line 57
    .local v1, runnable:Ljava/lang/Runnable;
    sget-object v3, Lcom/stickycoding/rokon/Scene;->uiRunnable:[Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 58
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 52
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
