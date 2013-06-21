.class public final Lcom/google/ads/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/ar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/internal/o;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    instance-of v0, p3, Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_0

    .line 29
    check-cast p3, Lcom/google/ads/internal/AdWebView;

    .line 30
    invoke-virtual {p3}, Lcom/google/ads/internal/AdWebView;->a()V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
