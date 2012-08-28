.class public abstract Lcom/adfonic/android/view/task/UrlOpenerTask;
.super Landroid/os/AsyncTask;
.source "UrlOpenerTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final MARKET_SEARCH:Ljava/lang/String; = "market://"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static isAndroidMarketUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 55
    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    const-string v1, "market://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/adfonic/android/view/task/UrlOpenerTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2
    .parameter "urls"

    .prologue
    .line 21
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/adfonic/android/utils/Network;->requestDestinationUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, destinationUrl:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/adfonic/android/view/task/UrlOpenerTask;->onUrlReceived(Ljava/lang/String;)V

    .line 23
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected onUrlReceived(Ljava/lang/String;)V
    .locals 1
    .parameter "destinationUrl"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/adfonic/android/view/task/UrlOpenerTask;->isAndroidMarketUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/adfonic/android/view/task/UrlOpenerTask;->openAndroidMarket(Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adfonic/android/view/task/UrlOpenerTask;->openUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected openAndroidMarket(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/adfonic/android/view/task/UrlOpenerTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error opening Android Market from ad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adfonic/android/utils/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract openUrl(Ljava/lang/String;)V
.end method
