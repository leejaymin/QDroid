.class Lcom/jellybus/fx/Activity_Border_Stamp_User$1;
.super Landroid/os/Handler;
.source "Activity_Border_Stamp_User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp_User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    .line 273
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$2(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->frm_layout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->frm_layout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/ThumbnailController;->setScaleShownSize(IIII)V

    .line 275
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    new-instance v2, Lcom/jellybus/fx_sub/StampUserDrawView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    invoke-virtual {v3}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jellybus/fx_sub/StampUserDrawView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$4(Lcom/jellybus/fx/Activity_Border_Stamp_User;Lcom/jellybus/fx_sub/StampUserDrawView;)V

    .line 276
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$5(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/StampUserDrawView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jellybus/fx_sub/StampUserDrawView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->frm_layout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$5(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/StampUserDrawView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 282
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$2(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$6(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$7(Lcom/jellybus/fx/Activity_Border_Stamp_User;Landroid/graphics/Bitmap;)V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_picture:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$8(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$6(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$9(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->isViewSet:Z
    invoke-static {v1, v6}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$10(Lcom/jellybus/fx/Activity_Border_Stamp_User;Z)V

    .line 289
    return-void
.end method
