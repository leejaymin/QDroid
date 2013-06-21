.class public Lutil/ui/ClockView;
.super Landroid/view/View;


# static fields
.field public static final STATE_DETECT:I = 0x0

.field public static final STATE_FINISH:I = 0x3

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_OPTIMIZE:I = 0x2

.field public static final STATE_STOP:I = 0x1


# instance fields
.field private _angle:F

.field private _availableHeight:I

.field private _availableWidth:I

.field private _centerX:I

.field private _centerY:I

.field private _detectText:Ljava/lang/String;

.field private _dial_b:Landroid/graphics/Bitmap;

.field private _dial_bd:Landroid/graphics/drawable/BitmapDrawable;

.field private _dial_id:I

.field private _finishText:Ljava/lang/String;

.field private _height:I

.field private _indicator_b:Landroid/graphics/Bitmap;

.field private _indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

.field private _indicator_id:I

.field private _optimizeText:Ljava/lang/String;

.field private _paint:Landroid/graphics/Paint;

.field private _showIndicator:Z

.field private _state:I

.field private _stopText:Ljava/lang/String;

.field private _tempHeigh:I

.field private _tempWidth:I

.field private _text:Ljava/lang/String;

.field private _ticker:Landroid/os/Handler;

.field private _underlay_b:Landroid/graphics/Bitmap;

.field private _underlay_bd:Landroid/graphics/drawable/BitmapDrawable;

.field private _underlay_id:I

.field private _waitText:Ljava/lang/String;

.field private _width:I

.field private isRun:Z

.field lastTime:J

.field private tickRunnable:Ljava/lang/Runnable;

.field private updateHander:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lutil/ui/ClockView;->_state:I

    const-string v0, "Detect"

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    iput v1, p0, Lutil/ui/ClockView;->_availableWidth:I

    iput v1, p0, Lutil/ui/ClockView;->_availableHeight:I

    const v0, 0x7f0200a8

    iput v0, p0, Lutil/ui/ClockView;->_indicator_id:I

    const v0, 0x7f0200a5

    iput v0, p0, Lutil/ui/ClockView;->_underlay_id:I

    const v0, 0x7f0200a4

    iput v0, p0, Lutil/ui/ClockView;->_dial_id:I

    const-string v0, "Wait"

    iput-object v0, p0, Lutil/ui/ClockView;->_waitText:Ljava/lang/String;

    const-string v0, "Detect"

    iput-object v0, p0, Lutil/ui/ClockView;->_detectText:Ljava/lang/String;

    const-string v0, "Stop"

    iput-object v0, p0, Lutil/ui/ClockView;->_stopText:Ljava/lang/String;

    const-string v0, "Optimize"

    iput-object v0, p0, Lutil/ui/ClockView;->_optimizeText:Ljava/lang/String;

    const-string v0, "Finish"

    iput-object v0, p0, Lutil/ui/ClockView;->_finishText:Ljava/lang/String;

    new-instance v0, Lutil/ui/a;

    invoke-direct {v0, p0}, Lutil/ui/a;-><init>(Lutil/ui/ClockView;)V

    iput-object v0, p0, Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lutil/ui/ClockView;->lastTime:J

    new-instance v0, Lutil/ui/b;

    invoke-direct {v0, p0}, Lutil/ui/b;-><init>(Lutil/ui/ClockView;)V

    iput-object v0, p0, Lutil/ui/ClockView;->tickRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lutil/ui/ClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lutil/ui/ClockView;->_state:I

    const-string v0, "Detect"

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    iput v1, p0, Lutil/ui/ClockView;->_availableWidth:I

    iput v1, p0, Lutil/ui/ClockView;->_availableHeight:I

    const v0, 0x7f0200a8

    iput v0, p0, Lutil/ui/ClockView;->_indicator_id:I

    const v0, 0x7f0200a5

    iput v0, p0, Lutil/ui/ClockView;->_underlay_id:I

    const v0, 0x7f0200a4

    iput v0, p0, Lutil/ui/ClockView;->_dial_id:I

    const-string v0, "Wait"

    iput-object v0, p0, Lutil/ui/ClockView;->_waitText:Ljava/lang/String;

    const-string v0, "Detect"

    iput-object v0, p0, Lutil/ui/ClockView;->_detectText:Ljava/lang/String;

    const-string v0, "Stop"

    iput-object v0, p0, Lutil/ui/ClockView;->_stopText:Ljava/lang/String;

    const-string v0, "Optimize"

    iput-object v0, p0, Lutil/ui/ClockView;->_optimizeText:Ljava/lang/String;

    const-string v0, "Finish"

    iput-object v0, p0, Lutil/ui/ClockView;->_finishText:Ljava/lang/String;

    new-instance v0, Lutil/ui/a;

    invoke-direct {v0, p0}, Lutil/ui/a;-><init>(Lutil/ui/ClockView;)V

    iput-object v0, p0, Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lutil/ui/ClockView;->lastTime:J

    new-instance v0, Lutil/ui/b;

    invoke-direct {v0, p0}, Lutil/ui/b;-><init>(Lutil/ui/ClockView;)V

    iput-object v0, p0, Lutil/ui/ClockView;->tickRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lutil/ui/ClockView;->init()V

    return-void
