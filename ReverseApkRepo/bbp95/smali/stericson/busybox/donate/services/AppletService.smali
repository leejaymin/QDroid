.class public Lstericson/busybox/donate/services/AppletService;
.super Landroid/app/Service;
.source "AppletService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstericson/busybox/donate/services/AppletService$ServiceHandler;
    }
.end annotation


# instance fields
.field private appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;

.field private mServiceHandler:Lstericson/busybox/donate/services/AppletService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lstericson/busybox/donate/services/AppletService;Lstericson/busybox/donate/jobs/AppletInformation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lstericson/busybox/donate/services/AppletService;->appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;

    return-void
.end method

.method static synthetic access$1(Lstericson/busybox/donate/services/AppletService;)Lstericson/busybox/donate/jobs/AppletInformation;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lstericson/busybox/donate/services/AppletService;->appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    .line 45
    const/16 v2, 0x13

    .line 44
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 46
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lstericson/busybox/donate/services/AppletService;->mServiceLooper:Landroid/os/Looper;

    .line 50
    new-instance v1, Lstericson/busybox/donate/services/AppletService$ServiceHandler;

    iget-object v2, p0, Lstericson/busybox/donate/services/AppletService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lstericson/busybox/donate/services/AppletService$ServiceHandler;-><init>(Lstericson/busybox/donate/services/AppletService;Landroid/os/Looper;)V

    iput-object v1, p0, Lstericson/busybox/donate/services/AppletService;->mServiceHandler:Lstericson/busybox/donate/services/AppletService$ServiceHandler;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/services/AppletService;->appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;

    invoke-virtual {v0}, Lstericson/busybox/donate/jobs/AppletInformation;->closeDb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 58
    iget-object v2, p0, Lstericson/busybox/donate/services/AppletService;->mServiceHandler:Lstericson/busybox/donate/services/AppletService$ServiceHandler;

    invoke-virtual {v2}, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 59
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "applets"

    const-string v3, "applets"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object v2, p0, Lstericson/busybox/donate/services/AppletService;->mServiceHandler:Lstericson/busybox/donate/services/AppletService$ServiceHandler;

    invoke-virtual {v2, v1}, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    const/4 v2, 0x2

    return v2
.end method
