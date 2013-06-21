.class Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;
.super Ljava/lang/Thread;
.source "ImageViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;->this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;->this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$2;->this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method
