.class Lcom/inmobi/androidsdk/IMAdInterstitial$3;
.super Ljava/lang/Object;
.source "IMAdInterstitial.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    return-void
.end method

.method public onDismissAdScreen()Z
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->ACTIVE:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitial$State;)V

    .line 521
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public onLeaveApplication()Z
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public onShowScreen()Z
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdInterstitial$3;->a:Lcom/inmobi/androidsdk/IMAdInterstitial;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 558
    const/4 v0, 0x0

    return v0
.end method
