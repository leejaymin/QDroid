.class Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    .line 601
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->imgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 606
    return-void
.end method
