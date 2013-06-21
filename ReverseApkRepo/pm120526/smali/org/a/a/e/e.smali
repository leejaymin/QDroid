.class final Lorg/a/a/e/e;
.super Ljava/lang/Object;


# instance fields
.field final a:C

.field final b:I

.field final c:I

.field final d:I

.field final e:Z

.field final f:I


# direct methods
.method constructor <init>(CIIIZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x75

    if-eq p1, v0, :cond_0

    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-char p1, p0, Lorg/a/a/e/e;->a:C

    iput p2, p0, Lorg/a/a/e/e;->b:I

    iput p3, p0, Lorg/a/a/e/e;->c:I

    iput p4, p0, Lorg/a/a/e/e;->d:I

    iput-boolean p5, p0, Lorg/a/a/e/e;->e:Z

    iput p6, p0, Lorg/a/a/e/e;->f:I

    return-void
.end method

.method private a(Lorg/a/a/a;J)J
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/e/e;->c(Lorg/a/a/a;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/a/a/e/e;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/a/a/e/e;->c:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    move-wide v0, p2

    :goto_1
    invoke-virtual {p1}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->b(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lorg/a/a/e/e;->c(Lorg/a/a/a;J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    throw v0
.end method

.method private b(Lorg/a/a/a;J)J
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/e/e;->c(Lorg/a/a/a;J)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/a/a/e/e;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/a/a/e/e;->c:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    move-wide v0, p2

    :goto_1
    invoke-virtual {p1}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->b(J)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lorg/a/a/e/e;->c(Lorg/a/a/a;J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    throw v0
.end method

.method private c(Lorg/a/a/a;J)J
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lorg/a/a/e/e;->c:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lorg/a/a/a;->u()Lorg/a/a/c;

    move-result-object v0

    iget v1, p0, Lorg/a/a/e/e;->c:I

    invoke-virtual {v0, p2, p3, v1}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lorg/a/a/a;->u()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v3}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/a/a/a;->u()Lorg/a/a/c;

    move-result-object v2

    iget v3, p0, Lorg/a/a/e/e;->c:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    goto :goto_0
.end method

.method private d(Lorg/a/a/a;J)J
    .locals 2

    invoke-virtual {p1}, Lorg/a/a/a;->t()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/a/a/c;->a(J)I

    move-result v0

    iget v1, p0, Lorg/a/a/e/e;->d:I

    sub-int v0, v1, v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/a/a/e/e;->e:Z

    if-eqz v1, :cond_1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/a/a/a;->t()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x7

    goto :goto_0

    :cond_2
    move-wide v0, p2

    goto :goto_1
.end method


# virtual methods
.method public final a(JII)J
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-char v0, p0, Lorg/a/a/e/e;->a:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_0

    add-int v0, p3, p4

    :goto_0
    int-to-long v1, v0

    add-long/2addr v1, p1

    invoke-static {}, Lorg/a/a/b/t;->N()Lorg/a/a/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v4

    iget v5, p0, Lorg/a/a/e/e;->b:I

    invoke-virtual {v4, v1, v2, v5}, Lorg/a/a/c;->b(JI)J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/a/a/a;->e()Lorg/a/a/c;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v7}, Lorg/a/a/c;->b(JI)J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/a/a/a;->e()Lorg/a/a/c;

    move-result-object v6

    iget v7, p0, Lorg/a/a/e/e;->f:I

    invoke-virtual {v6, v4, v5, v7}, Lorg/a/a/c;->a(JI)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lorg/a/a/e/e;->a(Lorg/a/a/a;J)J

    move-result-wide v4

    iget v6, p0, Lorg/a/a/e/e;->d:I

    if-nez v6, :cond_1

    cmp-long v1, v4, v1

    if-gtz v1, :cond_2

    invoke-virtual {v3}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v8}, Lorg/a/a/c;->a(JI)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->a(Lorg/a/a/a;J)J

    move-result-wide v1

    :goto_1
    int-to-long v3, v0

    sub-long v0, v1, v3

    return-wide v0

    :cond_0
    iget-char v0, p0, Lorg/a/a/e/e;->a:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lorg/a/a/e/e;->d(Lorg/a/a/a;J)J

    move-result-wide v4

    cmp-long v1, v4, v1

    if-gtz v1, :cond_2

    invoke-virtual {v3}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v8}, Lorg/a/a/c;->a(JI)J

    move-result-wide v1

    invoke-virtual {v3}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v4

    iget v5, p0, Lorg/a/a/e/e;->b:I

    invoke-virtual {v4, v1, v2, v5}, Lorg/a/a/c;->b(JI)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->a(Lorg/a/a/a;J)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->d(Lorg/a/a/a;J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v4

    goto :goto_1

    :cond_3
    move v0, p3

    goto :goto_0
.end method

.method public final b(JII)J
    .locals 9

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-char v0, p0, Lorg/a/a/e/e;->a:C

    const/16 v1, 0x77

    if-ne v0, v1, :cond_0

    add-int v0, p3, p4

    :goto_0
    int-to-long v1, v0

    add-long/2addr v1, p1

    invoke-static {}, Lorg/a/a/b/t;->N()Lorg/a/a/b/t;

    move-result-object v3

    invoke-virtual {v3}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v4

    iget v5, p0, Lorg/a/a/e/e;->b:I

    invoke-virtual {v4, v1, v2, v5}, Lorg/a/a/c;->b(JI)J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/a/a/a;->e()Lorg/a/a/c;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v7}, Lorg/a/a/c;->b(JI)J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/a/a/a;->e()Lorg/a/a/c;

    move-result-object v6

    iget v7, p0, Lorg/a/a/e/e;->f:I

    invoke-virtual {v6, v4, v5, v7}, Lorg/a/a/c;->a(JI)J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lorg/a/a/e/e;->b(Lorg/a/a/a;J)J

    move-result-wide v4

    iget v6, p0, Lorg/a/a/e/e;->d:I

    if-nez v6, :cond_1

    cmp-long v1, v4, v1

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v8}, Lorg/a/a/c;->a(JI)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->b(Lorg/a/a/a;J)J

    move-result-wide v1

    :goto_1
    int-to-long v3, v0

    sub-long v0, v1, v3

    return-wide v0

    :cond_0
    iget-char v0, p0, Lorg/a/a/e/e;->a:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v4, v5}, Lorg/a/a/e/e;->d(Lorg/a/a/a;J)J

    move-result-wide v4

    cmp-long v1, v4, v1

    if-ltz v1, :cond_2

    invoke-virtual {v3}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v8}, Lorg/a/a/c;->a(JI)J

    move-result-wide v1

    invoke-virtual {v3}, Lorg/a/a/a;->C()Lorg/a/a/c;

    move-result-object v4

    iget v5, p0, Lorg/a/a/e/e;->b:I

    invoke-virtual {v4, v1, v2, v5}, Lorg/a/a/c;->b(JI)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->b(Lorg/a/a/a;J)J

    move-result-wide v1

    invoke-direct {p0, v3, v1, v2}, Lorg/a/a/e/e;->d(Lorg/a/a/a;J)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v4

    goto :goto_1

    :cond_3
    move v0, p3

    goto :goto_0
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
    instance-of v0, p1, Lorg/a/a/e/e;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/e/e;

    iget-char v0, p0, Lorg/a/a/e/e;->a:C

    iget-char v1, p1, Lorg/a/a/e/e;->a:C

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/e/e;->b:I

    iget v1, p1, Lorg/a/a/e/e;->b:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/e/e;->c:I

    iget v1, p1, Lorg/a/a/e/e;->c:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/e/e;->d:I

    iget v1, p1, Lorg/a/a/e/e;->d:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/a/a/e/e;->e:Z

    iget-boolean v1, p1, Lorg/a/a/e/e;->e:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/e/e;->f:I

    iget v1, p1, Lorg/a/a/e/e;->f:I

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
