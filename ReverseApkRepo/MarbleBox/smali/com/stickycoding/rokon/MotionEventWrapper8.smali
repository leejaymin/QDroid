.class public Lcom/stickycoding/rokon/MotionEventWrapper8;
.super Ljava/lang/Object;
.source "MotionEventWrapper8.java"


# static fields
.field protected static final ACTION_MASK:I = 0xff

.field protected static final ACTION_POINTER_DOWN:I = 0x5

.field protected static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field protected static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field protected static final ACTION_POINTER_UP:I = 0x6


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 16
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 17
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MOTIONEVENT 8 NOT FOUND"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static checkAvailable()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method


# virtual methods
.method protected getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method protected getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method protected getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method protected getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
