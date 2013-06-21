.class Lcom/sphericbox/syb/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([I[I[I[IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 34
    .line 37
    if-lt p4, p5, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sub-int v0, p5, v5

    if-ne p4, v0, :cond_2

    .line 44
    aget v0, p0, p4

    aget v1, p0, p5

    if-le v0, v1, :cond_0

    .line 45
    aget v0, p0, p4

    .line 46
    aget v1, p0, p5

    aput v1, p0, p4

    .line 47
    aput v0, p0, p5

    goto :goto_0

    .line 56
    :cond_2
    add-int v0, p4, p5

    div-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    .line 57
    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    aget v2, p0, p5

    aput v2, p0, v1

    .line 58
    aput v0, p0, p5

    move v7, p5

    move v1, p4

    .line 60
    :goto_1
    if-ge v1, v7, :cond_4

    .line 65
    :goto_2
    aget v2, p0, v1

    if-gt v2, v0, :cond_7

    if-ge v1, v7, :cond_7

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :goto_3
    aget v3, p0, v2

    if-gt v0, v3, :cond_3

    if-ge v1, v2, :cond_3

    .line 74
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 80
    :cond_3
    if-ge v1, v2, :cond_6

    .line 81
    aget v3, p0, v1

    .line 82
    aget v4, p0, v2

    aput v4, p0, v1

    .line 83
    aput v3, p0, v2

    .line 85
    aget v3, p1, v1

    .line 86
    aget v4, p1, v2

    aput v4, p1, v1

    .line 87
    aput v3, p1, v2

    .line 89
    aget v3, p2, v1

    .line 90
    aget v4, p2, v2

    aput v4, p2, v1

    .line 91
    aput v3, p2, v2

    .line 93
    aget v3, p3, v1

    .line 94
    aget v4, p3, v2

    aput v4, p3, v1

    .line 95
    aput v3, p3, v2

    move v7, v2

    .line 96
    goto :goto_1

    .line 103
    :cond_4
    aget v2, p0, v7

    aput v2, p0, p5

    .line 104
    aput v0, p0, v7

    .line 111
    if-ge p6, v7, :cond_5

    sub-int v5, v1, v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/j;->a([I[I[I[IIII)V

    .line 112
    :cond_5
    if-le p6, v7, :cond_0

    add-int/lit8 v4, v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sphericbox/syb/a/j;->a([I[I[I[IIII)V

    goto :goto_0

    :cond_6
    move v7, v2

    goto :goto_1

    :cond_7
    move v2, v7

    goto :goto_3
.end method
