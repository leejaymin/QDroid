.class Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/AirMail$AirMailInstaller;->startPollingForInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AirMailInstallPoller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "UA.push"

    const-string v1, "Poll for AirMail Install"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #calls: Lcom/urbanairship/push/AirMail$AirMailInstaller;->controlCenterInstalled()Z
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$000(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #getter for: Lcom/urbanairship/push/AirMail$AirMailInstaller;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$400(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const-string v0, "UA.push"

    const-string v1, "AirMail Control Center Installed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #calls: Lcom/urbanairship/push/AirMail$AirMailInstaller;->finishRegister()V
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$100(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    :cond_0
    return-void
.end method
