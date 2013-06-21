.class public abstract Lgnu/math/Complex;
.super Lgnu/math/Quantity;
.source "Complex.java"


# static fields
.field private static imMinusOne:Lgnu/math/CComplex;

.field private static imOne:Lgnu/math/CComplex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 158
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Lgnu/math/Complex;Lgnu/math/Complex;)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 107
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, code:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 110
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method public static divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 204
    invoke-virtual {p0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v4

    invoke-virtual {p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object p0

    .line 219
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 208
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 209
    .local v1, x_re:Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object p0

    .line 210
    .local p0, x_im:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    .line 211
    .local v3, y_re:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    .line 213
    .local v2, y_im:Lgnu/math/RealNum;
    invoke-static {v3, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    .end local p1
    invoke-static {v2, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {p1, v0, v4}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v0

    .line 215
    .local v0, q:Lgnu/math/RealNum;
    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    invoke-static {p0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object p1

    .line 217
    .local p1, n:Lgnu/math/RealNum;
    invoke-static {p0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    .end local p0           #x_im:Lgnu/math/RealNum;
    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v1

    .end local v1           #x_re:Lgnu/math/RealNum;
    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    .end local v2           #y_im:Lgnu/math/RealNum;
    move-result-object p0

    .line 219
    .local p0, d:Lgnu/math/RealNum;
    invoke-static {p1, v0}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p1

    .end local p1           #n:Lgnu/math/RealNum;
    invoke-static {p0, v0}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object p0

    .end local p0           #d:Lgnu/math/RealNum;
    invoke-static {p1, p0}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object p0

    goto :goto_0
.end method

.method public static equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static imMinusOne()Lgnu/math/CComplex;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    .line 30
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static imOne()Lgnu/math/CComplex;
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    .line 23
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static make(DD)Lgnu/math/Complex;
    .locals 2
    .parameter "re"
    .parameter "im"

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/DComplex;-><init>(DD)V

    goto :goto_0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;
    .locals 5
    .parameter "re"
    .parameter "im"

    .prologue
    .line 40
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 43
    :cond_1
    new-instance v0, Lgnu/math/DComplex;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lgnu/math/CComplex;

    invoke-direct {v0, p0, p1}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    goto :goto_0
.end method

.method public static neg(Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 2
    .parameter "x"

    .prologue
    .line 151
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static polar(DD)Lgnu/math/DComplex;
    .locals 5
    .parameter "r"
    .parameter "t"

    .prologue
    .line 56
    new-instance v0, Lgnu/math/DComplex;

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public static polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;
    .locals 4
    .parameter "r"
    .parameter "t"

    .prologue
    .line 61
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public static power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v9, 0x0

    .line 66
    instance-of v8, p1, Lgnu/math/IntNum;

    if-eqz v8, :cond_0

    .line 67
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/math/Complex;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/Complex;

    move-object v8, p0

    .line 75
    :goto_0
    return-object v8

    .line 68
    .restart local p0
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    .line 69
    .local v0, x_re:D
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    .line 70
    .local v2, x_im:D
    invoke-virtual {p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v4

    .line 71
    .local v4, y_re:D
    invoke-virtual {p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v6

    .line 72
    .local v6, y_im:D
    cmpl-double v8, v2, v9

    if-nez v8, :cond_2

    cmpl-double v8, v6, v9

    if-nez v8, :cond_2

    cmpl-double v8, v0, v9

    if-gez v8, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 74
    :cond_1
    new-instance v8, Lgnu/math/DFloNum;

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-static/range {v0 .. v7}, Lgnu/math/DComplex;->power(DDDD)Lgnu/math/DComplex;

    move-result-object v8

    goto :goto_0
.end method

.method public static times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 178
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 179
    .local v1, x_re:Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    .line 180
    .local v0, x_im:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v3

    .line 181
    .local v3, y_re:Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    .line 182
    .local v2, y_im:Lgnu/math/RealNum;
    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 5

    .prologue
    .line 81
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"
    .parameter "k"

    .prologue
    .line 164
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"
    .parameter "k"

    .prologue
    .line 171
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 172
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 173
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public angle()Lgnu/math/RealNum;
    .locals 5

    .prologue
    .line 89
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 115
    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_0

    .line 116
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    .line 117
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v0

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 224
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 225
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 231
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 232
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 233
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleImagValue()D
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doubleRealValue()D
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z

    move-result v0

    goto :goto_0
.end method

.method public exp()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 190
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .parameter "x"

    .prologue
    .line 197
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 198
    check-cast p1, Lgnu/math/Complex;

    .end local p1
    invoke-static {p1, p0}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 199
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lgnu/math/Complex;->neg(Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 0

    .prologue
    .line 8
    return-object p0
.end method

.method public sqrt()Lgnu/math/Complex;
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .parameter "radix"

    .prologue
    .line 139
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, imString:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
