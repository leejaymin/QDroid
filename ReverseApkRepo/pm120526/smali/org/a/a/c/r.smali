.class public final Lorg/a/a/c/r;
.super Lorg/a/a/k;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:Lorg/a/a/l;


# direct methods
.method private constructor <init>(Lorg/a/a/l;)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/k;-><init>()V

    iput-object p1, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    return-void
.end method

.method public static declared-synchronized a(Lorg/a/a/l;)Lorg/a/a/c/r;
    .locals 3

    const-class v1, Lorg/a/a/c/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/a/a/c/r;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/a/a/c/r;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/a/a/c/r;

    invoke-direct {v0, p0}, Lorg/a/a/c/r;-><init>(Lorg/a/a/l;)V

    sget-object v2, Lorg/a/a/c/r;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/a/a/c/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(JI)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/r;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(JJ)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/r;->e()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a()Lorg/a/a/l;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/c/r;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/a/a/c/r;

    iget-object v0, p1, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v0}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v0}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v0}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v1}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

    invoke-virtual {v0}, Lorg/a/a/l;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnsupportedDurationField["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/c/r;->b:Lorg/a/a/l;

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
