.class public Lgnu/kawa/functions/NumberCompare;
.super Lgnu/mapping/ProcedureN;
.source "NumberCompare.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field private static final IntNum_KIND:I = 0x5

.field private static final Number_KIND:I = 0x1

.field private static final Numeric_KIND:I = 0x2

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field private static final RealNum_KIND:I = 0x3

.field public static final TRUE_IF_EQU:I = 0x8

.field public static final TRUE_IF_GRT:I = 0x10

.field public static final TRUE_IF_LSS:I = 0x4

.field public static final TRUE_IF_NAN:I = 0x2

.field public static final TRUE_IF_NEQ:I = 0x1

.field private static final Unknown_KIND:I = 0x0

.field private static final double_KIND:I = 0x4

.field private static final int_KIND:I = 0x7

.field private static final long_KIND:I = 0x6


# instance fields
.field flags:I

.field language:Lgnu/expr/Language;


# direct methods
.method public static $Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 33
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static $Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 38
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 43
    const/16 v0, 0x18

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static $Gr$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static $Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 53
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static $Ls$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "rest"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "flags"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-static {p1, p2, v1}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    shl-int v0, v1, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static applyN(I[Ljava/lang/Object;)Z
    .locals 5
    .parameter "flags"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 219
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 221
    aget-object v0, p1, v2

    .line 222
    .local v0, arg1:Ljava/lang/Object;
    add-int/lit8 v3, v2, 0x1

    aget-object v1, p1, v3

    .line 223
    .local v1, arg2:Ljava/lang/Object;
    invoke-static {p0, v0, v1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    const/4 v3, 0x0

    .line 226
    .end local v0           #arg1:Ljava/lang/Object;
    .end local v1           #arg2:Ljava/lang/Object;
    :goto_1
    return v3

    .line 219
    .restart local v0       #arg1:Ljava/lang/Object;
    .restart local v1       #arg2:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arg1:Ljava/lang/Object;
    .end local v1           #arg2:Ljava/lang/Object;
    :cond_1
    move v3, v4

    .line 226
    goto :goto_1
.end method

.method public static applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "flags"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v0

    return v0
.end method

.method public static checkCompareCode(II)Z
    .locals 2
    .parameter "code"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    .line 124
    add-int/lit8 v0, p0, 0x3

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static classify(Lgnu/bytecode/Type;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 382
    instance-of v1, p0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_5

    .line 384
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 385
    .local v0, sig:C
    const/16 v1, 0x56

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 401
    .end local v0           #sig:C
    :goto_0
    return v1

    .line 387
    .restart local v0       #sig:C
    :cond_1
    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v3

    .line 388
    goto :goto_0

    .line 389
    :cond_3
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_4

    .line 390
    const/4 v1, 0x6

    goto :goto_0

    .line 391
    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    .line 393
    .end local v0           #sig:C
    :cond_5
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    const/4 v1, 0x5

    goto :goto_0

    .line 395
    :cond_6
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    .line 396
    goto :goto_0

    .line 397
    :cond_7
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 398
    const/4 v1, 0x3

    goto :goto_0

    .line 399
    :cond_8
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 400
    const/4 v1, 0x2

    goto :goto_0

    :cond_9
    move v1, v2

    .line 401
    goto :goto_0
.end method

.method static classify(Lgnu/expr/Expression;)I
    .locals 5
    .parameter "exp"

    .prologue
    .line 365
    invoke-virtual {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 366
    .local v2, type:Lgnu/bytecode/Type;
    invoke-static {v2}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/bytecode/Type;)I

    move-result v1

    .line 368
    .local v1, kind:I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    instance-of v4, p0, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_1

    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/math/IntNum;

    if-eqz v4, :cond_1

    .line 371
    check-cast v3, Lgnu/math/IntNum;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/math/IntNum;->intLength()I

    move-result v0

    .line 372
    .local v0, ilength:I
    const/16 v4, 0x20

    if-ge v0, v4, :cond_0

    .line 373
    const/4 v4, 0x7

    .line 377
    .end local v0           #ilength:I
    :goto_0
    return v4

    .line 374
    .restart local v0       #ilength:I
    :cond_0
    const/16 v4, 0x40

    if-ge v0, v4, :cond_1

    .line 375
    const/4 v4, 0x6

    goto :goto_0

    .end local v0           #ilength:I
    :cond_1
    move v4, v1

    .line 377
    goto :goto_0
.end method

.method public static compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I
    .locals 1
    .parameter "arg1"
    .parameter "code1"
    .parameter "arg2"
    .parameter "code2"
    .parameter "exact"

    .prologue
    .line 150
    if-ltz p1, :cond_0

    if-gez p3, :cond_1

    .line 151
    :cond_0
    const/4 p0, -0x3

    .line 212
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return p0

    .line 152
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    if-ge p1, p3, :cond_3

    move v0, p3

    .line 154
    .local v0, code:I
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 208
    .end local v0           #code:I
    .end local p1
    .end local p4
    :cond_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .line 209
    .local p0, num1:Lgnu/math/Numeric;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 210
    .local p1, num2:Lgnu/math/Numeric;
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result p0

    .local p0, comp:I
    goto :goto_0

    .local p0, arg1:Ljava/lang/Object;
    .local p1, code1:I
    .restart local p4
    :cond_3
    move v0, p1

    .line 152
    goto :goto_1

    .line 157
    .restart local v0       #code:I
    :pswitch_0
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p0

    .line 158
    .local p0, i1:I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    .line 159
    .local p1, i2:I
    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    .line 160
    .local p0, comp:I
    :goto_2
    goto :goto_0

    .line 159
    .local p0, i1:I
    :cond_4
    if-le p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    goto :goto_2

    .line 162
    .local p0, arg1:Ljava/lang/Object;
    .local p1, code1:I
    :pswitch_1
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p0

    .line 163
    .end local p1           #code1:I
    .local p0, l1:J
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p2

    .line 164
    .end local p3
    .local p2, l2:J
    cmp-long p4, p0, p2

    if-gez p4, :cond_6

    .end local p4
    const/4 p0, -0x1

    .line 165
    .local p0, comp:I
    :goto_3
    goto :goto_0

    .line 164
    .local p0, l1:J
    :cond_6
    cmp-long p0, p0, p2

    if-lez p0, :cond_7

    .end local p0           #l1:J
    const/4 p0, 0x1

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    goto :goto_3

    .line 167
    .local p0, arg1:Ljava/lang/Object;
    .restart local p1       #code1:I
    .local p2, arg2:Ljava/lang/Object;
    .restart local p3
    .restart local p4
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    .line 168
    .local p0, bi1:Ljava/math/BigInteger;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 169
    .local p1, bi2:Ljava/math/BigInteger;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    .line 170
    .local p0, comp:I
    goto :goto_0

    .line 172
    .local p0, arg1:Ljava/lang/Object;
    .local p1, code1:I
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    .end local p0           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    .end local p1           #code1:I
    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result p0

    .line 174
    .local p0, comp:I
    goto :goto_0

    .line 176
    .local p0, arg1:Ljava/lang/Object;
    .restart local p1       #code1:I
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 177
    .local p0, bd1:Ljava/math/BigDecimal;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 178
    .local p1, bd2:Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    .line 179
    .local p0, comp:I
    goto :goto_0

    .line 181
    .local p0, arg1:Ljava/lang/Object;
    .local p1, code1:I
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    .end local p0           #arg1:Ljava/lang/Object;
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    .end local p1           #code1:I
    invoke-static {p0, p1}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result p0

    .line 183
    .local p0, comp:I
    goto :goto_0

    .line 185
    .local p0, arg1:Ljava/lang/Object;
    .restart local p1       #code1:I
    :pswitch_6
    if-eqz p4, :cond_8

    const/4 v0, 0x6

    if-le p1, v0, :cond_c

    .end local v0           #code:I
    const/4 v0, 0x6

    if-le p3, v0, :cond_c

    .line 189
    :cond_8
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    .line 190
    .local p0, f1:F
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 191
    .local p1, f2:F
    cmpl-float p2, p0, p1

    if-lez p2, :cond_9

    .end local p2           #arg2:Ljava/lang/Object;
    const/4 p0, 0x1

    .line 192
    .local p0, comp:I
    :goto_4
    goto/16 :goto_0

    .line 191
    .local p0, f1:F
    :cond_9
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    const/4 p0, -0x1

    goto :goto_4

    :cond_a
    cmpl-float p0, p0, p1

    if-nez p0, :cond_b

    .end local p0           #f1:F
    const/4 p0, 0x0

    goto :goto_4

    :cond_b
    const/4 p0, -0x2

    goto :goto_4

    .line 197
    .local p0, arg1:Ljava/lang/Object;
    .local p1, code1:I
    .restart local p2       #arg2:Ljava/lang/Object;
    :cond_c
    :pswitch_7
    if-eqz p4, :cond_d

    const/4 p4, 0x6

    if-le p1, p4, :cond_2

    .end local p4
    const/4 p1, 0x6

    if-le p3, p1, :cond_2

    .line 201
    .end local p1           #code1:I
    :cond_d
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    .line 202
    .local p0, d1:D
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p2

    .line 203
    .end local p3
    .local p2, d2:D
    cmpl-double p4, p0, p2

    if-lez p4, :cond_e

    const/4 p0, 0x1

    .line 204
    .local p0, comp:I
    :goto_5
    goto/16 :goto_0

    .line 203
    .local p0, d1:D
    :cond_e
    cmpg-double p4, p0, p2

    if-gez p4, :cond_f

    const/4 p0, -0x1

    goto :goto_5

    :cond_f
    cmpl-double p0, p0, p2

    if-nez p0, :cond_10

    .end local p0           #d1:D
    const/4 p0, 0x0

    goto :goto_5

    :cond_10
    const/4 p0, -0x2

    goto :goto_5

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 3
    .parameter "arg1"
    .parameter "arg2"
    .parameter "exact"

    .prologue
    .line 141
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 142
    .local v0, code1:I
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 143
    .local v1, code2:I
    invoke-static {p0, v0, p1, v1, p2}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v2

    return v2
.end method

.method public static make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;
    .locals 1
    .parameter "language"
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 100
    new-instance v0, Lgnu/kawa/functions/NumberCompare;

    invoke-direct {v0}, Lgnu/kawa/functions/NumberCompare;-><init>()V

    .line 101
    .local v0, proc:Lgnu/kawa/functions/NumberCompare;
    iput-object p0, v0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    .line 102
    invoke-virtual {v0, p1}, Lgnu/kawa/functions/NumberCompare;->setName(Ljava/lang/String;)V

    .line 103
    iput p2, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 104
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 114
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1, p2}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"

    .prologue
    .line 233
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 24
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 248
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 249
    .local v7, args:[Lgnu/expr/Expression;
    move-object v0, v7

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 251
    const/16 v22, 0x0

    aget-object v5, v7, v22

    .line 252
    .local v5, arg0:Lgnu/expr/Expression;
    const/16 v22, 0x1

    aget-object v6, v7, v22

    .line 253
    .local v6, arg1:Lgnu/expr/Expression;
    invoke-static {v5}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v14

    .line 254
    .local v14, kind0:I
    invoke-static {v6}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v15

    .line 255
    .local v15, kind1:I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    .line 256
    .local v9, code:Lgnu/bytecode/CodeAttr;
    const/16 v22, 0x3

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    const/16 v22, 0x3

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    const/16 v22, 0x3

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/16 v22, 0x3

    move v0, v15

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 260
    :cond_0
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 262
    sget-object v22, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    sget-object v23, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 351
    .end local v5           #arg0:Lgnu/expr/Expression;
    .end local v6           #arg1:Lgnu/expr/Expression;
    .end local v9           #code:Lgnu/bytecode/CodeAttr;
    .end local v14           #kind0:I
    .end local v15           #kind1:I
    :goto_0
    return-void

    .line 266
    .restart local v5       #arg0:Lgnu/expr/Expression;
    .restart local v6       #arg1:Lgnu/expr/Expression;
    .restart local v9       #code:Lgnu/bytecode/CodeAttr;
    .restart local v14       #kind0:I
    .restart local v15       #kind1:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    move/from16 v17, v0

    .line 267
    .local v17, mask:I
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 268
    const/16 v17, 0x14

    .line 269
    :cond_2
    const/16 v22, 0x5

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    const/16 v22, 0x5

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v22, 0x6

    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 272
    :cond_3
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v13, v0

    .line 273
    .local v13, ctypes:[Lgnu/bytecode/Type;
    const/16 v22, 0x0

    sget-object v23, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    aput-object v23, v13, v22

    .line 274
    const/16 v22, 0x6

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    .line 276
    const/16 v22, 0x1

    sget-object v23, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v23, v13, v22

    .line 294
    :cond_4
    :goto_1
    sget-object v22, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    const-string v23, "compare"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    .line 296
    .local v8, cmeth:Lgnu/bytecode/Method;
    new-instance v11, Lgnu/expr/PrimProcedure;

    invoke-direct {v11, v8}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 297
    .local v11, compare:Lgnu/expr/PrimProcedure;
    new-instance v5, Lgnu/expr/ApplyExp;

    .end local v5           #arg0:Lgnu/expr/Expression;
    invoke-direct {v5, v11, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 298
    .restart local v5       #arg0:Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/QuoteExp;

    .end local v6           #arg1:Lgnu/expr/Expression;
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v22

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 299
    .restart local v6       #arg1:Lgnu/expr/Expression;
    const/4 v15, 0x7

    move v14, v15

    .line 302
    .end local v8           #cmeth:Lgnu/bytecode/Method;
    .end local v11           #compare:Lgnu/expr/PrimProcedure;
    .end local v13           #ctypes:[Lgnu/bytecode/Type;
    :cond_5
    const/16 v22, 0x7

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    const/16 v22, 0x7

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    .line 303
    sget-object v10, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 308
    .local v10, commonType:Lgnu/bytecode/Type;
    :goto_2
    new-instance v19, Lgnu/expr/StackTarget;

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-direct {v0, v1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 309
    .local v19, subTarget:Lgnu/expr/StackTarget;
    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v12, v0

    .line 312
    .local v12, ctarget:Lgnu/expr/ConditionalTarget;
    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 314
    move-object/from16 v20, v6

    .local v20, tmp:Lgnu/expr/Expression;
    move-object v6, v5

    move-object/from16 v5, v20

    .line 315
    const/16 v22, 0x8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    const/16 v22, 0x14

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 316
    xor-int/lit8 v17, v17, 0x14

    .line 318
    .end local v20           #tmp:Lgnu/expr/Expression;
    :cond_6
    move-object v0, v12

    iget-boolean v0, v0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object v0, v12

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object/from16 v22, v0

    move-object/from16 v16, v22

    .line 319
    .local v16, label1:Lgnu/bytecode/Label;
    :goto_3
    move-object v0, v12

    iget-boolean v0, v0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 320
    xor-int/lit8 v17, v17, 0x1c

    .line 321
    :cond_7
    sparse-switch v17, :sswitch_data_0

    .line 330
    const/16 v18, 0x0

    .line 332
    .local v18, opcode:I
    :goto_4
    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 334
    const/16 v22, 0x7

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    const/16 v22, 0x7

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object v0, v6

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v21

    .local v21, value:Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    check-cast v21, Lgnu/math/IntNum;

    .end local v21           #value:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Lgnu/math/IntNum;->isZero()Z

    move-result v22

    if-eqz v22, :cond_e

    .line 339
    move-object v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    .line 346
    :goto_5
    invoke-virtual {v12, v9}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 278
    .end local v10           #commonType:Lgnu/bytecode/Type;
    .end local v12           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v16           #label1:Lgnu/bytecode/Label;
    .end local v18           #opcode:I
    .end local v19           #subTarget:Lgnu/expr/StackTarget;
    .restart local v13       #ctypes:[Lgnu/bytecode/Type;
    :cond_8
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-nez v22, :cond_9

    move-object v0, v6

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 285
    :cond_9
    const/16 v22, 0x1

    sget-object v23, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v23, v13, v22

    .line 286
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v7, v0

    .line 287
    const/16 v22, 0x0

    aput-object v6, v7, v22

    .line 288
    const/16 v22, 0x1

    aput-object v5, v7, v22

    .line 289
    const/16 v22, 0x8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x14

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 290
    xor-int/lit8 v17, v17, 0x14

    goto/16 :goto_1

    .line 293
    :cond_a
    const/16 v22, 0x1

    sget-object v23, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/bytecode/ClassType;

    aput-object v23, v13, v22

    goto/16 :goto_1

    .line 304
    .end local v13           #ctypes:[Lgnu/bytecode/Type;
    :cond_b
    const/16 v22, 0x6

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    const/16 v22, 0x6

    move v0, v15

    move/from16 v1, v22

    if-lt v0, v1, :cond_c

    .line 305
    sget-object v10, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .restart local v10       #commonType:Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 307
    .end local v10           #commonType:Lgnu/bytecode/Type;
    :cond_c
    sget-object v10, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .restart local v10       #commonType:Lgnu/bytecode/Type;
    goto/16 :goto_2

    .line 318
    .restart local v12       #ctarget:Lgnu/expr/ConditionalTarget;
    .restart local v19       #subTarget:Lgnu/expr/StackTarget;
    :cond_d
    move-object v0, v12

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object/from16 v22, v0

    move-object/from16 v16, v22

    goto/16 :goto_3

    .line 323
    .restart local v16       #label1:Lgnu/bytecode/Label;
    :sswitch_0
    const/16 v18, 0x9d

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 324
    .end local v18           #opcode:I
    :sswitch_1
    const/16 v18, 0x99

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 325
    .end local v18           #opcode:I
    :sswitch_2
    const/16 v18, 0x9b

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 326
    .end local v18           #opcode:I
    :sswitch_3
    const/16 v18, 0x9a

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 327
    .end local v18           #opcode:I
    :sswitch_4
    const/16 v18, 0x9c

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 328
    .end local v18           #opcode:I
    :sswitch_5
    const/16 v18, 0x9e

    .restart local v18       #opcode:I
    goto/16 :goto_4

    .line 343
    :cond_e
    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 344
    move-object v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    goto/16 :goto_5

    .line 350
    .end local v5           #arg0:Lgnu/expr/Expression;
    .end local v6           #arg1:Lgnu/expr/Expression;
    .end local v9           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #commonType:Lgnu/bytecode/Type;
    .end local v12           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v14           #kind0:I
    .end local v15           #kind1:I
    .end local v16           #label1:Lgnu/bytecode/Label;
    .end local v17           #mask:I
    .end local v18           #opcode:I
    .end local v19           #subTarget:Lgnu/expr/StackTarget;
    :cond_f
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0xc -> :sswitch_5
        0x10 -> :sswitch_0
        0x14 -> :sswitch_3
        0x18 -> :sswitch_4
    .end sparse-switch
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 406
    sget-object v0, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 239
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 240
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v0

    .line 241
    .local v0, folded:Lgnu/expr/Expression;
    if-eq v0, p1, :cond_0

    move-object v1, v0

    .line 243
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, -0xffe

    return v0
.end method
