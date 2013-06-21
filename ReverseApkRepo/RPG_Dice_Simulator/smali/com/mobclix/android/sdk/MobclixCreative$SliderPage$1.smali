.class Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->loadBackgroundImage()V
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    .line 596
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;->bmImg:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 601
    return-void
.end method
