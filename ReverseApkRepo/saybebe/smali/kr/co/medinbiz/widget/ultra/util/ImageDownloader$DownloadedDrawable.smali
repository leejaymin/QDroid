.class Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/util/ImageDownloader;
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
            "Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;)V
    .locals 1
    .parameter "bitmapDownloaderTask"

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 401
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 400
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 402
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    return-object v0
.end method
