.class final Lstericson/busybox/donate/services/AppletService$ServiceHandler;
.super Landroid/os/Handler;
.source "AppletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstericson/busybox/donate/services/AppletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/services/AppletService;


# direct methods
.method public constructor <init>(Lstericson/busybox/donate/services/AppletService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 23
    iput-object p1, p0, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->this$0:Lstericson/busybox/donate/services/AppletService;

    .line 22
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->this$0:Lstericson/busybox/donate/services/AppletService;

    new-instance v2, Lstericson/busybox/donate/jobs/AppletInformation;

    invoke-direct {v2}, Lstericson/busybox/donate/jobs/AppletInformation;-><init>()V

    #setter for: Lstericson/busybox/donate/services/AppletService;->appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;
    invoke-static {v1, v2}, Lstericson/busybox/donate/services/AppletService;->access$0(Lstericson/busybox/donate/services/AppletService;Lstericson/busybox/donate/jobs/AppletInformation;)V

    .line 30
    iget-object v1, p0, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->this$0:Lstericson/busybox/donate/services/AppletService;

    #getter for: Lstericson/busybox/donate/services/AppletService;->appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;
    invoke-static {v1}, Lstericson/busybox/donate/services/AppletService;->access$1(Lstericson/busybox/donate/services/AppletService;)Lstericson/busybox/donate/jobs/AppletInformation;

    move-result-object v1

    iget-object v2, p0, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->this$0:Lstericson/busybox/donate/services/AppletService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "applets"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lstericson/busybox/donate/jobs/AppletInformation;->getAppletInformation(Landroid/content/Context;ZLstericson/busybox/donate/jobs/GatherAppletInformation;[Ljava/lang/String;)Lstericson/busybox/donate/domain/Result;

    .line 34
    iget-object v1, p0, Lstericson/busybox/donate/services/AppletService$ServiceHandler;->this$0:Lstericson/busybox/donate/services/AppletService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lstericson/busybox/donate/services/AppletService;->stopSelf(I)V

    .line 35
    return-void
.end method
