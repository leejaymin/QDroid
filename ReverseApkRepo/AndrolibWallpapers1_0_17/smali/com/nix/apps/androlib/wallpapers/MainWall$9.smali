.class Lcom/nix/apps/androlib/wallpapers/MainWall$9;
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$9;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$9;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->loadCategories()V

    .line 335
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$9;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->categories:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 339
    return-void
.end method
