.class Lcom/urbanairship/push/AirMail$AirMailInstaller$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/AirMail$AirMailInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.urbanairship.airmail"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #getter for: Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$200(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #calls: Lcom/urbanairship/push/AirMail$AirMailInstaller;->startPollingForInstall()V
    invoke-static {v0}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$300(Lcom/urbanairship/push/AirMail$AirMailInstaller;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #getter for: Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$200(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Android Market Missing"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "We will begin downloading AirMail Control Panel shortly. Since this device doesn\'t include the Android Marketplace, you\'ll need to tap the downloaded item once it\'s finished. Thanks!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    iget-object v2, v2, Lcom/urbanairship/push/AirMail$AirMailInstaller;->missingMarketOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail$AirMailInstaller;->this$0:Lcom/urbanairship/push/AirMail;

    iget-object v0, v0, Lcom/urbanairship/push/AirMail;->apidReceiverClass:Lcom/urbanairship/push/APIDReceiver;

    invoke-interface {v0}, Lcom/urbanairship/push/APIDReceiver;->onAirMailInstallRefusal()V

    goto :goto_1

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    #getter for: Lcom/urbanairship/push/AirMail$AirMailInstaller;->ctx:Landroid/app/Activity;
    invoke-static {v1}, Lcom/urbanairship/push/AirMail$AirMailInstaller;->access$200(Lcom/urbanairship/push/AirMail$AirMailInstaller;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "About AirMail"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "AirMail Control Panel enables push notifications from the apps you have installed on your Android device.\n\n Once installed, AirMail Control Panel gives you complete control over how you experience notifications or alerts. AirMail is a hub where  you can customize how you receive alerts from  each app with AirMail Push enabled."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    iget-object v2, p0, Lcom/urbanairship/push/AirMail$AirMailInstaller$3;->this$1:Lcom/urbanairship/push/AirMail$AirMailInstaller;

    iget-object v2, v2, Lcom/urbanairship/push/AirMail$AirMailInstaller;->infoOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method
