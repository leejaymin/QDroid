.class public final Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;
.super Lcom/google/ads/mediation/MediationServerParameters;


# instance fields
.field public adUnitId:Ljava/lang/String;

.field public allowHouseAds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/mediation/MediationServerParameters;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterServerParameters;->allowHouseAds:Ljava/lang/String;

    return-void
.end method
