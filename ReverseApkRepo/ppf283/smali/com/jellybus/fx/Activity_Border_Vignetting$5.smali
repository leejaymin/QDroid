.class Lcom/jellybus/fx/Activity_Border_Vignetting$5;
.super Landroid/os/Handler;
.source "Activity_Border_Vignetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Vignetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Vignetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    .line 391
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const v8, 0x7f050038

    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Vignetting value"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->current_vignetting:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$15(Lcom/jellybus/fx/Activity_Border_Vignetting;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v4, "Vignetting"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 398
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v1, flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Apply value"

    const-string v5, "Apply"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v4, "Apply"

    invoke-static {v4, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$16(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    .line 407
    new-instance v3, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v3}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 408
    .local v3, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v4, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$4(Lcom/jellybus/fx/Activity_Border_Vignetting;Landroid/graphics/Bitmap;)V

    .line 410
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 411
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v6, v8}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$16(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    .line 415
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 416
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 418
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->setVignetting(II)V
    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$3(Lcom/jellybus/fx/Activity_Border_Vignetting;II)V

    .line 420
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$4(Lcom/jellybus/fx/Activity_Border_Vignetting;Landroid/graphics/Bitmap;)V

    .line 421
    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 424
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 425
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v6, v8}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 428
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 429
    const/4 v4, 0x1

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #getter for: Lcom/jellybus/fx/Activity_Border_Vignetting;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$5(Lcom/jellybus/fx/Activity_Border_Vignetting;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 430
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    #calls: Lcom/jellybus/fx/Activity_Border_Vignetting;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->access$16(Lcom/jellybus/fx/Activity_Border_Vignetting;)V

    .line 432
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    .local v2, intent_main:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4, v2}, Lcom/jellybus/fx/Activity_Border_Vignetting;->startActivity(Landroid/content/Intent;)V

    .line 434
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Border_Vignetting;->finish()V

    .line 435
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Vignetting$5;->this$0:Lcom/jellybus/fx/Activity_Border_Vignetting;

    const/high16 v5, 0x10a

    const v6, 0x10a0001

    invoke-virtual {v4, v5, v6}, Lcom/jellybus/fx/Activity_Border_Vignetting;->overridePendingTransition(II)V

    .line 436
    return-void
.end method
