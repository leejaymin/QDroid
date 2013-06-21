.class public final Lorg/a/a/c/p;
.super Lorg/a/a/c/e;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lorg/a/a/k;Lorg/a/a/l;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/a/a/c/e;-><init>(Lorg/a/a/k;Lorg/a/a/l;)V

    const/16 v0, 0x64

    iput v0, p0, Lorg/a/a/c/p;->a:I

    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 4

    int-to-long v0, p3

    iget v2, p0, Lorg/a/a/c/p;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/a/a/k;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 5

    iget v0, p0, Lorg/a/a/c/p;->a:I

    packed-switch v0, :pswitch_data_0

    int-to-long v1, v0

    mul-long/2addr v1, p3

    int-to-long v3, v0

    div-long v3, v1, v3

    cmp-long v3, v3, p3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The calculation caused an overflow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    neg-long v0, p3

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/a/a/k;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :pswitch_2
    move-wide v0, p3

    goto :goto_0

    :cond_0
    move-wide v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d()J
    .locals 4

    invoke-virtual {p0}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/k;->d()J

    move-result-wide v0

    iget v2, p0, Lorg/a/a/c/p;->a:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
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
    instance-of v0, p1, Lorg/a/a/c/p;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/c/p;

    invoke-virtual {p0}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/a/a/c/p;->a()Lorg/a/a/l;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/c/p;->a()Lorg/a/a/l;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/c/p;->a:I

    iget v1, p1, Lorg/a/a/c/p;->a:I

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

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lorg/a/a/c/p;->a:I

    int-to-long v0, v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lorg/a/a/c/p;->a()Lorg/a/a/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/a/a/c/p;->e()Lorg/a/a/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
