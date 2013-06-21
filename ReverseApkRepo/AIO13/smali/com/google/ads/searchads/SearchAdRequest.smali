.class public Lcom/google/ads/searchads/SearchAdRequest;
.super Lcom/google/ads/AdRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

.field private l:I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/AdRequest;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    const/16 v4, 0xff

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/searchads/SearchAdRequest;->setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bgcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientfrom"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientto"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "acolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headersize"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bcolor"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    invoke-direct {p0, v3}, Lcom/google/ads/searchads/SearchAdRequest;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "btype"

    iget-object v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    invoke-virtual {v3}, Lcom/google/ads/searchads/SearchAdRequest$BorderType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bthick"

    iget v3, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-super {p0, p1}, Lcom/google/ads/AdRequest;->getRequestMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setAnchorTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->g:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    iput v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    iput v2, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    :cond_0
    return-void
.end method

.method public setBackgroundGradient(II)V
    .locals 3

    const/16 v2, 0xff

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/ads/searchads/SearchAdRequest;->b:I

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->c:I

    iput p2, p0, Lcom/google/ads/searchads/SearchAdRequest;->d:I

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->j:I

    return-void
.end method

.method public setBorderThickness(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->l:I

    return-void
.end method

.method public setBorderType(Lcom/google/ads/searchads/SearchAdRequest$BorderType;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->k:Lcom/google/ads/searchads/SearchAdRequest$BorderType;

    return-void
.end method

.method public setCustomChannels(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->f:I

    return-void
.end method

.method public setFontFace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->h:Ljava/lang/String;

    return-void
.end method

.method public setHeaderTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->e:I

    return-void
.end method

.method public setHeaderTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->i:I

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/searchads/SearchAdRequest;->a:Ljava/lang/String;

    return-void
.end method
