.class public Lorg/theb/ssh/JTATerminalView;
.super Landroid/view/View;
.source "JTATerminalView.java"

# interfaces
.implements Lde/mud/terminal/VDUDisplay;
.implements Lorg/theb/ssh/Terminal;
.implements Ljava/lang/Runnable;


# static fields
.field private static final COLOR_BG_STD:I = 0x0

.field private static final COLOR_FG_STD:I = 0x7


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private buffer:Lde/mud/terminal/VDUBuffer;

.field private canvas:Landroid/graphics/Canvas;

.field private charDescent:I

.field private charHeight:I

.field private charWidth:I

.field private color:[I

.field private cursorPaint:Landroid/graphics/Paint;

.field protected emulation:Lde/mud/terminal/vt320;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private paint:Landroid/graphics/Paint;

.field private reader:Ljava/lang/Thread;

.field private sf:Lde/mud/terminal/SoftFont;

.field private xoffset:I

.field private yoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "ASCII"

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->encoding:Ljava/lang/String;

    .line 39
    new-instance v0, Lde/mud/terminal/SoftFont;

    invoke-direct {v0}, Lde/mud/terminal/SoftFont;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->sf:Lde/mud/terminal/SoftFont;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;

    .line 47
    iput v3, p0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    .line 48
    iput v3, p0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 58
    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->color:[I

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->cursorPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->cursorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->color:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lorg/theb/ssh/JTATerminalView;->darken(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->cursorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PixelXorXfermode;

    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->color:[I

    aget v2, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/theb/ssh/JTATerminalView;->setFont(Landroid/graphics/Typeface;I)V

    .line 77
    new-instance v0, Lorg/theb/ssh/JTATerminalView$1;

    invoke-direct {v0, p0}, Lorg/theb/ssh/JTATerminalView$1;-><init>(Lorg/theb/ssh/JTATerminalView;)V

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    .line 96
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    invoke-virtual {p0, v0}, Lorg/theb/ssh/JTATerminalView;->setVDUBuffer(Lde/mud/terminal/VDUBuffer;)V

    .line 97
    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lorg/theb/ssh/JTATerminalView;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;

    return-void
.end method

.method private darken(I)I
    .locals 7
    .parameter "color"

    .prologue
    const-wide v5, 0x3fe999999999999aL

    .line 200
    const/16 v0, 0xff

    .line 201
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 202
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 203
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 200
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private setFont(Landroid/graphics/Typeface;I)V
    .locals 4
    .parameter "typeface"
    .parameter "size"

    .prologue
    .line 143
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 148
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p0, Lorg/theb/ssh/JTATerminalView;->charDescent:I

    .line 150
    const/4 v2, 0x1

    new-array v1, v2, [F

    .line 151
    .local v1, widths:[F
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    const-string v3, "X"

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 152
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    .line 154
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    .line 155
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 136
    iget v2, p0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    div-int v1, p1, v2

    .line 137
    .local v1, termWidth:I
    iget v2, p0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    div-int v0, p2, v2

    .line 139
    .local v0, termHeight:I
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iput v0, v3, Lde/mud/terminal/VDUBuffer;->height:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 140
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->width:I

    return v0
.end method

.method public getInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKeyCode(II)[B
    .locals 3
    .parameter "keyCode"
    .parameter "meta"

    .prologue
    const/16 v2, 0x20

    .line 175
    sparse-switch p1, :sswitch_data_0

    .line 192
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 177
    :sswitch_0
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2, p2}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, p2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_0

    .line 183
    :sswitch_2
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, p2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_0

    .line 186
    :sswitch_3
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2, p2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_0

    .line 189
    :sswitch_4
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, p2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_4
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOutput()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->height:I

    return v0
.end method

.method public getVDUBuffer()Lde/mud/terminal/VDUBuffer;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v0}, Lde/mud/terminal/VDUBuffer;->isCursorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->windowBase:I

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v0, v0, Lde/mud/terminal/VDUBuffer;->screenBase:I

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->windowBase:I

    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v0}, Lde/mud/terminal/VDUBuffer;->getCursorColumn()I

    move-result v0

    iget v1, p0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    add-int v6, v0, v1

    .line 108
    .local v6, x:I
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v0}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v0

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->screenBase:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v1, v1, Lde/mud/terminal/VDUBuffer;->windowBase:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    add-int v7, v0, v1

    .line 109
    .local v7, y:I
    int-to-float v1, v6

    int-to-float v2, v7

    iget v0, p0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lorg/theb/ssh/JTATerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 116
    const-string v2, "SSH/TerminalView"

    const-string v3, "onSizeChanged called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 120
    .local v1, newCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lorg/theb/ssh/JTATerminalView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    :cond_0
    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->bitmap:Landroid/graphics/Bitmap;

    .line 126
    iput-object v1, p0, Lorg/theb/ssh/JTATerminalView;->canvas:Landroid/graphics/Canvas;

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/theb/ssh/JTATerminalView;->setSize(II)V

    .line 131
    invoke-virtual {p0}, Lorg/theb/ssh/JTATerminalView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->width:I

    iget v4, p0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    .line 132
    invoke-virtual {p0}, Lorg/theb/ssh/JTATerminalView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->height:I

    iget v4, p0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    .line 133
    return-void
.end method

.method public redraw()V
    .locals 20

    .prologue
    .line 224
    const/16 v16, 0x0

    .line 225
    .local v16, lines:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    add-long v18, v3, v5

    .line 232
    .local v18, time:J
    const/4 v15, 0x0

    .local v15, l:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v15, v3, :cond_0

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v18, v3, v18

    .line 336
    const-string v3, "redraw"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "redraw called and updated lines="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taking ms="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual/range {p0 .. p0}, Lorg/theb/ssh/JTATerminalView;->postInvalidate()V

    .line 339
    return-void

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v4, v15, 0x1

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    .line 232
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 236
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v4, v15, 0x1

    const/4 v5, 0x0

    aput-boolean v5, v3, v4

    .line 238
    add-int/lit8 v16, v16, 0x1

    .line 248
    const/4 v12, 0x0

    .local v12, c:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v12, v3, :cond_1

    .line 249
    const/4 v10, 0x0

    .line 250
    .local v10, addr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v4, v15

    aget-object v3, v3, v4

    aget v13, v3, v12

    .line 252
    .local v13, currAttr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->color:[I

    move-object v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/theb/ssh/JTATerminalView;->darken(I)I

    move-result v14

    .line 253
    .local v14, fg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->color:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/theb/ssh/JTATerminalView;->darken(I)I

    move-result v11

    .line 256
    .local v11, bg:I
    and-int/lit16 v3, v13, 0x1e0

    if-eqz v3, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->color:[I

    move-object v3, v0

    and-int/lit16 v4, v13, 0x1e0

    shr-int/lit8 v4, v4, 0x5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v14, v3, v4

    .line 260
    :cond_3
    and-int/lit16 v3, v13, 0x1e00

    if-eqz v3, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->color:[I

    move-object v3, v0

    and-int/lit16 v4, v13, 0x1e00

    shr-int/lit8 v4, v4, 0x9

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/theb/ssh/JTATerminalView;->darken(I)I

    move-result v11

    .line 264
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v3, v0

    and-int/lit8 v4, v13, 0x1

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 266
    and-int/lit8 v3, v13, 0x8

    if-eqz v3, :cond_5

    .line 267
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lorg/theb/ssh/JTATerminalView;->darken(I)I

    move-result v14

    .line 270
    .restart local v14       #fg:I
    :cond_5
    and-int/lit8 v3, v13, 0x4

    if-eqz v3, :cond_6

    .line 271
    move/from16 v17, v11

    .line 272
    .local v17, swapc:I
    move v11, v14

    .line 273
    move/from16 v14, v17

    .line 307
    .end local v17           #swapc:I
    :cond_6
    :goto_3
    add-int v3, v12, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v4, v15

    aget-object v3, v3, v4

    add-int v4, v12, v10

    aget v3, v3, v4

    if-eq v3, v13, :cond_a

    .line 312
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->canvas:Landroid/graphics/Canvas;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    move v4, v0

    mul-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    move v5, v0

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    move v5, v0

    mul-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 314
    add-int v6, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    move v7, v0

    mul-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    move v8, v0

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    move v8, v0

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 313
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v3, v0

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v3, v0

    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 321
    and-int/lit8 v3, v13, 0x10

    if-nez v3, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->canvas:Landroid/graphics/Canvas;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v5, v0

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v5, v15

    aget-object v4, v4, v5

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charWidth:I

    move v5, v0

    mul-int/2addr v5, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->xoffset:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v7, v5

    .line 325
    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->charDescent:I

    move v6, v0

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/theb/ssh/JTATerminalView;->yoffset:I

    move v6, v0

    add-int/2addr v5, v6

    int-to-float v8, v5

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/theb/ssh/JTATerminalView;->paint:Landroid/graphics/Paint;

    move-object v9, v0

    move v5, v12

    move v6, v10

    .line 322
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 329
    :cond_8
    const/4 v3, 0x1

    sub-int v3, v10, v3

    add-int/2addr v12, v3

    .line 248
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 264
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 308
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 318
    :cond_b
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public run()V
    .locals 7

    .prologue
    .line 363
    const/16 v3, 0x100

    new-array v0, v3, [B

    .line 364
    .local v0, b:[B
    const/4 v2, 0x0

    .line 365
    .local v2, n:I
    :goto_0
    if-gez v2, :cond_0

    .line 374
    :goto_1
    return-void

    .line 367
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 368
    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/theb/ssh/JTATerminalView;->emulation:Lde/mud/terminal/vt320;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/theb/ssh/JTATerminalView;->encoding:Ljava/lang/String;

    invoke-direct {v4, v0, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lde/mud/terminal/vt320;->putString(Ljava/lang/String;)V

    .line 369
    :cond_1
    invoke-virtual {p0}, Lorg/theb/ssh/JTATerminalView;->redraw()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 371
    .local v1, e:Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;

    goto :goto_1
.end method

.method public setVDUBuffer(Lde/mud/terminal/VDUBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 358
    iput-object p1, p0, Lorg/theb/ssh/JTATerminalView;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 359
    invoke-virtual {p1, p0}, Lde/mud/terminal/VDUBuffer;->setDisplay(Lde/mud/terminal/VDUDisplay;)V

    .line 360
    return-void
.end method

.method public start(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 346
    iput-object p1, p0, Lorg/theb/ssh/JTATerminalView;->in:Ljava/io/InputStream;

    .line 347
    iput-object p2, p0, Lorg/theb/ssh/JTATerminalView;->out:Ljava/io/OutputStream;

    .line 349
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;

    .line 350
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->reader:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 351
    return-void
.end method

.method public updateScrollBar()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "SSH/JTATerm/write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to write"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lorg/theb/ssh/JTATerminalView;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    return-void
.end method
