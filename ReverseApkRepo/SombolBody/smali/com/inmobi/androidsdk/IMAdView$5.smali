.class Lcom/inmobi/androidsdk/IMAdView$5;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;


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
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1200
    return-void
.end method

.method public onDismissAdScreen()Z
    .locals 3

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1211
    const/4 v0, 0x0

    return v0
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 1195
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 3

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1190
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 3

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1184
    const/4 v0, 0x0

    return v0
.end method

.method public onLeaveApplication()Z
    .locals 3

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1205
    const/4 v0, 0x0

    return v0
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 1168
    const/4 v0, 0x0

    return v0
.end method

.method public onShowScreen()Z
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1217
    const/4 v0, 0x0

    return v0
.end method
