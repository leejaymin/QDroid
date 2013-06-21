.class public Lutil/ui/ClockView3;
.super Landroid/view/View;


# instance fields
.field _availableHeight:I

.field _availableWidth:I

.field _centerX:I

.field _centerY:I

.field _dial_b:Landroid/graphics/Bitmap;

.field _dial_bd:Landroid/graphics/drawable/BitmapDrawable;

.field _endAngle:I

.field _height:I

.field _indicator_b:Landroid/graphics/Bitmap;

.field _indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

.field _onlay_b:Landroid/graphics/Bitmap;

.field _onlay_bd:Landroid/graphics/drawable/BitmapDrawable;

.field _onlay_bt:Landroid/widget/Button;

.field _paddingBottom:I

.field _paddingLeft:I

.field _paddingRight:I

.field _paddingTop:I

.field _paint:Landroid/graphics/Paint;

.field _startAngle:I

.field _sweepAngle:I

.field _sweepPercent:I

.field _tempHeigh:I

.field _tempWidth:I

.field _tickHandler:Landroid/os/Handler;

.field _tv:Landroid/widget/TextView;

.field _width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    iput v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    iput v2, p0, Lutil/ui/ClockView3;->_startAngle:I

    const/16 v0, 0x10e

    iput v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v1, p0, Lutil/ui/ClockView3;->_startAngle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    iget v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x168

    iput v0, p0, Lutil/ui/ClockView3;->_sweepPercent:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingLeft:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingRight:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingTop:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingBottom:I

    invoke-direct {p0}, Lutil/ui/ClockView3;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/16 v0, 0x64

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    iput v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    iput v2, p0, Lutil/ui/ClockView3;->_startAngle:I

    const/16 v0, 0x10e

    iput v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v1, p0, Lutil/ui/ClockView3;->_startAngle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    iget v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x168

    iput v0, p0, Lutil/ui/ClockView3;->_sweepPercent:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingLeft:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingRight:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingTop:I

    iput v2, p0, Lutil/ui/ClockView3;->_paddingBottom:I

    invoke-direct {p0}, Lutil/ui/ClockView3;->init()V

    invoke-direct {p0, p1, p2}, Lutil/ui/ClockView3;->foo(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private foo(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1 getWidth, getHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Limoblife/toolbox/full/b;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 underlayDrawable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3 attrs.getAttributeName() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private foo1(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foo1(): getPaddingLeft, getPaddingRight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foo1(): getPaddingTop, getPaddingBottom = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foo1(): _availableWidth, _availableHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lutil/ui/ClockView3;->_availableWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lutil/ui/ClockView3;->_availableHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foo1(): _width, _height = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lutil/ui/ClockView3;->_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lutil/ui/ClockView3;->_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView3;->_centerX:I

    iget v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView3;->_centerY:I

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView3;->_indicator_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView3;->_indicator_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView3;->_indicator_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView3;->_onlay_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView3;->_onlay_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView3;->_onlay_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lutil/ui/ClockView3;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lutil/ui/ClockView3;->_dial_b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lutil/ui/ClockView3;->_dial_b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lutil/ui/ClockView3;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lutil/ui/ClockView3;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    iget-object v0, p0, Lutil/ui/ClockView3;->_dial_bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    iget-object v0, p0, Lutil/ui/ClockView3;->_dial_b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView3;->_width:I

    iget-object v0, p0, Lutil/ui/ClockView3;->_dial_b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lutil/ui/ClockView3;->_height:I

    iget v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView3;->_centerX:I

    iget v0, p0, Lutil/ui/ClockView3;->_availableHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lutil/ui/ClockView3;->_centerY:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lutil/ui/ClockView3;->_tickHandler:Landroid/os/Handler;

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

.method public getSweepAngle()I
    .locals 1

    iget v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/16 v2, 0x3e8

    const/4 v4, 0x1

    const v6, -0xa54e19

    const/16 v5, 0x14

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xa

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x28

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x50

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lutil/ui/ClockView3;->foo1(Landroid/graphics/Canvas;)V

    iget v0, p0, Lutil/ui/ClockView3;->_availableWidth:I

    int-to-float v0, v0

    iget v1, p0, Lutil/ui/ClockView3;->_width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lutil/ui/ClockView3;->_availableHeight:I

    int-to-float v1, v1

    iget v2, p0, Lutil/ui/ClockView3;->_height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lutil/ui/ClockView3;->_centerX:I

    int-to-float v1, v1

    iget v2, p0, Lutil/ui/ClockView3;->_centerY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDraw(): scale = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lutil/ui/ClockView3;->_centerX:I

    iget v2, p0, Lutil/ui/ClockView3;->_width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lutil/ui/ClockView3;->_centerY:I

    iget v3, p0, Lutil/ui/ClockView3;->_height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lutil/ui/ClockView3;->_centerX:I

    iget v5, p0, Lutil/ui/ClockView3;->_width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lutil/ui/ClockView3;->_centerY:I

    iget v6, p0, Lutil/ui/ClockView3;->_height:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v0, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lutil/ui/ClockView3;->_startAngle:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v3, p0, Lutil/ui/ClockView3;->_startAngle:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    iget v1, p0, Lutil/ui/ClockView3;->_startAngle:I

    sub-int/2addr v0, v1

    iput v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    iget v0, p0, Lutil/ui/ClockView3;->_sweepAngle:I

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x168

    iput v0, p0, Lutil/ui/ClockView3;->_sweepPercent:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lutil/ui/ClockView3;->_sweepPercent:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget-object v2, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v1, v3, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    iget-object v3, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lutil/ui/ClockView3;->_centerX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lutil/ui/ClockView3;->_centerY:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setSweepAngle(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lutil/ui/ClockView3;->setSweepAngle(II)V

    return-void
.end method

.method public setSweepAngle(II)V
    .locals 1

    rem-int/lit16 v0, p1, 0x169

    iput v0, p0, Lutil/ui/ClockView3;->_startAngle:I

    rem-int/lit16 v0, p2, 0x169

    iput v0, p0, Lutil/ui/ClockView3;->_endAngle:I

    invoke-virtual {p0}, Lutil/ui/ClockView3;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget-object v0, p0, Lutil/ui/ClockView3;->_paint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
