.class public final La/d/d;
.super Ljava/lang/Object;


# static fields
.field static a:La/e/e;

.field static final b:Z

.field static final c:J

.field static final d:Z

.field protected static e:La/d/e;


# instance fields
.field protected f:La/d/e;

.field protected g:La/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/d/d;->a:La/e/e;

    const-string v0, "jcifs.smb.client.dfs.strictView"

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/d;->b:Z

    const-string v0, "jcifs.smb.client.dfs.ttl"

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, La/a;->a(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, La/d/d;->c:J

    const-string v0, "jcifs.smb.client.dfs.disabled"

    invoke-static {v0, v3}, La/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/d/d;->d:Z

    new-instance v0, La/d/e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, La/d/e;-><init>(J)V

    sput-object v0, La/d/d;->e:La/d/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/d/d;->f:La/d/e;

    iput-object v0, p0, La/d/d;->g:La/d/e;

    return-void
.end method

.method private static a(La/d/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, La/d/d;->d:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\\"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p4, v0, v2}, La/d/bg;->a(La/d/t;Ljava/lang/String;I)La/d/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/d;->a:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    sget-object v2, La/d/d;->a:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    sget-boolean v2, La/d/d;->b:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, La/d/w;

    if-eqz v2, :cond_3

    check-cast v0, La/d/w;

    throw v0
.end method

.method private a(La/d/t;)Ljava/util/HashMap;
    .locals 8

    const/4 v1, 0x0

    sget-boolean v0, La/d/d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p1, La/d/t;->h:Ljava/lang/String;

    const-string v2, "?"

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/d/d;->f:La/d/e;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, La/d/d;->f:La/d/e;

    iget-wide v4, v0, La/d/e;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iput-object v1, p0, La/d/d;->f:La/d/e;

    :cond_2
    iget-object v0, p0, La/d/d;->f:La/d/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, La/d/d;->f:La/d/e;

    iget-object v0, v0, La/d/e;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p1, La/d/t;->h:Ljava/lang/String;

    invoke-static {v0}, La/b;->b(Ljava/lang/String;)La/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, La/d/bg;->a(La/b;I)La/d/bg;

    move-result-object v0

    new-instance v3, La/d/e;

    sget-wide v4, La/d/d;->c:J

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, La/d/e;-><init>(J)V

    const-string v2, ""

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v4}, La/d/bg;->a(La/d/t;Ljava/lang/String;I)La/d/f;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v0, v2

    :cond_4
    iget-object v4, v0, La/d/f;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, La/d/e;->b:Ljava/util/HashMap;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, La/d/f;->i:La/d/f;

    if-ne v0, v2, :cond_4

    iput-object v3, p0, La/d/d;->f:La/d/e;

    iget-object v0, p0, La/d/d;->f:La/d/e;

    iget-object v0, v0, La/d/e;->b:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, La/d/d;->a:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    sget-object v2, La/d/d;->a:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_5
    sget-boolean v2, La/d/d;->b:Z

    if-eqz v2, :cond_6

    instance-of v2, v0, La/d/w;

    if-eqz v2, :cond_6

    check-cast v0, La/d/w;

    throw v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;La/d/t;)La/d/bg;
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, La/d/d;->d:Z

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, La/b;->b(Ljava/lang/String;)La/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, La/d/bg;->a(La/b;I)La/d/bg;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v3}, La/d/bg;->a(La/d/t;Ljava/lang/String;I)La/d/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v2, v3

    :cond_1
    :try_start_1
    iget-object v0, v2, La/d/f;->c:Ljava/lang/String;

    invoke-static {v0}, La/b;->a(Ljava/lang/String;)La/b;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, La/d/bg;->a(La/b;I)La/d/bg;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v2, La/d/f;->i:La/d/f;

    if-ne v2, v3, :cond_1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-object v2, La/d/d;->a:La/e/e;

    sget v2, La/e/e;->a:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    sget-object v2, La/d/d;->a:La/e/e;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    sget-boolean v2, La/d/d;->b:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, La/d/w;

    if-eqz v2, :cond_3

    check-cast v0, La/d/w;

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;
    .locals 11

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-boolean v0, La/d/d;->d:Z

    if-nez v0, :cond_0

    const-string v0, "IPC$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_1
    invoke-direct {p0, p4}, La/d/d;->a(La/d/t;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/d/e;

    if-eqz v1, :cond_3

    iget-wide v7, v1, La/d/e;->a:J

    cmp-long v4, v5, v7

    if-lez v4, :cond_3

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_3
    if-nez v1, :cond_9

    invoke-static {p1, p4}, La/d/d;->b(Ljava/lang/String;La/d/t;)La/d/bg;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v2, p1, p2, p3, p4}, La/d/d;->a(La/d/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v7, v1, v4

    new-instance v1, La/d/e;

    const-wide/16 v8, 0x0

    invoke-direct {v1, v8, v9}, La/d/e;-><init>(J)V

    move-object v4, v3

    :cond_5
    if-nez p3, :cond_6

    iget-object v8, v1, La/d/e;->b:Ljava/util/HashMap;

    iput-object v8, v4, La/d/f;->j:Ljava/util/Map;

    const-string v8, "\\"

    iput-object v8, v4, La/d/f;->k:Ljava/lang/String;

    :cond_6
    iget v8, v4, La/d/f;->a:I

    sub-int/2addr v8, v7

    iput v8, v4, La/d/f;->a:I

    iget-object v4, v4, La/d/f;->i:La/d/f;

    if-ne v4, v3, :cond_5

    iget-object v4, v3, La/d/f;->k:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v1, La/d/e;->b:Ljava/util/HashMap;

    iget-object v7, v3, La/d/f;->k:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    :goto_1
    if-eqz v3, :cond_c

    const-string v4, "\\"

    iget-object v0, v3, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/f;

    if-eqz v0, :cond_14

    iget-wide v7, v0, La/d/f;->h:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_14

    iget-object v0, v3, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_c

    if-nez v1, :cond_a

    invoke-static {p1, p4}, La/d/d;->b(Ljava/lang/String;La/d/t;)La/d/bg;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_8
    if-nez p3, :cond_16

    sget-object v4, La/d/d;->e:La/d/e;

    invoke-virtual {v0, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_1

    :cond_9
    sget-object v0, La/d/d;->e:La/d/e;

    if-ne v1, v0, :cond_15

    const/4 v0, 0x0

    move-object v1, v3

    move-object v3, v0

    goto :goto_1

    :cond_a
    move-object v0, v1

    :cond_b
    invoke-static {v0, p1, p2, p3, p4}, La/d/d;->a(La/d/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/d/t;)La/d/f;

    move-result-object v2

    if-eqz v2, :cond_c

    iget v0, v2, La/d/f;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    sub-int/2addr v0, v1

    iput v0, v2, La/d/f;->a:I

    iput-object v4, v2, La/d/f;->e:Ljava/lang/String;

    iget-object v0, v3, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, La/d/d;->g:La/d/e;

    if-eqz v0, :cond_d

    iget-object v0, p0, La/d/d;->g:La/d/e;

    iget-wide v0, v0, La/d/e;->a:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, La/d/d;->g:La/d/e;

    :cond_d
    iget-object v0, p0, La/d/d;->g:La/d/e;

    if-nez v0, :cond_e

    new-instance v0, La/d/e;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, La/d/e;-><init>(J)V

    iput-object v0, p0, La/d/d;->g:La/d/e;

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, La/d/d;->g:La/d/e;

    iget-object v0, v0, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_11

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_10
    :goto_4
    if-eqz v1, :cond_13

    iget-object v1, p0, La/d/d;->g:La/d/e;

    iget-object v1, v1, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/d/f;

    :goto_5
    move-object v2, v0

    goto :goto_3

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_10

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v6, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_12

    const/4 v1, 0x1

    goto :goto_4

    :cond_12
    const/4 v1, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    move-object v0, v2

    goto :goto_5

    :cond_14
    move-object v2, v0

    goto/16 :goto_2

    :cond_15
    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    goto/16 :goto_1

    :cond_16
    move-object v10, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_1
.end method

.method final declared-synchronized a(Ljava/lang/String;La/d/f;)V
    .locals 7

    const/16 v6, 0x5c

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, La/d/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/16 v0, 0x5c

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/16 v1, 0x5c

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    iget v1, p2, La/d/f;->a:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    if-le v1, v5, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget v1, p2, La/d/f;->a:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p2, La/d/f;->a:I

    iget-object v1, p0, La/d/d;->g:La/d/e;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iget-object v3, p0, La/d/d;->g:La/d/e;

    iget-wide v3, v3, La/d/e;->a:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, La/d/d;->g:La/d/e;

    :cond_3
    iget-object v1, p0, La/d/d;->g:La/d/e;

    if-nez v1, :cond_4

    new-instance v1, La/d/e;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, La/d/e;-><init>(J)V

    iput-object v1, p0, La/d/d;->g:La/d/e;

    :cond_4
    iget-object v1, p0, La/d/d;->g:La/d/e;

    iget-object v1, v1, La/d/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;La/d/t;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p2}, La/d/d;->a(La/d/t;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
