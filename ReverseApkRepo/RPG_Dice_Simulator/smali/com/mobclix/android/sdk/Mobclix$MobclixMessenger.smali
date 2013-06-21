.class Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;
.super Ljava/lang/Object;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixMessenger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method stop()V
    .locals 2

    .prologue
    .line 1059
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1062
    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1063
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1067
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->access$6(Z)V

    goto :goto_0
.end method

.method sync()V
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$MobclixMessenger;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->isMobclixEnabledKnown:Z
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$2(Lcom/mobclix/android/sdk/Mobclix;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$SyncThread;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mobclix/android/sdk/Mobclix$SyncThread;-><init>(Lcom/mobclix/android/sdk/Mobclix$SyncThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$4(Ljava/lang/Thread;)V

    .line 1050
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$5()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1056
    :cond_0
    return-void
.end method
