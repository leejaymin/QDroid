.class Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
.super Landroid/os/AsyncTask;
.source "BitmapDrawableDownloaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

.field private mImageView:Landroid/widget/ImageView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lkr/co/medinbiz/widget/ultra/util/ImageCache;)V
    .locals 1
    .parameter "imageView"
    .parameter "cache"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 20
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;)V
    .locals 1
    .parameter "imageView"
    .parameter "downloader"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 15
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    .line 16
    iput-object p2, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    .line 17
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "params"

    .prologue
    .line 28
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->setUrl(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 37
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 39
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->getBitmapDrawableDownloaderTask(Landroid/widget/ImageView;)Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    move-result-object v0

    .line 45
    .local v0, bitmapDownloaderTask:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    if-eq p0, v0, :cond_0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->downloader:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;->mode:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    sget-object v2, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;->CORRECT:Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$Mode;

    if-eq v1, v2, :cond_1

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    .end local v0           #bitmapDownloaderTask:Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 54
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;->url:Ljava/lang/String;

    .line 55
    return-void
.end method
