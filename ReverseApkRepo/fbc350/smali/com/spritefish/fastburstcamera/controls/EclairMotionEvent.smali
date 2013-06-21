.class public Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;
.super Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;
.source "EclairMotionEvent.java"


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getPointerCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
