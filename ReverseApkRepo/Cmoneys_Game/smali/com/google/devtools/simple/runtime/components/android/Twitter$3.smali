.class Lcom/google/devtools/simple/runtime/components/android/Twitter$3;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->resultReturned(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$myRequestToken:Ltwitter4j/http/RequestToken;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/Twitter;Ltwitter4j/http/RequestToken;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$myTwitter:Ltwitter4j/Twitter;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$myRequestToken:Ltwitter4j/http/RequestToken;

    iput-object p4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :try_start_1
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$myRequestToken:Ltwitter4j/http/RequestToken;

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v1

    .line 345
    .local v1, resultAccessToken:Ltwitter4j/http/AccessToken;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    .line 347
    :try_start_3
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;
    invoke-static {v3, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$902(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/AccessToken;)Ltwitter4j/http/AccessToken;

    .line 348
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->accessToken:Ltwitter4j/http/AccessToken;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$900(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ltwitter4j/http/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->userName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1002(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->saveAccessToken(Ltwitter4j/http/AccessToken;)V
    invoke-static {v3, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1100(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/AccessToken;)V

    .line 350
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 351
    :try_start_4
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$3$1;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$3$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_0

    .line 362
    .end local v1           #resultAccessToken:Ltwitter4j/http/AccessToken;
    :goto_0
    return-void

    .line 345
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ltwitter4j/TwitterException; {:try_start_6 .. :try_end_6} :catch_0

    .line 356
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 357
    .local v0, e:Ltwitter4j/TwitterException;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get access token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$800(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V

    .line 358
    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 360
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->DeAuthorize()V

    goto :goto_0

    .line 350
    .end local v0           #e:Ltwitter4j/TwitterException;
    .restart local v1       #resultAccessToken:Ltwitter4j/http/AccessToken;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ltwitter4j/TwitterException; {:try_start_8 .. :try_end_8} :catch_0
.end method
