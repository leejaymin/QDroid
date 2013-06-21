.class Lcom/google/devtools/simple/runtime/components/android/Twitter$8;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->DirectMessage(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$user:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :try_start_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$user:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ltwitter4j/Twitter;->sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;

    .line 707
    monitor-exit v1

    .line 711
    :goto_0
    return-void

    .line 707
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    .line 708
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 709
    .local v0, e:Ltwitter4j/TwitterException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$8;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectMessage failed: "

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

    goto :goto_0
.end method
