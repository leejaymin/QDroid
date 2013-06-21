.class final Lorg/a/a/e/f;
.super Lorg/a/a/i;


# instance fields
.field private final b:[J

.field private final c:[I

.field private final d:[I

.field private final e:[Ljava/lang/String;

.field private final f:Lorg/a/a/e/d;


# direct methods
.method private constructor <init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lorg/a/a/e/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/a/a/e/f;->b:[J

    iput-object p3, p0, Lorg/a/a/e/f;->c:[I

    iput-object p4, p0, Lorg/a/a/e/f;->d:[I

    iput-object p5, p0, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    iput-object p6, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    return-void
.end method

.method static a(Ljava/io/DataInput;Ljava/lang/String;)Lorg/a/a/e/f;
    .locals 10

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v4, v6, [I

    new-array v5, v6, [Ljava/lang/String;

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v8

    aput-wide v8, v2, v7

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v3, v7

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v4, v7

    const/16 v8, 0x100

    if-ge v0, v8, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    :goto_2
    aget-object v8, v1, v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lorg/a/a/e/d;

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {p0}, Lorg/a/a/e/g;->a(Ljava/io/DataInput;)Lorg/a/a/e/g;

    move-result-object v6

    invoke-static {p0}, Lorg/a/a/e/g;->a(Ljava/io/DataInput;)Lorg/a/a/e/g;

    move-result-object v7

    invoke-direct {v0, p1, v1, v6, v7}, Lorg/a/a/e/d;-><init>(Ljava/lang/String;ILorg/a/a/e/g;Lorg/a/a/e/g;)V

    move-object v6, v0

    :goto_3
    new-instance v0, Lorg/a/a/e/f;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/a/a/e/f;-><init>(Ljava/lang/String;[J[I[I[Ljava/lang/String;Lorg/a/a/e/d;)V

    return-object v0

    :cond_3
    move-object v6, v0

    goto :goto_3
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/a/a/e/f;->b:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    xor-int/lit8 v1, v1, -0x1

    array-length v0, v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "UTC"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/e/d;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(J)I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/a/a/e/f;->b:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/a/a/e/f;->c:[I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v1, v1, -0x1

    array-length v0, v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    iget-object v0, p0, Lorg/a/a/e/f;->c:[I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->c:[I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/e/d;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(J)J
    .locals 3

    iget-object v0, p0, Lorg/a/a/e/f;->b:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-wide v0, v0, v1

    :goto_1
    return-wide v0

    :cond_0
    xor-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-nez v1, :cond_2

    move-wide v0, p1

    goto :goto_1

    :cond_2
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    cmp-long v2, p1, v0

    if-gez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/e/d;->e(J)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v0, p1

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/e/f;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/a/a/e/f;

    invoke-virtual {p0}, Lorg/a/a/e/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/e/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->b:[J

    iget-object v1, p1, Lorg/a/a/e/f;->b:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    iget-object v1, p1, Lorg/a/a/e/f;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->c:[I

    iget-object v1, p1, Lorg/a/a/e/f;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->d:[I

    iget-object v1, p1, Lorg/a/a/e/f;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-nez v0, :cond_3

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    iget-object v1, p1, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    invoke-virtual {v0, v1}, Lorg/a/a/e/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final f(J)J
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v7, 0x1

    const-wide/high16 v5, -0x8000

    iget-object v0, p0, Lorg/a/a/e/f;->b:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_1

    cmp-long v0, p1, v5

    if-lez v0, :cond_0

    sub-long v0, p1, v7

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0

    :cond_1
    xor-int/lit8 v1, v1, -0x1

    array-length v2, v0

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_2

    sub-int/2addr v1, v9

    aget-wide v0, v0, v1

    cmp-long v2, v0, v5

    if-lez v2, :cond_2

    sub-long/2addr v0, v7

    goto :goto_0

    :cond_2
    move-wide v0, p1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/a/a/e/f;->f:Lorg/a/a/e/d;

    invoke-virtual {v2, p1, p2}, Lorg/a/a/e/d;->f(J)J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gez v4, :cond_4

    move-wide v0, v2

    goto :goto_0

    :cond_4
    sub-int/2addr v1, v9

    aget-wide v0, v0, v1

    cmp-long v2, v0, v5

    if-lez v2, :cond_5

    sub-long/2addr v0, v7

    goto :goto_0

    :cond_5
    move-wide v0, p1

    goto :goto_0
.end method
