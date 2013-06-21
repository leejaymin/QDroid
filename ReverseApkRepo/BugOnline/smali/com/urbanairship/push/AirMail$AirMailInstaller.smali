.class Lcom/urbanairship/push/AirMail$AirMailInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/AirMail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMailInstaller"
.end annotation


# instance fields
.field private appCtx:Landroid/content/Context;

.field private appKey:Ljava/lang/String;

.field btnOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private ctx:Landroid/app/Activity;

.field infoOnClick:Landroid/content/DialogInterface$OnClickListener;

.field missingMarketOk:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/urbanairship/push/AirMail;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/urbanairship/push/AirMail;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->this$0:Lcom/urbanairship/push/AirMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->timer:Ljava/util/Timer;

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appCtx:Landroid/content/Context;

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appKey:Ljava/lang/String;

    new-instance v0, Lcom/urbanairship/push/AirMail$AirMailInstaller$1;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller$1;-><init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->infoOnClick:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/urbanairship/push/AirMail$AirMailInstaller$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller$2;-><init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->missingMarketOk:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;

    invoke-direct {v0, p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;-><init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->btnOnClick:Landroid/content/DialogInterface$OnClickListener;

    iput-object p2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appCtx:Landroid/content/Context;

    iput-object p3, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Z
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->controlCenterInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->finishRegister()V

    return-void
.end method

.method static synthetic access$200(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->startPollingForInstall()V

    return-void
.end method

.method static synthetic access$400(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method private controlCenterInstalled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.urbanairship.airmail"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private finishRegister()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->this$0:Lcom/urbanairship/push/AirMail;

    #getter for: Lcom/urbanairship/push/AirMail;->receiverCreated:Z
    invoke-static {v0}, Lcom/urbanairship/push/AirMail;->access$500(Lcom/urbanairship/push/AirMail;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UA.push"

    const-string v1, "Registering IntentReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.urbanairship.airmail.ACCEPT_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.airmail.END_REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.airmail.NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appCtx:Landroid/content/Context;

    new-instance v2, Lcom/urbanairship/push/IntentReceiver;

    invoke-direct {v2}, Lcom/urbanairship/push/IntentReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->this$0:Lcom/urbanairship/push/AirMail;

    const/4 v1, 0x1

    #setter for: Lcom/urbanairship/push/AirMail;->receiverCreated:Z
    invoke-static {v0, v1}, Lcom/urbanairship/push/AirMail;->access$502(Lcom/urbanairship/push/AirMail;Z)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.urbanairship.airmail.START_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.airmail"

    const-string v2, "com.urbanairship.airmail.CoreReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.urbanairship.airmail.END_REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appKey:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lcom/urbanairship/push/Properties;

    iget-object v3, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/urbanairship/push/Properties;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/urbanairship/push/Properties;->appKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appKey:Ljava/lang/String;

    :cond_1
    const-string v2, "appKey"

    iget-object v3, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "app"

    iget-object v3, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startPollingForInstall()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->timer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/AirMail$AirMailInstaller$1AirMailInstallPoller;-><init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public promptForDownload()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Push Notifications"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This application requires AirMail to enable real-time notifications."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->btnOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->btnOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "More Info"

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->btnOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
