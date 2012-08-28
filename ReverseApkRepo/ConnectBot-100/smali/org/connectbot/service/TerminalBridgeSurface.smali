.class public Lorg/connectbot/service/TerminalBridgeSurface;
.super Ljava/lang/Object;
.source "TerminalBridgeSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lde/mud/terminal/VDUDisplay;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final COLOR_BG_STD:I = 0x0

.field private static final COLOR_FG_STD:I = 0x7

.field public static final DEFAULT_FONT_SIZE:I = 0xa

.field public static final ENCODING:Ljava/lang/String; = "ASCII"

.field public static final TERM_HEIGHT_CHARS:I = 0x18

.field public static final TERM_WIDTH_CHARS:I = 0x50


# instance fields
.field public buffer:Lde/mud/terminal/VDUBuffer;

.field public charDescent:I

.field public charHeight:I

.field public charWidth:I

.field private color:[I

.field public final connection:Lcom/trilead/ssh2/Connection;

.field public current:Landroid/view/SurfaceHolder;

.field private darkerColor:[I

.field public final defaultPaint:Landroid/graphics/Paint;

.field keymap:Landroid/view/KeyCharacterMap;

.field public newSurface:Z

.field public final relay:Ljava/lang/Thread;

.field public final session:Lcom/trilead/ssh2/Session;

.field public final stdin:Ljava/io/OutputStream;

.field public final stdout:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/Connection;)V
    .locals 8
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    .line 50
    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 120
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->keymap:Landroid/view/KeyCharacterMap;

    .line 142
    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    .line 143
    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    .line 144
    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charDescent:I

    .line 163
    iput-boolean v1, p0, Lorg/connectbot/service/TerminalBridgeSurface;->newSurface:Z

    .line 208
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 209
    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->color:[I

    .line 211
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->color:[I

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->darkerColor:[I

    .line 57
    :try_start_0
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridgeSurface;->connection:Lcom/trilead/ssh2/Connection;

    .line 58
    invoke-virtual {p1}, Lcom/trilead/ssh2/Connection;->openSession()Lcom/trilead/ssh2/Session;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->session:Lcom/trilead/ssh2/Session;

    .line 59
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->session:Lcom/trilead/ssh2/Session;

    const-string v1, "xterm"

    const/16 v2, 0x50

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/trilead/ssh2/Session;->requestPTY(Ljava/lang/String;IIII[B)V

    .line 60
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->startShell()V

    .line 63
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdin()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->stdin:Ljava/io/OutputStream;

    .line 64
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->session:Lcom/trilead/ssh2/Session;

    invoke-virtual {v0}, Lcom/trilead/ssh2/Session;->getStdout()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->stdout:Ljava/io/InputStream;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    const/high16 v0, 0x4120

    invoke-virtual {p0, v0}, Lorg/connectbot/service/TerminalBridgeSurface;->setFontSize(F)V

    .line 74
    new-instance v0, Lorg/connectbot/service/TerminalBridgeSurface$1;

    invoke-direct {v0, p0}, Lorg/connectbot/service/TerminalBridgeSurface$1;-><init>(Lorg/connectbot/service/TerminalBridgeSurface;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 90
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v0, p0}, Lde/mud/terminal/VDUBuffer;->setDisplay(Lde/mud/terminal/VDUDisplay;)V

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/connectbot/service/TerminalBridgeSurface$2;

    invoke-direct {v1, p0}, Lorg/connectbot/service/TerminalBridgeSurface$2;-><init>(Lorg/connectbot/service/TerminalBridgeSurface;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->relay:Ljava/lang/Thread;

    .line 112
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->relay:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 114
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 115
    .local v7, e:Ljava/lang/Exception;
    throw v7

    .line 208
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


# virtual methods
.method public getVDUBuffer()Lde/mud/terminal/VDUBuffer;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 124
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    .line 139
    .end local p0
    :goto_0
    return v2

    .line 126
    .restart local p0
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->keymap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 127
    .local v1, key:I
    sparse-switch p2, :sswitch_data_0

    .line 134
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->stdin:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .end local p0
    .end local v1           #key:I
    :goto_1
    move v2, v5

    .line 139
    goto :goto_0

    .line 128
    .restart local v1       #key:I
    .restart local p0
    :sswitch_0
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->stdin:Ljava/io/OutputStream;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 136
    .end local v1           #key:I
    .end local p0
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #key:I
    .restart local p0
    :sswitch_1
    :try_start_1
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v2, 0x1e

    const/16 v3, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    goto :goto_1

    .line 130
    .restart local p0
    :sswitch_2
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_1

    .line 131
    .restart local p0
    :sswitch_3
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v2, 0xe

    const/16 v3, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_1

    .line 132
    .restart local p0
    :sswitch_4
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v2, 0xf

    const/16 v3, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    goto :goto_1

    .line 133
    .restart local p0
    :sswitch_5
    iget-object p0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .end local p0
    check-cast p0, Lde/mud/terminal/vt320;

    const/16 v2, 0x11

    const/16 v3, 0x20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lde/mud/terminal/vt320;->keyPressed(ICI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    nop

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

.method public redraw()V
    .locals 22

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 301
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 221
    .local v20, time:J
    const/16 v18, 0x0

    .line 224
    .local v18, lines:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->newSurface:Z

    move v4, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v15, v4

    .line 227
    .local v15, entireDirty:Z
    :goto_1
    const/16 v17, 0x0

    .local v17, l:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->height:I

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_2

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->update:[Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 295
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/connectbot/service/TerminalBridgeSurface;->newSurface:Z

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v20, v4, v20

    .line 299
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "redraw called and updated lines="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " taking ms="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v15           #entireDirty:Z
    .end local v17           #l:I
    :cond_1
    const/4 v4, 0x1

    move v15, v4

    goto :goto_1

    .line 231
    .restart local v15       #entireDirty:Z
    .restart local v17       #l:I
    :cond_2
    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v5, v17, 0x1

    aget-boolean v4, v4, v5

    if-nez v4, :cond_3

    .line 227
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 232
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->update:[Z

    add-int/lit8 v5, v17, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v4, v5

    .line 238
    new-instance v14, Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    move v5, v0

    mul-int v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v6, v0

    iget v6, v6, Lde/mud/terminal/VDUBuffer;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    move v7, v0

    mul-int/2addr v6, v7

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    move v8, v0

    mul-int/2addr v7, v8

    invoke-direct {v14, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    .local v14, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    move-object v4, v0

    invoke-interface {v4, v14}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 242
    .local v3, canvas:Landroid/graphics/Canvas;
    const/4 v12, 0x0

    .local v12, c:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget v4, v4, Lde/mud/terminal/VDUBuffer;->width:I

    if-lt v12, v4, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    move-object v4, v0

    invoke-interface {v4, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 243
    :cond_4
    const/4 v10, 0x0

    .line 244
    .local v10, addr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v5, v0

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int v5, v5, v17

    aget-object v4, v4, v5

    aget v13, v4, v12

    .line 247
    .local v13, currAttr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->color:[I

    move-object v4, v0

    const/4 v5, 0x7

    aget v16, v4, v5

    .line 248
    .local v16, fg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->color:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v11, v4, v5

    .line 251
    .local v11, bg:I
    and-int/lit16 v4, v13, 0x1e0

    if-eqz v4, :cond_5

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->color:[I

    move-object v4, v0

    and-int/lit16 v5, v13, 0x1e0

    shr-int/lit8 v5, v5, 0x5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v16, v4, v5

    .line 255
    :cond_5
    and-int/lit16 v4, v13, 0x1e00

    if-eqz v4, :cond_6

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->darkerColor:[I

    move-object v4, v0

    and-int/lit16 v5, v13, 0x1e00

    shr-int/lit8 v5, v5, 0x9

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v11, v4, v5

    .line 259
    :cond_6
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_7

    .line 260
    move/from16 v19, v11

    .line 261
    .local v19, swapc:I
    move/from16 v11, v16

    .line 262
    move/from16 v16, v19

    .line 266
    .end local v19           #swapc:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v4, v0

    and-int/lit8 v5, v13, 0x1

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v4, v0

    and-int/lit8 v5, v13, 0x2

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 270
    :goto_7
    add-int v4, v12, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v5, v0

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->width:I

    if-ge v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->charAttributes:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v5, v0

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int v5, v5, v17

    aget-object v4, v4, v5

    add-int v5, v12, v10

    aget v4, v4, v5

    if-eq v4, v13, :cond_c

    .line 275
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v4, v0

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    move v4, v0

    mul-int/2addr v4, v12

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    move v5, v0

    mul-int v5, v5, v17

    int-to-float v5, v5

    add-int v6, v12, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    move v7, v0

    mul-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    move v8, v0

    mul-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    and-int/lit8 v4, v13, 0x10

    if-nez v4, :cond_9

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v4, v0

    iget-object v4, v4, Lde/mud/terminal/VDUBuffer;->charArray:[[C

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object v5, v0

    iget v5, v5, Lde/mud/terminal/VDUBuffer;->windowBase:I

    add-int v5, v5, v17

    aget-object v4, v4, v5

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    move v5, v0

    mul-int/2addr v5, v12

    int-to-float v7, v5

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->charDescent:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v8, v5

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    move-object v9, v0

    move v5, v12

    move v6, v10

    .line 281
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 286
    :cond_9
    const/4 v4, 0x1

    sub-int v4, v10, v4

    add-int/2addr v12, v4

    .line 242
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 266
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 267
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 271
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7
.end method

.method public setFontSize(F)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, -0x1

    .line 147
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 151
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charDescent:I

    .line 153
    const/4 v2, 0x1

    new-array v1, v2, [F

    .line 154
    .local v1, widths:[F
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->defaultPaint:Landroid/graphics/Paint;

    const-string v3, "X"

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 155
    const/4 v2, 0x0

    aget v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    .line 156
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    .line 160
    iget-object v2, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v2, v4, v4, v4}, Lorg/connectbot/service/TerminalBridgeSurface;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 161
    return-void
.end method

.method public setVDUBuffer(Lde/mud/terminal/VDUBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 201
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 202
    return-void
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    .line 169
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/connectbot/service/TerminalBridgeSurface;->newSurface:Z

    .line 171
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 184
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 175
    .local v0, size:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charWidth:I

    div-int v2, v3, v4

    .line 176
    .local v2, termWidth:I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lorg/connectbot/service/TerminalBridgeSurface;->charHeight:I

    div-int v1, v3, v4

    .line 178
    .local v1, termHeight:I
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Lde/mud/terminal/VDUBuffer;->setScreenSize(IIZ)V

    .line 179
    iget-object v3, p0, Lorg/connectbot/service/TerminalBridgeSurface;->buffer:Lde/mud/terminal/VDUBuffer;

    iput v1, v3, Lde/mud/terminal/VDUBuffer;->height:I

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "surfaceChanged() now width="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lorg/connectbot/service/TerminalBridgeSurface;->redraw()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v0           #size:Landroid/graphics/Rect;
    .end local v2           #termWidth:I
    .end local v1           #termHeight:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/connectbot/service/TerminalBridgeSurface;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 194
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->current:Landroid/view/SurfaceHolder;

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/service/TerminalBridgeSurface;->newSurface:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateScrollBar()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method
