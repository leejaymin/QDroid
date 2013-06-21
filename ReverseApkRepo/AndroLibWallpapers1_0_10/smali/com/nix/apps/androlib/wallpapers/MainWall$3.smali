.class Lcom/nix/apps/androlib/wallpapers/MainWall$3;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$3;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$3;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const-class v2, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$3;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    invoke-virtual {v1, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    move-result-object v1

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    .line 191
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$3;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v1, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method
