.class public Lorg/a/a/c/e;
.super Lorg/a/a/c/c;


# instance fields
.field private final a:Lorg/a/a/k;


# direct methods
.method public constructor <init>(Lorg/a/a/k;Lorg/a/a/l;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/a/a/c/c;-><init>(Lorg/a/a/l;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must be supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/k;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/k;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/k;->c()Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    invoke-virtual {v0}, Lorg/a/a/k;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/e;->a:Lorg/a/a/k;

    return-object v0
.end method
