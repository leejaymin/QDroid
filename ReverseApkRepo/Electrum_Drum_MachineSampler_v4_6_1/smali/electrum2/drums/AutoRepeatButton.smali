.class public Lelectrum2/drums/AutoRepeatButton;
.super Landroid/widget/Button;
.source "AutoRepeatButton.java"


# static fields
.field private static final INITIAL_DELAY:I = 0x384

.field private static final REPEAT_INTERVAL:I = 0x64


# instance fields
.field private mTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lelectrum2/drums/AutoRepeatButton$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/AutoRepeatButton$1;-><init>(Lelectrum2/drums/AutoRepeatButton;)V

    iput-object v0, p0, Lelectrum2/drums/AutoRepeatButton;->mTask:Ljava/util/TimerTask;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lelectrum2/drums/AutoRepeatButton$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/AutoRepeatButton$1;-><init>(Lelectrum2/drums/AutoRepeatButton;)V

    iput-object v0, p0, Lelectrum2/drums/AutoRepeatButton;->mTask:Ljava/util/TimerTask;

    .line 30
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lelectrum2/drums/AutoRepeatButton;->mTask:Ljava/util/TimerTask;

    const-wide/16 v1, 0x384

    invoke-virtual {p0, v0, v1, v2}, Lelectrum2/drums/AutoRepeatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lelectrum2/drums/AutoRepeatButton;->mTask:Ljava/util/TimerTask;

    invoke-virtual {p0, v0}, Lelectrum2/drums/AutoRepeatButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
