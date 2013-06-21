.class public final Lcom/thinkyeah/common/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/BitmapFactory$Options;)I
    .locals 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4119050000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const/16 v0, 0x8

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method
