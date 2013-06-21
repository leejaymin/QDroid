.class public Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;
.super Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;
.source "WAUpperKeyboardView.java"


# static fields
.field private static final STATE_1:I = 0x0

.field private static final STATE_2:I = 0x1

.field private static final STATE_3:I = 0x2


# instance fields
.field private isMath:Z

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "a"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 16
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->isMath:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    .line 30
    const v0, 0x186a0

    if-ne p1, v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->toggleShift()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const v0, 0x186a1

    if-ne p1, v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->toggleMath()V

    goto :goto_0

    .line 37
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->onKey(I[I)V

    .line 39
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 41
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->onText(Ljava/lang/CharSequence;)V

    .line 53
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 55
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    .line 57
    :cond_0
    return-void
.end method

.method resetKeyboard()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 111
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    .line 112
    return-void
.end method

.method setKeyboardResource(I)V
    .locals 3
    .parameter "xmlResID"

    .prologue
    .line 62
    iput p1, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->xmlResID:I

    .line 63
    const v0, 0x7f050017

    if-ne p1, v0, :cond_1

    .line 64
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->isMath:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0e00c5

    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 68
    return-void

    .line 64
    :cond_0
    const v2, 0x7f0e00c4

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    goto :goto_1
.end method

.method toggleMath()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->isMath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->isMath:Z

    .line 104
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    .line 105
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toggleShift()V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 88
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 89
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 93
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->state:I

    .line 97
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
