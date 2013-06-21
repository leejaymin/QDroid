.class Lcom/nix/apps/androlib/wallpapers/MainWall$44$1;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall$44;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$44;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall$44;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$44$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$44;

    .line 1868
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$44$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$44;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$44;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall$44;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$44;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisWallpaperThread()V

    return-void
.end method
