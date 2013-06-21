.class Lcom/urbanairship/iap/DownloadManager$1;
.super Lcom/urbanairship/restclient/AsyncHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/iap/DownloadManager;->verify(Lcom/urbanairship/iap/Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/DownloadManager;

.field final synthetic val$product:Lcom/urbanairship/iap/Product;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/DownloadManager$1;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iput-object p2, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    iput-object p3, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/urbanairship/restclient/Response;)V
    .locals 3

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyRequest result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "content_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v2, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->download(Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/urbanairship/iap/DownloadManager;->access$100(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing verification response from server, for product "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$1;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V
    invoke-static {v0, v1}, Lcom/urbanairship/iap/DownloadManager;->access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyRequest response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$1;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V
    invoke-static {v0, v1}, Lcom/urbanairship/iap/DownloadManager;->access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error fetching content url from server, for product: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/DownloadManager$1;->this$0:Lcom/urbanairship/iap/DownloadManager;

    iget-object v1, p0, Lcom/urbanairship/iap/DownloadManager$1;->val$product:Lcom/urbanairship/iap/Product;

    #calls: Lcom/urbanairship/iap/DownloadManager;->retry(Lcom/urbanairship/iap/Product;)V
    invoke-static {v0, v1}, Lcom/urbanairship/iap/DownloadManager;->access$200(Lcom/urbanairship/iap/DownloadManager;Lcom/urbanairship/iap/Product;)V

    return-void
.end method
