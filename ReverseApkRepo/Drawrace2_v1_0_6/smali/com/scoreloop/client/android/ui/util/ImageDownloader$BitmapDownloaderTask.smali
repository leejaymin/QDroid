.class Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final errorDrawable:Landroid/graphics/drawable/Drawable;

.field private final imageDownloaderCallback:Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

.field private final timeToLive:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/util/ImageDownloader;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;J)V
    .locals 1
    .parameter
    .parameter "imageView"
    .parameter "errorDrawable"
    .parameter "imageDownloaderCallback"
    .parameter "timeToLive"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 269
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 270
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageDownloaderCallback:Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;

    .line 272
    iput-wide p5, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->timeToLive:J

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 6
    .parameter "params"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 282
    .local v0, imageView:Landroid/widget/ImageView;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    .line 284
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget-wide v4, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->timeToLive:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;J)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v1

    .line 287
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;)V
    .locals 7
    .parameter "bitmapResult"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_4

    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->isCachable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/scoreloop/client/android/ui/util/ImageDownloader;

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    iget-wide v5, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->timeToLive:J

    #calls: Lcom/scoreloop/client/android/ui/util/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;J)V
    invoke-static {v3, v4, v0, v5, v6}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->access$100(Lcom/scoreloop/client/android/ui/util/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 302
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 303
    .local v2, imageView:Landroid/widget/ImageView;
    #calls: Lcom/scoreloop/client/android/ui/util/ImageDownloader;->getBitmapDownloaderTask(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    invoke-static {v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->access$200(Landroid/widget/ImageView;)Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    move-result-object v1

    .line 306
    .local v1, bitmapDownloaderTask:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    if-ne p0, v1, :cond_2

    .line 307
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 308
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    .end local v1           #bitmapDownloaderTask:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->isNotFound()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageDownloaderCallback:Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->imageDownloaderCallback:Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;

    invoke-interface {v3}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$ImageDownloaderCallback;->onNotFound()V

    .line 317
    :cond_3
    return-void

    .line 295
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 310
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapDownloaderTask:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    .restart local v2       #imageView:Landroid/widget/ImageView;
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;->onPostExecute(Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;)V

    return-void
.end method
