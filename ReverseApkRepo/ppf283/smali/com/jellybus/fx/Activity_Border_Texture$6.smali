.class Lcom/jellybus/fx/Activity_Border_Texture$6;
.super Landroid/os/Handler;
.source "Activity_Border_Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Texture;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    .line 525
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const v8, 0x7f050037

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Texture value"

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->current_texture_name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$12(Lcom/jellybus/fx/Activity_Border_Texture;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v4, "Texture"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 532
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v1, flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Apply value"

    const-string v5, "Apply"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v4, "Apply"

    invoke-static {v4, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 537
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #calls: Lcom/jellybus/fx/Activity_Border_Texture;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$13(Lcom/jellybus/fx/Activity_Border_Texture;)V

    .line 539
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$14(Lcom/jellybus/fx/Activity_Border_Texture;Landroid/graphics/Bitmap;)V

    .line 540
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 543
    new-instance v3, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v3}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 544
    .local v3, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v4, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 545
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v6, v8}, Lcom/jellybus/fx/Activity_Border_Texture;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 547
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 548
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeOriTextureToBlurIndex()V

    .line 549
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 552
    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v4, v5}, Lcom/jellybus/fx/Juliet;->setOverlayAllIndex(II)V

    .line 554
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$10(Lcom/jellybus/fx/Activity_Border_Texture;)I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->compare:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$4(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jellybus/fx/Juliet;->setAlphaBlendIndex(ILandroid/graphics/Bitmap;)V

    .line 555
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #calls: Lcom/jellybus/fx/Activity_Border_Texture;->removeCompareBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$15(Lcom/jellybus/fx/Activity_Border_Texture;)V

    .line 558
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$16(Lcom/jellybus/fx/Activity_Border_Texture;Landroid/graphics/Bitmap;)V

    .line 559
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 560
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 563
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 564
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v6, v8}, Lcom/jellybus/fx/Activity_Border_Texture;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 567
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 568
    const/4 v4, 0x1

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Border_Texture;->access$17(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 569
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #calls: Lcom/jellybus/fx/Activity_Border_Texture;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->access$13(Lcom/jellybus/fx/Activity_Border_Texture;)V

    .line 571
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v2, intent_main:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4, v2}, Lcom/jellybus/fx/Activity_Border_Texture;->startActivity(Landroid/content/Intent;)V

    .line 573
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Texture;->finish()V

    .line 574
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Texture$6;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    const/high16 v5, 0x10a

    const v6, 0x10a0001

    invoke-virtual {v4, v5, v6}, Lcom/jellybus/fx/Activity_Border_Texture;->overridePendingTransition(II)V

    .line 575
    return-void
.end method
