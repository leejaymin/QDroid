.class abstract Lorg/a/a/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field protected final a:Lorg/a/a/d;

.field protected final b:I

.field protected final c:Z


# direct methods
.method constructor <init>(Lorg/a/a/d;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/g;->a:Lorg/a/a/d;

    iput p2, p0, Lorg/a/a/d/g;->b:I

    iput-boolean p3, p0, Lorg/a/a/d/g;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 11

    const/16 v9, 0x39

    const/16 v8, 0x2d

    const/4 v7, 0x0

    const/16 v6, 0x30

    iget v0, p0, Lorg/a/a/d/g;->b:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v7

    move v2, v0

    move v3, p3

    move v0, v7

    :goto_0
    if-ge v0, v2, :cond_4

    add-int v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-nez v0, :cond_3

    if-eq v4, v8, :cond_0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    :cond_0
    iget-boolean v5, p0, Lorg/a/a/d/g;->c:Z

    if-eqz v5, :cond_3

    if-ne v4, v8, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-ge v4, v2, :cond_4

    add-int v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_4

    if-gt v4, v9, :cond_4

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v1, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-lt v4, v6, :cond_4

    if-gt v4, v9, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    xor-int/lit8 v0, v3, -0x1

    :goto_3
    return v0

    :cond_5
    const/16 v2, 0x9

    if-lt v0, v2, :cond_6

    add-int/2addr v0, v3

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    move v1, v0

    move v0, v10

    :goto_4
    iget-object v2, p0, Lorg/a/a/d/g;->a:Lorg/a/a/d;

    invoke-virtual {p1, v2, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/d;I)V

    move v0, v1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_9

    add-int/lit8 v2, v3, 0x1

    :goto_5
    add-int/lit8 v4, v2, 0x1

    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    sub-int/2addr v2, v6

    add-int/2addr v0, v3

    move v3, v4

    :goto_6
    if-ge v3, v0, :cond_7

    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v6

    move v3, v4

    goto :goto_6

    :catch_0
    move-exception v0

    xor-int/lit8 v0, v3, -0x1

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    neg-int v1, v2

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_4

    :cond_8
    move v1, v0

    move v0, v2

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_5
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/g;->b:I

    return v0
.end method
