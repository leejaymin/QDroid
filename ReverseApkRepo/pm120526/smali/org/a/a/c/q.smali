.class public final Lorg/a/a/c/q;
.super Lorg/a/a/c;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:Lorg/a/a/d;

.field private final c:Lorg/a/a/k;


# direct methods
.method private constructor <init>(Lorg/a/a/d;Lorg/a/a/k;)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/a/a/c/q;->b:Lorg/a/a/d;

    iput-object p2, p0, Lorg/a/a/c/q;->c:Lorg/a/a/k;

    return-void
.end method

.method public static declared-synchronized a(Lorg/a/a/d;Lorg/a/a/k;)Lorg/a/a/c/q;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lorg/a/a/c/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/a/a/c/q;->a:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/a/a/c/q;->a:Ljava/util/HashMap;

    move-object v0, v3

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/a/a/c/q;

    invoke-direct {v0, p0, p1}, Lorg/a/a/c/q;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    sget-object v2, Lorg/a/a/c/q;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lorg/a/a/c/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/c/q;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/a/a/c/q;->c:Lorg/a/a/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, p1, :cond_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()Ljava/lang/UnsupportedOperationException;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/a/a/c/q;->b:Lorg/a/a/d;

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
.method public final a(J)I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(JI)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/q;->c:Lorg/a/a/k;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/k;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/q;->c:Lorg/a/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/k;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a()Lorg/a/a/d;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/q;->b:Lorg/a/a/d;

    return-object v0
.end method

.method public final b(JI)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/q;->b:Lorg/a/a/d;

    invoke-virtual {v0}, Lorg/a/a/d;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final b(J)Z
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final c(J)I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final d()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/c/q;->c:Lorg/a/a/k;

    return-object v0
.end method

.method public final e(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final g(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final h()I
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final h(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final i(J)J
    .locals 1

    invoke-direct {p0}, Lorg/a/a/c/q;->i()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsupportedDateTimeField"

    return-object v0
.end method
