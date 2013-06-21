.class public final Lcom/mosaicture/g/b;
.super Lcom/mosaicture/g/l;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaicture/g/l;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method protected final a([F[F)F
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget v3, p1, v0

    aget v4, p2, v0

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    neg-float v3, v3

    :cond_1
    add-float/2addr v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a([F[F[F)F
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget v3, p1, v0

    aget v4, p3, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    aget v3, p1, v0

    aget v4, p3, v0

    sub-float/2addr v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    add-float/2addr v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v3, p1, v0

    aget v4, p2, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    aget v3, p2, v0

    aget v4, p1, v0

    sub-float/2addr v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1
.end method
