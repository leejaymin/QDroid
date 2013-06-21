.class public Lcom/urbanairship/push/IntentReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private airmail:Lcom/urbanairship/push/AirMail;

.field private intent:Landroid/content/Intent;

.field private message:Ljava/lang/String;

.field private payload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/AirMail;->getInstance()Lcom/urbanairship/push/AirMail;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    return-void
.end method

.method private acceptPush()V
    .locals 3

    invoke-direct {p0}, Lcom/urbanairship/push/IntentReceiver;->checkPushReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail;->pushReceiverClass:Lcom/urbanairship/push/PushReceiver;

    iget-object v1, p0, Lcom/urbanairship/push/IntentReceiver;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/push/IntentReceiver;->payload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/urbanairship/push/PushReceiver;->onReceive(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private actionNotify()V
    .locals 3

    invoke-direct {p0}, Lcom/urbanairship/push/IntentReceiver;->checkPushReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail;->pushReceiverClass:Lcom/urbanairship/push/PushReceiver;

    iget-object v1, p0, Lcom/urbanairship/push/IntentReceiver;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/urbanairship/push/IntentReceiver;->payload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/urbanairship/push/PushReceiver;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkPushReceiver()Z
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail;->pushReceiverClass:Lcom/urbanairship/push/PushReceiver;

    if-nez v0, :cond_0

    const-string v0, "UA.push"

    const-string v1, "No PushReceiver callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private endRegister()V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail;->apidReceiverClass:Lcom/urbanairship/push/APIDReceiver;

    if-nez v0, :cond_0

    const-string v0, "UA.push"

    const-string v1, "No APIDReceiver callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    const-string v1, "apid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    const-string v2, "valid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/urbanairship/push/UA;->setApid(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/IntentReceiver;->airmail:Lcom/urbanairship/push/AirMail;

    iget-object v2, v2, Lcom/urbanairship/push/AirMail;->apidReceiverClass:Lcom/urbanairship/push/APIDReceiver;

    invoke-interface {v2, v0, v1}, Lcom/urbanairship/push/APIDReceiver;->onReceive(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p2, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->payload:Ljava/lang/String;

    iget-object v0, p0, Lcom/urbanairship/push/IntentReceiver;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.airmail.END_REGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/urbanairship/push/IntentReceiver;->endRegister()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.urbanairship.airmail.ACCEPT_PUSH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/urbanairship/push/IntentReceiver;->acceptPush()V

    goto :goto_0

    :cond_2
    const-string v1, "com.urbanairship.airmail.NOTIFY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/urbanairship/push/IntentReceiver;->actionNotify()V

    goto :goto_0
.end method
