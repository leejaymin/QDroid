.class public Lcom/stickycoding/rokon/MotionEventWrapper5;
.super Ljava/lang/Object;
.source "MotionEventWrapper5.java"


# static fields
.field protected static final ACTION_POINTER_1_DOWN:I = 0x5

.field protected static final ACTION_POINTER_1_UP:I = 0x6

.field protected static final ACTION_POINTER_2_DOWN:I = 0x105

.field protected static final ACTION_POINTER_2_UP:I = 0x106

.field protected static final ACTION_POINTER_3_DOWN:I = 0x205

.field protected static final ACTION_POINTER_3_UP:I = 0x206


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 18
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MOTIONEVENT 5 NOT FOUND"

    invoke-static {v1}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static checkAvailable()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method


# virtual methods
.method protected getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "motionEvent"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method protected getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method protected getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method protected getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter "motionEvent"
    .parameter "index"

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
