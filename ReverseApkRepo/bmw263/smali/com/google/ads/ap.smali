.class public final Lcom/google/ads/ap;
.super Lcom/google/ads/util/z;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/util/ac;

.field public final b:Lcom/google/ads/util/ac;

.field public final c:Lcom/google/ads/util/ac;

.field public final d:Lcom/google/ads/util/ac;

.field public final e:Lcom/google/ads/util/ac;

.field public final f:Lcom/google/ads/util/ac;

.field public final g:Lcom/google/ads/util/ac;

.field public final h:Lcom/google/ads/util/ac;

.field public final i:Lcom/google/ads/util/ac;

.field public final j:Lcom/google/ads/util/ac;

.field public final k:Lcom/google/ads/util/ac;

.field public final l:Lcom/google/ads/util/ac;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const-wide/32 v4, 0x20000

    .line 17
    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    .line 19
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "minHwAccelerationVersionBanner"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ac;

    .line 23
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "minHwAccelerationVersionOverlay"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->b:Lcom/google/ads/util/ac;

    .line 27
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "mraidBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->c:Lcom/google/ads/util/ac;

    .line 32
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "mraidExpandedBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->d:Lcom/google/ads/util/ac;

    .line 37
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "mraidInterstitialPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->e:Lcom/google/ads/util/ac;

    .line 46
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "appCacheMaxSize"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->f:Lcom/google/ads/util/ac;

    .line 53
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "appCacheMaxSizePaddingInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->g:Lcom/google/ads/util/ac;

    .line 57
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "maxTotalAppCacheQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->h:Lcom/google/ads/util/ac;

    .line 61
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "maxTotalDatabaseQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->i:Lcom/google/ads/util/ac;

    .line 65
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "maxDatabaseQuotaPerOriginInBytes"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->j:Lcom/google/ads/util/ac;

    .line 69
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "databaseQuotaIncreaseStepInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->k:Lcom/google/ads/util/ac;

    .line 73
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "isInitialized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ap;->l:Lcom/google/ads/util/ac;

    return-void
.end method
