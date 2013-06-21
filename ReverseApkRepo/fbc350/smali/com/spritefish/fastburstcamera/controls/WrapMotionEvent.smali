.class public Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;
.super Ljava/lang/Object;
.source "WrapMotionEvent.java"


# instance fields
.field protected event:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    .line 12
    return-void
.end method

.method private verifyPointerIndex(I)V
    .locals 2
    .parameter "pointerIndex"

    .prologue
    .line 56
    if-lez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v1, "Invalid pointer index for Donut/Cupcake"

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public static wrap(Landroid/view/MotionEvent;)Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;
    .locals 2
    .parameter "event"

    .prologue
    .line 16
    :try_start_0
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/controls/EclairMotionEvent;-><init>(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    return-object v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, e:Ljava/lang/VerifyError;
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 34
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 43
    invoke-virtual {p0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY()F

    move-result v0

    return v0
.end method
