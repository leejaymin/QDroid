.class public abstract Lorg/a/a/c/m;
.super Lorg/a/a/c/b;


# instance fields
.field final a:J

.field private final b:Lorg/a/a/k;


# direct methods
.method public constructor <init>(Lorg/a/a/d;Lorg/a/a/k;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/a/a/c/b;-><init>(Lorg/a/a/d;)V

    invoke-virtual {p2}, Lorg/a/a/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unit duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lorg/a/a/k;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/a/a/c/m;->a:J

    iget-wide v0, p0, Lorg/a/a/c/m;->a:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The unit milliseconds must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lorg/a/a/c/m;->b:Lorg/a/a/k;

    return-void
.end method


# virtual methods
.method public b(JI)J
    .locals 4

    invoke-virtual {p0}, Lorg/a/a/c/m;->g()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/a/a/c/m;->c(JI)I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0, p1, p2}, Lorg/a/a/c/m;->a(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected c(JI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/a/a/c/m;->c(J)I

    move-result v0

    return v0
.end method

.method public d(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/a/a/c/m;->a:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final d()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/m;->b:Lorg/a/a/k;

    return-object v0
.end method

.method public e(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/a/a/c/m;->a:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(J)J
    .locals 6

    const-wide/16 v4, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/a/a/c/m;->a:J

    rem-long v0, p1, v0

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p1, v4

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    rem-long/2addr v0, v2

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    goto :goto_0
.end method
