.class final Lorg/a/a/b/x;
.super Lorg/a/a/c/c;


# instance fields
.field final a:Lorg/a/a/k;

.field final b:Z

.field final c:Lorg/a/a/i;


# direct methods
.method constructor <init>(Lorg/a/a/k;Lorg/a/a/i;)V
    .locals 1

    invoke-virtual {p1}, Lorg/a/a/k;->a()Lorg/a/a/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/c/c;-><init>(Lorg/a/a/l;)V

    invoke-virtual {p1}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    invoke-static {p1}, Lorg/a/a/b/v;->a(Lorg/a/a/k;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/a/a/b/x;->b:Z

    iput-object p2, p0, Lorg/a/a/b/x;->c:Lorg/a/a/i;

    return-void
.end method

.method private a(J)I
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/a/a/b/x;->c:Lorg/a/a/i;

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

.method private b(J)I
    .locals 5

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lorg/a/a/b/x;->c:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->c(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    int-to-long v1, v0

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(JI)J
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/x;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/a/a/k;->a(JI)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/a/a/b/x;->b:Z

    if-eqz v3, :cond_0

    :goto_0
    int-to-long v3, v0

    sub-long v0, v1, v3

    return-wide v0

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/a/a/b/x;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public final a(JJ)J
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/x;->a(J)I

    move-result v0

    iget-object v1, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lorg/a/a/k;->a(JJ)J

    move-result-wide v1

    iget-boolean v3, p0, Lorg/a/a/b/x;->b:Z

    if-eqz v3, :cond_0

    :goto_0
    int-to-long v3, v0

    sub-long v0, v1, v3

    return-wide v0

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/a/a/b/x;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/a/a/b/x;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/k;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/b/x;->c:Lorg/a/a/i;

    invoke-virtual {v0}, Lorg/a/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lorg/a/a/b/x;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/k;->d()J

    move-result-wide v0

    return-wide v0
.end method
