.class Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;
.super Landroid/os/Handler;
.source "DrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThreadSDK3(Ljava/lang/String;Landroid/widget/ImageView;)V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;->this$0:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;->val$imageView:Landroid/widget/ImageView;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$3;->val$imageView:Landroid/widget/ImageView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method
