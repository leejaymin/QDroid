.class public Lcom/wolfram/alpha/impl/WAQueryParametersImpl;
.super Ljava/lang/Object;
.source "WAQueryParametersImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAQueryParameters;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ed661c64246c559L


# instance fields
.field protected allowReinterpret:Z

.field protected allowTranslation:Ljava/lang/Boolean;

.field protected appid:Ljava/lang/String;

.field protected assumptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected async:D

.field protected banners:Ljava/lang/String;

.field protected countryCode:Ljava/lang/String;

.field protected currency:Ljava/lang/String;

.field protected excludePodIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected extraParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected formatTimeout:D

.field protected formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected generalizationInput:Ljava/lang/String;

.field protected includePodIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected includeRelatedLinks:Z

.field protected input:Ljava/lang/String;

.field protected ip:Ljava/lang/String;

.field protected latitude:Ljava/lang/Double;

.field protected location:Ljava/lang/String;

.field protected longitude:Ljava/lang/Double;

.field protected magnification:D

.field protected maxWidth:I

.field protected metric:Ljava/lang/Boolean;

.field protected plotWidth:I

.field protected podIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected podScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected podStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/alpha/WAPodState;",
            ">;"
        }
    .end annotation
.end field

.field protected podTimeout:D

.field protected podTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected scanTimeout:D

