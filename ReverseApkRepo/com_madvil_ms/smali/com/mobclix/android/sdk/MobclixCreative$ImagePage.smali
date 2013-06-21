.class Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePage"
.end annotation


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private imgView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "c"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 581
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 583
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgUrl:Ljava/lang/String;

    .line 584
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->createLayout()V

    .line 585
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->loadImage()V

    return-void
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 589
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 590
    .local v0, imgLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 592
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    .line 593
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->addView(Landroid/view/View;)V

    .line 596
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    return-void
.end method

.method public loadImage()V
    .locals 4

    .prologue
    .line 601
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 608
    .local v0, fetchIcon:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method
