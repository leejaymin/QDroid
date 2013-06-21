.class Lcom/jellybus/fx/Activity_Color_Curve$7;
.super Landroid/os/Handler;
.source "Activity_Color_Curve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 377
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f050035

    const/4 v7, 0x1

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Apply value"

    const-string v4, "Apply"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v3, "Apply"

    invoke-static {v3, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 386
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->clearWebView()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$27(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 387
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$28(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 390
    new-instance v2, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v2}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 391
    .local v2, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v3, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$29(Lcom/jellybus/fx/Activity_Color_Curve;Landroid/graphics/Bitmap;)V

    .line 393
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 394
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v5, v8}, Lcom/jellybus/fx/Activity_Color_Curve;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$28(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 399
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 400
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 401
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$1(Lcom/jellybus/fx/Activity_Color_Curve;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/CurveView;->setCurveIndex(ZZ)V

    .line 404
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    sget v4, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v5, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$29(Lcom/jellybus/fx/Activity_Color_Curve;Landroid/graphics/Bitmap;)V

    .line 405
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 408
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 409
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v5, v8}, Lcom/jellybus/fx/Activity_Color_Curve;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 413
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 414
    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v4, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Curve;->access$23(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v7, v3, v4, v5}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 416
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v3

    iput-boolean v7, v3, Lcom/jellybus/fx_sub/CurveView;->isStop:Z

    .line 417
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/CurveView;->resetAllPoint()V

    .line 418
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v3

    iput-object v9, v3, Lcom/jellybus/fx_sub/CurveView;->rP:[I

    .line 419
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v3, v9}, Lcom/jellybus/fx/Activity_Color_Curve;->access$30(Lcom/jellybus/fx/Activity_Color_Curve;Lcom/jellybus/fx_sub/CurveView;)V

    .line 420
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->removeBitmap()V
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->access$28(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 421
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v1, intent_main:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->startActivity(Landroid/content/Intent;)V

    .line 423
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Color_Curve;->finish()V

    .line 424
    iget-object v3, p0, Lcom/jellybus/fx/Activity_Color_Curve$7;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/high16 v4, 0x10a

    const v5, 0x10a0001

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx/Activity_Color_Curve;->overridePendingTransition(II)V

    .line 425
    return-void
.end method
