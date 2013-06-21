.class public Lgnu/math/FixedRealFormat;
.super Ljava/text/Format;
.source "FixedRealFormat.java"


# instance fields
.field private d:I

.field private i:I

.field public internalPad:Z

.field public overflowChar:C

.field public padChar:C

.field public scale:I

.field public showPlus:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 180
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 183
    .local v0, negative:Z
    neg-double p1, p1

    .line 187
    :goto_0
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3, p4}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RatNum;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 188
    return-object p3

    .line 186
    .end local v0           #negative:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #negative:Z
    goto :goto_0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 173
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RatNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 174
    return-object p3
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "num"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 194
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Lgnu/math/RatNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 1
    .parameter "number"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 157
    invoke-virtual {p1}, Lgnu/math/RatNum;->isNegative()Z

    move-result v0

    .line 158
    .local v0, negative:Z
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lgnu/math/RatNum;->rneg()Lgnu/math/RealNum;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/math/RatNum;

    .line 160
    .restart local p1
    :cond_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RatNum;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 161
    return-void
.end method

.method public format(Lgnu/math/RatNum;ZLjava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 28
    .parameter "number"
    .parameter "negative"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 34
    invoke-virtual/range {p0 .. p0}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v5

    .line 36
    .local v5, decimals:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .line 37
    .local v15, oldSize:I
    const/16 v17, 0x1

    .line 38
    .local v17, signLen:I
    if-eqz p2, :cond_1

    .line 39
    const/16 v24, 0x2d

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    :goto_0
    if-gez v5, :cond_f

    .line 48
    invoke-virtual/range {p1 .. p1}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v21

    .line 49
    .local v21, val:D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->log(D)D

    move-result-wide v24

    sget-wide v26, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move v11, v0

    .line 50
    .local v11, log:I
    const/high16 v24, -0x8000

    move v0, v11

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/16 v24, 0x0

    move/from16 v4, v24

    .line 51
    .local v4, cur_scale:I
    :goto_1
    move-wide/from16 v0, v21

    move v2, v4

    invoke-static {v0, v1, v2}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v19

    .line 52
    .local v19, string:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .line 53
    .local v9, i:I
    sub-int v24, v9, v4

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->scale:I

    move/from16 v25, v0

    add-int v8, v24, v25

    .line 54
    .local v8, digits:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    .line 55
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    sub-int v24, v24, v17

    const/16 v25, 0x1

    sub-int v24, v24, v25

    sub-int v5, v24, v8

    .line 58
    :goto_2
    if-gez v5, :cond_0

    .line 59
    const/4 v5, 0x0

    .line 60
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int v7, v15, v17

    .line 62
    .local v7, digStart:I
    add-int v24, v7, v8

    add-int v6, v24, v5

    .line 63
    .local v6, digEnd:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 65
    if-lt v6, v9, :cond_6

    .line 67
    move v6, v9

    .line 68
    const/16 v14, 0x30

    .line 72
    .local v14, nextDigit:C
    :goto_3
    const/16 v24, 0x35

    move v0, v14

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    const/16 v24, 0x1

    move/from16 v3, v24

    .line 73
    .local v3, addOne:Z
    :goto_4
    if-eqz v3, :cond_8

    const/16 v24, 0x39

    move/from16 v18, v24

    .line 74
    .local v18, skip:C
    :goto_5
    add-int v24, v7, v8

    move v0, v6

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    const/16 v24, 0x1

    sub-int v24, v6, v24

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 75
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 40
    .end local v3           #addOne:Z
    .end local v4           #cur_scale:I
    .end local v6           #digEnd:I
    .end local v7           #digStart:I
    .end local v8           #digits:I
    .end local v9           #i:I
    .end local v11           #log:I
    .end local v14           #nextDigit:C
    .end local v18           #skip:C
    .end local v19           #string:Ljava/lang/String;
    .end local v21           #val:D
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/FixedRealFormat;->showPlus:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 41
    const/16 v24, 0x2b

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 43
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 50
    .restart local v11       #log:I
    .restart local v21       #val:D
    :cond_3
    const/16 v24, 0x11

    sub-int v24, v24, v11

    move/from16 v4, v24

    goto/16 :goto_1

    .line 57
    .restart local v4       #cur_scale:I
    .restart local v8       #digits:I
    .restart local v9       #i:I
    .restart local v19       #string:Ljava/lang/String;
    :cond_4
    const/16 v24, 0x10

    move v0, v9

    move/from16 v1, v24

    if-le v0, v1, :cond_5

    const/16 v24, 0x10

    :goto_6
    sub-int v5, v24, v8

    goto :goto_2

    :cond_5
    move/from16 v24, v9

    goto :goto_6

    .line 71
    .restart local v6       #digEnd:I
    .restart local v7       #digStart:I
    :cond_6
    move-object/from16 v0, p3

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    .restart local v14       #nextDigit:C
    goto :goto_3

    .line 72
    :cond_7
    const/16 v24, 0x0

    move/from16 v3, v24

    goto :goto_4

    .line 73
    .restart local v3       #addOne:Z
    :cond_8
    const/16 v24, 0x30

    move/from16 v18, v24

    goto :goto_5

    .line 76
    .restart local v18       #skip:C
    :cond_9
    sub-int v10, v6, v7

    .line 77
    .local v10, length:I
    sub-int v5, v10, v8

    .line 78
    if-eqz v3, :cond_a

    .line 80
    move-object/from16 v0, p3

    move v1, v7

    move v2, v6

    invoke-static {v0, v1, v2}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 82
    add-int/lit8 v8, v8, 0x1

    .line 83
    const/4 v5, 0x0

    .line 84
    move v10, v8

    .line 87
    :cond_a
    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_b

    add-int v24, v17, v8

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    .line 90
    :cond_b
    const/4 v5, 0x1

    .line 91
    add-int/lit8 v10, v10, 0x1

    .line 93
    add-int v24, v7, v8

    const/16 v25, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 95
    :cond_c
    add-int v24, v7, v10

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 105
    .end local v3           #addOne:Z
    .end local v4           #cur_scale:I
    .end local v6           #digEnd:I
    .end local v7           #digStart:I
    .end local v9           #i:I
    .end local v11           #log:I
    .end local v14           #nextDigit:C
    .end local v18           #skip:C
    .end local v21           #val:D
    :goto_7
    add-int v20, v8, v5

    .line 107
    .local v20, total_digits:I
    invoke-virtual/range {p0 .. p0}, Lgnu/math/FixedRealFormat;->getMinimumIntegerDigits()I

    move-result v23

    .line 108
    .local v23, zero_digits:I
    if-ltz v8, :cond_10

    move v0, v8

    move/from16 v1, v23

    if-le v0, v1, :cond_10

    .line 109
    const/16 v23, 0x0

    .line 113
    :goto_8
    add-int v24, v8, v23

    if-gtz v24, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    if-lez v24, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    add-int/lit8 v25, v5, 0x1

    add-int v25, v25, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    .line 115
    :cond_d
    add-int/lit8 v23, v23, 0x1

    .line 116
    :cond_e
    add-int v24, v17, v10

    add-int v24, v24, v23

    add-int/lit8 v12, v24, 0x1

    .line 117
    .local v12, needed:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    sub-int v16, v24, v12

    .line 118
    .local v16, padding:I
    move/from16 v9, v23

    .restart local v9       #i:I
    :goto_9
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_11

    .line 119
    add-int v24, v15, v17

    const/16 v25, 0x30

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 99
    .end local v8           #digits:I
    .end local v9           #i:I
    .end local v10           #length:I
    .end local v12           #needed:I
    .end local v16           #padding:I
    .end local v19           #string:Ljava/lang/String;
    .end local v20           #total_digits:I
    .end local v23           #zero_digits:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->scale:I

    move/from16 v24, v0

    add-int v24, v24, v5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v19

    .line 100
    .restart local v19       #string:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 102
    .restart local v10       #length:I
    sub-int v8, v10, v5

    .restart local v8       #digits:I
    goto :goto_7

    .line 111
    .restart local v20       #total_digits:I
    .restart local v23       #zero_digits:I
    :cond_10
    sub-int v23, v23, v8

    goto :goto_8

    .line 120
    .restart local v9       #i:I
    .restart local v12       #needed:I
    .restart local v16       #padding:I
    :cond_11
    if-ltz v16, :cond_13

    .line 122
    move v9, v15

    .line 123
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/math/FixedRealFormat;->internalPad:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    if-lez v17, :cond_12

    .line 124
    add-int/lit8 v9, v9, 0x1

    .line 125
    :cond_12
    :goto_a
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_14

    .line 126
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/FixedRealFormat;->padChar:C

    move/from16 v24, v0

    move-object/from16 v0, p3

    move v1, v9

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 128
    :cond_13
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/FixedRealFormat;->overflowChar:C

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 130
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/math/FixedRealFormat;->i:I

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/FixedRealFormat;->i:I

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/math/FixedRealFormat;->i:I

    if-ltz v24, :cond_15

    .line 132
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/math/FixedRealFormat;->overflowChar:C

    move/from16 v24, v0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 135
    :cond_14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 136
    .local v13, newSize:I
    sub-int v24, v13, v5

    const/16 v25, 0x2e

    move-object/from16 v0, p3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 153
    .end local v13           #newSize:I
    :cond_15
    return-void
.end method

.method public format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2
    .parameter "number"
    .parameter "sbuf"
    .parameter "fpos"

    .prologue
    .line 165
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lgnu/math/RatNum;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RatNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 169
    :goto_0
    return-void

    .line 168
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lgnu/math/FixedRealFormat;->d:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lgnu/math/FixedRealFormat;->i:I

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 199
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RealFixedFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .parameter "text"
    .parameter "status"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RealFixedFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 20
    iput p1, p0, Lgnu/math/FixedRealFormat;->d:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 21
    iput p1, p0, Lgnu/math/FixedRealFormat;->i:I

    return-void
.end method
