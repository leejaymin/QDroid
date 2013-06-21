.class public final Lorg/cocos2d/l/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/cocos2d/l/e;

.field public b:Lorg/cocos2d/l/e;

.field public c:Lorg/cocos2d/l/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFF)F
    .locals 11

    const-wide/high16 v9, 0x4000

    const/high16 v8, 0x3f80

    const-wide/high16 v6, 0x4008

    sub-float v0, v8, p3

    float-to-double v0, v0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    mul-double/2addr v0, v2

    const/high16 v2, 0x4040

    mul-float/2addr v2, p3

    float-to-double v2, v2

    sub-float v4, v8, p3

    float-to-double v4, v4

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    float-to-double v2, p3

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v6

    sub-float v4, v8, p3

    float-to-double v4, v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    float-to-double v2, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
