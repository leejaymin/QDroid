.class public Lcom/stickycoding/rokon/GameThread$MotionTrigger;
.super Ljava/lang/Object;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GameThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MotionTrigger"
.end annotation


# static fields
.field public static final MAX_POINTERS:I = 0x3


# instance fields
.field protected action:I

.field protected isTouch:Z

.field protected pointerCount:I

.field protected pointerId:[I

.field final synthetic this$0:Lcom/stickycoding/rokon/GameThread;

.field protected x:[F

.field protected y:[F


# direct methods
.method protected constructor <init>(Lcom/stickycoding/rokon/GameThread;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 49
    iput-object p1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->this$0:Lcom/stickycoding/rokon/GameThread;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    .line 48
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerId:[I

    return-void
.end method


# virtual methods
.method protected set(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "isTouch"

    .prologue
    const/4 v3, 0x0

    .line 52
    sget v1, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 53
    sget v1, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->action:I

    .line 55
    sget-object v1, Lcom/stickycoding/rokon/Rokon;->motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;

    invoke-virtual {v1, p1}, Lcom/stickycoding/rokon/MotionEventWrapper8;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    if-lt v0, v1, :cond_1

    .line 77
    .end local v0           #i:I
    :cond_0
    :goto_1
    iput-boolean p2, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->isTouch:Z

    .line 78
    return-void

    .line 57
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerId:[I

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper8;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    aput v2, v1, v0

    .line 58
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper8;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    aput v2, v1, v0

    .line 59
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper8;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    aput v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0           #i:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->action:I

    .line 63
    sget-object v1, Lcom/stickycoding/rokon/Rokon;->motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;

    invoke-virtual {v1, p1}, Lcom/stickycoding/rokon/MotionEventWrapper5;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    .line 64
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    if-ge v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerId:[I

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper5;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    aput v2, v1, v0

    .line 66
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper5;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    aput v2, v1, v0

    .line 67
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    sget-object v2, Lcom/stickycoding/rokon/Rokon;->motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;

    invoke-virtual {v2, p1, v0}, Lcom/stickycoding/rokon/MotionEventWrapper5;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    aput v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 72
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->x:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v3

    .line 73
    iget-object v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->y:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v3

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->action:I

    .line 75
    sget v1, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/stickycoding/rokon/GameThread;->motionTriggerCount:I

    iput v1, p0, Lcom/stickycoding/rokon/GameThread$MotionTrigger;->pointerCount:I

    goto :goto_1
.end method
