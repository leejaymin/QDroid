.class Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/util/ImageCache;
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
    .line 261
    const/high16 v0, -0x100

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 263
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 262
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 264
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/util/ImageCache$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/widget/ultra/util/BitmapDrawableDownloaderTask;

    return-object v0
.end method
