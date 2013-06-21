.class public final Lorg/a/a/b/t;
.super Lorg/a/a/b/a;


# static fields
.field private static final a:Lorg/a/a/b/t;

.field private static final b:[Lorg/a/a/b/t;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/a/a/b/t;->c:Ljava/util/Map;

    const/16 v0, 0x40

    new-array v0, v0, [Lorg/a/a/b/t;

    sput-object v0, Lorg/a/a/b/t;->b:[Lorg/a/a/b/t;

    new-instance v0, Lorg/a/a/b/t;

    invoke-static {}, Lorg/a/a/b/s;->W()Lorg/a/a/b/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/b/t;-><init>(Lorg/a/a/a;)V

    sput-object v0, Lorg/a/a/b/t;->a:Lorg/a/a/b/t;

    sget-object v0, Lorg/a/a/b/t;->c:Ljava/util/Map;

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    sget-object v2, Lorg/a/a/b/t;->a:Lorg/a/a/b/t;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/a/a/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/a/a/b/a;-><init>(Lorg/a/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static N()Lorg/a/a/b/t;
    .locals 1

    sget-object v0, Lorg/a/a/b/t;->a:Lorg/a/a/b/t;

    return-object v0
.end method

.method public static O()Lorg/a/a/b/t;
    .locals 1

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/t;->b(Lorg/a/a/i;)Lorg/a/a/b/t;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/a/a/i;)Lorg/a/a/b/t;
    .locals 5

    if-nez p0, :cond_2

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    sget-object v2, Lorg/a/a/b/t;->b:[Lorg/a/a/b/t;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/a/a/b/t;->a()Lorg/a/a/i;

    move-result-object v3

    if-ne v3, v0, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    sget-object v2, Lorg/a/a/b/t;->c:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lorg/a/a/b/t;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/b/t;

    if-nez p0, :cond_1

    new-instance v3, Lorg/a/a/b/t;

    sget-object v4, Lorg/a/a/b/t;->a:Lorg/a/a/b/t;

    invoke-static {v4, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/a;Lorg/a/a/i;)Lorg/a/a/b/v;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/a/a/b/t;-><init>(Lorg/a/a/a;)V

    sget-object v4, Lorg/a/a/b/t;->c:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lorg/a/a/b/t;->b:[Lorg/a/a/b/t;

    aput-object v0, v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/a/a/i;)Lorg/a/a/a;
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/t;->a()Lorg/a/a/i;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/a/a/b/t;->b(Lorg/a/a/i;)Lorg/a/a/b/t;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method protected final a(Lorg/a/a/b/b;)V
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/b/t;->L()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/a;->a()Lorg/a/a/i;

    move-result-object v0

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/a/a/c/f;

    sget-object v1, Lorg/a/a/b/u;->a:Lorg/a/a/c;

    invoke-static {}, Lorg/a/a/d;->v()Lorg/a/a/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/a/a/c/f;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    iput-object v0, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    new-instance v0, Lorg/a/a/c/o;

    iget-object p0, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    check-cast p0, Lorg/a/a/c/f;

    invoke-static {}, Lorg/a/a/d;->u()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/a/a/c/o;-><init>(Lorg/a/a/c/f;Lorg/a/a/d;)V

    iput-object v0, p1, Lorg/a/a/b/b;->G:Lorg/a/a/c;

    new-instance v0, Lorg/a/a/c/o;

    iget-object p0, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    check-cast p0, Lorg/a/a/c/f;

    invoke-static {}, Lorg/a/a/d;->q()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/a/a/c/o;-><init>(Lorg/a/a/c/f;Lorg/a/a/d;)V

    iput-object v0, p1, Lorg/a/a/b/b;->C:Lorg/a/a/c;

    iget-object v0, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    iput-object v0, p1, Lorg/a/a/b/b;->k:Lorg/a/a/k;

    :cond_0
    return-void
.end method

.method public final b()Lorg/a/a/a;
    .locals 1

    sget-object v0, Lorg/a/a/b/t;->a:Lorg/a/a/b/t;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    const-string v0, "ISO"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lorg/a/a/b/t;->a()Lorg/a/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ISOChronology"

    invoke-virtual {p0}, Lorg/a/a/b/t;->a()Lorg/a/a/i;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
