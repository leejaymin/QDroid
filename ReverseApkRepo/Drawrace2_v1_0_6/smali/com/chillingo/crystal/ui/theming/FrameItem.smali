.class public Lcom/chillingo/crystal/ui/theming/FrameItem;
.super Ljava/lang/Object;


# instance fields
.field private final NOT_SET:I

.field private _h:I

.field private _id:Ljava/lang/String;

.field _scaleFactor:F

.field private _w:I

.field private _x:I

.field private _y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILandroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->NOT_SET:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_id:Ljava/lang/String;

    iput v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_x:I

    iput v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_y:I

    iput v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_w:I

    iput v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_h:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setX(I)V

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setY(I)V

    invoke-virtual {p0, p4}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setWidth(I)V

    invoke-virtual {p0, p5}, Lcom/chillingo/crystal/ui/theming/FrameItem;->setHeight(I)V

    invoke-static {p6}, Lcom/chillingo/crystal/utils/IOSUtils;->scaleX(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    return-void
.end method


# virtual methods
.method public height()I
    .locals 2

    iget v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public scaleFactor()F
    .locals 1

    iget v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_h:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_id:Ljava/lang/String;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_w:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_y:I

    return-void
.end method

.method public width()I
    .locals 2

    iget v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_w:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public x()I
    .locals 2

    iget v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public y()I
    .locals 2

    iget v0, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/chillingo/crystal/ui/theming/FrameItem;->_scaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
