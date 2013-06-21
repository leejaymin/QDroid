.class public final Lorg/a/a/b/s;
.super Lorg/a/a/b/i;


# static fields
.field private static final a:Lorg/a/a/b/s;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/a/a/b/s;->b:Ljava/util/Map;

    sget-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/a/a/b/s;->a(Lorg/a/a/i;I)Lorg/a/a/b/s;

    move-result-object v0

    sput-object v0, Lorg/a/a/b/s;->a:Lorg/a/a/b/s;

    return-void
.end method

.method private constructor <init>(Lorg/a/a/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/i;-><init>(Lorg/a/a/a;I)V

    return-void
.end method

.method public static W()Lorg/a/a/b/s;
    .locals 1

    sget-object v0, Lorg/a/a/b/s;->a:Lorg/a/a/b/s;

    return-object v0
.end method

.method private static a(Lorg/a/a/i;I)Lorg/a/a/b/s;
    .locals 6

    const/4 v5, 0x1

    if-nez p0, :cond_3

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/a/a/b/s;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/a/a/b/s;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/a/a/b/s;

    if-nez p0, :cond_2

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/a/a/b/s;

    sget-object v3, Lorg/a/a/b/s;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sub-int v3, p1, v5

    :try_start_1
    aget-object v3, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    :try_start_2
    sget-object v3, Lorg/a/a/i;->a:Lorg/a/a/i;

    if-ne v0, v3, :cond_0

    new-instance v0, Lorg/a/a/b/s;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p1}, Lorg/a/a/b/s;-><init>(Lorg/a/a/a;I)V

    :goto_2
    sub-int v3, p1, v5

    aput-object v0, v2, v3

    :goto_3
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid min days in first week: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    sget-object v3, Lorg/a/a/i;->a:Lorg/a/a/i;

    invoke-static {v3, p1}, Lorg/a/a/b/s;->a(Lorg/a/a/i;I)Lorg/a/a/b/s;

    move-result-object v3

    new-instance v4, Lorg/a/a/b/s;

    invoke-static {v3, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/a;Lorg/a/a/i;)Lorg/a/a/b/v;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Lorg/a/a/b/s;-><init>(Lorg/a/a/a;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v4

    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_3

    :cond_2
    move-object v2, p0

    goto :goto_1

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method final P()I
    .locals 1

    const v0, -0x116bc36e

    return v0
.end method

.method final Q()I
    .locals 1

    const v0, 0x116bd2d1

    return v0
.end method

.method final S()J
    .locals 2

    const-wide v0, 0x758f0dfc0L

    return-wide v0
.end method

.method final T()J
    .locals 2

    const-wide v0, 0x9cbebd50L

    return-wide v0
.end method

.method public final a(Lorg/a/a/i;)Lorg/a/a/a;
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/s;->a()Lorg/a/a/i;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/a/a/b/s;->a(Lorg/a/a/i;I)Lorg/a/a/b/s;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method protected final a(Lorg/a/a/b/b;)V
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/b/s;->L()Lorg/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/a/a/b/i;->a(Lorg/a/a/b/b;)V

    :cond_0
    return-void
.end method

.method public final b()Lorg/a/a/a;
    .locals 1

    sget-object v0, Lorg/a/a/b/s;->a:Lorg/a/a/b/s;

    return-object v0
.end method

.method final d(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(I)J
    .locals 5

    div-int/lit8 v0, p1, 0x64

    if-gez p1, :cond_1

    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    int-to-long v1, p1

    const-wide/16 v3, 0x16d

    mul-long/2addr v1, v3

    const v3, 0xafaa7

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long v0, v1, v3

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0

    :cond_1
    shr-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lorg/a/a/b/s;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
