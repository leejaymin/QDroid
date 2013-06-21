.class public Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;
.super Landroid/widget/ImageButton;
.source "GlyphImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private firstGlyph:Landroid/graphics/Bitmap;

.field private flashOn:Z

.field protected final myCirclePaint:Landroid/graphics/Paint;

.field protected final myTextPaint:Landroid/graphics/Paint;

.field private secondGlyph:Landroid/graphics/Bitmap;

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->myTextPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->myCirclePaint:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->timerHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->firstGlyph:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->firstGlyph:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->myTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->secondGlyph:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->secondGlyph:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->myTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 62
    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    .line 67
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->invalidate()V

    .line 68
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFirstGlyph(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->firstGlyph:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->invalidate()V

    .line 27
    return-void
.end method

.method public setSecondGlyph(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->secondGlyph:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->invalidate()V

    .line 33
    return-void
.end method

.method public startFlashTimer()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    .line 45
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->invalidate()V

    .line 46
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    return-void
.end method

.method public stopFlashTimer()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->flashOn:Z

    .line 52
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
