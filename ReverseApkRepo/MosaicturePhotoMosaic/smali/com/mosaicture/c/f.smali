.class public final Lcom/mosaicture/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mosaicture/c/c;


# static fields
.field private static synthetic d:[I


# instance fields
.field public a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private c:Lcom/mosaicture/c/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mosaicture/c/f;->a:Landroid/content/Context;

    new-instance v0, Lcom/mosaicture/c/e;

    invoke-direct {v0, p0}, Lcom/mosaicture/c/e;-><init>(Lcom/mosaicture/c/c;)V

    iput-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    return-void
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/mosaicture/c/f;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mosaicture/c/a;->values()[Lcom/mosaicture/c/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mosaicture/c/a;->b:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mosaicture/c/a;->a:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/mosaicture/c/a;->c:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/mosaicture/c/a;->e:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/mosaicture/c/a;->f:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/mosaicture/c/a;->d:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/mosaicture/c/f;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0}, Lcom/mosaicture/b/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mosaicture/b/a;->a(J)V

    return-void
.end method

.method public final a(Lcom/mosaicture/c/d;)V
    .locals 2

    iget-object v1, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/mosaicture/c/j;)V
    .locals 5

    iget-object v0, p1, Lcom/mosaicture/c/j;->b:Lcom/mosaicture/c/i;

    sget-object v1, Lcom/mosaicture/c/i;->a:Lcom/mosaicture/c/i;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mosaicture/c/f;->b()[I

    move-result-object v0

    iget-object v1, p1, Lcom/mosaicture/c/j;->e:Lcom/mosaicture/c/a;

    invoke-virtual {v1}, Lcom/mosaicture/c/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/c/d;

    invoke-interface {v0, p1}, Lcom/mosaicture/c/d;->a(Lcom/mosaicture/c/j;)V

    const-string v0, "HANDLE_RESPONDE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FROM MODEL CONTROL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/mosaicture/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mosaicture/b/a;->a(Lcom/mosaicture/d/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/mosaicture/d/a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/mosaicture/c/e;->a(Lcom/mosaicture/d/a;Z)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mosaicture/b/a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mosaicture/b/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(ZLjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/c/f;->c:Lcom/mosaicture/c/e;

    new-instance v0, Lcom/mosaicture/b/a;

    invoke-direct {v0}, Lcom/mosaicture/b/a;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/mosaicture/b/a;->a(ZLjava/util/List;)V

    return-void
.end method

.method public final b(Lcom/mosaicture/c/d;)V
    .locals 2

    iget-object v1, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/c/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
