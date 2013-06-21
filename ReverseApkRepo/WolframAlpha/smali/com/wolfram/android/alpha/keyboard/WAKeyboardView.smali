.class public Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "WAKeyboardView.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

.field targetView:Landroid/view/View;

.field waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field xmlResID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "com.wolfram.android.alpha.keyboard.WAKeyboardView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "a"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->setPreviewEnabled(Z)V

    .line 38
    :cond_0
    check-cast p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .end local p1
    iput-object p1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .line 39
    invoke-virtual {p0, p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 40
    return-void
.end method

.method private sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 159
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 160
    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 23
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 88
    .local v3, eventTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v10, v2

    .line 98
    .local v10, metaState:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    move/from16 v0, p1

    move v1, v2

    if-lt v0, v1, :cond_3

    const/16 v2, 0x36

    move/from16 v0, p1

    move v1, v2

    if-gt v0, v1, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v14, v0

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v14, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v14, v0

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    move/from16 v8, p1

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v14, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v14, v0

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    move/from16 v8, p1

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v14, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v14, v0

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v8, 0x3b

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v14, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 148
    .end local v3           #eventTime:J
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, p1

    move v1, v2

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->isShiftLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual/range {p1 .. p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftPressed()V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->invalidateAllKeys()V

    .line 153
    :cond_1
    return-void

    .line 88
    .end local v10           #metaState:I
    .restart local v3       #eventTime:J
    .restart local p1
    :cond_2
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_0

    .line 119
    .restart local v10       #metaState:I
    :cond_3
    const v2, 0x186aa

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->getId()I

    move-result v3

    .end local v3           #eventTime:J
    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startVoiceRecognitionActivity(I)V

    goto :goto_1

    .line 123
    .restart local v3       #eventTime:J
    :cond_4
    const/16 v2, 0x42

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_5

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v2, v0

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x16

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, p1

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v2, v0

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x16

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, p1

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    .line 135
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v2, v0

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x16

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, p1

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    move-object v2, v0

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x16

    move-wide v12, v3

    move-wide v14, v3

    move/from16 v17, p1

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;->onMeasure(II)V

    .line 55
    return-void
.end method

.method public onPress(I)V
    .locals 0
    .parameter "k"

    .prologue
    .line 62
    return-void
.end method

.method public onRelease(I)V
    .locals 0
    .parameter "k"

    .prologue
    .line 63
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 68
    iget-object v7, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 69
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->isShiftLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftPressed()V

    .line 72
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->invalidateAllKeys()V

    .line 81
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 77
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-int/lit8 v3, v6, 0x1

    invoke-interface {p1, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 78
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method setTargetView(Landroid/view/View;)V
    .locals 0
    .parameter "targetView"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->targetView:Landroid/view/View;

    .line 44
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
