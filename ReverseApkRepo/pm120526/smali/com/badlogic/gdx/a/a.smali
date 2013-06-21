.class public final Lcom/badlogic/gdx/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static c:Ljava/util/Random;

.field private static final d:I

.field private static final e:F

.field private static final f:[F

.field private static final g:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const v7, 0x41b60b61

    const v6, 0x3c8efa35

    const/16 v5, 0x2000

    const/4 v8, 0x0

    new-array v0, v5, [F

    sput-object v0, Lcom/badlogic/gdx/a/a;->a:[F

    new-array v0, v5, [F

    sput-object v0, Lcom/badlogic/gdx/a/a;->b:[F

    move v0, v8

    :goto_0
    if-lt v0, v5, :cond_0

    move v0, v8

    :goto_1
    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    const-wide/high16 v0, 0x40d0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/badlogic/gdx/a/a;->d:I

    const/high16 v0, 0x3f80

    sget v1, Lcom/badlogic/gdx/a/a;->d:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/badlogic/gdx/a/a;->e:F

    const/16 v0, 0x4000

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/a/a;->f:[F

    move v0, v8

    :goto_2
    sget v1, Lcom/badlogic/gdx/a/a;->d:I

    if-lt v0, v1, :cond_2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/a/a;->c:Ljava/util/Random;

    const-wide v0, 0x40d0004000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/a/a;->g:D

    return-void

    :cond_0
    int-to-float v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    const/high16 v2, 0x4600

    div-float/2addr v1, v2

    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    sget-object v2, Lcom/badlogic/gdx/a/a;->a:[F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v2, v0

    sget-object v2, Lcom/badlogic/gdx/a/a;->b:[F

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/a/a;->a:[F

    int-to-float v2, v0

    mul-float/2addr v2, v7

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    sget-object v1, Lcom/badlogic/gdx/a/a;->b:[F

    int-to-float v2, v0

    mul-float/2addr v2, v7

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0x1fff

    int-to-float v3, v0

    mul-float/2addr v3, v6

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x5a

    goto/16 :goto_1

    :cond_2
    move v1, v8

    :goto_3
    sget v2, Lcom/badlogic/gdx/a/a;->d:I

    if-lt v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    int-to-float v2, v0

    sget v3, Lcom/badlogic/gdx/a/a;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v1

    sget v4, Lcom/badlogic/gdx/a/a;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Lcom/badlogic/gdx/a/a;->f:[F

    sget v5, Lcom/badlogic/gdx/a/a;->d:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    float-to-double v6, v3

    float-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static final a()I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/a/a;->c:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static a(I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
