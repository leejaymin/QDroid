.class public final Lcom/mxtech/subtitle/SubStationAlphaSubtitle;
.super Ljava/lang/Object;

# interfaces
.implements Lhg;


# instance fields
.field private _nativeContext:I

.field private final 癤욱븳援:Landroid/net/Uri;

.field private final 궗:Ljava/lang/String;

.field private final 먯꽌:Lhi;

.field private 쇰뒗:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->쇰뒗:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lhi;->癤욱븳援(ILcom/mxtech/media/FFPlayer;)Lcom/mxtech/subtitle/SubStationAlphaMedia;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->native_create(Ljava/lang/String;Lcom/mxtech/subtitle/SubStationAlphaMedia;)V

    iput-object p2, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->癤욱븳援:Landroid/net/Uri;

    invoke-static {p2}, Lhd;->癤욱븳援(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->궗:Ljava/lang/String;

    iput-object p3, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->먯꽌:Lhi;

    return-void
.end method

.method private native _seek(I)Z
.end method

.method private native getCurrentEventTime()I
.end method

.method private native native_create(Ljava/lang/String;Lcom/mxtech/subtitle/SubStationAlphaMedia;)V
.end method

.method private native native_destroy()V
.end method

.method private native renderFrame(Landroid/graphics/Bitmap;I)V
.end method

.method public static synthetic 癤욱븳援(Lcom/mxtech/subtitle/SubStationAlphaSubtitle;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->renderFrame(Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->native_destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native next()I
.end method

.method public native previous()I
.end method

.method public ㅼ꽑嫄()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 洹()Ljava/util/Locale;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 癤욱븳援()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 癤욱븳援(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->먯꽌:Lhi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lhi;->癤욱븳援(Z)V

    :cond_0
    return-void
.end method

.method public 癤욱븳援(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->_seek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->쇰뒗:I

    :cond_0
    return v0
.end method

.method public 궗()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public 궗(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->쇰뒗:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->쇰뒗:I

    :cond_0
    new-instance v1, Lhq;

    invoke-direct {v1, p0, v0}, Lhq;-><init>(Lcom/mxtech/subtitle/SubStationAlphaSubtitle;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->getCurrentEventTime()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 대쫫()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->궗:Ljava/lang/String;

    return-object v0
.end method

.method public 먯꽌()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public 쇰뒗()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/subtitle/SubStationAlphaSubtitle;->癤욱븳援:Landroid/net/Uri;

    return-object v0
.end method
