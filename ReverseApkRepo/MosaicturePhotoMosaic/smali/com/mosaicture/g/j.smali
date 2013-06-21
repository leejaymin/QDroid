.class final Lcom/mosaicture/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/mosaicture/g/i;

.field final synthetic b:Lcom/mosaicture/g/g;


# direct methods
.method constructor <init>(Lcom/mosaicture/g/g;Lcom/mosaicture/g/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/g/j;->b:Lcom/mosaicture/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/mosaicture/g/j;->b:Lcom/mosaicture/g/g;

    iget-object v1, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    invoke-virtual {v0, v1}, Lcom/mosaicture/g/g;->a(Lcom/mosaicture/g/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    iget v0, v0, Lcom/mosaicture/g/i;->c:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    iget-wide v2, v0, Lcom/mosaicture/g/i;->a:J

    invoke-static {}, Lcom/mosaicture/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/mosaicture/g/k;->a(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/mosaicture/e/a; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mosaicture/g/j;->b:Lcom/mosaicture/g/g;

    iget-object v2, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    invoke-virtual {v1, v2}, Lcom/mosaicture/g/g;->a(Lcom/mosaicture/g/i;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/mosaicture/g/h;

    iget-object v2, p0, Lcom/mosaicture/g/j;->b:Lcom/mosaicture/g/g;

    iget-object v3, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    invoke-direct {v1, v2, v0, v3}, Lcom/mosaicture/g/h;-><init>(Lcom/mosaicture/g/g;Landroid/graphics/Bitmap;Lcom/mosaicture/g/i;)V

    iget-object v0, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    iget-object v0, v0, Lcom/mosaicture/g/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/mosaicture/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    iget-wide v3, v3, Lcom/mosaicture/g/i;->a:J

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/mosaicture/e/a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_2
    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/mosaicture/g/j;->a:Lcom/mosaicture/g/i;

    iget-wide v2, v2, Lcom/mosaicture/g/i;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/mosaicture/e/a; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    invoke-virtual {v1}, Lcom/mosaicture/e/a;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method
