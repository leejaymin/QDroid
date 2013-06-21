.class Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadedDrawable"
.end annotation


# instance fields
.field private final bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;)V
    .locals 1
    .parameter "drawable"
    .parameter "bitmapDownloaderTask"

    .prologue
    .line 324
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 326
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapDownloaderTask;

    return-object v0
.end method
