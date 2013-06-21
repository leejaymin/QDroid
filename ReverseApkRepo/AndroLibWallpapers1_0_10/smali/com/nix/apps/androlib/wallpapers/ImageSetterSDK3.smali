.class public Lcom/nix/apps/androlib/wallpapers/ImageSetterSDK3;
.super Ljava/lang/Object;
.source "ImageSetterSDK3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setImage(Landroid/graphics/drawable/Drawable;Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V
    .locals 0
    .parameter "d"
    .parameter "img"

    .prologue
    .line 8
    invoke-virtual {p1, p0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    return-void
.end method
