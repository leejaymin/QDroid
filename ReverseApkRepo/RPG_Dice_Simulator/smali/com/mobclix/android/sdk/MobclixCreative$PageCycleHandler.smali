.class Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;
.super Landroid/os/Handler;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageCycleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$0(Lcom/mobclix/android/sdk/MobclixCreative;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 321
    .local v0, nextPage:I
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$1(Lcom/mobclix/android/sdk/MobclixCreative;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$2(Lcom/mobclix/android/sdk/MobclixCreative;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$3(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I
    invoke-static {v1, v0}, Lcom/mobclix/android/sdk/MobclixCreative;->access$4(Lcom/mobclix/android/sdk/MobclixCreative;I)V

    .line 330
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->showNext()V

    goto :goto_0
.end method
