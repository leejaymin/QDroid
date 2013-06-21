.class final Lorg/a/a/e/d;
.super Lorg/a/a/i;


# instance fields
.field final b:I

.field final c:Lorg/a/a/e/g;

.field final d:Lorg/a/a/e/g;


# direct methods
.method constructor <init>(Ljava/lang/String;ILorg/a/a/e/g;Lorg/a/a/e/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lorg/a/a/e/d;->b:I

    iput-object p3, p0, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    iput-object p4, p0, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    return-void
.end method

.method private g(J)Lorg/a/a/e/g;
    .locals 7

    iget v0, p0, Lorg/a/a/e/d;->b:I

    iget-object v1, p0, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    iget-object v2, p0, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    :try_start_0
    iget v3, v2, Lorg/a/a/e/g;->c:I

    invoke-virtual {v1, p1, p2, v0, v3}, Lorg/a/a/e/g;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    :goto_0
    :try_start_1
    iget v5, v1, Lorg/a/a/e/g;->c:I

    invoke-virtual {v2, p1, p2, v0, v5}, Lorg/a/a/e/g;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v5

    :goto_1
    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v3

    move-wide v3, p1

    goto :goto_0

    :catch_1
    move-exception v3

    move-wide v3, p1

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v5, p1

    goto :goto_1

    :catch_3
    move-exception v0

    move-wide v5, p1

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/a/a/e/d;->g(J)Lorg/a/a/e/g;

    move-result-object v0

    iget-object v0, v0, Lorg/a/a/e/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)I
    .locals 2

    iget v0, p0, Lorg/a/a/e/d;->b:I

    invoke-direct {p0, p1, p2}, Lorg/a/a/e/d;->g(J)Lorg/a/a/e/g;

    move-result-object v1

    iget v1, v1, Lorg/a/a/e/g;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(J)J
    .locals 8

    const-wide/16 v6, 0x0

    iget v0, p0, Lorg/a/a/e/d;->b:I

    iget-object v1, p0, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    iget-object v2, p0, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    :try_start_0
    iget v3, v2, Lorg/a/a/e/g;->c:I

    invoke-virtual {v1, p1, p2, v0, v3}, Lorg/a/a/e/g;->a(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    cmp-long v5, v3, v6

    if-gez v5, :cond_0

    move-wide v3, p1

    :cond_0
    :goto_0
    :try_start_1
    iget v1, v1, Lorg/a/a/e/g;->c:I

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/a/a/e/g;->a(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v0

    cmp-long v2, p1, v6

    if-lez v2, :cond_1

    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    move-wide v0, p1

    :cond_1
    :goto_1
    cmp-long v2, v3, v0

    if-lez v2, :cond_2

    :goto_2
    return-wide v0

    :catch_0
    move-exception v3

    move-wide v3, p1

    goto :goto_0

    :catch_1
    move-exception v3

    move-wide v3, p1

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v0, p1

    goto :goto_1

    :catch_3
    move-exception v0

    move-wide v0, p1

    goto :goto_1

    :cond_2
    move-wide v0, v3

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
    instance-of v0, p1, Lorg/a/a/e/d;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/e/d;

    invoke-virtual {p0}, Lorg/a/a/e/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/a/a/e/d;->b:I

    iget v1, p1, Lorg/a/a/e/d;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    iget-object v1, p1, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    invoke-virtual {v0, v1}, Lorg/a/a/e/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    iget-object v1, p1, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    invoke-virtual {v0, v1}, Lorg/a/a/e/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final f(J)J
    .locals 12

    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    add-long v0, p1, v10

    iget v2, p0, Lorg/a/a/e/d;->b:I

    iget-object v3, p0, Lorg/a/a/e/d;->c:Lorg/a/a/e/g;

    iget-object v4, p0, Lorg/a/a/e/d;->d:Lorg/a/a/e/g;

    :try_start_0
    iget v5, v4, Lorg/a/a/e/g;->c:I

    invoke-virtual {v3, v0, v1, v2, v5}, Lorg/a/a/e/g;->b(JII)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    cmp-long v7, v0, v8

    if-gez v7, :cond_0

    cmp-long v7, v5, v8

    if-lez v7, :cond_0

    move-wide v5, v0

    :cond_0
    :goto_0
    :try_start_1
    iget v3, v3, Lorg/a/a/e/g;->c:I

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/a/a/e/g;->b(JII)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    cmp-long v4, v0, v8

    if-gez v4, :cond_2

    cmp-long v4, v2, v8

    if-lez v4, :cond_2

    :goto_1
    cmp-long v2, v5, v0

    if-lez v2, :cond_1

    move-wide v0, v5

    :cond_1
    sub-long/2addr v0, v10

    return-wide v0

    :catch_0
    move-exception v5

    move-wide v5, v0

    goto :goto_0

    :catch_1
    move-exception v5

    move-wide v5, v0

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_1

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
