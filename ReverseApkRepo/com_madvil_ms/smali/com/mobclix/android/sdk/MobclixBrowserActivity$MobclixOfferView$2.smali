.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    .line 618
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;->this$1:Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->handler:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 623
    return-void
.end method
