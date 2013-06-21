.class Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;
.super Ljava/lang/Thread;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall$46;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$46;

.field private final synthetic val$pathName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall$46;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$46;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;->val$pathName:Ljava/lang/String;

    .line 1888
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$46;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$46;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall$46;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$46;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v0

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;->val$pathName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisLOCALWallpaperThread(Ljava/lang/String;)V

    return-void
.end method
