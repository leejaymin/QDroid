.class final Lorg/a/a/d/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/a/a/d/m;->c:Z

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput v0, p0, Lorg/a/a/d/m;->d:I

    iput p4, p0, Lorg/a/a/d/m;->e:I

    return-void
.end method

.method private static a(Ljava/lang/String;II)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_0

    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lorg/a/a/d/m;->d:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lorg/a/a/d/m;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/a/a/d/m;->d:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    return v0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 11

    const/16 v7, 0x2b

    const/16 v9, 0x30

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, p3

    iget-object v0, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-lez v6, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    if-eq v0, v7, :cond_2

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/d/q;->a(Ljava/lang/Integer;)V

    move v0, p3

    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/d/q;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lorg/a/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_2
    if-gt v6, v1, :cond_3

    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_1
    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p2, v3, v8}, Lorg/a/a/d/m;->a(Ljava/lang/String;II)I

    move-result v5

    if-ge v5, v8, :cond_6

    xor-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    :cond_6
    invoke-static {p2, v3}, Lorg/a/a/d/t;->a(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x17

    if-le v5, v6, :cond_7

    xor-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_7
    const v6, 0x36ee80

    mul-int/2addr v5, v6

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v3, 0x2

    if-lez v2, :cond_16

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_9

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_2
    invoke-static {p2, v4, v8}, Lorg/a/a/d/m;->a(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_8

    if-eqz v2, :cond_17

    :cond_8
    if-ge v6, v8, :cond_a

    xor-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_9
    if-lt v6, v9, :cond_16

    const/16 v7, 0x39

    if-gt v6, v7, :cond_16

    move v10, v4

    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_2

    :cond_a
    invoke-static {p2, v4}, Lorg/a/a/d/t;->a(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x3b

    if-le v6, v7, :cond_b

    xor-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :cond_b
    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    if-lez v3, :cond_17

    if-eqz v2, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_17

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, 0x1

    :cond_c
    invoke-static {p2, v4, v8}, Lorg/a/a/d/m;->a(Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_d

    if-eqz v2, :cond_17

    :cond_d
    if-ge v6, v8, :cond_e

    xor-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :cond_e
    invoke-static {p2, v4}, Lorg/a/a/d/t;->a(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x3b

    if-le v6, v7, :cond_f

    xor-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :cond_f
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, 0x2

    if-lez v3, :cond_17

    if-eqz v2, :cond_18

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_10

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_17

    :cond_10
    add-int/lit8 v3, v4, 0x1

    :goto_3
    const/4 v4, 0x3

    invoke-static {p2, v3, v4}, Lorg/a/a/d/m;->a(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_11

    if-eqz v2, :cond_16

    :cond_11
    if-gtz v4, :cond_12

    xor-int/lit8 v0, v3, -0x1

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v5

    if-le v4, v1, :cond_15

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    if-le v4, v8, :cond_14

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v9

    add-int/2addr v1, v2

    move v2, v3

    :goto_4
    if-eqz v0, :cond_13

    neg-int v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/d/q;->a(Ljava/lang/Integer;)V

    move v0, v2

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto :goto_5

    :cond_14
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    :cond_15
    move v1, v3

    goto :goto_4

    :cond_16
    move v1, v5

    move v2, v3

    goto :goto_4

    :cond_17
    move v1, v5

    move v2, v4

    goto :goto_4

    :cond_18
    move v3, v4

    goto :goto_3
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 8

    const v7, 0xea60

    const/16 v6, 0x3a

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    if-nez p6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p5, :cond_2

    iget-object v0, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/a/a/d/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    if-ltz p5, :cond_9

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, p5

    :goto_1
    const v1, 0x36ee80

    div-int v1, v0, v1

    invoke-static {p1, v1, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    iget v2, p0, Lorg/a/a/d/m;->e:I

    if-eq v2, v5, :cond_0

    const v2, 0x36ee80

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v1, p0, Lorg/a/a/d/m;->d:I

    if-le v1, v5, :cond_0

    :cond_3
    div-int v1, v0, v7

    iget-boolean v2, p0, Lorg/a/a/d/m;->c:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    invoke-static {p1, v1, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    iget v2, p0, Lorg/a/a/d/m;->e:I

    if-eq v2, v3, :cond_0

    mul-int/2addr v1, v7

    sub-int/2addr v0, v1

    if-nez v0, :cond_5

    iget v1, p0, Lorg/a/a/d/m;->d:I

    if-le v1, v3, :cond_0

    :cond_5
    div-int/lit16 v1, v0, 0x3e8

    iget-boolean v2, p0, Lorg/a/a/d/m;->c:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    invoke-static {p1, v1, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    iget v2, p0, Lorg/a/a/d/m;->e:I

    if-eq v2, v4, :cond_0

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    if-nez v0, :cond_7

    iget v1, p0, Lorg/a/a/d/m;->d:I

    if-le v1, v4, :cond_0

    :cond_7
    iget-boolean v1, p0, Lorg/a/a/d/m;->c:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    invoke-static {p1, v0, v4}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v0, p5

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/d/m;->a()I

    move-result v0

    return v0
.end method
