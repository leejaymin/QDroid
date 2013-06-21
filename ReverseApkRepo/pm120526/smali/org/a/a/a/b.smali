.class public abstract Lorg/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/u;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/d/b;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/a/a/d/b;->a(Lorg/a/a/u;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/a/a/u;)Z
    .locals 4

    invoke-static {p1}, Lorg/a/a/f;->a(Lorg/a/a/u;)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/a/a/a/b;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Lorg/a/a/u;

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/a/a/u;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/a/a/a/b;->a()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/u;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/a/a/u;

    invoke-virtual {p0}, Lorg/a/a/a/b;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/a/a/u;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/a/a/a/b;->b()Lorg/a/a/a;

    move-result-object v0

    invoke-interface {p1}, Lorg/a/a/u;->b()Lorg/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/a/a/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lorg/a/a/a/b;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/a/a/a/b;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lorg/a/a/a/b;->b()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/a/a/d/u;->a()Lorg/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/a/a/d/b;->a(Lorg/a/a/u;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
