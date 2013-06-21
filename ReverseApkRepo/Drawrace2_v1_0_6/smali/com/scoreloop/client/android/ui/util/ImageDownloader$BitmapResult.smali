.class Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/util/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;
    }
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final status:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 360
    sget-object v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->OK:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->status:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    .line 361
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;)V
    .locals 0
    .parameter "bitmap"
    .parameter "status"

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    .line 365
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->status:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    .line 366
    return-void
.end method

.method static createError()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->ERROR:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;-><init>(Landroid/graphics/Bitmap;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;)V

    return-object v0
.end method

.method static createNotFound()Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->NOT_FOUND:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;-><init>(Landroid/graphics/Bitmap;Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;)V

    return-object v0
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method isCachable()Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->status:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    sget-object v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->ERROR:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNotFound()Z
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult;->status:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    sget-object v1, Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;->NOT_FOUND:Lcom/scoreloop/client/android/ui/util/ImageDownloader$BitmapResult$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
