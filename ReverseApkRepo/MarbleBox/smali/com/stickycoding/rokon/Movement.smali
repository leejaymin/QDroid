.class public Lcom/stickycoding/rokon/Movement;
.super Ljava/lang/Object;
.source "Movement.java"


# static fields
.field public static final ANTICLOCKWISE:I = 0x2

.field public static final CLOCKWISE:I = 0x1

.field public static final CUBIC:I = 0x3

.field public static final DEFAULT:I = 0x0

.field public static final LINEAR:I = 0x0

.field public static final PI:F = 3.1415927f

.field public static final PI_OVER_TWO:F = 1.5707964f

.field public static final QUADRATIC:I = 0x4

.field public static final SLOWING:I = 0x3

.field public static final SMOOTH:I = 0x1

.field public static final SQUARED:I = 0x2

.field public static final TWO_PI:F = 6.2831855f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPosition(FI)F
    .locals 3
    .parameter "position"
    .parameter "method"

    .prologue
    const/high16 v2, 0x3f80

    .line 56
    packed-switch p1, :pswitch_data_0

    move v0, p0

    .line 66
    :goto_0
    return v0

    .line 58
    :pswitch_0
    const v0, 0x40490fdb

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0

    .line 60
    :pswitch_1
    mul-float v0, p0, p0

    goto :goto_0

    .line 62
    :pswitch_2
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    goto :goto_0

    .line 64
    :pswitch_3
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
