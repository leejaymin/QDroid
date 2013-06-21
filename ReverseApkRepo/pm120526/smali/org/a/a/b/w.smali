.class final Lorg/a/a/b/w;
.super Lorg/a/a/c/b;


# instance fields
.field final a:Lorg/a/a/c;

.field final b:Lorg/a/a/i;

.field final c:Lorg/a/a/k;

.field final d:Z

.field final e:Lorg/a/a/k;

.field final f:Lorg/a/a/k;


# direct methods
.method constructor <init>(Lorg/a/a/c;Lorg/a/a/i;Lorg/a/a/k;Lorg/a/a/k;Lorg/a/a/k;)V
    .locals 1

    invoke-virtual {p1}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/c/b;-><init>(Lorg/a/a/d;)V

    invoke-virtual {p1}, Lorg/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    iput-object p2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    iput-object p3, p0, Lorg/a/a/b/w;->c:Lorg/a/a/k;

    invoke-static {p3}, Lorg/a/a/b/v;->a(Lorg/a/a/k;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/b/w;->d:Z

    iput-object p4, p0, Lorg/a/a/b/w;->e:Lorg/a/a/k;

    iput-object p5, p0, Lorg/a/a/b/w;->f:Lorg/a/a/k;

    return-void
.end method

.method private j(J)I
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr v1, p1

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    int-to-long v1, v0

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1}, Lorg/a/a/c;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public final a(JI)J
    .locals 5

    iget-boolean v0, p0, Lorg/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/w;->j(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(JJ)J
    .locals 5

    iget-boolean v0, p0, Lorg/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/w;->j(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lorg/a/a/c;->a(JJ)J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/a/a/c;->a(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/a/a/c;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/a/a/c;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JI)J
    .locals 8

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/a/a/b/w;->a(J)I

    move-result v4

    if-eq v4, p3, :cond_0

    new-instance v2, Lorg/a/a/n;

    iget-object v3, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v3}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal instant due to time zone offset transition: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {v6}, Lorg/a/a/d/a;->a(Ljava/lang/String;)Lorg/a/a/d/b;

    move-result-object v6

    new-instance v7, Lorg/a/a/o;

    invoke-direct {v7, v0, v1}, Lorg/a/a/o;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/a/a/d/b;->a(Lorg/a/a/u;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v1}, Lorg/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lorg/a/a/n;-><init>(Lorg/a/a/d;Ljava/lang/Number;Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v2
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->b(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/a/a/c;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)Z
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->b(J)Z

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->c(J)I

    move-result v0

    return v0
.end method

.method public final d(J)J
    .locals 5

    iget-boolean v0, p0, Lorg/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/w;->j(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/a/a/c;->d(J)J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final d()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->c:Lorg/a/a/k;

    return-object v0
.end method

.method public final e(J)J
    .locals 5

    iget-boolean v0, p0, Lorg/a/a/b/w;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/w;->j(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/a/a/c;->e(J)J

    move-result-wide v1

    int-to-long v3, v0

    sub-long v0, v1, v3

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/a/a/i;->a(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->e:Lorg/a/a/k;

    return-object v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->f:Lorg/a/a/k;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->g()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 3

    iget-object v0, p0, Lorg/a/a/b/w;->b:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->d(J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/a/a/b/w;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
