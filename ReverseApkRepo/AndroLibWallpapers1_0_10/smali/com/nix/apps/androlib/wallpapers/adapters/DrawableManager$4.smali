.class Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->this$0:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->val$handler:Landroid/os/Handler;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->this$0:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->val$urlString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 132
    .local v1, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
