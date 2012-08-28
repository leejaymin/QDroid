.class public Lorg/connectbot/service/TerminalKeyListener;
.super Ljava/lang/Object;
.source "TerminalKeyListener.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final bridge:Lorg/connectbot/service/TerminalBridge;

.field private final buffer:Lde/mud/terminal/VDUBuffer;

.field private clipboard:Landroid/text/ClipboardManager;

.field private encoding:Ljava/lang/String;

.field private hardKeyboard:Z

.field private keymode:Ljava/lang/String;

.field private mDeadKey:I

.field private final manager:Lorg/connectbot/service/TerminalManager;

.field private metaState:I

.field private final prefs:Landroid/content/SharedPreferences;

.field private selectingForCopy:Z

.field private final selectionArea:Lorg/connectbot/bean/SelectionArea;


# direct methods
.method public constructor <init>(Lorg/connectbot/service/TerminalManager;Lorg/connectbot/service/TerminalBridge;Lde/mud/terminal/VDUBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "manager"
    .parameter "bridge"
    .parameter "buffer"
    .parameter "encoding"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v1, p0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    .line 73
    iput-boolean v0, p0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    .line 75
    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 77
    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    .line 80
    iput-object v1, p0, Lorg/connectbot/service/TerminalKeyListener;->clipboard:Landroid/text/ClipboardManager;

    .line 82
    iput-boolean v0, p0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    .line 93
    iput-object p1, p0, Lorg/connectbot/service/TerminalKeyListener;->manager:Lorg/connectbot/service/TerminalManager;

    .line 94
    iput-object p2, p0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 95
    iput-object p3, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    .line 96
    iput-object p4, p0, Lorg/connectbot/service/TerminalKeyListener;->encoding:Ljava/lang/String;

    .line 98
    new-instance v1, Lorg/connectbot/bean/SelectionArea;

    invoke-direct {v1}, Lorg/connectbot/bean/SelectionArea;-><init>()V

    iput-object v1, p0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/connectbot/service/TerminalKeyListener;->prefs:Landroid/content/SharedPreferences;

    .line 101
    iget-object v1, p0, Lorg/connectbot/service/TerminalKeyListener;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    iget-object v1, p1, Lorg/connectbot/service/TerminalManager;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    .line 104
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 103
    :cond_0
    iput-boolean v0, p0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    .line 106
    invoke-direct {p0}, Lorg/connectbot/service/TerminalKeyListener;->updateKeymode()V

    .line 107
    return-void
.end method

.method private getStateForBuffer()I
    .locals 2

    .prologue
    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, bufferState:I
    iget v1, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    .line 543
    or-int/lit8 v0, v0, 0x1c

    .line 544
    :cond_0
    iget v1, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    and-int/lit8 v1, v1, 0x30

    if-eqz v1, :cond_1

    .line 545
    or-int/lit8 v0, v0, 0x1b

    .line 546
    :cond_1
    iget v1, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_2

    .line 547
    or-int/lit8 v0, v0, 0x1d

    .line 549
    :cond_2
    return v0
.end method

.method private sendFunctionKey(I)Z
    .locals 5
    .parameter "keyCode"

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 511
    :goto_0
    return v0

    .line 481
    :pswitch_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 482
    goto :goto_0

    .line 484
    :pswitch_1
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 485
    goto :goto_0

    .line 487
    :pswitch_2
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 488
    goto :goto_0

    .line 490
    :pswitch_3
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :pswitch_4
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 494
    goto :goto_0

    .line 496
    :pswitch_5
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 497
    goto :goto_0

    .line 499
    :pswitch_6
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 500
    goto :goto_0

    .line 502
    :pswitch_7
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 503
    goto :goto_0

    .line 505
    :pswitch_8
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 506
    goto :goto_0

    .line 508
    :pswitch_9
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v4, v2}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    move v0, v1

    .line 509
    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateKeymode()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "keymode"

    const-string v2, "Use right-side keys"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    .line 573
    return-void
.end method


# virtual methods
.method public getDeadKey()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    return v0
.end method

.method public getMetaState()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    return v0
.end method

