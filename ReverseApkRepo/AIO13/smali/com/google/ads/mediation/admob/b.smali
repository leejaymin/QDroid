.class final Lcom/google/ads/mediation/admob/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/admob/AdMobAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/admob/b;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1, p2}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->b(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/b;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method
