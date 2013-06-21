.class final Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/polidea/imagemanager/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadedBitmap"
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final weakBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "strong"

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    if-eqz p2, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 221
    if-eqz p2, :cond_1

    :goto_1
    iput-object v1, p0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->weakBitmap:Ljava/lang/ref/WeakReference;

    .line 222
    return-void

    :cond_0
    move-object v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->weakBitmap:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->bitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lpl/polidea/imagemanager/ImageManager$LoadedBitmap;->weakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
