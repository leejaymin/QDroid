.class Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;
.super Ljava/lang/Object;
.source "MobclixFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;->this$1:Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread$1;->this$1:Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixFeedback$POSTThread;->listener:Lcom/mobclix/android/sdk/MobclixFeedback$Listener;

    invoke-interface {v0}, Lcom/mobclix/android/sdk/MobclixFeedback$Listener;->onSuccess()V

    .line 147
    return-void
.end method
