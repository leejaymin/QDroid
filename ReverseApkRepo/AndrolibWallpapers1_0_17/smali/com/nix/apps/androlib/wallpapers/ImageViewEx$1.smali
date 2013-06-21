.class Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;
.super Landroid/os/Handler;
.source "ImageViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/ImageViewEx;
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;->this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/ImageViewEx$1;->this$0:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

    #calls: Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->setFromLocal()V
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/ImageViewEx;->access$0(Lcom/nix/apps/androlib/wallpapers/ImageViewEx;)V

    .line 69
    return-void
.end method
