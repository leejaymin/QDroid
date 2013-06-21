.class public Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;
.super Landroid/inputmethodservice/KeyboardView;
.source "WAKeyboardView_kindlefire.java"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field protected keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

.field targetView:Landroid/view/View;

.field waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field xmlResID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.wolfram.android.alpha.keyboard.WAKeyboardView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "c"
    .parameter "a"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    check-cast p1, Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .end local p1
    iput-object p1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .line 38
    invoke-virtual {p0, p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 13
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 96
    .local v1, eventTime:J
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v8, v0

    .line 106
    .local v8, metaState:I
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    const/16 v0, 0x36

    if-gt p1, v0, :cond_3

    .line 107
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 112
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 117
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 122
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 143
    .end local v1           #eventTime:J
    :goto_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->isShiftLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftPressed()V

    .line 146
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->invalidateAllKeys()V

    .line 148
    :cond_1
    return-void

    .line 96
    .end local v8           #metaState:I
    .restart local v1       #eventTime:J
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    .line 127
    .restart local v8       #metaState:I
    :cond_3
    const v0, 0x186aa

    if-ne p1, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->getId()I

    move-result v1

    .end local v1           #eventTime:J
    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->startVoiceRecognitionActivity(I)V

    goto :goto_1

    .line 131
    .restart local v1       #eventTime:J
    :cond_4
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 136
    iget-object v12, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v12, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "wSpec"
    .parameter "hSpec"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;->onMeasure(II)V

    .line 54
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    const/4 v0, 0x0

    .line 77
    sparse-switch p1, :sswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 79
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 82
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->setPreviewEnabled(Z)V

    goto :goto_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_1
        0x272e -> :sswitch_1
        0x186a0 -> :sswitch_1
        0x186a1 -> :sswitch_1
        0x186a2 -> :sswitch_0
        0x186a3 -> :sswitch_0
        0x186ab -> :sswitch_1
        0x186b4 -> :sswitch_0
        0x186b5 -> :sswitch_0
        0x186b9 -> :sswitch_0
        0x186ba -> :sswitch_0
    .end sparse-switch
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->setPreviewEnabled(Z)V

    .line 66
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->hideWAKeyboard()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0xf4256
        :pswitch_0
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 92
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 154
    .local v0, h:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 155
    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method setTargetView(Landroid/view/View;)V
    .locals 0
    .parameter "targetView"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->targetView:Landroid/view/View;

    .line 43
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
