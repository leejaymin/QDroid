.class public Lcm;
.super Ljava/lang/Object;

# interfaces
.implements Lci;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    instance-of v0, p3, Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p3}, Lcom/google/ads/internal/AdWebView;->癤욱븳援()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    goto :goto_0
.end method
