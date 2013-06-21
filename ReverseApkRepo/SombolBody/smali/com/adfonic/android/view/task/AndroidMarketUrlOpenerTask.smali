.class public abstract Lcom/adfonic/android/view/task/AndroidMarketUrlOpenerTask;
.super Lcom/adfonic/android/view/task/UrlOpenerTask;
.source "AndroidMarketUrlOpenerTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adfonic/android/view/task/UrlOpenerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUrlReceived(Ljava/lang/String;)V
    .locals 0
    .parameter "destinationUrl"

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/adfonic/android/view/task/AndroidMarketUrlOpenerTask;->openAndroidMarket(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected openUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "destinationUrl"

    .prologue
    .line 19
    return-void
.end method
