.class Lcom/mobclix/android/sdk/MobclixCreative$Action$1;
.super Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$Action;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 1056
    invoke-direct {p0}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->bmImg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1059
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1060
    .local v1, rawWidth:I
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->bmImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1061
    .local v0, rawHeight:I
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$13(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v3

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iput v3, v2, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageWidth:I

    .line 1062
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$13(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v3

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iput v3, v2, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageHeight:I

    .line 1063
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->bmImg:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    .line 1065
    .end local v0           #rawHeight:I
    .end local v1           #rawWidth:I
    :cond_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 1066
    return-void
.end method
