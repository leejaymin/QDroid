.class public Lcn;
.super Ljava/lang/Object;

# interfaces
.implements Lci;


# static fields
.field private static final 癤욱븳援:Lau;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lau;->癤욱븳援:Lde;

    invoke-interface {v0}, Lde;->궗()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    sput-object v0, Lcn;->癤욱븳援:Lau;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Lbg;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 3

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Could not get the JS to evaluate."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, p3, Lcom/google/ads/internal/AdWebView;

    if-eqz v1, :cond_1

    check-cast p3, Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p3}, Lcom/google/ads/internal/AdWebView;->ㅼ꽑嫄()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->궗()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcn;->癤욱븳援:Lau;

    invoke-virtual {v2, v1, v0}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
