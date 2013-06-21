.class Lcom/jellybus/fx/Activity_Main$9;
.super Landroid/os/Handler;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 1305
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1307
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->removeBitmap()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$13(Lcom/jellybus/fx/Activity_Main;)V

    .line 1310
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->removeCompare()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$36(Lcom/jellybus/fx/Activity_Main;)V

    .line 1311
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 1312
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeCompareIndex()V

    .line 1314
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    sget-object v1, Lcom/jellybus/fx_sub/PictureController;->path:Ljava/lang/String;

    sget-object v2, Lcom/jellybus/fx_sub/PictureController;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$14(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V

    .line 1315
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->isReset:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$37(Lcom/jellybus/fx/Activity_Main;)Z

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->setResizeBitmap(ZLandroid/graphics/Bitmap;)V

    .line 1316
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->removeBitmap()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$13(Lcom/jellybus/fx/Activity_Main;)V

    .line 1318
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$14(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V

    .line 1319
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 1320
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->image:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$1(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->preview:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$0(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1322
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sput v0, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    .line 1323
    sget v0, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sput v0, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    .line 1325
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    sget v1, Lcom/jellybus/fx_sub/PictureController;->compare_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->compare_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$38(Lcom/jellybus/fx/Activity_Main;Landroid/graphics/Bitmap;)V

    .line 1326
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/jellybus/fx/Juliet;->setCompareIndex(II)V

    .line 1327
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jellybus/fx/Juliet;->getCompareIndex(IILandroid/graphics/Bitmap;)V

    .line 1329
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #setter for: Lcom/jellybus/fx/Activity_Main;->isReset:Z
    invoke-static {v0, v4}, Lcom/jellybus/fx/Activity_Main;->access$39(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 1331
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1333
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$9;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->main_reset:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$40(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1335
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jellybus/fx_sub/PictureController;->hasBitmap:Z

    .line 1336
    return-void
.end method
