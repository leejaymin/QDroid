.class Lcom/google/devtools/simple/runtime/components/android/Twitter$11;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->RequestFriendTimeline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->val$myTwitter:Ltwitter4j/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->messages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->val$myTwitter:Ltwitter4j/Twitter;

    invoke-virtual {v1}, Ltwitter4j/Twitter;->getFriendsTimeline()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->messages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$11;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 787
    .local v0, e:Ltwitter4j/TwitterException;
    :try_start_1
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestFriendTimeline failed: "

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 789
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$11;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0           #e:Ltwitter4j/TwitterException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$11;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$11$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$11;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method
