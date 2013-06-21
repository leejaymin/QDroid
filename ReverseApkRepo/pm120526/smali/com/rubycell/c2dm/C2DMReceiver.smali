.class public Lcom/rubycell/c2dm/C2DMReceiver;
.super Lcom/rubycell/c2dm/C2DMBaseReceiver;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/rubycell/c2dm/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/rubycell/c2dm/C2DMReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rubycell/c2dm/C2DMReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "rubynotification@rubycell.com"

    invoke-direct {p0, v0}, Lcom/rubycell/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rubycell/c2dm/C2DMReceiver;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "C2DM"

    const-string v1, "Message Receiver called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020014

    const-string v3, "Message received"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    const-string v2, "key_update_data"

    invoke-static {p1, v2, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/rubycell/adcenter/UpdateActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "payload"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v3, 0x800

    invoke-static {p1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rubycell/adcenter/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/rubycell/c2dm/C2DMReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--->Regid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/rubycell/c2dm/b;

    new-instance v1, Lcom/rubycell/c2dm/a;

    invoke-direct {v1, p0}, Lcom/rubycell/c2dm/a;-><init>(Lcom/rubycell/c2dm/C2DMReceiver;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/rubycell/c2dm/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/rubycell/c2dm/d;)V

    iput-object v0, p0, Lcom/rubycell/c2dm/C2DMReceiver;->b:Lcom/rubycell/c2dm/b;

    iget-object v0, p0, Lcom/rubycell/c2dm/C2DMReceiver;->b:Lcom/rubycell/c2dm/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/rubycell/c2dm/b;->setPriority(I)V

    iget-object v0, p0, Lcom/rubycell/c2dm/C2DMReceiver;->b:Lcom/rubycell/c2dm/b;

    invoke-virtual {v0}, Lcom/rubycell/c2dm/b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/c2dm/C2DMReceiver;->b:Lcom/rubycell/c2dm/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/c2dm/C2DMReceiver;->b:Lcom/rubycell/c2dm/b;

    invoke-virtual {v0}, Lcom/rubycell/c2dm/b;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/rubycell/c2dm/C2DMBaseReceiver;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
