.class public Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;,
        Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;,
        Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
    }
.end annotation


# instance fields
.field private absoluteMaxValue:J

.field private absoluteMaxValuePrim:D

.field private absoluteMinValue:J

.field private absoluteMinValuePrim:D

.field private lastReportedMax:J

.field private lastReportedMin:J

.field private final lineHeight:F

.field private listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private notifyWhileDragging:Z

.field private final numberType:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

.field private final thumbHalfHeight:F

.field private final thumbHalfWidth:F

.field private final thumbImage:Landroid/graphics/Bitmap;

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private final thumbWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "atts"

    .prologue
    const-wide/16 v5, -0x1

    const/high16 v4, 0x3f00

    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 34
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbWidth:F

    .line 35
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    .line 36
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfHeight:F

    .line 37
    const v0, 0x3e99999a

    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lineHeight:F

    .line 38
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    .line 42
    iput-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    .line 43
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    .line 44
    iput-wide v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    .line 45
    iput-wide v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->notifyWhileDragging:Z

    .line 70
    sget-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;->LONG:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->numberType:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValue:J

    .line 72
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValue:J

    .line 73
    iput-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    .line 74
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 5
    .parameter "absoluteMinValue"
    .parameter "absoluteMaxValue"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    const/high16 v2, 0x3f00

    .line 59
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 32
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 33
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 34
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbWidth:F

    .line 35
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    .line 36
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfHeight:F

    .line 37
    const v0, 0x3e99999a

    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lineHeight:F

    .line 38
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    .line 43
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    .line 44
    iput-wide v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    .line 45
    iput-wide v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->notifyWhileDragging:Z

    .line 60
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValue:J

    .line 61
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValue:J

    .line 62
    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    .line 63
    invoke-virtual {p2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 64
    sget-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;->LONG:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->numberType:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

    .line 65
    return-void
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;)V
    .locals 4
    .parameter "screenCoord"
    .parameter "pressed"
    .parameter "canvas"

    .prologue
    .line 282
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f00

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 283
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private evalPressedThumb(F)Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
    .locals 5
    .parameter "touchX"

    .prologue
    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, result:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;
    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v1

    .line 293
    .local v1, minThumbPressed:Z
    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v0

    .line 294
    .local v0, maxThumbPressed:Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 304
    :cond_0
    :goto_0
    return-object v2

    .line 296
    :cond_1
    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    goto :goto_0

    .line 298
    :cond_2
    if-eqz v1, :cond_3

    .line 299
    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    goto :goto_0

    .line 301
    :cond_3
    if-eqz v0, :cond_0

    .line 302
    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    goto :goto_0
.end method

.method private isInThumbRange(FD)Z
    .locals 2
    .parameter "touchX"
    .parameter "normalizedThumbValue"

    .prologue
    .line 314
    invoke-direct {p0, p2, p3}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbHalfWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizedToScreen(D)F
    .locals 5
    .parameter "normalizedCoord"

    .prologue
    .line 366
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    iget v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)J
    .locals 7
    .parameter "normalized"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->numberType:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;

    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v3, v5

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$NumberType;->toNumber(D)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private screenToNormalized(F)D
    .locals 9
    .parameter "screenCoord"

    .prologue
    const/high16 v8, 0x4000

    const-wide/16 v3, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getWidth()I

    move-result v2

    .line 376
    .local v2, width:I
    int-to-float v5, v2

    iget v6, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    mul-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 382
    :goto_0
    return-wide v3

    .line 381
    :cond_0
    iget v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    sub-float v5, p1, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v0, v5

    .line 382
    .local v0, result:D
    const-wide/high16 v5, 0x3ff0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_0
.end method

.method private setNormalizedMaxValue(D)V
    .locals 6
    .parameter "value"

    .prologue
    .line 333
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    .line 334
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->invalidate()V

    .line 335
    return-void
.end method

.method private setNormalizedMinValue(D)V
    .locals 6
    .parameter "value"

    .prologue
    .line 323
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    .line 324
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->invalidate()V

    .line 325
    return-void
.end method

.method private valueToNormalized(Ljava/lang/Long;)D
    .locals 6
    .parameter "value"

    .prologue
    const-wide/16 v0, 0x0

    .line 353
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 357
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAbsoluteMaxValue()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValue:J

    return-wide v0
.end method

.method public getAbsoluteMinValue()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValue:J

    return-wide v0
.end method

.method public getSelectedMaxValue()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToValue(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedMinValue()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToValue(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public isNotifyWhileDragging()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x3f00

    .line 232
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lineHeight:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->padding:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lineHeight:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 235
    .local v0, rect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 240
    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 242
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V

    .line 247
    iget-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    sget-object v2, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V

    .line 248
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 216
    const/16 v1, 0xc8

    .line 217
    .local v1, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 221
    .local v0, height:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 224
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setMeasuredDimension(II)V

    .line 225
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "parcel"

    .prologue
    .line 269
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 270
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 271
    const-string v1, "MIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    .line 272
    const-string v1, "MAX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    .line 273
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "SUPER"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 258
    const-string v1, "MIN"

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 259
    const-string v1, "MAX"

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->normalizedMaxValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 260
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 173
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->evalPressedThumb(F)Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 174
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->invalidate()V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MIN:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 184
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 185
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;->rangeSeekBarValuesChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    .line 189
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    goto :goto_0

    .line 181
    :cond_3
    sget-object v0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->MAX:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    invoke-virtual {v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_1

    .line 196
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->pressedThumb:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$Thumb;

    .line 197
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->invalidate()V

    .line 198
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;->rangeSeekBarValuesChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMaxValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMax:J

    .line 203
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->getSelectedMinValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->lastReportedMin:J

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNotifyWhileDragging(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->notifyWhileDragging:Z

    .line 96
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;,"Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->listener:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 164
    return-void
.end method

.method public setRange(JJ)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValue:J

    .line 81
    iput-wide p3, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValue:J

    .line 82
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    .line 83
    long-to-double v0, p3

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 84
    return-void
.end method

.method public setSelectedMaxValue(J)V
    .locals 6
    .parameter "value"

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 151
    const-wide/high16 v0, 0x3ff0

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->valueToNormalized(Ljava/lang/Long;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_0
.end method

.method public setSelectedMinValue(J)V
    .locals 6
    .parameter "value"

    .prologue
    const-wide/16 v4, 0x0

    .line 128
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, v4, v5}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->valueToNormalized(Ljava/lang/Long;)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_0
.end method
