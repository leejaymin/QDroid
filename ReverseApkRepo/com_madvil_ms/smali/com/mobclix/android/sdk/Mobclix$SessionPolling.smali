.class Lcom/mobclix/android/sdk/Mobclix$SessionPolling;
.super Ljava/util/TimerTask;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionPolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$SessionPolling;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    return-void
.end method


# virtual methods
.method public isTopTask()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 823
    :try_start_0
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 825
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 826
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 827
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 828
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 829
    iget-object v3, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 830
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/Exception;
    move v2, v4

    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/Mobclix$SessionPolling;->isTopTask()Z

    move-result v1

    #calls: Lcom/mobclix/android/sdk/Mobclix;->handleSessionStatus(Z)V
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$22(Lcom/mobclix/android/sdk/Mobclix;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
