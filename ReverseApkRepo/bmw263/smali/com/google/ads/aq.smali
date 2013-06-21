.class public final Lcom/google/ads/aq;
.super Lcom/google/ads/util/z;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/util/ab;

.field public final b:Lcom/google/ads/util/ab;

.field public final c:Lcom/google/ads/util/ad;

.field public final d:Lcom/google/ads/util/ab;

.field public final e:Lcom/google/ads/util/ab;

.field public final f:Lcom/google/ads/util/ab;

.field public final g:Lcom/google/ads/util/ab;

.field public final h:Lcom/google/ads/util/ab;

.field public final i:Lcom/google/ads/util/ab;

.field public final j:Lcom/google/ads/util/ac;

.field public final k:Lcom/google/ads/util/ac;

.field public final l:Lcom/google/ads/util/ac;


# direct methods
.method private constructor <init>(Lcom/google/ads/ao;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/u;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    .line 67
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "adListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    .line 70
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "appEventListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/aq;->l:Lcom/google/ads/util/ac;

    .line 90
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "appState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->a:Lcom/google/ads/util/ab;

    .line 91
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "ad"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    .line 92
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adView"

    invoke-direct {v0, p0, v1, p3}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->g:Lcom/google/ads/util/ab;

    .line 93
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adType"

    invoke-direct {v0, p0, v1, p9}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    .line 94
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "adUnitId"

    invoke-direct {v0, p0, v1, p5}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->b:Lcom/google/ads/util/ab;

    .line 95
    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "activity"

    invoke-direct {v0, p0, v1, p6}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    .line 96
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "interstitialAd"

    invoke-direct {v0, p0, v1, p4}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->h:Lcom/google/ads/util/ab;

    .line 97
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "bannerContainer"

    invoke-direct {v0, p0, v1, p8}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->e:Lcom/google/ads/util/ab;

    .line 98
    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "applicationContext"

    invoke-direct {v0, p0, v1, p7}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    .line 100
    new-instance v0, Lcom/google/ads/util/ac;

    const-string v1, "adSizes"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ac;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/aq;->j:Lcom/google/ads/util/ac;

    .line 101
    return-void
.end method

.method public static a(Lcom/google/ads/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/ads/g;)Lcom/google/ads/aq;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v0, Lcom/google/ads/aq;

    invoke-static {}, Lcom/google/ads/ao;->a()Lcom/google/ads/ao;

    move-result-object v1

    instance-of v2, p0, Lcom/google/ads/AdView;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/google/ads/AdView;

    move-object v3, v2

    :goto_0
    instance-of v2, p0, Lcom/google/ads/i;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/google/ads/i;

    move-object v4, v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-nez p4, :cond_2

    sget-object v9, Lcom/google/ads/internal/u;->a:Lcom/google/ads/internal/u;

    :goto_1
    move-object v2, p0

    move-object v6, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/ads/aq;-><init>(Lcom/google/ads/ao;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/u;)V

    return-object v0

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p4, v2}, Lcom/google/ads/internal/u;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/internal/u;

    move-result-object v9

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/ads/aq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    invoke-virtual {v0}, Lcom/google/ads/internal/u;->a()Z

    move-result v0

    return v0
.end method
