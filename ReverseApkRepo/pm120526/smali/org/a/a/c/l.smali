.class public Lorg/a/a/c/l;
.super Lorg/a/a/c/m;


# instance fields
.field private final b:I

.field private final c:Lorg/a/a/k;


# direct methods
.method public constructor <init>(Lorg/a/a/d;Lorg/a/a/k;Lorg/a/a/k;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/a/a/c/m;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    invoke-virtual {p3}, Lorg/a/a/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Lorg/a/a/k;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/a/a/c/m;->a:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/a/a/c/l;->b:I

    iget v0, p0, Lorg/a/a/c/l;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The effective range must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lorg/a/a/c/l;->c:Lorg/a/a/k;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/a/a/c/m;->a:J

    div-long v0, p1, v0

    iget v2, p0, Lorg/a/a/c/l;->b:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/a/a/c/l;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iget-wide v3, p0, Lorg/a/a/c/m;->a:J

    div-long/2addr v1, v3

    iget v3, p0, Lorg/a/a/c/l;->b:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final b(JI)J
    .locals 4

    invoke-virtual {p0}, Lorg/a/a/c/l;->g()I

    move-result v0

    iget v1, p0, Lorg/a/a/c/l;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0, p1, p2}, Lorg/a/a/c/l;->a(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/a/a/c/l;->a:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/l;->c:Lorg/a/a/k;

    return-object v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lorg/a/a/c/l;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method
