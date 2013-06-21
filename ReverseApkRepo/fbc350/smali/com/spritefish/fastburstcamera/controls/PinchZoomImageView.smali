.class public Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;
.super Landroid/widget/ImageView;
.source "PinchZoomImageView.java"


# static fields
.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Touch"

.field static final ZOOM:I = 0x2


# instance fields
.field context:Landroid/content/Context;

.field matrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field mode:I

.field oldDist:F

.field savedMatrix:Landroid/graphics/Matrix;

.field start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    .line 40
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->commonConstructorWork(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "atts"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    .line 30
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    .line 35
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->commonConstructorWork(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->spacing(Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;Landroid/graphics/PointF;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->midPoint(Landroid/graphics/PointF;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V

    return-void
.end method

.method private commonConstructorWork(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/high16 v1, 0x3f80

    .line 43
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 44
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->context:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 47
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    new-instance v0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;

    invoke-direct {v0, p0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;-><init>(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;)V

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method

.method private dumpEvent(Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    .line 154
    const/16 v5, 0xa

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "DOWN"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "UP"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "MOVE"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "CANCEL"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "OUTSIDE"

    aput-object v6, v3, v5

    .line 155
    const-string v5, "POINTER_DOWN"

    aput-object v5, v3, v7

    const-string v5, "POINTER_UP"

    aput-object v5, v3, v8

    const/4 v5, 0x7

    const-string v6, "7?"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "8?"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "9?"

    aput-object v6, v3, v5

    .line 156
    .local v3, names:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getAction()I

    move-result v0

    .line 158
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    .line 159
    .local v1, actionCode:I
    const-string v5, "event ACTION_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-eq v1, v7, :cond_0

    .line 161
    if-ne v1, v8, :cond_1

    .line 162
    :cond_0
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 163
    shr-int/lit8 v6, v0, 0x8

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getPointerCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 175
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v5, "Touch"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 168
    :cond_2
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 173
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 190
    invoke-virtual {p2, v5}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 191
    .local v0, x:F
    invoke-virtual {p2, v5}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 192
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 193
    return-void
.end method

.method private spacing(Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p1, v4}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 183
    .local v0, x:F
    invoke-virtual {p1, v4}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 184
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public setImage(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bm"
    .parameter "displayWidth"
    .parameter "displayHeight"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v4, 0x3f80

    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 120
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int v3, p3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int v4, p2, v4

    if-lt v3, v4, :cond_0

    .line 125
    int-to-float v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 130
    .local v2, scale:F
    :goto_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 131
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 132
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 133
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 137
    int-to-float v3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v1, v3, v4

    .line 138
    .local v1, redundantYSpace:F
    int-to-float v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float v0, v3, v4

    .line 140
    .local v0, redundantXSpace:F
    div-float/2addr v1, v6

    .line 141
    div-float/2addr v0, v6

    .line 144
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 145
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 146
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 148
    return-void

    .line 127
    .end local v0           #redundantXSpace:F
    .end local v1           #redundantYSpace:F
    .end local v2           #scale:F
    :cond_0
    int-to-float v3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .restart local v2       #scale:F
    goto :goto_0
.end method
