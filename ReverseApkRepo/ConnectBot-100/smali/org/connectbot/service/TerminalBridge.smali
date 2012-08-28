.class public Lorg/connectbot/service/TerminalBridge;
.super Ljava/lang/Object;
.source "TerminalBridge.java"

# interfaces
.implements Lde/mud/terminal/VDUDisplay;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/TerminalBridge$HostKeyVerifier;
    }
.end annotation


# static fields
.field public static final AUTH_PASSWORD:Ljava/lang/String; = "password"

.field public static final AUTH_PUBLICKEY:Ljava/lang/String; = "publickey"

.field private static final COLOR_BG_STD:I = 0x0

.field private static final COLOR_FG_STD:I = 0x7

.field public static final DEFAULT_FONT_SIZE:I = 0xa

.field public static final ENCODING:Ljava/lang/String; = "ASCII"

.field public static final TERM_HEIGHT_CHARS:I = 0x18

.field public static final TERM_WIDTH_CHARS:I = 0x50


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public buffer:Lde/mud/terminal/VDUBuffer;

.field public canvas:Landroid/graphics/Canvas;

.field public charDescent:I

.field public charHeight:I

.field public charWidth:I

.field collected:Ljava/lang/StringBuffer;

.field private color:[I

.field public final connection:Lcom/trilead/ssh2/Connection;

.field private darkerColor:[I

.field public final defaultPaint:Landroid/graphics/Paint;

.field public drawTolerance:J

.field public fontSize:F

.field public fullRedraw:Z

.field public keymap:Landroid/view/KeyCharacterMap;

.field public lastDraw:J

.field public final nickname:Ljava/lang/String;

.field public parent:Landroid/view/View;

.field public relay:Ljava/lang/Thread;

.field public scrollback:I

.field public session:Lcom/trilead/ssh2/Session;

.field public stdin:Ljava/io/OutputStream;

.field public stdout:Ljava/io/InputStream;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "nickname"
    .parameter "username"
    .parameter "hostname"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    .line 59
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    .line 61
    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 250
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->keymap:Landroid/view/KeyCharacterMap;

    .line 252
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    .line 315
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 316
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 317
    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charDescent:I

    .line 319
    const/high16 v1, -0x4080

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    .line 321
    const/16 v1, 0x78

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    .line 341
    iput-boolean v4, p0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 403
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 404
    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->color:[I

    .line 406
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->color:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->darkerColor:[I

    .line 411
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/connectbot/service/TerminalBridge;->lastDraw:J

    .line 412
    const-wide/16 v1, 0x64

    iput-wide v1, p0, Lorg/connectbot/service/TerminalBridge;->drawTolerance:J

    .line 110
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge;->nickname:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/connectbot/service/TerminalBridge;->username:Ljava/lang/String;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 117
    const/high16 v1, 0x4120

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->color:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 124
    new-instance v1, Lorg/connectbot/service/TerminalBridge$1;

    invoke-direct {v1, p0}, Lorg/connectbot/service/TerminalBridge$1;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 140
    iget v1, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    iput v1, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    .line 141
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    const/16 v2, 0x50

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v5}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 142
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, p0, Lorg/connectbot/service/TerminalBridge;->scrollback:I

    invoke-virtual {v1, v2}, Lde/mud/terminal/VDUBuffer;->setBufferSize(I)V

    .line 143
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1, p0}, Lde/mud/terminal/VDUBuffer;->setDisplay(Lde/mud/terminal/VDUDisplay;)V

    .line 144
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1, v4, v4}, Lde/mud/terminal/VDUBuffer;->setCursorPosition(II)V

    .line 147
    const-string v1, "Connecting to %s:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/trilead/ssh2/Connection;

    invoke-direct {v1, p3, p4}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    .line 150
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/connectbot/service/TerminalBridge$2;

    invoke-direct {v2, p0, p2}, Lorg/connectbot/service/TerminalBridge$2;-><init>(Lorg/connectbot/service/TerminalBridge;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 165
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->darkerColor:[I

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->color:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lorg/connectbot/service/TerminalBridge;->darken(I)I

    move-result v2

    aput v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
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

.method private darken(I)I
    .locals 7
    .parameter "color"

    .prologue
    const-wide v5, 0x3fe999999999999aL

    .line 396
    const/16 v0, 0xff

    .line 397
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 398
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 399
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 396
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/connectbot/service/TerminalBridge$4;

    invoke-direct {v1, p0}, Lorg/connectbot/service/TerminalBridge$4;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 248
    return-void
.end method

.method public finishConnection()V
    .locals 8

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    .line 200
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    const-string v1, "screen"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 201
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->startShell()V

    .line 204
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->stdin:Ljava/io/OutputStream;

    .line 205
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->stdout:Ljava/io/InputStream;

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/connectbot/service/TerminalBridge$3;

    invoke-direct {v1, p0}, Lorg/connectbot/service/TerminalBridge$3;-><init>(Lorg/connectbot/service/TerminalBridge;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->relay:Ljava/lang/Thread;

    .line 227
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->relay:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 230
    iget v0, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 234
    .local v7, e1:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getVDUBuffer()Lde/mud/terminal/VDUBuffer;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v4, 0x4000

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    move v3, v7

    .line 311
    .end local p0
    :goto_0
    return v3

    .line 262
    .restart local p0
    :cond_0
    const/16 v3, 0x18

    if-ne p2, v3, :cond_1

    .line 263
    :try_start_0
    iget v3, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    move v3, v6

    .line 264
    goto :goto_0

    .line 265
    :cond_1
    const/16 v3, 0x19

    if-ne p2, v3, :cond_2

    .line 266
    iget v3, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    sub-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/connectbot/service/TerminalBridge;->setFontSize(F)V

    move v3, v6

    .line 267
    goto :goto_0

    .line 270
    :cond_2
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v3, p2}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3e

    if-eq p2, v3, :cond_3

    move v2, v7

    .line 272
    .local v2, printing:Z
    :goto_1
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    if-nez v3, :cond_6

    .line 274
    const/16 v3, 0x42

    if-ne p2, v3, :cond_4

    .line 275
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/connectbot/service/TerminalBridge;->tryPassword(Ljava/lang/String;)V

    .line 276
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    move v3, v6

    .line 277
    goto :goto_0

    .end local v2           #printing:Z
    :cond_3
    move v2, v6

    .line 270
    goto :goto_1

    .line 278
    .restart local v2       #printing:Z
    :cond_4
    if-eqz v2, :cond_5

    .line 279
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move v3, v6

    .line 280
    goto :goto_0

    .line 281
    :cond_5
    const/16 v3, 0x43

    if-ne p2, v3, :cond_8

    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 282
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->collected:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move v3, v6

    .line 283
    goto :goto_0

    .line 290
    :cond_6
    if-eqz v2, :cond_7

    .line 291
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 292
    .local v1, key:I
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    move v3, v6

    .line 293
    goto/16 :goto_0

    .line 297
    .end local v1           #key:I
    :cond_7
    sparse-switch p2, :sswitch_data_0

    .end local p0
    .end local v2           #printing:Z
    :cond_8
    :goto_2
    move v3, v7

    .line 311
    goto/16 :goto_0

    .line 298
    .restart local v2       #printing:Z
    .restart local p0
    :sswitch_0
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridge;->stdin:Ljava/io/OutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    move v3, v6

    goto/16 :goto_0

    .line 299
    :sswitch_1
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v3, 0x1e

    const/16 v4, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    move v3, v6

    goto/16 :goto_0

    .line 300
    .restart local p0
    :sswitch_2
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v3, v6

    goto/16 :goto_0

    .line 301
    .restart local p0
    :sswitch_3
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v3, 0xe

    const/16 v4, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v3, v6

    goto/16 :goto_0

    .line 302
    .restart local p0
    :sswitch_4
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v3, 0xf

    const/16 v4, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v3, v6

    goto/16 :goto_0

    .line 303
    .restart local p0
    :sswitch_5
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v3, 0x11

    const/16 v4, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lde/mud/terminal/vt320;->keyPressed(ICI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    goto/16 :goto_0

    .line 308
    .end local v2           #printing:Z
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 309
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_5
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public outputLine(Ljava/lang/String;)V
    .locals 3
    .parameter "line"

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    invoke-virtual {v0, v2, v1, p1}, Lde/mud/terminal/VDUBuffer;->putString(IILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lde/mud/terminal/VDUBuffer;->setCursorPosition(II)V

    .line 172
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 173
    return-void
.end method

.method public declared-synchronized parentChanged(Landroid/view/View;)V
    .locals 12
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 345
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 347
    .local v11, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 350
    .local v7, height:I
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    move v8, v1

    .line 351
    .local v8, newBitmap:Z
    :goto_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v11, :cond_4

    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_4

    move v8, v2

    .line 353
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 354
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 355
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v11

    int-to-float v4, v7

    iget-object v5, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 363
    iget v0, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    div-int v10, v11, v0

    .line 364
    .local v10, termWidth:I
    iget v0, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    div-int v9, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    .local v9, termHeight:I
    :try_start_1
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v9, v1}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 368
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0, v10, v9}, Lcom/trilead/ssh2/Session;->resizePTY(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    :cond_2
    :goto_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 376
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parentChanged() now width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    .end local v8           #newBitmap:Z
    .end local v10           #termWidth:I
    .end local v9           #termHeight:I
    :cond_3
    move v8, v2

    .line 350
    goto :goto_0

    .restart local v8       #newBitmap:Z
    :cond_4
    move v8, v1

    .line 352
    goto :goto_1

    .line 370
    .restart local v9       #termHeight:I
    .restart local v10       #termWidth:I
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 371
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 345
    .end local v11           #width:I
    .end local v7           #height:I
    .end local v8           #newBitmap:Z
    .end local v9           #termHeight:I
    .end local v10           #termWidth:I
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parentDestroyed()V
    .locals 2

    .prologue
    .line 382
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    .line 384
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public promptPassword()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "Password: "

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public declared-synchronized redraw()V
    .locals 20

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 511
    :goto_0
    monitor-exit p0

    return-void

    .line 418
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 419
    .local v18, time:J
    const/16 v16, 0x0

    .line 426
    .local v16, lines:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    move v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v13, v2

    .line 429
    .local v13, entireDirty:Z
    :goto_1
    const/4 v15, 0x0

    .local v15, l:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->height:I

    if-lt v15, v2, :cond_2

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 503
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/connectbot/service/TerminalBridge;->fullRedraw:Z

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v18

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 416
    .end local v18           #time:J
    .end local v16           #lines:I
    .end local v13           #entireDirty:Z
    .end local v15           #l:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 426
    .restart local v16       #lines:I
    .restart local v18       #time:J
    :cond_1
    const/4 v2, 0x1

    move v13, v2

    goto :goto_1

    .line 436
    .restart local v13       #entireDirty:Z
    .restart local v15       #l:I
    :cond_2
    if-nez v13, :cond_4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v3, v15, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_4

    .line 429
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 437
    :cond_4
    add-int/lit8 v16, v16, 0x1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v3, v15, 0x1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 446
    const/4 v11, 0x0

    .local v11, c:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v11, v2, :cond_3

    .line 447
    const/4 v9, 0x0

    .line 448
    .local v9, addr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v3, v15

    aget-object v2, v2, v3

    aget v12, v2, v11

    .line 451
    .local v12, currAttr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->color:[I

    move-object v2, v0

    const/4 v3, 0x7

    aget v14, v2, v3

    .line 452
    .local v14, fg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->color:[I

    move-object v2, v0

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 455
    .local v10, bg:I
    and-int/lit16 v2, v12, 0x1e0

    if-eqz v2, :cond_5

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->color:[I

    move-object v2, v0

    and-int/lit16 v3, v12, 0x1e0

    shr-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v14, v2, v3

    .line 459
    :cond_5
    and-int/lit16 v2, v12, 0x1e00

    if-eqz v2, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->darkerColor:[I

    move-object v2, v0

    and-int/lit16 v3, v12, 0x1e00

    shr-int/lit8 v3, v3, 0x9

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v10, v2, v3

    .line 463
    :cond_6
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_7

    .line 464
    move/from16 v17, v10

    .line 465
    .local v17, swapc:I
    move v10, v14

    .line 466
    move/from16 v14, v17

    .line 470
    .end local v17           #swapc:I
    :cond_7
    const/high16 v2, -0x100

    if-ne v14, v2, :cond_8

    const/high16 v2, -0x100

    if-ne v10, v2, :cond_8

    .line 471
    const v14, -0x777778

    .line 474
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v2, v0

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v2, v0

    and-int/lit8 v3, v12, 0x2

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 478
    :goto_6
    add-int v2, v11, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v2, v0

    iget-object v2, v2, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget v3, v3, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v3, v15

    aget-object v2, v2, v3

    add-int v3, v11, v9

    aget v2, v2, v3

    if-eq v2, v12, :cond_d

    .line 483
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    move v3, v0

    mul-int/2addr v3, v11

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    move v4, v0

    mul-int/2addr v4, v15

    int-to-float v4, v4

    add-int v5, v11, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    move v6, v0

    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-int/lit8 v6, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    move v7, v0

    mul-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    and-int/lit8 v2, v12, 0x10

    if-nez v2, :cond_a

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->canvas:Landroid/graphics/Canvas;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v3, v0

    iget-object v3, v3, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int/2addr v4, v15

    aget-object v3, v3, v4

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    move v4, v0

    mul-int/2addr v4, v11

    int-to-float v6, v4

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    move v5, v0

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridge;->charDescent:I

    move v5, v0

    sub-int/2addr v4, v5

    int-to-float v7, v4

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move v4, v11

    move v5, v9

    .line 489
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    :cond_a
    const/4 v2, 0x1

    sub-int v2, v9, v2

    add-int/2addr v11, v2

    .line 446
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 474
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 475
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 479
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6
.end method

.method public setFontSize(F)V
    .locals 4
    .parameter "size"

    .prologue
    .line 324
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 325
    iput p1, p0, Lorg/connectbot/service/TerminalBridge;->fontSize:F

    .line 328
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 329
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charDescent:I

    .line 331
    const/4 v2, 0x1

    new-array v1, v2, [F

    .line 332
    .local v1, widths:[F
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->defaultPaint:Landroid/graphics/Paint;

    const-string v3, "X"

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 333
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    .line 334
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 337
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 338
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->parent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/connectbot/service/TerminalBridge;->parentChanged(Landroid/view/View;)V

    .line 339
    :cond_0
    return-void
.end method

.method public setVDUBuffer(Lde/mud/terminal/VDUBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 388
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 389
    return-void
.end method

.method public tryPassword(Ljava/lang/String;)V
    .locals 6
    .parameter "password"

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tryPassword(password=%s) and username=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/connectbot/service/TerminalBridge;->username:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->connection:Lcom/trilead/ssh2/Connection;

    iget-object v2, p0, Lorg/connectbot/service/TerminalBridge;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/trilead/ssh2/Connection;->authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v4}, Lde/mud/terminal/VDUBuffer;->getColumns()I

    move-result v4

    iget-object v5, p0, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v5}, Lde/mud/terminal/VDUBuffer;->getRows()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lde/mud/terminal/VDUBuffer;->deleteArea(IIII)V

    .line 185
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridge;->finishConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v1, "Permission denied, please try again."

    invoke-virtual {p0, v1}, Lorg/connectbot/service/TerminalBridge;->outputLine(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridge;->promptPassword()V

    goto :goto_0
.end method

.method public updateScrollBar()V
    .locals 0

    .prologue
    .line 516
    return-void
.end method
