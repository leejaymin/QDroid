.class final Lorg/a/a/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field private final a:Lorg/a/a/d;

.field private final b:I

.field private final c:Z


# direct methods
.method constructor <init>(Lorg/a/a/d;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/n;->a:Lorg/a/a/d;

    iput p2, p0, Lorg/a/a/d/n;->b:I

    iput-boolean p3, p0, Lorg/a/a/d/n;->c:Z

    return-void
.end method

.method private a(JLorg/a/a/a;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/a/a/d/n;->a:Lorg/a/a/d;

    invoke-virtual {v0, p3}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    iget-boolean v1, p0, Lorg/a/a/d/n;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    xor-int/lit8 v0, p3, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p3

    move v7, v2

    move v2, v1

    move v1, v7

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_1
    if-ge v0, v3, :cond_5

    add-int v5, v4, v0

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v0, :cond_4

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_4

    :cond_1
    const/4 v1, 0x1

    const/16 v2, 0x2d

    if-ne v5, v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_1

    :cond_4
    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    xor-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    :cond_7
    const/16 v2, 0x9

    if-lt v0, v2, :cond_8

    add-int/2addr v0, v4

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_3
    iget-object v2, p0, Lorg/a/a/d/n;->a:Lorg/a/a/d;

    invoke-virtual {p1, v2, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/d;I)V

    move v0, v1

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_13

    add-int/lit8 v2, v4, 0x1

    :goto_4
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v5, 0x30

    sub-int/2addr v2, v5

    add-int/2addr v0, v4

    :goto_5
    if-ge v3, v0, :cond_9

    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x30

    sub-int/2addr v2, v3

    move v3, v4

    goto :goto_5

    :catch_0
    move-exception v0

    xor-int/lit8 v0, v4, -0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_12

    neg-int v1, v2

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_a
    move v0, v4

    :goto_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_b

    const/16 v2, 0x39

    if-le v1, v2, :cond_c

    :cond_b
    xor-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x30

    sub-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_d

    const/16 v3, 0x39

    if-le v2, v3, :cond_e

    :cond_d
    xor-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_e
    shl-int/lit8 v3, v1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/a/a/d/n;->b:I

    invoke-virtual {p1}, Lorg/a/a/d/q;->e()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {p1}, Lorg/a/a/d/q;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_f
    const/16 v3, 0x32

    sub-int/2addr v2, v3

    if-ltz v2, :cond_10

    rem-int/lit8 v3, v2, 0x64

    :goto_7
    if-ge v1, v3, :cond_11

    const/16 v4, 0x64

    :goto_8
    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/a/a/d/n;->a:Lorg/a/a/d;

    invoke-virtual {p1, v2, v1}, Lorg/a/a/d/q;->a(Lorg/a/a/d;I)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x63

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    goto :goto_8

    :cond_12
    move v1, v0

    move v0, v2

    goto/16 :goto_3

    :cond_13
    move v2, v4

    goto/16 :goto_4

    :cond_14
    move v0, p3

    goto :goto_6
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 2

    const v1, 0xfffd

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/d/n;->a(JLorg/a/a/a;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lorg/a/a/d/n;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
