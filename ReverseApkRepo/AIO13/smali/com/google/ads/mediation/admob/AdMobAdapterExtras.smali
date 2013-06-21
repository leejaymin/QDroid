.class public Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    invoke-virtual {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    iget-boolean v0, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    return v0
.end method

.method public getUseExactAdSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    return v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'extras\' may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->c:Ljava/util/Map;

    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    return-object p0
.end method

.method public setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Z

    return-object p0
.end method
