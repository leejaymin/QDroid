.class Lcom/admob/android/ads/Ad$1;
.super Ljava/lang/Thread;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/Ad;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/Ad;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/Ad;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const-string v8, "AdMob SDK"

    .line 487
    const/4 v0, 0x0

    .line 490
    .local v0, destinationURL:Ljava/net/URL;
    :try_start_0
    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->networkListener:Lcom/admob/android/ads/Ad$NetworkListener;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$000(Lcom/admob/android/ads/Ad;)Lcom/admob/android/ads/Ad$NetworkListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 492
    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->networkListener:Lcom/admob/android/ads/Ad$NetworkListener;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$000(Lcom/admob/android/ads/Ad;)Lcom/admob/android/ads/Ad$NetworkListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/admob/android/ads/Ad$NetworkListener;->onNetworkActivityStart()V

    .line 495
    :cond_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$100(Lcom/admob/android/ads/Ad;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, url:Ljava/net/URL;
    move-object v0, v4

    .line 498
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 500
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 501
    .local v3, redirectConnection:Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/admob/android/ads/Ad;->access$200()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 502
    invoke-static {}, Lcom/admob/android/ads/Ad;->access$200()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 503
    const-string v5, "User-Agent"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v5, "X-ADMOB-ISU"

    iget-object v6, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/admob/android/ads/Ad;->access$300(Lcom/admob/android/ads/Ad;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 507
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 509
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 511
    const-string v5, "AdMob SDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 513
    const-string v5, "AdMob SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final click destination URL:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    .end local v3           #redirectConnection:Ljava/net/HttpURLConnection;
    .end local v4           #url:Ljava/net/URL;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 527
    const-string v5, "AdMob SDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    const-string v5, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .local v2, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    :try_start_1
    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$300(Lcom/admob/android/ads/Ad;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 546
    .end local v2           #i:Landroid/content/Intent;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->networkListener:Lcom/admob/android/ads/Ad$NetworkListener;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$000(Lcom/admob/android/ads/Ad;)Lcom/admob/android/ads/Ad$NetworkListener;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 548
    iget-object v5, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->networkListener:Lcom/admob/android/ads/Ad$NetworkListener;
    invoke-static {v5}, Lcom/admob/android/ads/Ad;->access$000(Lcom/admob/android/ads/Ad;)Lcom/admob/android/ads/Ad$NetworkListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/admob/android/ads/Ad$NetworkListener;->onNetworkActivityEnd()V

    .line 550
    :cond_4
    return-void

    .line 516
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 518
    .local v1, e:Ljava/net/MalformedURLException;
    const-string v5, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed click URL.  Will try to follow anyway.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;
    invoke-static {v6}, Lcom/admob/android/ads/Ad;->access$100(Lcom/admob/android/ads/Ad;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 520
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 522
    .local v1, e:Ljava/io/IOException;
    const-string v5, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not determine final click destination URL.  Will try to follow anyway.  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/admob/android/ads/Ad$1;->this$0:Lcom/admob/android/ads/Ad;

    #getter for: Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;
    invoke-static {v6}, Lcom/admob/android/ads/Ad;->access$100(Lcom/admob/android/ads/Ad;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 540
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:Landroid/content/Intent;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 542
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "AdMob SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open browser on ad click to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
