.class Lorg/tf/GameActivity$EclairDetector;
.super Lorg/tf/GameActivity$VersionedGestureDetector;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EclairDetector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/tf/GameActivity$VersionedGestureDetector;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tf/GameActivity$EclairDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lorg/tf/GameActivity$EclairDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const v7, 0xff00

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v4, -0x4080

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 217
    .local v0, action:I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lorg/tf/Config;->getTouchHandlerSleep()I

    move-result v3

    invoke-static {v3}, Lskiba/util/Simply;->waitSleep(I)Z

    .line 313
    return v6

    .line 221
    :pswitch_1
    invoke-static {}, Lorg/tf/GameActivity;->access$3()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v3}, Lorg/tf/GameActivity;->access$4(I)V

    .line 223
    invoke-static {v4}, Lorg/tf/GameActivity;->access$0(F)V

    .line 224
    invoke-static {v4}, Lorg/tf/GameActivity;->access$1(F)V

    .line 225
    invoke-static {v5}, Lorg/tf/GameActivity;->access$2(I)V

    .line 227
    invoke-static {v4}, Lorg/tf/GameActivity;->access$5(F)V

    .line 228
    invoke-static {v4}, Lorg/tf/GameActivity;->access$6(F)V

    .line 229
    invoke-static {v5}, Lorg/tf/GameActivity;->access$7(I)V

    goto :goto_0

    .line 235
    :pswitch_2
    invoke-static {}, Lorg/tf/GameActivity;->access$3()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lorg/tf/GameActivity;->access$4(I)V

    .line 237
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 239
    .local v1, pointerId:I
    invoke-static {v1}, Lorg/tf/GameActivity;->access$2(I)V

    .line 243
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$0(F)V

    .line 244
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$1(F)V

    goto :goto_0

    .line 250
    .end local v1           #pointerId:I
    :pswitch_3
    invoke-static {}, Lorg/tf/GameActivity;->access$3()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-static {v3}, Lorg/tf/GameActivity;->access$4(I)V

    .line 252
    and-int v3, v0, v7

    shr-int/lit8 v2, v3, 0x8

    .line 254
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 256
    .restart local v1       #pointerId:I
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 257
    invoke-static {v4}, Lorg/tf/GameActivity;->access$0(F)V

    .line 258
    invoke-static {v4}, Lorg/tf/GameActivity;->access$1(F)V

    .line 259
    invoke-static {v5}, Lorg/tf/GameActivity;->access$2(I)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {v4}, Lorg/tf/GameActivity;->access$5(F)V

    .line 263
    invoke-static {v4}, Lorg/tf/GameActivity;->access$6(F)V

    .line 264
    invoke-static {v5}, Lorg/tf/GameActivity;->access$7(I)V

    goto :goto_0

    .line 272
    .end local v1           #pointerId:I
    .end local v2           #pointerIndex:I
    :pswitch_4
    invoke-static {}, Lorg/tf/GameActivity;->access$3()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lorg/tf/GameActivity;->access$4(I)V

    .line 274
    and-int v3, v0, v7

    shr-int/lit8 v2, v3, 0x8

    .line 276
    .restart local v2       #pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 280
    .restart local v1       #pointerId:I
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 281
    invoke-static {v1}, Lorg/tf/GameActivity;->access$7(I)V

    .line 287
    :goto_1
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 288
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$0(F)V

    .line 289
    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$1(F)V

    .line 292
    :cond_2
    invoke-static {}, Lorg/tf/GameActivity;->access$9()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 293
    invoke-static {}, Lorg/tf/GameActivity;->access$9()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$5(F)V

    .line 294
    invoke-static {}, Lorg/tf/GameActivity;->access$9()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-static {v3}, Lorg/tf/GameActivity;->access$6(F)V

    goto/16 :goto_0

    .line 284
    :cond_3
    invoke-static {v1}, Lorg/tf/GameActivity;->access$2(I)V

    goto :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