.method public keyAsControl(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 456
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    .line 457
    add-int/lit8 p1, p1, -0x60

    .line 467
    :cond_0
    :goto_0
    return p1

    .line 459
    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5f

    if-gt p1, v0, :cond_2

    .line 460
    add-int/lit8 p1, p1, -0x40

    goto :goto_0

    .line 462
    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    .line 463
    const/4 p1, 0x0

    goto :goto_0

    .line 465
    :cond_3
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_0

    .line 466
    const/16 p1, 0x7f

    goto :goto_0
.end method

.method public metaPress(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 525
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    shl-int/lit8 v1, p1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 526
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    shl-int/lit8 v1, p1, 0x1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 532
    :goto_0
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 533
    return-void

    .line 527
    :cond_0
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 528
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 529
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    shl-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    goto :goto_0

    .line 531
    :cond_1
    iget v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 22
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 115
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->manager:Lorg/connectbot/service/TerminalManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v6, v0, Lorg/connectbot/service/TerminalManager;->hardKeyboardHidden:Z

    .line 118
    .local v6, hardKeyboardHidden:Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    if-eqz v6, :cond_1

    .line 121
    :cond_0
    const/16 v18, 0x0

    .line 451
    .end local v6           #hardKeyboardHidden:Z
    :goto_0
    return v18

    .line 124
    .restart local v6       #hardKeyboardHidden:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->isDisconnected()Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 125
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 127
    :cond_3
    const-string v18, "Use right-side keys"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 128
    const/16 v18, 0x3a

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x56

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 132
    const/16 v18, 0x1

    goto :goto_0

    .line 133
    :cond_4
    const/16 v18, 0x3c

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x96

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 137
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 139
    :cond_5
    const-string v18, "Use left-side keys"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 140
    const/16 v18, 0x39

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_6

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x56

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 144
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 145
    :cond_6
    const/16 v18, 0x3b

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0x96

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 149
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 153
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 157
    :cond_8
    const/16 v18, 0x18

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->increaseFontSize()V

    .line 159
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 160
    :cond_9
    const/16 v18, 0x19

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->decreaseFontSize()V

    .line 162
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 166
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->isDisconnected()Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 167
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 169
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->resetScrollPosition()V

    .line 171
    if-nez p2, :cond_d

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->encoding:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 174
    .local v7, input:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lorg/connectbot/transport/AbsTransport;->write([B)V

    .line 175
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 178
    .end local v7           #input:[B
    :cond_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 179
    .local v4, curMetaState:I
    move v14, v4

    .line 181
    .local v14, orgMetaState:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x30

    if-eqz v18, :cond_e

    .line 182
    or-int/lit8 v4, v4, 0x1

    .line 185
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xc

    if-eqz v18, :cond_f

    .line 186
    or-int/lit8 v4, v4, 0x2

    .line 189
    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v11

    .line 191
    .local v11, key:I
    and-int/lit8 v18, v14, 0x2

    if-eqz v18, :cond_11

    .line 192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    if-eqz v6, :cond_11

    .line 193
    :cond_10
    const/4 v11, 0x0

    .line 196
    :cond_11
    const/high16 v18, -0x8000

    and-int v18, v18, v11

    if-eqz v18, :cond_12

    .line 197
    const v18, 0x7fffffff

    and-int v18, v18, v11

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    .line 198
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 201
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v11

    .line 203
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->mDeadKey:I

    .line 206
    :cond_13
    if-eqz v11, :cond_16

    const/4 v15, 0x1

    .line 210
    .local v15, printing:Z
    :goto_1
    if-eqz v15, :cond_1c

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, -0xc1

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 214
    move-object/from16 v0, p0

    iget v12, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 215
    .local v12, lastMetaState:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x15

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_14

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 220
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3

    if-eqz v18, :cond_18

    .line 221
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    if-eqz v6, :cond_17

    .line 227
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->sendFunctionKey(I)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 228
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 206
    .end local v12           #lastMetaState:I
    .end local v15           #printing:Z
    :cond_16
    const/4 v15, 0x0

    goto :goto_1

    .line 230
    .restart local v12       #lastMetaState:I
    .restart local v15       #printing:Z
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/connectbot/service/TerminalKeyListener;->keyAsControl(I)I

    move-result v11

    .line 234
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    if-nez v6, :cond_19

    .line 235
    and-int/lit8 v18, v4, 0x1

    if-eqz v18, :cond_19

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->sendFunctionKey(I)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 237
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 239
    :cond_19
    const/16 v18, 0x80

    move/from16 v0, v18

    if-ge v11, v0, :cond_1a

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 246
    :goto_2
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 243
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([C)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->encoding:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 243
    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 438
    .end local v4           #curMetaState:I
    .end local v6           #hardKeyboardHidden:Z
    .end local v11           #key:I
    .end local v12           #lastMetaState:I
    .end local v14           #orgMetaState:I
    .end local v15           #printing:Z
    :catch_0
    move-exception v5

    .line 439
    .local v5, e:Ljava/io/IOException;
    const-string v18, "ConnectBot.OnKeyListener"

    const-string v19, "Problem while trying to handle an onKey() event"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/transport/AbsTransport;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 451
    .end local v5           #e:Ljava/io/IOException;
    :cond_1b
    :goto_3
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 250
    .restart local v4       #curMetaState:I
    .restart local v6       #hardKeyboardHidden:Z
    .restart local v11       #key:I
    .restart local v14       #orgMetaState:I
    .restart local v15       #printing:Z
    :cond_1c
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1d

    if-eqz v6, :cond_22

    .line 251
    :cond_1d
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v9

    .line 252
    .local v9, k:I
    move v10, v9

    .line 253
    .local v10, k0:I
    const/16 v16, 0x0

    .line 254
    .local v16, sendCtrl:Z
    const/16 v17, 0x0

    .line 255
    .local v17, sendMeta:Z
    if-eqz v9, :cond_22

    .line 256
    and-int/lit16 v0, v14, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/connectbot/service/TerminalKeyListener;->keyAsControl(I)I

    move-result v9

    .line 258
    if-eq v9, v10, :cond_1e

    .line 259
    const/16 v16, 0x1

    .line 261
    :cond_1e
    if-nez v16, :cond_20

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->sendFunctionKey(I)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 262
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 263
    :cond_1f
    and-int/lit8 v18, v14, 0x2

    if-eqz v18, :cond_20

    .line 264
    const/16 v17, 0x1

    .line 265
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->sendEscape()V

    .line 267
    :cond_20
    if-nez v17, :cond_21

    if-eqz v16, :cond_22

    .line 268
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 269
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 274
    .end local v9           #k:I
    .end local v10           #k0:I
    .end local v16           #sendCtrl:Z
    .end local v17           #sendMeta:Z
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->hardKeyboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_23

    if-nez v6, :cond_23

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    if-nez v18, :cond_23

    .line 276
    const-string v18, "Use right-side keys"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 277
    packed-switch p2, :pswitch_data_0

    .line 321
    :cond_23
    :goto_4
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_3

    .line 371
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2a

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->decrementRow()V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 380
    :goto_5
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 279
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 280
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 282
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 283
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 285
    :pswitch_2
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 286
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 288
    :pswitch_3
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 289
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 291
    :cond_24
    const-string v18, "Use left-side keys"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->keymode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 292
    packed-switch p2, :pswitch_data_1

    goto :goto_4

    .line 294
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x40

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 295
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 297
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 298
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 300
    :pswitch_6
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 301
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 303
    :pswitch_7
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 304
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 307
    :cond_25
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_4

    .line 310
    :pswitch_8
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 311
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 314
    :pswitch_9
    const/16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V

    .line 315
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 323
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->sendEscape()V

    .line 324
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 326
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 327
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 331
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->manager:Lorg/connectbot/service/TerminalManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalManager;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    .line 332
    const-string v19, "camera"

    .line 333
    const-string v20, "Ctrl+A then Space"

    .line 331
    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, camera:Ljava/lang/String;
    const-string v18, "Ctrl+A then Space"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 446
    .end local v2           #camera:Ljava/lang/String;
    .end local v4           #curMetaState:I
    .end local v6           #hardKeyboardHidden:Z
    .end local v11           #key:I
    .end local v14           #orgMetaState:I
    .end local v15           #printing:Z
    :catch_1
    move-exception v13

    .line 447
    .local v13, npe:Ljava/lang/NullPointerException;
    const-string v18, "ConnectBot.OnKeyListener"

    const-string v19, "Input before connection established ignored."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 337
    .end local v13           #npe:Ljava/lang/NullPointerException;
    .restart local v2       #camera:Ljava/lang/String;
    .restart local v4       #curMetaState:I
    .restart local v6       #hardKeyboardHidden:Z
    .restart local v11       #key:I
    .restart local v14       #orgMetaState:I
    .restart local v15       #printing:Z
    :cond_26
    :try_start_3
    const-string v18, "Ctrl+A"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    goto/16 :goto_3

    .line 339
    :cond_27
    const-string v18, "Esc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x2b

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    goto/16 :goto_3

    .line 341
    :cond_28
    const-string v18, "Esc+A"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x2b

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/connectbot/service/TerminalBridge;->transport:Lorg/connectbot/transport/AbsTransport;

    move-object/from16 v18, v0

    const/16 v19, 0x61

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/transport/AbsTransport;->write(I)V

    goto/16 :goto_3

    .line 349
    .end local v2           #camera:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x16

    const/16 v20, 0x20

    .line 350
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->getStateForBuffer()I

    move-result v21

    .line 349
    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 352
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 354
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x1e

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 356
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 359
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_29

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->decrementColumn()V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 368
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 363
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x10

    const/16 v20, 0x20

    .line 364
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->getStateForBuffer()I

    move-result v21

    .line 363
    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    goto :goto_6

    .line 375
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0xe

    const/16 v20, 0x20

    .line 376
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->getStateForBuffer()I

    move-result v21

    .line 375
    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    goto/16 :goto_5

    .line 383
    :sswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2b

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->incrementRow()V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 392
    :goto_7
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 387
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0xf

    const/16 v20, 0x20

    .line 388
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->getStateForBuffer()I

    move-result v21

    .line 387
    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    goto :goto_7

    .line 395
    :sswitch_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2c

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->incrementColumn()V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 404
    :goto_8
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 399
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v18, v0

    check-cast v18, Lde/mud/terminal/vt320;

    const/16 v19, 0x11

    const/16 v20, 0x20

    .line 400
    invoke-direct/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->getStateForBuffer()I

    move-result v21

    .line 399
    invoke-virtual/range {v18 .. v21}, Lde/mud/terminal/vt320;->keyPressed(ICI)V

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->tryKeyVibrate()V

    goto :goto_8

    .line 407
    :sswitch_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->isSelectingOrigin()Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->finishSelectingOrigin()V

    .line 433
    :cond_2d
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/service/TerminalBridge;->redraw()V

    .line 435
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 411
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->clipboard:Landroid/text/ClipboardManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/bean/SelectionArea;->copyFrom(Lde/mud/terminal/VDUBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, copiedText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->clipboard:Landroid/text/ClipboardManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/connectbot/service/TerminalKeyListener;->selectingForCopy:Z

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->selectionArea:Lorg/connectbot/bean/SelectionArea;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/connectbot/bean/SelectionArea;->reset()V

    goto :goto_9

    .line 426
    .end local v3           #copiedText:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_30

    .line 427
    invoke-virtual/range {p0 .. p0}, Lorg/connectbot/service/TerminalKeyListener;->sendEscape()V

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/connectbot/service/TerminalKeyListener;->metaState:I

    goto :goto_9

    .line 430
    :cond_30
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalKeyListener;->metaPress(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    .line 442
    .end local v4           #curMetaState:I
    .end local v6           #hardKeyboardHidden:Z
    .end local v11           #key:I
    .end local v14           #orgMetaState:I
    .end local v15           #printing:Z
    .restart local v5       #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 443
    .local v8, ioe:Ljava/io/IOException;
    const-string v18, "ConnectBot.OnKeyListener"

    const-string v19, "Our transport was closed, dispatching disconnect event"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/connectbot/service/TerminalKeyListener;->bridge:Lorg/connectbot/service/TerminalBridge;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/connectbot/service/TerminalBridge;->dispatchDisconnect(Z)V

    goto/16 :goto_3

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_8
        0x17 -> :sswitch_9
        0x1b -> :sswitch_3
        0x3d -> :sswitch_2
        0x42 -> :sswitch_5
        0x43 -> :sswitch_4
        0x6f -> :sswitch_1
    .end sparse-switch

    .line 292
    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 307
    :pswitch_data_2
    .packed-switch 0x39
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 566
    const-string v0, "keymode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0}, Lorg/connectbot/service/TerminalKeyListener;->updateKeymode()V

    .line 569
    :cond_0
    return-void
.end method

.method public sendEscape()V
    .locals 4

    .prologue
    .line 471
    iget-object v0, p0, Lorg/connectbot/service/TerminalKeyListener;->buffer:Lde/mud/terminal/VDUBuffer;

    check-cast v0, Lde/mud/terminal/vt320;

    const/16 v1, 0x2b

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lde/mud/terminal/vt320;->keyTyped(ICI)V

    .line 472
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 576
    iput-object p1, p0, Lorg/connectbot/service/TerminalKeyListener;->encoding:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setClipboardManager(Landroid/text/ClipboardManager;)V
    .locals 0
    .parameter "clipboard"

    .prologue
    .line 561
    iput-object p1, p0, Lorg/connectbot/service/TerminalKeyListener;->clipboard:Landroid/text/ClipboardManager;

    .line 562
    return-void
.end method
