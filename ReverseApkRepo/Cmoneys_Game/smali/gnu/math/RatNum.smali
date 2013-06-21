.class public abstract Lgnu/math/RatNum;
.super Lgnu/math/RealNum;
.source "RatNum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 66
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 67
    .local v1, x_num:Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 68
    .local v0, x_den:Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    .line 69
    .local v3, y_num:Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    .line 70
    .local v2, y_den:Lgnu/math/IntNum;
    invoke-static {v0, v2}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    invoke-static {v1, v3, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v4, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    .line 72
    :goto_0
    return-object v4

    :cond_0
    invoke-static {v2, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v0, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    goto :goto_0
.end method

.method public static compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 45
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    return v0
.end method

.method public static divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 52
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static infinity(I)Lgnu/math/RatNum;
    .locals 3
    .parameter "sign"

    .prologue
    .line 40
    new-instance v0, Lgnu/math/IntFraction;

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method

.method public static make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;
    .locals 2
    .parameter "num"
    .parameter "den"

    .prologue
    .line 15
    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 16
    .local v0, g:Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    invoke-static {p0, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 21
    invoke-static {p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lgnu/math/IntFraction;

    invoke-direct {v1, p0, p1}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    goto :goto_0
.end method

.method public static neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .parameter "x"

    .prologue
    .line 79
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 80
    .local v1, x_num:Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 81
    .local v0, x_den:Lgnu/math/IntNum;
    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    return-object v2
.end method

.method public static rationalize(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    .line 150
    .end local p0
    :goto_0
    return-object v0

    .line 142
    .restart local p0
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 143
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-lez v0, :cond_2

    .line 145
    invoke-static {p0, p1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    invoke-static {v0, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    check-cast p0, Lgnu/math/RealNum;

    move-object v0, p0

    goto :goto_0

    .line 150
    .restart local p0
    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0
.end method

.method private static simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 154
    invoke-virtual {p0, v6}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    .line 155
    .local v1, fx:Lgnu/math/RealNum;
    invoke-virtual {p1, v6}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v2

    .line 156
    .local v2, fy:Lgnu/math/RealNum;
    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    .line 166
    .end local p0
    :goto_0
    return-object v4

    .line 158
    .restart local p0
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p1, v2}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    .line 161
    .local v3, n:Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    .line 162
    .local v0, d:Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v3, v0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    move-object v4, p0

    goto :goto_0

    .line 166
    .end local v0           #d:Lgnu/math/RealNum;
    .end local v3           #n:Lgnu/math/RealNum;
    .restart local p0
    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    move-object v4, p0

    goto :goto_0
.end method

.method public static times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 86
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract denominator()Lgnu/math/IntNum;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/RatNum;->equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    return v0
.end method

.method public abstract numerator()Lgnu/math/IntNum;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 9
    .parameter "y"

    .prologue
    .line 99
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const/4 v3, 0x1

    .line 102
    .local v3, inv:Z
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 106
    :goto_0
    iget-object v6, p1, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    .line 108
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v6

    iget v7, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    .line 109
    .local v5, num:Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v6

    iget v7, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v6, v7}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 110
    .local v2, den:Lgnu/math/IntNum;
    if-eqz v3, :cond_1

    invoke-static {v2, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    .line 117
    .end local v2           #den:Lgnu/math/IntNum;
    .end local v5           #num:Lgnu/math/IntNum;
    :goto_1
    return-object v6

    .line 105
    .end local v3           #inv:Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #inv:Z
    goto :goto_0

    .line 110
    .restart local v2       #den:Lgnu/math/IntNum;
    .restart local v5       #num:Lgnu/math/IntNum;
    :cond_1
    invoke-static {v5, v2}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v6

    goto :goto_1

    .line 112
    .end local v2           #den:Lgnu/math/IntNum;
    .end local v5           #num:Lgnu/math/IntNum;
    :cond_2
    invoke-virtual {p0}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v0

    .line 113
    .local v0, d:D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_4

    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    move v4, v6

    .line 114
    .local v4, neg:Z
    :goto_2
    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 115
    if-eqz v3, :cond_3

    .line 116
    const-wide/high16 v6, 0x3ff0

    div-double v0, v6, v0

    .line 117
    :cond_3
    new-instance v6, Lgnu/math/DFloNum;

    if-eqz v4, :cond_5

    neg-double v7, v0

    :goto_3
    invoke-direct {v6, v7, v8}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_1

    .line 113
    .end local v4           #neg:Z
    :cond_4
    const/4 v6, 0x0

    move v4, v6

    goto :goto_2

    .restart local v4       #neg:Z
    :cond_5
    move-wide v7, v0

    .line 117
    goto :goto_3
.end method

.method public final toExact()Lgnu/math/RatNum;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2
    .parameter "rounding_mode"

    .prologue
    .line 132
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 2
    .parameter "rounding_mode"

    .prologue
    .line 127
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
