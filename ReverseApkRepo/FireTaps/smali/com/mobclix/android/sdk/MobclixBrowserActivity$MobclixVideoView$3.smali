.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTaglineImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    .line 428
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    .line 430
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 431
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 432
    .local v2, rawWidth:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 433
    .local v1, rawHeight:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v4, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    .line 434
    .local v3, width:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v4, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    .line 435
    .local v0, height:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 440
    .end local v0           #height:I
    .end local v1           #rawHeight:I
    .end local v2           #rawWidth:I
    .end local v3           #width:I
    :cond_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v4

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 441
    return-void
.end method