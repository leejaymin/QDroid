.class public Lcom/rookiestudio/customize/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/rookiestudio/customize/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private cancelLongpress()V
    .locals 2

    .prologue
    .line 78
    const v0, 0x7f0c0076

    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPickerButton;->mNumberPicker:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v0}, Lcom/rookiestudio/customize/NumberPicker;->cancelIncrement()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const v0, 0x7f0c0078

    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPickerButton;->mNumberPicker:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v0}, Lcom/rookiestudio/customize/NumberPicker;->cancelDecrement()V

    goto :goto_0
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/rookiestudio/customize/NumberPickerButton;->cancelLongpress()V

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 64
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/rookiestudio/customize/NumberPickerButton;->cancelLongpress()V

    .line 67
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/rookiestudio/customize/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 52
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/rookiestudio/customize/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lcom/rookiestudio/customize/NumberPicker;)V
    .locals 0
    .parameter "picker"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/rookiestudio/customize/NumberPickerButton;->mNumberPicker:Lcom/rookiestudio/customize/NumberPicker;

    .line 47
    return-void
.end method
