.class Lcom/google/devtools/simple/runtime/components/android/Twitter$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->Authorize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$myConsumerKey:Ljava/lang/String;

.field final synthetic val$myConsumerSecret:Ljava/lang/String;

.field final synthetic val$myTwitter:Ltwitter4j/Twitter;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/Twitter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 262
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v5, v6}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$000(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$100(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/devtools/simple/runtime/components/android/Twitter$1$1;

    invoke-direct {v5, p0}, Lcom/google/devtools/simple/runtime/components/android/Twitter$1$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->twitterLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$200(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :try_start_1
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myConsumerSecret:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->val$myTwitter:Ltwitter4j/Twitter;

    const-string v6, "appinventor://twitter"

    invoke-virtual {v5, v6}, Ltwitter4j/Twitter;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v3

    .line 276
    .local v3, newRequestToken:Ltwitter4j/http/RequestToken;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :try_start_2
    invoke-virtual {v3}, Ltwitter4j/http/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, authURL:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->lock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :try_start_3
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestToken:Ltwitter4j/http/RequestToken;
    invoke-static {v5, v3}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$402(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;

    .line 280
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    .local v1, browserIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$500(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$500(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->requestCode:I
    invoke-static {v5}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$700(Lcom/google/devtools/simple/runtime/components/android/Twitter;)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ltwitter4j/TwitterException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 284
    .end local v0           #authURL:Ljava/lang/String;
    .end local v1           #browserIntent:Landroid/content/Intent;
    .end local v3           #newRequestToken:Ltwitter4j/http/RequestToken;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 285
    .local v2, e:Ltwitter4j/TwitterException;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Twitter error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$800(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V

    .line 286
    const-string v4, "Twitter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 288
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->DeAuthorize()V

    goto/16 :goto_0

    .line 276
    .end local v2           #e:Ltwitter4j/TwitterException;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ltwitter4j/TwitterException; {:try_start_6 .. :try_end_6} :catch_0

    .line 280
    .restart local v0       #authURL:Ljava/lang/String;
    .restart local v3       #newRequestToken:Ltwitter4j/http/RequestToken;
    :catchall_1
    move-exception v5

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catch Ltwitter4j/TwitterException; {:try_start_8 .. :try_end_8} :catch_0
.end method
