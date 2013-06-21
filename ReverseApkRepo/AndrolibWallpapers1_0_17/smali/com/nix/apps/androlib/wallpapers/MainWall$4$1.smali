.class Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;
.super Ljava/lang/Object;
.source "MainWall.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
.field final synthetic this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

.field private final synthetic val$alertDiag:Landroid/app/AlertDialog;

.field private final synthetic val$item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall$4;Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->val$item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iput-object p3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->val$alertDiag:Landroid/app/AlertDialog;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
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
    .line 274
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    iget-object v0, v2, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->tag:Ljava/lang/String;

    .line 275
    .local v0, choix:Ljava/lang/String;
    const-string v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$4;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->val$item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->setThisLOCALWallpaper(Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->val$alertDiag:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    return-void

    .line 278
    :cond_1
    const-string v2, "delete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->val$item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 282
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$4;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v2

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$4;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v3

    #calls: Lcom/nix/apps/androlib/wallpapers/MainWall;->loadLocalFileList()Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$8(Lcom/nix/apps/androlib/wallpapers/MainWall;)Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;

    move-result-object v3

    #setter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->currentWallpapers:Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;
    invoke-static {v2, v3}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$9(Lcom/nix/apps/androlib/wallpapers/MainWall;Lcom/nix/apps/androlib/wallpapers/datamanager/wallapi;)V

    .line 283
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;->this$1:Lcom/nix/apps/androlib/wallpapers/MainWall$4;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;
    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$4;)Lcom/nix/apps/androlib/wallpapers/MainWall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nix/apps/androlib/wallpapers/MainWall;->fillLocalFiles()V

    goto :goto_0
.end method
