.class public abstract Lcom/adfonic/android/view/task/TelephoneUrlOpenerTask;
.super Lcom/adfonic/android/view/task/UrlOpenerTask;
.source "TelephoneUrlOpenerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adfonic/android/view/task/UrlOpenerTask;-><init>()V

    return-void
.end method

.method private dialTelephone(Ljava/lang/String;)V
    .locals 3
    .parameter "telephoneUrl"

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0}, Lcom/adfonic/android/view/task/TelephoneUrlOpenerTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Error dialling ad telephone number"

    invoke-static {v2}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onUrlReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "destinationUrl"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/adfonic/android/view/task/TelephoneUrlOpenerTask;->dialTelephone(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method protected openUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "destinationUrl"

    .prologue
    .line 33
    return-void
.end method
