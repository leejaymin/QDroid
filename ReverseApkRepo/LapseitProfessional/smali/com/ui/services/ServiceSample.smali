.class public Lcom/ui/services/ServiceSample;
.super Landroid/app/Service;
.source "ServiceSample.java"


# instance fields
.field downloading:Z

.field runnable:Ljava/lang/Runnable;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Lcom/ui/services/ServiceSample$1;

    invoke-direct {v0, p0}, Lcom/ui/services/ServiceSample$1;-><init>(Lcom/ui/services/ServiceSample;)V

    iput-object v0, p0, Lcom/ui/services/ServiceSample;->runnable:Ljava/lang/Runnable;

    .line 8
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    const-string v0, "trace"

    const-string v1, "Starting service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ui/services/ServiceSample;->downloading:Z

    .line 21
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ui/services/ServiceSample;->runnable:Ljava/lang/Runnable;

    const-string v2, "sampleService"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ui/services/ServiceSample;->thread:Ljava/lang/Thread;

    .line 22
    iget-object v0, p0, Lcom/ui/services/ServiceSample;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "trace"

    const-string v1, "Service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    return-void
.end method
