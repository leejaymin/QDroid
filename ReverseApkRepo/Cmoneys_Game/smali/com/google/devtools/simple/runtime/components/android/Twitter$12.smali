.class Lcom/google/devtools/simple/runtime/components/android/Twitter$12;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->SearchTwitter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->tweets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :try_start_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->val$myTwitter:Ltwitter4j/Twitter;

    new-instance v3, Ltwitter4j/Query;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->val$query:Ljava/lang/String;

    invoke-direct {v3, v4}, Ltwitter4j/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ltwitter4j/Twitter;->search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/QueryResult;->getTweets()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->tweets:Ljava/util/List;

    .line 861
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$12;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    :goto_0
    return-void

    .line 861
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

    .line 862
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 863
    .local v0, e:Ltwitter4j/TwitterException;
    :try_start_4
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    const-string v2, "Twitter search failed"

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$800(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 865
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$12;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #e:Ltwitter4j/TwitterException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$12;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$12$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$12;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method
