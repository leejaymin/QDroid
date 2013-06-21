.class Lcom/google/devtools/simple/runtime/components/android/Twitter$6;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->RequestFollowers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$myUserId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->val$myUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->friends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :try_start_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->val$myUserId:Ljava/lang/String;

    new-instance v4, Ltwitter4j/Paging;

    invoke-direct {v4}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Twitter;->getFollowersStatuses(Ljava/lang/String;Ltwitter4j/Paging;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->friends:Ljava/util/List;

    .line 555
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    :goto_0
    return-void

    .line 555
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ltwitter4j/TwitterException; {:try_start_3 .. :try_end_3} :catch_0

    .line 556
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 557
    .local v0, e:Ltwitter4j/TwitterException;
    :try_start_4
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestFollowers failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$800(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 559
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #e:Ltwitter4j/TwitterException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$6;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method
