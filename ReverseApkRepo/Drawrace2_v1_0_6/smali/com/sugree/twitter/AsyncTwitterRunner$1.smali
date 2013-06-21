.class Lcom/sugree/twitter/AsyncTwitterRunner$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/twitter/AsyncTwitterRunner;->logout(Landroid/content/Context;Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/AsyncTwitterRunner;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;


# direct methods
.method constructor <init>(Lcom/sugree/twitter/AsyncTwitterRunner;Landroid/content/Context;Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->this$0:Lcom/sugree/twitter/AsyncTwitterRunner;

    iput-object p2, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->this$0:Lcom/sugree/twitter/AsyncTwitterRunner;

    iget-object v0, v0, Lcom/sugree/twitter/AsyncTwitterRunner;->tw:Lcom/sugree/twitter/Twitter;

    iget-object v1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sugree/twitter/Twitter;->logout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    new-instance v1, Lcom/sugree/twitter/TwitterError;

    const-string v2, "auth.expireSession failed"

    invoke-direct {v1, v2}, Lcom/sugree/twitter/TwitterError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;->onTwitterError(Lcom/sugree/twitter/TwitterError;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    invoke-interface {v1, v0}, Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    invoke-interface {v1, v0}, Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    invoke-interface {v1, v0}, Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/AsyncTwitterRunner$1;->val$listener:Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;

    invoke-interface {v1, v0}, Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
