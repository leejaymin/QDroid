.class public Lgnu/math/DFloNum;
.super Lgnu/math/RealNum;
.source "DFloNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final one:Lgnu/math/DFloNum;


# instance fields
.field value:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/high16 v1, 0x3ff0

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    sput-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .parameter "value"

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 17
    iput-wide p1, p0, Lgnu/math/DFloNum;->value:D

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 23
    .local v0, d:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lgnu/math/DFloNum;->value:D

    .line 37
    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 38
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lgnu/math/DFloNum;->value:D

    .line 39
    :cond_0
    return-void
.end method

.method public static compare(DD)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 143
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I
    .locals 11
    .parameter "x_num"
    .parameter "x_den"
    .parameter "y"

    .prologue
    const/4 v10, -0x2

    const/16 v9, 0x433

    const/4 v8, 0x1

    .line 149
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v10

    .line 176
    :goto_0
    return v6

    .line 151
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 153
    const-wide/16 v6, 0x0

    cmpl-double v6, p2, v6

    if-ltz v6, :cond_1

    const/4 v6, -0x1

    move v4, v6

    .line 154
    .local v4, result:I
    :goto_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    .line 155
    goto :goto_0

    .end local v4           #result:I
    :cond_1
    move v4, v8

    .line 153
    goto :goto_1

    .line 156
    .restart local v4       #result:I
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v10

    .line 157
    goto :goto_0

    .line 158
    :cond_3
    shr-int/lit8 v4, v4, 0x1

    .line 159
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_0

    :cond_4
    xor-int/lit8 v6, v4, -0x1

    goto :goto_0

    .line 163
    .end local v4           #result:I
    :cond_5
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 164
    .local v0, bits:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_6

    move v3, v8

    .line 165
    .local v3, neg:Z
    :goto_2
    const/16 v6, 0x34

    shr-long v6, v0, v6

    long-to-int v6, v6

    and-int/lit16 v2, v6, 0x7ff

    .line 166
    .local v2, exp:I
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v0, v6

    .line 167
    if-nez v2, :cond_7

    .line 168
    shl-long/2addr v0, v8

    .line 171
    :goto_3
    if-eqz v3, :cond_8

    neg-long v6, v0

    :goto_4
    invoke-static {v6, v7}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    .line 172
    .local v5, y_num:Lgnu/math/IntNum;
    if-lt v2, v9, :cond_9

    .line 173
    sub-int v6, v2, v9

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    .line 176
    :goto_5
    invoke-static {v5, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v6

    invoke-static {p0, v6}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v6

    goto :goto_0

    .line 164
    .end local v2           #exp:I
    .end local v3           #neg:Z
    .end local v5           #y_num:Lgnu/math/IntNum;
    :cond_6
    const/4 v6, 0x0

    move v3, v6

    goto :goto_2

    .line 170
    .restart local v2       #exp:I
    .restart local v3       #neg:Z
    :cond_7
    const-wide/high16 v6, 0x10

    or-long/2addr v0, v6

    goto :goto_3

    :cond_8
    move-wide v6, v0

    .line 171
    goto :goto_4

    .line 175
    .restart local v5       #y_num:Lgnu/math/IntNum;
    :cond_9
    sub-int v6, v9, v2

    invoke-static {p0, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_5
.end method

.method public static make(D)Lgnu/math/DFloNum;
    .locals 1
    .parameter "value"

    .prologue
    .line 43
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static final one()Lgnu/math/DFloNum;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-object v0
.end method

.method public static toExact(D)Lgnu/math/RatNum;
    .locals 9
    .parameter "value"

    .prologue
    const/16 v8, 0x433

    const/4 v7, 0x1

    .line 214
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    const-wide/16 v5, 0x0

    cmpl-double v5, p0, v5

    if-ltz v5, :cond_0

    move v5, v7

    :goto_0
    invoke-static {v5}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v5

    .line 230
    :goto_1
    return-object v5

    .line 215
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "cannot convert NaN to exact rational"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 219
    .local v0, bits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_3

    move v4, v7

    .line 220
    .local v4, neg:Z
    :goto_2
    const/16 v5, 0x34

    shr-long v5, v0, v5

    long-to-int v5, v5

    and-int/lit16 v2, v5, 0x7ff

    .line 221
    .local v2, exp:I
    const-wide v5, 0xfffffffffffffL

    and-long/2addr v0, v5

    .line 222
    if-nez v2, :cond_4

    .line 223
    shl-long/2addr v0, v7

    .line 226
    :goto_3
    if-eqz v4, :cond_5

    neg-long v5, v0

    :goto_4
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v3

    .line 227
    .local v3, mant:Lgnu/math/IntNum;
    if-lt v2, v8, :cond_6

    .line 228
    sub-int v5, v2, v8

    invoke-static {v3, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_1

    .line 219
    .end local v2           #exp:I
    .end local v3           #mant:Lgnu/math/IntNum;
    .end local v4           #neg:Z
    :cond_3
    const/4 v5, 0x0

    move v4, v5

    goto :goto_2

    .line 225
    .restart local v2       #exp:I
    .restart local v4       #neg:Z
    :cond_4
    const-wide/high16 v5, 0x10

    or-long/2addr v0, v5

    goto :goto_3

    :cond_5
    move-wide v5, v0

    .line 226
    goto :goto_4

    .line 230
    .restart local v3       #mant:Lgnu/math/IntNum;
    :cond_6
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    sub-int v6, v8, v2

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v3, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7
    .parameter "y"
    .parameter "k"

    .prologue
    .line 72
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    int-to-double v3, p2

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 76
    :goto_0
    return-object v0

    .line 74
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 76
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7
    .parameter "x"
    .parameter "k"

    .prologue
    .line 81
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    int-to-double v3, p2

    iget-wide v5, p0, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 83
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    .line 182
    instance-of v3, p1, Lgnu/math/RatNum;

    if-eqz v3, :cond_1

    .line 184
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    move-object v2, v0

    .line 185
    .local v2, y_rat:Lgnu/math/RatNum;
    invoke-virtual {v2}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v4

    iget-wide v5, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v3, v4, v5, v6}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v1

    .line 186
    .local v1, i:I
    const/4 v3, -0x1

    if-ge v1, v3, :cond_0

    move v3, v1

    .line 188
    .end local v1           #i:I
    .end local v2           #y_rat:Lgnu/math/RatNum;
    .end local p1
    :goto_0
    return v3

    .line 186
    .restart local v1       #i:I
    .restart local v2       #y_rat:Lgnu/math/RatNum;
    .restart local p1
    :cond_0
    neg-int v3, v1

    goto :goto_0

    .line 188
    .end local v1           #i:I
    .end local v2           #y_rat:Lgnu/math/RatNum;
    :cond_1
    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v3

    goto :goto_0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 6
    .parameter "x"

    .prologue
    .line 193
    instance-of v2, p1, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    move-object v1, v0

    .line 196
    .local v1, x_rat:Lgnu/math/RatNum;
    invoke-virtual {v1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v2

    .line 198
    .end local v1           #x_rat:Lgnu/math/RatNum;
    .end local p1
    :goto_0
    return v2

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3, v4, v5}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v2

    goto :goto_0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .parameter "y"

    .prologue
    .line 107
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 111
    :goto_0
    return-object v0

    .line 109
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .parameter "x"

    .prologue
    .line 116
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 118
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final doubleValue()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/math/DFloNum;

    .end local p1
    iget-wide v0, p1, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .locals 4

    .prologue
    .line 128
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 208
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .parameter "y"

    .prologue
    .line 88
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 92
    :goto_0
    return-object v0

    .line 90
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .parameter "x"

    .prologue
    .line 97
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 99
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 5
    .parameter "y"

    .prologue
    .line 123
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    .line 260
    return-void
.end method

.method public sign()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, 0x7ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "#i1/0"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, -0x10

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "#i-1/0"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#i0/0"

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .parameter "radix"

    .prologue
    .line 243
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 254
    return-void
.end method
