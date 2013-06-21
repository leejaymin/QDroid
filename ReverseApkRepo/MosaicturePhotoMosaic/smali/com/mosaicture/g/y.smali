.class public final Lcom/mosaicture/g/y;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/g/y;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    return-void
.end method

.method private static a(Landroid/view/View;Z)Lcom/mosaicture/g/y;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/mosaicture/g/y;

    invoke-direct {v0}, Lcom/mosaicture/g/y;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/mosaicture/g/y;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View already has a tag that is not a ViewTagger"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lcom/mosaicture/g/y;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(I)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mosaicture/g/y;->a(Landroid/view/View;Z)Lcom/mosaicture/g/y;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, p1}, Lcom/mosaicture/g/y;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mosaicture/g/y;->a(Landroid/view/View;Z)Lcom/mosaicture/g/y;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, v1, Lcom/mosaicture/g/y;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
