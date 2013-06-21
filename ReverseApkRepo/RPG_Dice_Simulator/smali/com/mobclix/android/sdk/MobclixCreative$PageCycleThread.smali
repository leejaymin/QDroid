.class Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;
.super Ljava/util/TimerTask;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageCycleThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 337
    return-void
.end method
