.class Lcom/nix/apps/androlib/wallpapers/MainWall$5;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;->paramWallpapersListInc()V
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$5;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 295
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$5;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$10(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    invoke-virtual {v0, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    .line 296
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$5;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;->wallpaperDetail:Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->includesSwitcher(Lcom/nix/apps/androlib/wallpapers/modCommon$enumIncludes;)V

    .line 297
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$5;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillWallpaper(Z)V

    .line 298
    return-void
.end method
