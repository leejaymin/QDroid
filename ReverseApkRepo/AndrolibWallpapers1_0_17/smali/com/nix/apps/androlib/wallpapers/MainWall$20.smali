.class Lcom/nix/apps/androlib/wallpapers/MainWall$20;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpapersListInc()V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$20;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$20;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->downloaded:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 409
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$20;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->launchDownloadedWallpapers()V

    .line 410
    return-void
.end method