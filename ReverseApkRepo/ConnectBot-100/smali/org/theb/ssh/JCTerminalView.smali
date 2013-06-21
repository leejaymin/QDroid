.class public Lorg/theb/ssh/JCTerminalView;
.super Landroid/view/View;
.source "JCTerminalView.java"

# interfaces
.implements Lcom/jcraft/jcterm/Term;
.implements Lorg/theb/ssh/Terminal;


# instance fields
.field private emulator:Lcom/jcraft/jcterm/Emulator;

.field private mAntialias:Z

.field private mBackground:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBold:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCharHeight:I

.field private mCharWidth:I

.field private final mColors:[Ljava/lang/Object;

.field private final mCursorPaint:Landroid/graphics/Paint;

.field private mDefaultBackground:I

.field private mDefaultForeground:I

.field private mDescent:I

.field private mForeground:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mReverse:Z

.field private mTermHeight:I

.field private mTermWidth:I

.field private mUnderline:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v1, -0x100

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    .line 51
    iput-boolean v2, p0, Lorg/theb/ssh/JCTerminalView;->mBold:Z

    .line 52
    iput-boolean v2, p0, Lorg/theb/ssh/JCTerminalView;->mUnderline:Z

    .line 53
    iput-boolean v2, p0, Lorg/theb/ssh/JCTerminalView;->mReverse:Z

    .line 55
    iput v3, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultForeground:I

    .line 56
    iput v1, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultBackground:I

    .line 57
    iput v3, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    .line 58
    iput v1, p0, Lorg/theb/ssh/JCTerminalView;->mBackground:I

    .line 60
    iput-boolean v4, p0, Lorg/theb/ssh/JCTerminalView;->mAntialias:Z

    .line 62
    const/16 v0, 0x50

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermWidth:I

    .line 63
    const/16 v0, 0x18

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermHeight:I

    .line 71
    iput v2, p0, Lorg/theb/ssh/JCTerminalView;->x:I

    .line 72
    iput v2, p0, Lorg/theb/ssh/JCTerminalView;->y:I

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/high16 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 75
    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, -0xff0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mColors:[Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/theb/ssh/JCTerminalView;->mAntialias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultForeground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCursorPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCursorPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/theb/ssh/JCTerminalView;->mAntialias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCursorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultForeground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCursorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PixelXorXfermode;

    iget v2, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultBackground:I

    invoke-direct {v1, v2}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-direct {p0, v0}, Lorg/theb/ssh/JCTerminalView;->setFont(Landroid/graphics/Typeface;)V

    .line 89
    return-void
.end method

.method private getBackgroundColor()I
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mReverse:Z

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    .line 167
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mBackground:I

    goto :goto_0
.end method

.method private getForegroundColor()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mReverse:Z

    if-eqz v0, :cond_0

    .line 172
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mBackground:I

    .line 173
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    goto :goto_0
.end method

.method private setFont(Landroid/graphics/Typeface;)V
    .locals 5
    .parameter "typeface"

    .prologue
    .line 136
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 137
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x4100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 139
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p0, Lorg/theb/ssh/JCTerminalView;->mDescent:I

    .line 141
    const/4 v2, 0x1

    new-array v1, v2, [F

    .line 142
    .local v1, widths:[F
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "X"

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 143
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/theb/ssh/JCTerminalView;->mCharWidth:I

    .line 146
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    .line 147
    const-string v2, "SSH"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "character height is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private setSize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->getCharWidth()I

    move-result v2

    div-int v0, p1, v2

    .line 122
    .local v0, column:I
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->getCharHeight()I

    move-result v2

    div-int v1, p2, v2

    .line 124
    .local v1, row:I
    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermWidth:I

    .line 125
    iput v1, p0, Lorg/theb/ssh/JCTerminalView;->mTermHeight:I

    .line 127
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v2}, Lcom/jcraft/jcterm/Emulator;->reset()V

    .line 130
    :cond_0
    invoke-virtual {p0, v3, v3, p1, p2}, Lorg/theb/ssh/JCTerminalView;->clear_area(IIII)V

    .line 133
    return-void
.end method

.method private toColor(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 257
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 261
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 262
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 265
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public beep()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/theb/ssh/JCTerminalView;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v3, v2

    .line 160
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    move v2, v1

    .line 159
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 161
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/theb/ssh/JCTerminalView;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    return-void
.end method

.method public clear_area(IIII)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 177
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/theb/ssh/JCTerminalView;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/theb/ssh/JCTerminalView;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    return-void
.end method

.method public drawBytes([BIIII)V
    .locals 5
    .parameter "buf"
    .parameter "s"
    .parameter "len"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, chars:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .local v1, chars:Ljava/lang/String;
    add-int v3, p2, p3

    :try_start_1
    invoke-virtual {v1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v0           #chars:Ljava/lang/String;
    move-result-object v3

    invoke-virtual {p0, v3, p4, p5}, Lorg/theb/ssh/JCTerminalView;->drawString(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 192
    .end local v1           #chars:Ljava/lang/String;
    .restart local v0       #chars:Ljava/lang/String;
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 190
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v3, "SSH"

    const-string v4, "Can\'t convert bytes to ASCII"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0           #chars:Ljava/lang/String;
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #chars:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .restart local v0       #chars:Ljava/lang/String;
    goto :goto_1
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 4
    .parameter "str"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 195
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/theb/ssh/JCTerminalView;->mBold:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 196
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lorg/theb/ssh/JCTerminalView;->mUnderline:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 197
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    iget v2, p0, Lorg/theb/ssh/JCTerminalView;->mDescent:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method public draw_cursor()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->postInvalidate()V

    .line 202
    return-void
.end method

.method public getCharHeight()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    return v0
.end method

.method public getCharWidth()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mCharWidth:I

    return v0
.end method

.method public getColor(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 213
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mColors:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mColors:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mColors:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermWidth:I

    return v0
.end method

.method public getKeyCode(II)[B
    .locals 1
    .parameter "keyCode"
    .parameter "meta"

    .prologue
    .line 317
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->getCodeENTER()[B

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 319
    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 320
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->getCodeLEFT()[B

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_1
    const/16 v0, 0x13

    if-ne p1, v0, :cond_2

    .line 322
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->getCodeUP()[B

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 324
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->getCodeDOWN()[B

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_3
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    .line 326
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->getCodeRIGHT()[B

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermHeight:I

    return v0
.end method

.method public getTermHeight()I
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermHeight:I

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTermWidth()I
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mTermWidth:I

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mCharWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->y:I

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    if-le v0, v1, :cond_0

    .line 98
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->x:I

    int-to-float v1, v0

    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->y:I

    iget v2, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->x:I

    iget v3, p0, Lorg/theb/ssh/JCTerminalView;->mCharWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lorg/theb/ssh/JCTerminalView;->mCursorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
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

    .line 105
    const-string v2, "SSH/TerminalView"

    const-string v3, "onSizeChanged called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 109
    .local v1, newCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    :cond_0
    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    .line 115
    iput-object v1, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    .line 117
    invoke-direct {p0, p1, p2}, Lorg/theb/ssh/JCTerminalView;->setSize(II)V

    .line 118
    return-void
.end method

.method public redraw(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->postInvalidate()V

    .line 237
    return-void
.end method

.method public resetAllAttributes()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mBold:Z

    .line 241
    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mUnderline:Z

    .line 242
    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mReverse:Z

    .line 244
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultBackground:I

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mBackground:I

    .line 245
    iget v0, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultForeground:I

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    .line 247
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    :cond_0
    return-void
.end method

.method public scroll_area(IIIIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/theb/ssh/JCTerminalView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    add-int v2, p1, p5

    int-to-float v2, v2

    add-int v3, p2, p6

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 254
    return-void
.end method

.method public setBackGround(Ljava/lang/Object;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lorg/theb/ssh/JCTerminalView;->toColor(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mBackground:I

    .line 270
    return-void
.end method

.method public setBold()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mBold:Z

    .line 274
    return-void
.end method

.method public setCursor(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 278
    .line 279
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mCharWidth:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 280
    const/4 v1, 0x0

    .line 278
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->x:I

    .line 282
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 283
    iget v1, p0, Lorg/theb/ssh/JCTerminalView;->mCharHeight:I

    .line 281
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->y:I

    .line 284
    return-void
.end method

.method public setDefaultBackGround(Ljava/lang/Object;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lorg/theb/ssh/JCTerminalView;->toColor(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultBackground:I

    .line 288
    return-void
.end method

.method public setDefaultForeGround(Ljava/lang/Object;)V
    .locals 1
    .parameter "foreground"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lorg/theb/ssh/JCTerminalView;->toColor(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mDefaultForeground:I

    .line 292
    return-void
.end method

.method public setForeGround(Ljava/lang/Object;)V
    .locals 1
    .parameter "foreground"

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lorg/theb/ssh/JCTerminalView;->toColor(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/theb/ssh/JCTerminalView;->mForeground:I

    .line 296
    return-void
.end method

.method public setReverse()V
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mReverse:Z

    .line 300
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lorg/theb/ssh/JCTerminalView;->getForegroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setUnderline()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/theb/ssh/JCTerminalView;->mUnderline:Z

    .line 306
    return-void
.end method

.method public start(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 309
    new-instance v0, Lcom/jcraft/jcterm/EmulatorVT100;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jcterm/EmulatorVT100;-><init>(Lcom/jcraft/jcterm/Term;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    .line 310
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->reset()V

    .line 311
    iget-object v0, p0, Lorg/theb/ssh/JCTerminalView;->emulator:Lcom/jcraft/jcterm/Emulator;

    invoke-virtual {v0}, Lcom/jcraft/jcterm/Emulator;->start()V

    .line 313
    invoke-virtual {p0}, Lorg/theb/ssh/JCTerminalView;->clear()V

    .line 314
    return-void
.end method
