.class public Lcom/urbanairship/push/AirMail;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/AirMail$AirMailInstaller;
    }
.end annotation


# static fields
.field private static final AIRMAIL_PACKAGE:Ljava/lang/String; = "com.urbanairship.airmail"

.field private static final POLL_INTERVAL:I = 0x1388

.field private static instance:Lcom/urbanairship/push/AirMail;


# instance fields
.field protected apidReceiverClass:Lcom/urbanairship/push/APIDReceiver;

.field protected pushReceiverClass:Lcom/urbanairship/push/PushReceiver;

.field private receiverCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/urbanairship/push/AirMail;->instance:Lcom/urbanairship/push/AirMail;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/push/AirMail;->receiverCreated:Z

    return-void
.end method

.method static synthetic access$500(Lcom/urbanairship/push/AirMail;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/push/AirMail;->receiverCreated:Z

    return v0
.end method

.method static synthetic access$502(Lcom/urbanairship/push/AirMail;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/urbanairship/push/AirMail;->receiverCreated:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/urbanairship/push/AirMail;
    .locals 2

    const-class v1, Lcom/urbanairship/push/AirMail;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/urbanairship/push/AirMail;->instance:Lcom/urbanairship/push/AirMail;

    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/push/AirMail;

    invoke-direct {v0}, Lcom/urbanairship/push/AirMail;-><init>()V

    sput-object v0, Lcom/urbanairship/push/AirMail;->instance:Lcom/urbanairship/push/AirMail;

    :cond_0
    sget-object v0, Lcom/urbanairship/push/AirMail;->instance:Lcom/urbanairship/push/AirMail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acceptPush(Landroid/content/Context;Lcom/urbanairship/push/PushReceiver;)V
    .locals 0

    iput-object p2, p0, Lcom/urbanairship/push/AirMail;->pushReceiverClass:Lcom/urbanairship/push/PushReceiver;

    return-void
.end method

.method public register(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/push/AirMail;->register(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public register(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "UA.push"

    const-string v1, "Registering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-direct {v0, p0, p1, p2}, Lcom/urbanairship/push/AirMail$AirMailInstaller;-><init>(Lcom/urbanairship/push/AirMail;Landroid/app/Activity;Ljava/lang/String;)V

    #calls: Lcom/urbanairship/push/AirMail$AirMailInstaller;->controlCenterInstalled()Z
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$000(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Z

    move-result v1

    if-eqz v1, :cond_0

    #calls: Lcom/urbanairship/push/AirMail$AirMailInstaller;->finishRegister()V
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$100(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->promptForDownload()V

    goto :goto_0
.end method

.method public setAPIDReceiver(Landroid/content/Context;Lcom/urbanairship/push/APIDReceiver;)V
    .locals 0

    iput-object p2, p0, Lcom/urbanairship/push/AirMail;->apidReceiverClass:Lcom/urbanairship/push/APIDReceiver;

    return-void
.end method
