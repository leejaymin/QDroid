.class public Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK4;
.super Ljava/lang/Object;
.source "ImageSetterSDK4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V
    .locals 3
    .parameter "d"
    .parameter "img"

    .prologue
    .line 12
    :try_start_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 13
    .local v0, bm:Landroid/graphics/Bitmap;
    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 17
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
