.class Lcom/mxtech/media/FFPlayer$SubStationAlphaFrame;
.super Ljava/lang/Object;

# interfaces
.implements Lhf;


# instance fields
.field private final _nativeTrack:I

.field private final 癤욱븳援:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mxtech/media/FFPlayer$SubStationAlphaFrame;->_nativeTrack:I

    iput p2, p0, Lcom/mxtech/media/FFPlayer$SubStationAlphaFrame;->癤욱븳援:I

    return-void
.end method


# virtual methods
.method public 癤욱븳援(IIII)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    iget v0, p0, Lcom/mxtech/media/FFPlayer$SubStationAlphaFrame;->_nativeTrack:I

    iget v1, p0, Lcom/mxtech/media/FFPlayer$SubStationAlphaFrame;->癤욱븳援:I

    invoke-static {v0, p2, v1}, Lcom/mxtech/media/FFPlayer;->癤욱븳援(ILandroid/graphics/Bitmap;I)V

    return-void
.end method
