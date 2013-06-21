.class Lcom/nix/apps/androlib/wallpapers/MainWall$44;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$44;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$44;)Lcom/nix/apps/androlib/wallpapers/MainWall;
    .locals 1
    .parameter

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$44;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1868
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$44$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$44$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$44;)V

    .line 1869
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1870
    return-void
.end method
