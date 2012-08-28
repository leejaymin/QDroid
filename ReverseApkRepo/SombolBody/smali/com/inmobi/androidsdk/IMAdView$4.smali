.class Lcom/inmobi/androidsdk/IMAdView$4;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMAdView$4;)Lcom/inmobi/androidsdk/IMAdView;
    .locals 1
    .parameter

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    return-object v0
.end method


# virtual methods
.method public notifyResult(ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1105
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1106
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> Got HTTP REQUEST callback. Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1108
    const-string v2, " ,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    if-nez p1, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/IMAdView$4$1;

    invoke-direct {v1, p0, p2}, Lcom/inmobi/androidsdk/IMAdView$4$1;-><init>(Lcom/inmobi/androidsdk/IMAdView$4;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1123
    :cond_1
    :goto_0
    return-void

    .line 1118
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x65

    .line 1120
    check-cast p2, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;

    .line 1119
    invoke-static {v0, v1, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1121
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->d(Lcom/inmobi/androidsdk/IMAdView;Z)V

    goto :goto_0
.end method
