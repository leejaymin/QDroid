.class Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;
.super Landroid/os/Handler;
.source "DrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;->this$0:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;->val$imageView:Landroid/widget/ImageView;

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 81
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, bm:Landroid/graphics/Bitmap;
    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 83
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
