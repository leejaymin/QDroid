.class public Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;
.super Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;
.source "WAUpperKeyboardView_kindlefire.java"


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

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 21
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->isMath:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 2
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    .line 35
    const v0, 0x186a0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2724

    if-eq p1, v0, :cond_0

    const/16 v0, 0x272e

    if-ne p1, v0, :cond_2

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->toggleShift()V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    const v0, 0x186a1

    if-eq p1, v0, :cond_3

    const v0, 0x186ab

    if-ne p1, v0, :cond_4

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->toggleMath()V

    goto :goto_0

    .line 42
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->onKey(I[I)V

    .line 44
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 46
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 47
    :cond_5
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->onText(Ljava/lang/CharSequence;)V

    .line 59
    iget v1, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    if-eqz v1, :cond_0

    .line 60
    iput v4, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 61
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0x7f050017

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 65
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 67
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

    .line 68
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 62
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v6           #i:I
    :cond_1
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 70
    .restart local v6       #i:I
    :cond_2
    return-void
.end method

.method resetKeyboard()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 132
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method setKeyboardResource(I)V
    .locals 3
    .parameter "xmlResID"

    .prologue
    .line 75
    iput p1, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->xmlResID:I

    .line 76
    const v0, 0x7f050017

    if-eq p1, v0, :cond_0

    const v0, 0x7f050019

    if-ne p1, v0, :cond_2

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/wolfram/android/alpha/Resources_modified;->getXmlKeyboardId(I)I

    move-result p1

    .line 78
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->isMath:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0e00c5

    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 85
    return-void

    .line 78
    :cond_1
    const v2, 0x7f0e00c4

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {p1}, Lcom/wolfram/android/alpha/Resources_modified;->getXmlKeyboardId(I)I

    move-result p1

    .line 82
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    goto :goto_1
.end method

.method toggleMath()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->isMath:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->isMath:Z

    .line 124
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 126
    :goto_1
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_1
.end method

.method toggleShift()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 106
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 107
    :cond_0
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 111
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 112
    :cond_1
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 115
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->state:I

    .line 116
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
