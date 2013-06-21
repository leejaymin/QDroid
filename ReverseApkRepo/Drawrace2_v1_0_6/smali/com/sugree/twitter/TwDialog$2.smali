.class Lcom/sugree/twitter/TwDialog$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/twitter/TwDialog;->retrieveAccessToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/TwDialog;

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    iput-object p2, p0, Lcom/sugree/twitter/TwDialog$2;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$200(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v2}, Lcom/sugree/twitter/TwDialog;->access$100(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v2

    iget-object v3, p0, Lcom/sugree/twitter/TwDialog$2;->val$pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v2}, Lcom/sugree/twitter/TwDialog;->access$100(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v2

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "secret_token"

    iget-object v2, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v2}, Lcom/sugree/twitter/TwDialog;->access$100(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v2

    invoke-virtual {v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sugree/twitter/Twitter$DialogListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$600(Lcom/sugree/twitter/TwDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sugree/twitter/TwDialog$2$1;

    invoke-direct {v1, p0}, Lcom/sugree/twitter/TwDialog$2$1;-><init>(Lcom/sugree/twitter/TwDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v5}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/TwitterError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthNotAuthorizedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sugree/twitter/TwitterError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onTwitterError(Lcom/sugree/twitter/TwitterError;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/TwitterError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sugree/twitter/TwitterError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onTwitterError(Lcom/sugree/twitter/TwitterError;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$2;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v5}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0
.end method
