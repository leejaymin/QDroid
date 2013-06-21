.class Lcom/nix/apps/androlib/wallpapers/MainWall$46;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisLOCALWallpaper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

.field private final synthetic val$pathName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46;->val$pathName:Ljava/lang/String;

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$46;)Lcom/nix/apps/androlib/wallpapers/MainWall;
    .locals 1
    .parameter

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1888
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$46;->val$pathName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall$46$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$46;Ljava/lang/String;)V

    .line 1889
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1890
    return-void
.end method
