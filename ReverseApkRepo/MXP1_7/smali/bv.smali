.class public final Lbv;
.super Ldr;


# instance fields
.field public final ㅼ꽑嫄:Ldv;

.field public final 弱밧:Ldv;

.field public final 洹:Ldv;

.field public final 癤욱븳援:Ldv;

.field public final 궗:Ldv;

.field public final 꾨뱾:Ldv;

.field public final 대쫫:Ldv;

.field public final 뚮Ц:Ldv;

.field public final 먯껜蹂대떎:Ldv;

.field public final 먯꽌:Ldv;

.field public final 몃Ъ:Ldv;

.field public final 쇰뒗:Ldv;


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/32 v6, 0x500000

    const-wide/32 v4, 0x20000

    invoke-direct {p0}, Ldr;-><init>()V

    new-instance v0, Ldv;

    const-string v1, "minHwAccelerationVersionBanner"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->癤욱븳援:Ldv;

    new-instance v0, Ldv;

    const-string v1, "minHwAccelerationVersionOverlay"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->궗:Ldv;

    new-instance v0, Ldv;

    const-string v1, "mraidBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->먯꽌:Ldv;

    new-instance v0, Ldv;

    const-string v1, "mraidExpandedBannerPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->ㅼ꽑嫄:Ldv;

    new-instance v0, Ldv;

    const-string v1, "mraidInterstitialPath"

    const-string v2, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->弱밧:Ldv;

    new-instance v0, Ldv;

    const-string v1, "appCacheMaxSize"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->쇰뒗:Ldv;

    new-instance v0, Ldv;

    const-string v1, "appCacheMaxSizePaddingInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->대쫫:Ldv;

    new-instance v0, Ldv;

    const-string v1, "maxTotalAppCacheQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->洹:Ldv;

    new-instance v0, Ldv;

    const-string v1, "maxTotalDatabaseQuotaInBytes"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->몃Ъ:Ldv;

    new-instance v0, Ldv;

    const-string v1, "maxDatabaseQuotaPerOriginInBytes"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->먯껜蹂대떎:Ldv;

    new-instance v0, Ldv;

    const-string v1, "databaseQuotaIncreaseStepInBytes"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->꾨뱾:Ldv;

    new-instance v0, Ldv;

    const-string v1, "isInitialized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Ldv;-><init>(Ldr;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lbv;->뚮Ц:Ldv;

    return-void
.end method