.end method

.method static synthetic access$0(Lutil/ui/ClockView;)Z
    .locals 1

    iget-boolean v0, p0, Lutil/ui/ClockView;->isRun:Z

    return v0
.end method

.method static synthetic access$1(Lutil/ui/ClockView;)F
    .locals 1

    iget v0, p0, Lutil/ui/ClockView;->_angle:F

    return v0
.end method

.method static synthetic access$2(Lutil/ui/ClockView;F)V
    .locals 0

    iput p1, p0, Lutil/ui/ClockView;->_angle:F

    return-void
.end method

.method static synthetic access$3(Lutil/ui/ClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lutil/ui/ClockView;->updateHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lutil/ui/ClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lutil/ui/ClockView;->_ticker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lutil/ui/ClockView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lutil/ui/ClockView;->tickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget-object v1, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lutil/ui/ClockView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x4220

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    const v3, -0xaa563b

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lutil/ui/ClockView;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lutil/ui/ClockView;->_centerX:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget v3, p0, Lutil/ui/ClockView;->_centerY:I

    div-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lutil/ui/ClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lutil/ui/ClockView;->_indicator_id:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView;->_indicator_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView;->_indicator_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lutil/ui/ClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lutil/ui/ClockView;->_underlay_id:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView;->_underlay_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView;->_underlay_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView;->_underlay_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lutil/ui/ClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lutil/ui/ClockView;->_dial_id:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView;->_dial_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView;->_dial_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lutil/ui/ClockView;->_dial_b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView;->_width:I

    iget-object v0, p0, Lutil/ui/ClockView;->_dial_b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView;->_height:I

    iget v0, p0, Lutil/ui/ClockView;->_availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView;->_centerX:I

    iget v0, p0, Lutil/ui/ClockView;->_availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView;->_centerY:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lutil/ui/ClockView;->_paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lutil/ui/ClockView;->_ticker:Landroid/os/Handler;

    return-void
.end method

.method private setRun(Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p1, p0, Lutil/ui/ClockView;->isRun:Z

    iget-boolean v0, p0, Lutil/ui/ClockView;->isRun:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lutil/ui/ClockView;->_ticker:Landroid/os/Handler;

    iget-object v1, p0, Lutil/ui/ClockView;->tickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lutil/ui/ClockView;->showIndicator(ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2, v2}, Lutil/ui/ClockView;->showIndicator(ZI)V

    goto :goto_0
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFontHeight(F)I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getFontWidth(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lutil/ui/ClockView;->_state:I

    return v0
.end method

.method public isRun()Z
    .locals 1

    iget-boolean v0, p0, Lutil/ui/ClockView;->isRun:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    iget v1, p0, Lutil/ui/ClockView;->_availableWidth:I

    iget v2, p0, Lutil/ui/ClockView;->_width:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lutil/ui/ClockView;->_availableHeight:I

    iget v2, p0, Lutil/ui/ClockView;->_height:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lutil/ui/ClockView;->_availableWidth:I

    int-to-float v1, v1

    iget v2, p0, Lutil/ui/ClockView;->_width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lutil/ui/ClockView;->_availableHeight:I

    int-to-float v2, v2

    iget v3, p0, Lutil/ui/ClockView;->_height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lutil/ui/ClockView;->_centerX:I

    int-to-float v2, v2

    iget v3, p0, Lutil/ui/ClockView;->_centerY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget-object v1, p0, Lutil/ui/ClockView;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lutil/ui/ClockView;->_centerX:I

    iget v3, p0, Lutil/ui/ClockView;->_width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lutil/ui/ClockView;->_centerY:I

    iget v4, p0, Lutil/ui/ClockView;->_height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lutil/ui/ClockView;->_centerX:I

    iget v5, p0, Lutil/ui/ClockView;->_width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lutil/ui/ClockView;->_centerY:I

    iget v6, p0, Lutil/ui/ClockView;->_height:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lutil/ui/ClockView;->drawText(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lutil/ui/ClockView;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lutil/ui/ClockView;->_tempWidth:I

    iget-object v1, p0, Lutil/ui/ClockView;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lutil/ui/ClockView;->_tempHeigh:I

    iget v1, p0, Lutil/ui/ClockView;->_angle:F

    iget v2, p0, Lutil/ui/ClockView;->_centerX:I

    int-to-float v2, v2

    iget v3, p0, Lutil/ui/ClockView;->_centerY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v1, p0, Lutil/ui/ClockView;->_showIndicator:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lutil/ui/ClockView;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lutil/ui/ClockView;->_centerX:I

    iget v3, p0, Lutil/ui/ClockView;->_tempWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lutil/ui/ClockView;->_centerY:I

    iget v4, p0, Lutil/ui/ClockView;->_tempHeigh:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lutil/ui/ClockView;->_centerX:I

    iget v5, p0, Lutil/ui/ClockView;->_tempWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lutil/ui/ClockView;->_centerY:I

    iget v6, p0, Lutil/ui/ClockView;->_tempHeigh:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget v0, p0, Lutil/ui/ClockView;->_availableWidth:I

    iget v1, p0, Lutil/ui/ClockView;->_availableWidth:I

    invoke-virtual {p0, v0, v1}, Lutil/ui/ClockView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDetectText(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lutil/ui/ClockView;->_detectText:Ljava/lang/String;

    return-void
.end method

.method public setDialDrawable(I)V
    .locals 0

    iput p1, p0, Lutil/ui/ClockView;->_dial_id:I

    return-void
.end method

.method public setDrawable(III)V
    .locals 0

    iput p1, p0, Lutil/ui/ClockView;->_indicator_id:I

    iput p2, p0, Lutil/ui/ClockView;->_underlay_id:I

    iput p3, p0, Lutil/ui/ClockView;->_dial_id:I

    return-void
.end method

.method public setFinishText(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lutil/ui/ClockView;->_finishText:Ljava/lang/String;

    return-void
.end method

.method public setIndicatorDrawable(I)V
    .locals 0

    iput p1, p0, Lutil/ui/ClockView;->_indicator_id:I

    return-void
.end method

.method public setOptimizeText(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lutil/ui/ClockView;->_optimizeText:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lutil/ui/ClockView;->_state:I

    iget v0, p0, Lutil/ui/ClockView;->_state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lutil/ui/ClockView;->_waitText:Ljava/lang/String;

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lutil/ui/ClockView;->setRun(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lutil/ui/ClockView;->_detectText:Ljava/lang/String;

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lutil/ui/ClockView;->setRun(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lutil/ui/ClockView;->_stopText:Ljava/lang/String;

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    invoke-direct {p0, v2}, Lutil/ui/ClockView;->setRun(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lutil/ui/ClockView;->_optimizeText:Ljava/lang/String;

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lutil/ui/ClockView;->setRun(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lutil/ui/ClockView;->_finishText:Ljava/lang/String;

    iput-object v0, p0, Lutil/ui/ClockView;->_text:Ljava/lang/String;

    invoke-direct {p0, v1}, Lutil/ui/ClockView;->setRun(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setStateText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lutil/ui/ClockView;->_waitText:Ljava/lang/String;

    iput-object p2, p0, Lutil/ui/ClockView;->_detectText:Ljava/lang/String;

    iput-object p3, p0, Lutil/ui/ClockView;->_stopText:Ljava/lang/String;

    iput-object p4, p0, Lutil/ui/ClockView;->_optimizeText:Ljava/lang/String;

    iput-object p5, p0, Lutil/ui/ClockView;->_finishText:Ljava/lang/String;

    return-void
.end method

.method public setStopText(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lutil/ui/ClockView;->_stopText:Ljava/lang/String;

    return-void
.end method

.method public setUnderlayDrawable(I)V
    .locals 0

    iput p1, p0, Lutil/ui/ClockView;->_underlay_id:I

    return-void
.end method

.method public setWaitText(Ljava/lang/CharSequence;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lutil/ui/ClockView;->_waitText:Ljava/lang/String;

    return-void
.end method

.method public showIndicator(ZI)V
    .locals 1

    iput-boolean p1, p0, Lutil/ui/ClockView;->_showIndicator:Z

    int-to-float v0, p2

    iput v0, p0, Lutil/ui/ClockView;->_angle:F

    invoke-virtual {p0}, Lutil/ui/ClockView;->invalidate()V

    return-void
.end method
