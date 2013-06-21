.class Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPage"
.end annotation


# instance fields
.field private bgImageUrl:Ljava/lang/String;

.field private delayTime:I

.field private endX:F

.field private endY:F

.field firstImageAnimation:Landroid/view/animation/TranslateAnimation;

.field private firstImageUrl:Ljava/lang/String;

.field private firstImageView:Landroid/widget/ImageView;

.field secondImageAnimation:Landroid/view/animation/Animation;

.field private secondImageUrl:Ljava/lang/String;

.field private secondImageView:Landroid/widget/ImageView;

.field private slideTime:I

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private transitionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 8
    .parameter
    .parameter "properties"
    .parameter "c"

    .prologue
    const-wide v6, 0x408f400000000000L

    const-string v4, "y"

    const-string v4, "x"

    const-string v4, "imageUrl"

    .line 654
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 630
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 633
    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->createLayout()V

    .line 634
    const-string v4, "backgroundImageUrl"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->bgImageUrl:Ljava/lang/String;

    .line 635
    const-string v4, "slider"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 636
    .local v2, slider:Lorg/json/JSONObject;
    const-string v4, "imageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageUrl:Ljava/lang/String;

    .line 637
    const-string v4, "durationTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->slideTime:I

    .line 638
    const-string v4, "start"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 639
    .local v3, start:Lorg/json/JSONObject;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->startX:F

    .line 640
    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->startY:F

    .line 641
    const-string v4, "end"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 642
    .local v0, end:Lorg/json/JSONObject;
    const-string v4, "x"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->endX:F

    .line 643
    const-string v4, "y"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->endY:F

    .line 645
    const-string v4, "final"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 646
    .local v1, finalImage:Lorg/json/JSONObject;
    const-string v4, "imageUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageUrl:Ljava/lang/String;

    .line 647
    const-string v4, "delayTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->delayTime:I

    .line 648
    const-string v4, "transitionType"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v0           #end:Lorg/json/JSONObject;
    .end local v1           #finalImage:Lorg/json/JSONObject;
    .end local v2           #slider:Lorg/json/JSONObject;
    .end local v3           #start:Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->loadBackgroundImage()V

    .line 653
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->loadImages()V

    return-void

    .line 649
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method


# virtual methods
.method public act()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x2

    .line 708
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->startX:F

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    div-float/2addr v3, v5

    div-float v2, v0, v3

    .line 709
    .local v2, startPercX:F
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->startY:F

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    div-float/2addr v3, v5

    div-float v6, v0, v3

    .line 710
    .local v6, startPercY:F
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->endX:F

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->width:F

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    div-float/2addr v3, v5

    div-float v4, v0, v3

    .line 711
    .local v4, endPercX:F
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->endY:F

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v3, v3, Lcom/mobclix/android/sdk/MobclixAdView;->height:F

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    div-float/2addr v3, v5

    div-float v8, v0, v3

    .line 712
    .local v8, endPercY:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    .line 714
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 712
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    .line 715
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->slideTime:I

    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 716
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 717
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v11}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 719
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->setSecondImageAnimationType()V

    .line 721
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 722
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 723
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 726
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 727
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 728
    return-void
.end method

.method public createLayout()V
    .locals 2

    .prologue
    .line 657
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    .line 658
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->addView(Landroid/view/View;)V

    .line 659
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    .line 660
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->addView(Landroid/view/View;)V

    .line 661
    return-void
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 664
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->bgImageUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 671
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method

.method public loadImages()V
    .locals 4

    .prologue
    .line 675
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->firstImageUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 689
    .local v0, fetchImage:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #fetchImage:Ljava/lang/Thread;
    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 704
    .restart local v0       #fetchImage:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method public setSecondImageAnimationType()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v6, 0x4000

    const/high16 v9, 0x3f80

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 731
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    .line 733
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 763
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->delayTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 764
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 765
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v10}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 766
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 767
    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v2, "fade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    .line 756
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    .line 757
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    .line 758
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v2, "slideRight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 738
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x4080

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 739
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 738
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v2, "slideLeft"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 741
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, v9

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 742
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 741
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v2, "slideUp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 744
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v2, v4

    move v3, v1

    move v5, v1

    move v6, v9

    move v7, v1

    move v8, v4

    .line 745
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 744
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 746
    :cond_5
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v2, "slideDown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 747
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 748
    const/high16 v6, -0x4080

    move v2, v4

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 747
    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 749
    :cond_6
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v1, "flipRight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 750
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    const/high16 v3, -0x3d4c

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v6

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v6

    move v7, v4

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    .line 751
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    .line 752
    :cond_7
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->transitionType:Ljava/lang/String;

    const-string v1, "flipLeft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    const/high16 v3, 0x42b4

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v6

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v6

    move v7, v4

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    .line 754
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    .line 760
    :cond_8
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->secondImageAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto/16 :goto_0
.end method
