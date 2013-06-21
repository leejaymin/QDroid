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

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    return-void
.end method

.method public onDismissAdScreen()Z
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1156
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 3

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1150
    const/4 v0, 0x0

    return v0
.end method

.method public onLeaveApplication()Z
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x0

    return v0
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 1134
    const/4 v0, 0x0

    return v0
.end method

.method public onShowScreen()Z
    .locals 3

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$5;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1183
    const/4 v0, 0x0

    return v0
.end method
