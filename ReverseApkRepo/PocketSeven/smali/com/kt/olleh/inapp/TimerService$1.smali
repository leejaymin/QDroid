.class Lcom/kt/olleh/inapp/TimerService$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/TimerService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/TimerService;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/TimerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    const-string v0, ">>>>>"

    const-string v1, "timmer is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    #getter for: Lcom/kt/olleh/inapp/TimerService;->mRunning:Z
    invoke-static {v0}, Lcom/kt/olleh/inapp/TimerService;->access$0(Lcom/kt/olleh/inapp/TimerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sput-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 44
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    #setter for: Lcom/kt/olleh/inapp/TimerService;->mRunning:Z
    invoke-static {v0, v2}, Lcom/kt/olleh/inapp/TimerService;->access$1(Lcom/kt/olleh/inapp/TimerService;Z)V

    .line 48
    :cond_0
    return-void
.end method
