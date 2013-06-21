.class Lcom/nix/apps/androlib/wallpapers/MainWall$4;
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
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/MainWall$4;)Lcom/nix/apps/androlib/wallpapers/MainWall;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 250
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mainGridDownload:Landroid/widget/GridView;
    invoke-static {v8}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$7(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/GridView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;

    invoke-virtual {p1, p3}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersGridAdapter;->getItem(I)Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;

    move-result-object v5

    .line 251
    .local v5, item:Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, diag:Landroid/app/AlertDialog$Builder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v7, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;>;"
    new-instance v8, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    iget-object v9, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v10, 0x7f04001e

    invoke-virtual {v9, v10}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v10}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02002e

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v11, "set"

    invoke-direct {v8, v9, v10, v11}, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v8, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;

    iget-object v9, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v10, 0x7f040036

    invoke-virtual {v9, v10}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v10}, Lcom/nix/apps/androlib/wallpapers/MainWall;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000c

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v11, "delete"

    invoke-direct {v8, v9, v10, v11}, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v6, Landroid/widget/ListView;

    iget-object v8, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v6, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v6, mList:Landroid/widget/ListView;
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;

    iget-object v8, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$4;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v1, v8}, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;-><init>(Landroid/content/Context;)V

    .line 260
    .local v1, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;
    iput-object v7, v1, Lcom/nix/apps/androlib/wallpapers/adapters/OptionsAdapter;->myDatas:Ljava/util/ArrayList;

    .line 262
    :try_start_0
    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 269
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 273
    .local v0, alertDiag:Landroid/app/AlertDialog;
    new-instance v8, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;

    invoke-direct {v8, p0, v5, v0}, Lcom/nix/apps/androlib/wallpapers/MainWall$4$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$4;Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    return-void

    .line 263
    .end local v0           #alertDiag:Landroid/app/AlertDialog;
    :catch_0
    move-exception v4

    .line 264
    .local v4, ie:Ljava/lang/IllegalStateException;
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v4           #ie:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