.field protected signature:Ljava/lang/String;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const-wide/high16 v3, -0x4010

    const/4 v2, 0x5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->generalizationInput:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    .line 28
    iput-wide v3, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    .line 29
    iput-wide v3, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    .line 30
    iput-wide v3, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    .line 31
    iput-wide v3, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    .line 33
    iput v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    .line 34
    iput v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    .line 35
    iput v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    .line 36
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    .line 52
    iput-boolean v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->extraParams:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQueryParameters;)V
    .locals 12
    .parameter "orig"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v6, -0x1

    const-wide/high16 v8, -0x4010

    const/4 v7, 0x5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v5, ""

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->generalizationInput:Ljava/lang/String;

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    .line 28
    iput-wide v8, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    .line 29
    iput-wide v8, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    .line 30
    iput-wide v8, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    .line 31
    iput-wide v8, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    .line 33
    iput v6, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    .line 34
    iput v6, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    .line 35
    iput v6, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    .line 36
    const-wide/high16 v5, 0x3ff0

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    .line 50
    const-string v5, ""

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    .line 52
    iput-boolean v10, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->extraParams:Ljava/util/List;

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    .line 59
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    .line 79
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getInput()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    .line 80
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getAsync()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    .line 81
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getFormats()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getScanTimeout()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    .line 83
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPodTimeout()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    .line 84
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getFormatTimeout()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    .line 85
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    .line 86
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getMaxWidth()I

    move-result v5

    iput v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    .line 87
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPlotWidth()I

    move-result v5

    iput v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    .line 88
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getMagnification()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    .line 89
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getIP()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->ip:Ljava/lang/String;

    .line 90
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getLocation()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->location:Ljava/lang/String;

    .line 91
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getLatLong()[D

    move-result-object v3

    .line 92
    .local v3, latlong:[D
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    .line 93
    if-eqz v3, :cond_1

    aget-wide v5, v3, v10

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    .line 94
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->isMetric()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->metric:Ljava/lang/Boolean;

    .line 95
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getCurrency()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->currency:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->countryCode:Ljava/lang/String;

    .line 97
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->isAllowTranslation()Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowTranslation:Ljava/lang/Boolean;

    .line 98
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getBanners()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    .line 99
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPodTitles()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPodScanners()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPodIndexes()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v4, :cond_2

    aget v2, v0, v1

    .line 102
    .local v2, index:I
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v4           #len$:I
    :cond_0
    move-object v5, v11

    .line 92
    goto :goto_0

    :cond_1
    move-object v5, v11

    .line 93
    goto :goto_1

    .line 103
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    :cond_2
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getIncludePodIDs()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getExcludePodIDs()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getPodStates()[Lcom/wolfram/alpha/WAPodState;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getAssumptions()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->isRelatedLinks()Z

    move-result v5

    iput-boolean v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includeRelatedLinks:Z

    .line 108
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->isReinterpret()Z

    move-result v5

    iput-boolean v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    .line 114
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->extraParams:Ljava/util/List;

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryParameters;->getExtraParams()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 719
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 721
    :goto_0
    return-object v1

    .line 720
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 721
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAssumption(Ljava/lang/String;)V
    .locals 7
    .parameter "assumption"

    .prologue
    const/4 v6, 0x0

    .line 460
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v1, v5, v6

    .line 462
    .local v1, newLhs:Ljava/lang/String;
    const/4 v4, 0x0

    .line 463
    .local v4, wasFound:Z
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 464
    .local v0, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 466
    .local v2, oldAssumption:Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v3, v5, v6

    .line 467
    .local v3, oldLhs:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 468
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 469
    const/4 v4, 0x1

    .line 473
    .end local v2           #oldAssumption:Ljava/lang/String;
    .end local v3           #oldLhs:Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 474
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_2
    return-void
.end method

.method public addExcludePodID(Ljava/lang/String;)V
    .locals 1
    .parameter "podid"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    return-void
.end method

.method public addFormat(Ljava/lang/String;)V
    .locals 1
    .parameter "format"

    .prologue
    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public addIncludePodID(Ljava/lang/String;)V
    .locals 1
    .parameter "podid"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    return-void
.end method

.method public addPodIndex(I)V
    .locals 2
    .parameter "podindex"

    .prologue
    .line 331
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 332
    .local v0, index:Ljava/lang/Integer;
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    return-void
.end method

.method public addPodScanner(Ljava/lang/String;)V
    .locals 1
    .parameter "podscanner"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_0
    return-void
.end method

.method public addPodState(Lcom/wolfram/alpha/WAPodState;)V
    .locals 7
    .parameter "podstate"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, isReplacingExistingState:Z
    invoke-interface {p1}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 404
    invoke-interface {p1}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, newInputs:[Ljava/lang/String;
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 406
    .local v1, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/alpha/WAPodState;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 407
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wolfram/alpha/WAPodState;

    .line 408
    .local v4, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v4}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, oldInputs:[Ljava/lang/String;
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 411
    const/4 v0, 0x1

    .line 416
    .end local v1           #iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/wolfram/alpha/WAPodState;>;"
    .end local v2           #newInputs:[Ljava/lang/String;
    .end local v3           #oldInputs:[Ljava/lang/String;
    .end local v4           #state:Lcom/wolfram/alpha/WAPodState;
    :cond_1
    if-nez v0, :cond_2

    .line 417
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_2
    return-void
.end method

.method public addPodState(Ljava/lang/String;)V
    .locals 1
    .parameter "podstate"

    .prologue
    .line 390
    new-instance v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;

    invoke-direct {v0, p1}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodState(Lcom/wolfram/alpha/WAPodState;)V

    .line 391
    return-void
.end method

.method public addPodState(Ljava/lang/String;J)V
    .locals 1
    .parameter "podstate"
    .parameter "id"

    .prologue
    .line 394
    new-instance v0, Lcom/wolfram/alpha/impl/WAPodStateImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/wolfram/alpha/impl/WAPodStateImpl;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodState(Lcom/wolfram/alpha/WAPodState;)V

    .line 395
    return-void
.end method

.method public addPodTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "podtitle"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public clearAssumptions()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    return-void
.end method

.method public clearExcludePodIDs()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    return-void
.end method

.method public clearIncludePodIDs()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    return-void
.end method

.method public clearPodIndexes()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    return-void
.end method

.method public clearPodScanners()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 352
    return-void
.end method

.method public clearPodStates()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 451
    return-void
.end method

.method public clearPodTitles()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    return-void
.end method

.method public fillFromURL(Ljava/lang/String;)V
    .locals 53
    .parameter "url"

    .prologue
    .line 731
    const-string v51, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    .line 733
    .local v39, questionMarkPos:I
    add-int/lit8 v51, v39, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v38

    .line 734
    .local v38, queryString:Ljava/lang/String;
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v31, parmsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v51, "&"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 736
    .local v30, params:[Ljava/lang/String;
    move-object/from16 v5, v30

    .local v5, arr$:[Ljava/lang/String;
    move-object v0, v5

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    aget-object v29, v5, v18

    .line 737
    .local v29, param:Ljava/lang/String;
    const-string v51, "="

    move-object/from16 v0, v29

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v45

    .line 738
    .local v45, temp:[Ljava/lang/String;
    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_1

    .line 740
    const/16 v51, 0x1

    :try_start_0
    aget-object v51, v45, v51

    const-string v52, "UTF-8"

    invoke-static/range {v51 .. v52}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 741
    .local v48, value:Ljava/lang/String;
    const/16 v51, 0x0

    aget-object v51, v45, v51

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/List;

    .line 742
    .local v49, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v49, :cond_0

    .line 743
    new-instance v49, Ljava/util/ArrayList;

    .end local v49           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .restart local v49       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    const/16 v51, 0x0

    aget-object v51, v45, v51

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 736
    .end local v48           #value:Ljava/lang/String;
    .end local v49           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 751
    .end local v29           #param:Ljava/lang/String;
    .end local v45           #temp:[Ljava/lang/String;
    :cond_2
    const-string v51, "input"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 752
    .local v22, input:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_3

    const/16 v51, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setInput(Ljava/lang/String;)V

    .line 753
    :cond_3
    const-string v51, "banners"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 754
    .local v9, banners:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    const/16 v51, 0x0

    move-object v0, v9

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setBanners(Ljava/lang/String;)V

    .line 755
    :cond_4
    const-string v51, "format"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 756
    .local v16, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_5

    .line 757
    const/16 v51, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v51, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 758
    .local v15, fmts:[Ljava/lang/String;
    move-object v5, v15

    move-object v0, v5

    array-length v0, v0

    move/from16 v25, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    aget-object v14, v5, v18

    .local v14, fmt:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addFormat(Ljava/lang/String;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 760
    .end local v14           #fmt:Ljava/lang/String;
    .end local v15           #fmts:[Ljava/lang/String;
    :cond_5
    const-string v51, "ip"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 761
    .local v23, ip:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v23, :cond_6

    const/16 v51, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setIP(Ljava/lang/String;)V

    .line 762
    :cond_6
    const-string v51, "latlong"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 763
    .local v24, latlong:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_7

    const/16 v51, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setLatLong(Ljava/lang/String;)V

    .line 764
    :cond_7
    const-string v51, "location"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    .line 765
    .local v26, location:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_8

    const/16 v51, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setLocation(Ljava/lang/String;)V

    .line 766
    :cond_8
    const-string v51, "units"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/util/List;

    .line 767
    .local v47, units:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v47, :cond_9

    const-string v51, "metric"

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setMetric(Ljava/lang/Boolean;)V

    .line 768
    :cond_9
    const-string v51, "currency"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 769
    .local v11, currency:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_a

    const/16 v51, 0x0

    move-object v0, v11

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setCurrency(Ljava/lang/String;)V

    .line 770
    :cond_a
    const-string v51, "countrycode"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 771
    .local v10, countryCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_b

    const/16 v51, 0x0

    move-object v0, v10

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setCountryCode(Ljava/lang/String;)V

    .line 772
    :cond_b
    const-string v51, "translation"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 773
    .local v4, allowTranslation:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_c

    const-string v51, "true"

    move-object v0, v4

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setAllowTranslation(Ljava/lang/Boolean;)V

    .line 774
    :cond_c
    const-string v51, "podtitle"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/List;

    .line 775
    .local v36, podTitles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v36, :cond_d

    .line 776
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .local v46, title:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 777
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v46           #title:Ljava/lang/String;
    :cond_d
    const-string v51, "podscanner"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/List;

    .line 778
    .local v34, podScanners:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v34, :cond_e

    .line 779
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .local v42, scanner:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodScanner(Ljava/lang/String;)V

    goto :goto_4

    .line 780
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v42           #scanner:Ljava/lang/String;
    :cond_e
    const-string v51, "podindex"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 781
    .local v33, podIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v33, :cond_f

    .line 782
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .local v21, index:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodIndex(I)V

    goto :goto_5

    .line 783
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #index:Ljava/lang/String;
    :cond_f
    const-string v51, "includepodid"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 784
    .local v20, includePods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_10

    .line 785
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .local v19, include:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addIncludePodID(Ljava/lang/String;)V

    goto :goto_6

    .line 786
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #include:Ljava/lang/String;
    :cond_10
    const-string v51, "excludepodid"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 787
    .local v13, excludePods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_11

    .line 788
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, exclude:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addExcludePodID(Ljava/lang/String;)V

    goto :goto_7

    .line 789
    .end local v12           #exclude:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_11
    const-string v51, "assumption"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 790
    .local v6, assumptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_12

    .line 791
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, a:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addAssumption(Ljava/lang/String;)V

    goto :goto_8

    .line 792
    .end local v3           #a:Ljava/lang/String;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_12
    const-string v51, "podstate"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/List;

    .line 793
    .local v35, podStates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v35, :cond_13

    .line 794
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .local v44, state:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->addPodState(Ljava/lang/String;)V

    goto :goto_9

    .line 795
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v44           #state:Ljava/lang/String;
    :cond_13
    const-string v51, "sidebarlinks"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/List;

    .line 796
    .local v41, relatedLinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v41, :cond_14

    const/16 v51, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v51, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setRelatedLinks(Z)V

    .line 797
    :cond_14
    const-string v51, "reinterpret"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/List;

    .line 798
    .local v40, reinterpret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v40, :cond_15

    const/16 v51, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v51, "true"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setReinterpret(Z)V

    .line 803
    :cond_15
    :try_start_1
    const-string v51, "width"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/List;

    .line 804
    .local v50, width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v50, :cond_16

    const/16 v51, 0x0

    invoke-interface/range {v50 .. v51}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setWidth(I)V

    .line 805
    :cond_16
    const-string v51, "maxwidth"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/List;

    .line 806
    .local v28, maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v28, :cond_17

    const/16 v51, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setMaxWidth(I)V

    .line 807
    :cond_17
    const-string v51, "plotwidth"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    .line 808
    .local v32, plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v32, :cond_18

    const/16 v51, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setPlotWidth(I)V

    .line 809
    :cond_18
    const-string v51, "mag"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 810
    .local v27, magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v27, :cond_19

    const/16 v51, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setMagnification(D)V

    .line 811
    :cond_19
    const-string v51, "async"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 812
    .local v7, async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1a

    .line 813
    const/16 v51, 0x0

    move-object v0, v7

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 814
    .local v8, asyncValue:Ljava/lang/String;
    const-string v51, "true"

    move-object v0, v8

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1e

    .line 815
    const-wide/16 v51, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setAsync(D)V

    .line 821
    .end local v8           #asyncValue:Ljava/lang/String;
    :cond_1a
    :goto_a
    const-string v51, "scantimeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/List;

    .line 822
    .local v43, scantimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v43, :cond_1b

    const/16 v51, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setScanTimeout(D)V

    .line 823
    :cond_1b
    const-string v51, "podtimeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    .line 824
    .local v37, podtimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v37, :cond_1c

    const/16 v51, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setPodTimeout(D)V

    .line 825
    :cond_1c
    const-string v51, "formattimeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 826
    .local v17, formattimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_1d

    const/16 v51, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setFormatTimeout(D)V

    .line 830
    .end local v7           #async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #formattimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v28           #maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v32           #plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #podtimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v43           #scantimeout:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v50           #width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    :goto_b
    return-void

    .line 816
    .restart local v7       #async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #asyncValue:Ljava/lang/String;
    .restart local v27       #magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28       #maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32       #plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v50       #width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    const-string v51, "false"

    move-object v0, v8

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1f

    .line 817
    const-wide/high16 v51, -0x4010

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setAsync(D)V

    goto/16 :goto_a

    .line 827
    .end local v7           #async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #asyncValue:Ljava/lang/String;
    .end local v27           #magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v28           #maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v32           #plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v50           #width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v51

    goto :goto_b

    .line 819
    .restart local v7       #async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #asyncValue:Ljava/lang/String;
    .restart local v27       #magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28       #maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32       #plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v50       #width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1f
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v51

    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->setAsync(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 746
    .end local v4           #allowTranslation:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #assumptions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #async:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #asyncValue:Ljava/lang/String;
    .end local v9           #banners:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #countryCode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #currency:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #excludePods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v20           #includePods:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #input:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v23           #ip:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v24           #latlong:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v26           #location:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #magnification:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v28           #maxWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v32           #plotWidth:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v33           #podIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v34           #podScanners:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v35           #podStates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v36           #podTitles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v40           #reinterpret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v41           #relatedLinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v47           #units:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v50           #width:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v18, i$:I
    .restart local v29       #param:Ljava/lang/String;
    .restart local v45       #temp:[Ljava/lang/String;
    .restart local p1
    :catch_1
    move-exception v51

    goto/16 :goto_1
.end method

.method public getAssumptions()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAsync()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    return-wide v0
.end method

.method public getBanners()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludePodIDs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getExtraParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->extraParams:Ljava/util/List;

    return-object v0
.end method

.method public getFormatTimeout()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    return-wide v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getGeneralizationInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->generalizationInput:Ljava/lang/String;

    return-object v0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludePodIDs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLong()[D
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMagnification()D
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    return-wide v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    return v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    new-instance v10, Ljava/util/ArrayList;

    const/16 v14, 0xf

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    .local v10, params:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v11, s:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 526
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 527
    .local v8, param:[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "input"

    aput-object v15, v8, v14

    .line 528
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 529
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v8           #param:[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    move-object v14, v0

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 533
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 534
    .restart local v8       #param:[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "banners"

    aput-object v15, v8, v14

    .line 535
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    move-object v15, v0

    aput-object v15, v8, v14

    .line 536
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v8           #param:[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    .line 540
    .local v6, numFormats:I
    if-lez v6, :cond_4

    .line 541
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 542
    .restart local v8       #param:[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "format"

    aput-object v15, v8, v14

    .line 543
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 544
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formats:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const/4 v14, 0x1

    sub-int v14, v6, v14

    if-ge v3, v14, :cond_2

    .line 547
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_3
    const/4 v14, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 550
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    .end local v3           #i:I
    .end local v8           #param:[Ljava/lang/String;
    :cond_4
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 554
    .restart local v8       #param:[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "async"

    aput-object v15, v8, v14

    .line 555
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-nez v14, :cond_11

    .line 556
    const/4 v14, 0x1

    const-string v15, "true"

    aput-object v15, v8, v14

    .line 561
    :goto_1
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_5

    .line 564
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 565
    const/4 v14, 0x0

    const-string v15, "scantimeout"

    aput-object v15, v8, v14

    .line 566
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    move-wide v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 567
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_6

    .line 570
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 571
    const/4 v14, 0x0

    const-string v15, "podtimeout"

    aput-object v15, v8, v14

    .line 572
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    move-wide v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 573
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_7

    .line 576
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 577
    const/4 v14, 0x0

    const-string v15, "formattimeout"

    aput-object v15, v8, v14

    .line 578
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    move-wide v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 579
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->ip:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_8

    .line 583
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 584
    const/4 v14, 0x0

    const-string v15, "ip"

    aput-object v15, v8, v14

    .line 585
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->ip:Ljava/lang/String;

    move-object v15, v0

    aput-object v15, v8, v14

    .line 586
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    move-object v14, v0

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    move-object v14, v0

    if-eqz v14, :cond_9

    .line 589
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 590
    const/4 v14, 0x0

    const-string v15, "latlong"

    aput-object v15, v8, v14

    .line 591
    const/4 v14, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 592
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->location:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_a

    .line 595
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 596
    const/4 v14, 0x0

    const-string v15, "location"

    aput-object v15, v8, v14

    .line 597
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->location:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 598
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->metric:Ljava/lang/Boolean;

    move-object v14, v0

    if-eqz v14, :cond_b

    .line 601
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 602
    const/4 v14, 0x0

    const-string v15, "units"

    aput-object v15, v8, v14

    .line 603
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->metric:Ljava/lang/Boolean;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_13

    const-string v15, "metric"

    :goto_2
    aput-object v15, v8, v14

    .line 604
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->currency:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_c

    .line 607
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 608
    const/4 v14, 0x0

    const-string v15, "currency"

    aput-object v15, v8, v14

    .line 609
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->currency:Ljava/lang/String;

    move-object v15, v0

    aput-object v15, v8, v14

    .line 610
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->countryCode:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_d

    .line 613
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 614
    const/4 v14, 0x0

    const-string v15, "countrycode"

    aput-object v15, v8, v14

    .line 615
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->countryCode:Ljava/lang/String;

    move-object v15, v0

    aput-object v15, v8, v14

    .line 616
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowTranslation:Ljava/lang/Boolean;

    move-object v14, v0

    if-eqz v14, :cond_e

    .line 619
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 620
    const/4 v14, 0x0

    const-string v15, "translation"

    aput-object v15, v8, v14

    .line 621
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowTranslation:Ljava/lang/Boolean;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_14

    const-string v15, "true"

    :goto_3
    aput-object v15, v8, v14

    .line 622
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includeRelatedLinks:Z

    move v14, v0

    if-eqz v14, :cond_f

    .line 625
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 626
    const/4 v14, 0x0

    const-string v15, "sidebarlinks"

    aput-object v15, v8, v14

    .line 627
    const/4 v14, 0x1

    const-string v15, "true"

    aput-object v15, v8, v14

    .line 628
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    move v14, v0

    if-eqz v14, :cond_10

    .line 631
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 632
    const/4 v14, 0x0

    const-string v15, "reinterpret"

    aput-object v15, v8, v14

    .line 633
    const/4 v14, 0x1

    const-string v15, "true"

    aput-object v15, v8, v14

    .line 634
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 638
    .local v13, t:Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 639
    const/4 v14, 0x0

    const-string v15, "podtitle"

    aput-object v15, v8, v14

    .line 640
    const/4 v14, 0x1

    invoke-static {v13}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 641
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 557
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v13           #t:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    move-wide v14, v0

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_12

    .line 558
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    move-wide v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    goto/16 :goto_1

    .line 560
    :cond_12
    const/4 v14, 0x1

    const-string v15, "false"

    aput-object v15, v8, v14

    goto/16 :goto_1

    .line 603
    :cond_13
    const-string v15, "nonmetric"

    goto/16 :goto_2

    .line 621
    :cond_14
    const-string v15, "false"

    goto/16 :goto_3

    .line 643
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 644
    .local v12, sc:Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 645
    const/4 v14, 0x0

    const-string v15, "scanner"

    aput-object v15, v8, v14

    .line 646
    const/4 v14, 0x1

    aput-object v12, v8, v14

    .line 647
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 649
    .end local v12           #sc:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 650
    .local v3, i:Ljava/lang/Integer;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 651
    const/4 v14, 0x0

    const-string v15, "podindex"

    aput-object v15, v8, v14

    .line 652
    const/4 v14, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 653
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 655
    .end local v3           #i:Ljava/lang/Integer;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includePodIDs:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 656
    .local v5, id:Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 657
    const/4 v14, 0x0

    const-string v15, "includepodid"

    aput-object v15, v8, v14

    .line 658
    const/4 v14, 0x1

    invoke-static {v5}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 659
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 661
    .end local v5           #id:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->excludePodIDs:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 662
    .restart local v5       #id:Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 663
    const/4 v14, 0x0

    const-string v15, "excludepodid"

    aput-object v15, v8, v14

    .line 664
    const/4 v14, 0x1

    invoke-static {v5}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 665
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 668
    .end local v5           #id:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->assumptions:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 669
    .local v2, a:Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 670
    const/4 v14, 0x0

    const-string v15, "assumption"

    aput-object v15, v8, v14

    .line 672
    const/4 v14, 0x1

    aput-object v2, v8, v14

    .line 673
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 675
    .end local v2           #a:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/wolfram/alpha/WAPodState;

    .line 676
    .local v7, p:Lcom/wolfram/alpha/WAPodState;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 677
    const/4 v14, 0x0

    const-string v15, "podstate"

    aput-object v15, v8, v14

    .line 678
    const/4 v14, 0x1

    invoke-interface {v7}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7}, Lcom/wolfram/alpha/WAPodState;->getCurrentIndex()I

    move-result v16

    aget-object v15, v15, v16

    invoke-static {v15}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 679
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 682
    .end local v7           #p:Lcom/wolfram/alpha/WAPodState;
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    move v14, v0

    if-lez v14, :cond_1c

    .line 683
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 684
    const/4 v14, 0x0

    const-string v15, "width"

    aput-object v15, v8, v14

    .line 685
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 686
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    move v14, v0

    if-lez v14, :cond_1d

    .line 689
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 690
    const/4 v14, 0x0

    const-string v15, "maxwidth"

    aput-object v15, v8, v14

    .line 691
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 692
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    move v14, v0

    if-lez v14, :cond_1e

    .line 695
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 696
    const/4 v14, 0x0

    const-string v15, "plotwidth"

    aput-object v15, v8, v14

    .line 697
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    move v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 698
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_1e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    move-wide v14, v0

    const-wide/high16 v16, 0x3ff0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_1f

    .line 701
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 702
    const/4 v14, 0x0

    const-string v15, "mag"

    aput-object v15, v8, v14

    .line 703
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    move-wide v15, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v8, v14

    .line 704
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->extraParams:Ljava/util/List;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 707
    .local v9, paramPair:[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v8, v14, [Ljava/lang/String;

    .line 708
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v9, v15

    aput-object v15, v8, v14

    .line 709
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v9, v15

    aput-object v15, v8, v14

    .line 710
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 713
    .end local v9           #paramPair:[Ljava/lang/String;
    :cond_20
    return-object v10
.end method

.method public getPlotWidth()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    return v0
.end method

.method public getPodIndexes()[I
    .locals 6

    .prologue
    .line 322
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 323
    .local v4, result:[I
    const/4 v0, 0x0

    .line 324
    .local v0, i:I
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podIndices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 325
    .local v3, index:Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 327
    .end local v3           #index:Ljava/lang/Integer;
    :cond_0
    return-object v4
.end method

.method public getPodScanners()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podScanners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPodStates()[Lcom/wolfram/alpha/WAPodState;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/wolfram/alpha/WAPodState;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/wolfram/alpha/WAPodState;

    return-object p0
.end method

.method public getPodTimeout()D
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    return-wide v0
.end method

.method public getPodTitles()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getScanTimeout()D
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    return v0
.end method

.method public isAllowTranslation()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowTranslation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMetric()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->metric:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isReinterpret()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    return v0
.end method

.method public isRelatedLinks()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includeRelatedLinks:Z

    return v0
.end method

.method public setAllowTranslation(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowTranslation:Ljava/lang/Boolean;

    .line 265
    return-void
.end method

.method public setAsync(D)V
    .locals 0
    .parameter "async"

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->async:D

    .line 187
    return-void
.end method

.method public setBanners(Ljava/lang/String;)V
    .locals 0
    .parameter "bannerParam"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->banners:Ljava/lang/String;

    .line 486
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->countryCode:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "currency"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->currency:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setFormatTimeout(D)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 177
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->formatTimeout:D

    .line 178
    return-void
.end method

.method public setGeneralizationInput(Ljava/lang/String;)V
    .locals 0
    .parameter "generalizationInput"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->generalizationInput:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->ip:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setLatLong(Ljava/lang/String;)V
    .locals 3
    .parameter "latlong"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 211
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "latlong specification must be two numbers separated by a comma"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/Double;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    .line 215
    new-instance v1, Ljava/lang/Double;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    .line 216
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 219
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->latitude:Ljava/lang/Double;

    .line 220
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->location:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->longitude:Ljava/lang/Double;

    .line 224
    return-void
.end method

.method public setMagnification(D)V
    .locals 0
    .parameter "mag"

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->magnification:D

    .line 302
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 284
    iput p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->maxWidth:I

    .line 285
    return-void
.end method

.method public setMetric(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "metric"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->metric:Ljava/lang/Boolean;

    .line 240
    return-void
.end method

.method public setPlotWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 293
    iput p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->plotWidth:I

    .line 294
    return-void
.end method

.method public setPodTimeout(D)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->podTimeout:D

    .line 169
    return-void
.end method

.method public setReinterpret(Z)V
    .locals 0
    .parameter "allowReinterpret"

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->allowReinterpret:Z

    .line 502
    return-void
.end method

.method public setRelatedLinks(Z)V
    .locals 0
    .parameter "include"

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->includeRelatedLinks:Z

    .line 494
    return-void
.end method

.method public setScanTimeout(D)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->scanTimeout:D

    .line 160
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "sig"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->signature:Ljava/lang/String;

    .line 510
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 275
    iput p1, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->width:I

    .line 276
    return-void
.end method

.method public toWebsiteURL()Ljava/lang/String;
    .locals 7

    .prologue
    .line 835
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "http://www.wolframalpha.com/input/?i="

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 837
    .local v4, url:Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v5, p0, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->input:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryParametersImpl;->getAssumptions()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 840
    .local v0, a:Ljava/lang/String;
    const-string v5, "&a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 843
    .end local v0           #a:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 838
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method
