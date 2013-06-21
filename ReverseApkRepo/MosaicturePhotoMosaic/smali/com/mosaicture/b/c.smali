.class public final Lcom/mosaicture/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mosaicture/b/c;


# instance fields
.field private b:Lcom/mosaicture/b/d;

.field private c:Lcom/mosaicture/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/mosaicture/b/c;
    .locals 2

    const-class v0, Lcom/mosaicture/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mosaicture/b/c;->a:Lcom/mosaicture/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mosaicture/b/c;
    .locals 4

    const-class v1, Lcom/mosaicture/b/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mosaicture/b/c;->a:Lcom/mosaicture/b/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mosaicture/b/c;

    invoke-direct {v0}, Lcom/mosaicture/b/c;-><init>()V

    sput-object v0, Lcom/mosaicture/b/c;->a:Lcom/mosaicture/b/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/mosaicture/b/c;->c:Lcom/mosaicture/c/g;

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Lcom/mosaicture/c/g;

    invoke-direct {v3, v2}, Lcom/mosaicture/c/g;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/mosaicture/b/c;->c:Lcom/mosaicture/c/g;

    :cond_0
    iget-object v2, v0, Lcom/mosaicture/b/c;->b:Lcom/mosaicture/b/d;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/mosaicture/b/c;->c:Lcom/mosaicture/c/g;

    if-eqz v2, :cond_1

    new-instance v2, Lcom/mosaicture/b/d;

    iget-object v3, v0, Lcom/mosaicture/b/c;->c:Lcom/mosaicture/c/g;

    invoke-direct {v2, v3}, Lcom/mosaicture/b/d;-><init>(Lcom/mosaicture/c/g;)V

    iput-object v2, v0, Lcom/mosaicture/b/c;->b:Lcom/mosaicture/b/d;

    :cond_1
    const-string v0, "memory"

    const-string v2, "Criando DatabaseControl"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/mosaicture/b/c;->a:Lcom/mosaicture/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Lcom/mosaicture/b/d;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/b/c;->b:Lcom/mosaicture/b/d;

    return-object v0
.end method
