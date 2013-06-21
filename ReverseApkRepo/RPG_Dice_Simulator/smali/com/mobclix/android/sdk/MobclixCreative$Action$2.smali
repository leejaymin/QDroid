.class Lcom/mobclix/android/sdk/MobclixCreative$Action$2;
.super Landroid/os/Handler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadPreload()V
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
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 845
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 847
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, type:Ljava/lang/String;
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 853
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;->sendEmptyMessage(I)Z

    .line 854
    return-void

    .line 850
    :cond_1
    const-string v1, "failure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    const-string v2, ""

    iput-object v2, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    goto :goto_0
.end method
