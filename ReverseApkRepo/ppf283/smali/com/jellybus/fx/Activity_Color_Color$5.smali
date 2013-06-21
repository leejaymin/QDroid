.class Lcom/jellybus/fx/Activity_Color_Color$5;
.super Landroid/os/Handler;
.source "Activity_Color_Color.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Color;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Color;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    .line 417
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Apply value"

    const-string v4, "Apply"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "Apply"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 426
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$22(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 429
    new-instance v2, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v2}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 430
    .local v2, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v3, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$23(Lcom/jellybus/fx/Activity_Color_Color;Landroid/graphics/Bitmap;)V

    .line 432
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 433
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Color;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Color;->access$24(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$22(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 437
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 438
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 440
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const/4 v4, 0x0

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->setEffect(Z)V
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$25(Lcom/jellybus/fx/Activity_Color_Color;Z)V

    .line 443
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$22(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 444
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$23(Lcom/jellybus/fx/Activity_Color_Color;Landroid/graphics/Bitmap;)V

    .line 445
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 448
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Color;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 449
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Color;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_text_title:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Color;->access$24(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 453
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 454
    const/4 v3, 0x1

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Color_Color;->access$20(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 455
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$22(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 457
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Color;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v1, intent_main:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3, v1}, Lcom/jellybus/fx/Activity_Color_Color;->startActivity(Landroid/content/Intent;)V

    .line 459
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Color;->finish()V

    .line 460
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Color$5;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const/high16 v4, 0x10a

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx/Activity_Color_Color;->overridePendingTransition(II)V

    .line 461
    return-void
.end method
