.class public abstract Lorg/a/a/c/c;
.super Lorg/a/a/k;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lorg/a/a/l;


# direct methods
.method protected constructor <init>(Lorg/a/a/l;)V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/k;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/a/a/c/c;->a:Lorg/a/a/l;

    return-void
.end method


# virtual methods
.method public final a()Lorg/a/a/l;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/c;->a:Lorg/a/a/l;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lorg/a/a/k;

    invoke-virtual {p1}, Lorg/a/a/k;->d()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/a/a/c/c;->d()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DurationField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/c/c;->a:Lorg/a/a/l;

    invoke-virtual {v1}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
