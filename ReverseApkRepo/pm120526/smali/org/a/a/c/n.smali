.class public final Lorg/a/a/c/n;
.super Lorg/a/a/c/c;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Lorg/a/a/l;J)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/c/c;-><init>(Lorg/a/a/l;)V

    iput-wide p2, p0, Lorg/a/a/c/n;->a:J

    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 4

    int-to-long v0, p3

    iget-wide v2, p0, Lorg/a/a/c/n;->a:J

    mul-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Lorg/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lorg/a/a/c/n;->a:J

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    move-wide v0, p3

    :goto_0
    invoke-static {p1, p2, v0, v1}, Lorg/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    move-wide v0, v4

    goto :goto_0

    :cond_1
    mul-long v2, p3, v0

    div-long v4, v2, v0

    cmp-long v4, v4, p3

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The calculation caused an overflow: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lorg/a/a/c/n;->a:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/c/n;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/c/n;

    invoke-virtual {p0}, Lorg/a/a/c/n;->a()Lorg/a/a/l;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/c/n;->a()Lorg/a/a/l;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lorg/a/a/c/n;->a:J

    iget-wide v2, p1, Lorg/a/a/c/n;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/a/a/c/n;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lorg/a/a/c/n;->a()Lorg/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
