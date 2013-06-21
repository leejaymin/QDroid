.class Lcom/jellybus/fx/Activity_Filter$7;
.super Landroid/os/Handler;
.source "Activity_Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 696
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Filter value"

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v5, "Filter"

    invoke-static {v5, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 703
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 704
    .local v1, flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "Filter value"

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v5, "Filter"

    invoke-static {v5, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 706
    sget v5, Lcom/jellybus/fx_sub/PictureController;->flurry_filter_count:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/jellybus/fx_sub/PictureController;->flurry_filter_count:I

    .line 707
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 708
    .local v2, flurry_value3:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Apply value"

    const-string v6, "Apply"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v5, "Apply"

    invoke-static {v5, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 712
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->saveHistory()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$26(Lcom/jellybus/fx/Activity_Filter;)V

    .line 714
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$27(Lcom/jellybus/fx/Activity_Filter;)V

    .line 715
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_Filter;->access$28(Lcom/jellybus/fx/Activity_Filter;Landroid/graphics/Bitmap;)V

    .line 716
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 718
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 719
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 722
    new-instance v4, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v4}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 723
    .local v4, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v5, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 724
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v8}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 726
    :cond_0
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    const-string v6, "Grunge"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v5, v5, Lcom/jellybus/fx_sub/Filter;->needTexture:Z

    if-eqz v5, :cond_1

    .line 727
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeOriTextureToBlurIndex()V

    .line 729
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-virtual {v5, v6, v7}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 730
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx_sub/Filter;->process()V

    .line 737
    :goto_0
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->opacity:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$22(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->compare:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$29(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jellybus/fx/Juliet;->setAlphaBlendIndex(ILandroid/graphics/Bitmap;)V

    .line 741
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$27(Lcom/jellybus/fx/Activity_Filter;)V

    .line 742
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    #setter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/jellybus/fx/Activity_Filter;->access$30(Lcom/jellybus/fx/Activity_Filter;Landroid/graphics/Bitmap;)V

    .line 743
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 746
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 747
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v8}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/Filter;->filterName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 750
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 751
    const/4 v5, 0x1

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->preview:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/jellybus/fx/Activity_Filter;->access$31(Lcom/jellybus/fx/Activity_Filter;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 752
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Filter;->access$27(Lcom/jellybus/fx/Activity_Filter;)V

    .line 754
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iput-object v9, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 755
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->list:[I
    invoke-static {v5, v9}, Lcom/jellybus/fx/Activity_Filter;->access$32(Lcom/jellybus/fx/Activity_Filter;[I)V

    .line 757
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    .local v3, intent_main:Landroid/content/Intent;
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5, v3}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 759
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 760
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    const/high16 v6, 0x10a

    const v7, 0x10a0001

    invoke-virtual {v5, v6, v7}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    .line 761
    return-void

    .line 733
    .end local v3           #intent_main:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    sget v6, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v7, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-virtual {v5, v6, v7}, Lcom/jellybus/fx_sub/Filter;->setSize(II)V

    .line 734
    iget-object v5, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v5, v5, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v5, v5, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Filter$7;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jellybus/fx_sub/Filter;

    invoke-virtual {v5}, Lcom/jellybus/fx_sub/Filter;->process()V

    goto/16 :goto_0
.end method
