.class public Lcom/fleapapa/util/MySpinner;
.super Landroid/widget/Spinner;
.source "MySpinner.java"


# instance fields
.field dropdown:Z

.field keepopen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZI)V
    .locals 5
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 36
    if-eqz p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-boolean v1, p0, Lcom/fleapapa/util/MySpinner;->dropdown:Z

    if-eqz v1, :cond_0

    .line 38
    iget-boolean v1, p0, Lcom/fleapapa/util/MySpinner;->keepopen:Z

    if-nez v1, :cond_0

    .line 42
    move-object v0, p0

    .line 43
    .local v0, spin:Lcom/fleapapa/util/MySpinner;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/fleapapa/util/MySpinner$1;

    invoke-direct {v2, p0, v0}, Lcom/fleapapa/util/MySpinner$1;-><init>(Lcom/fleapapa/util/MySpinner;Lcom/fleapapa/util/MySpinner;)V

    .line 62
    const-wide/16 v3, 0x64

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 75
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 69
    :sswitch_0
    iget-boolean v0, p0, Lcom/fleapapa/util/MySpinner;->dropdown:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/fleapapa/util/MySpinner;->dropdown:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 72
    :sswitch_1
    iput-boolean v1, p0, Lcom/fleapapa/util/MySpinner;->dropdown:Z

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/fleapapa/util/MySpinner;->requestFocus()Z

    .line 28
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MySpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 29
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MySpinner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 31
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
