.class public final Lcom/mosaicture/g/g;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field final b:I

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/g/g;->c:Ljava/util/Map;

    const v0, 0x7f020024

    iput v0, p0, Lcom/mosaicture/g/g;->b:I

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mosaicture/g/g;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private b(JLandroid/widget/ImageView;I)V
    .locals 6

    new-instance v0, Lcom/mosaicture/g/i;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mosaicture/g/i;-><init>(Lcom/mosaicture/g/g;JLandroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/mosaicture/g/g;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/mosaicture/g/j;

    invoke-direct {v2, p0, v0}, Lcom/mosaicture/g/j;-><init>(Lcom/mosaicture/g/g;Lcom/mosaicture/g/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final a(JLandroid/widget/ImageView;I)V
    .locals 3

    const v2, 0x7f020024

    iget-object v0, p0, Lcom/mosaicture/g/g;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    sget-object v0, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mosaicture/g/g;->b(JLandroid/widget/ImageView;I)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mosaicture/g/g;->b(JLandroid/widget/ImageView;I)V

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method final a(Lcom/mosaicture/g/i;)Z
    .locals 4

    iget-object v0, p0, Lcom/mosaicture/g/g;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/mosaicture/g/i;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/mosaicture/g/i;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
