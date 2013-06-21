.class Lcom/jellybus/fx/Activity_Border_Stamp$1;
.super Landroid/os/Handler;
.source "Activity_Border_Stamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 127
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v1

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/ThumbnailController;->setScaleShownSize(IIII)V

    .line 129
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->isViewSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->resettingTouchView()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$2(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 132
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 135
    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, live:Landroid/graphics/Bitmap;
    sget v1, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    invoke-static {v1, v2, v0}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 137
    invoke-static {v0}, Lcom/jellybus/fx/Juliet;->setLiveIndex(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->empty_view:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$4(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->empty_text_view:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$5(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp;->isViewSet:Z
    invoke-static {v1, v6}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$6(Lcom/jellybus/fx/Activity_Border_Stamp;Z)V

    .line 143
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    iput-boolean v6, v1, Lcom/jellybus/fx_sub/StampControllView;->isViewSet:Z

    .line 146
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_icon_4:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/jellybus/fx_sub/StampControllView;->trashX:F

    .line 147
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/jellybus/fx_sub/StampControllView;->trashY:F

    .line 149
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->setInactiveResource()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$8(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 153
    .end local v0           #live:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->view_size_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$9(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
