.class public abstract Lorg/a/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/c/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/a/a/c;->a(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/c/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/a/a/c;->a(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()Lorg/a/a/c;
.end method

.method protected abstract b()J
.end method

.method public final b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/c/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/a/a/c;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/util/Locale;)I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/c;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method protected c()Lorg/a/a/a;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The method getChronology() was added in v1.4 and needs to be implemented by subclasses of AbstractReadableInstantFieldProperty"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->g()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/c/a;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/a/a/c/a;

    invoke-direct {p0}, Lorg/a/a/c/a;->f()I

    move-result v0

    invoke-direct {p1}, Lorg/a/a/c/a;->f()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/a/a/c/a;->c()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/c/a;->c()Lorg/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/a/a/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-direct {p0}, Lorg/a/a/c/a;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/a/a/c/a;->c()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Property["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/c/a;->a()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
