.class Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    .line 689
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "m"

    .prologue
    .line 691
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 692
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 693
    .local v2, rawWidth:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 694
    .local v1, rawHeight:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->access$2(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v4

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v2}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    .line 695
    .local v3, width:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->access$2(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v4

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v0

    .line 696
    .local v0, height:I
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Landroid/widget/ImageView;

    move-result-object v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 698
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->access$1(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    .end local v0           #height:I
    .end local v1           #rawHeight:I
    .end local v2           #rawWidth:I
    .end local v3           #width:I
    :cond_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v4

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 701
    return-void
.end method
