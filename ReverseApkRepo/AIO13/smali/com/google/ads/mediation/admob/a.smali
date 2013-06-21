.class final Lcom/google/ads/mediation/admob/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/admob/AdMobAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/admob/a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V

    return-void
.end method


# virtual methods
.method public final onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1, p2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method

.method public final onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method

.method public final onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    return-void
.end method
