.class Lcom/sugree/twitter/TwDialog$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sugree/twitter/TwDialog;->retrieveRequestToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sugree/twitter/TwDialog;


# direct methods
.method constructor <init>(Lcom/sugree/twitter/TwDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$200(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;
    invoke-static {v2}, Lcom/sugree/twitter/TwDialog;->access$100(Lcom/sugree/twitter/TwDialog;)Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    move-result-object v2

    const-string v3, "oob"

    invoke-virtual {v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sugree/twitter/TwDialog;->mUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sugree/twitter/TwDialog;->access$002(Lcom/sugree/twitter/TwDialog;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/sugree/twitter/TwDialog;->access$300(Lcom/sugree/twitter/TwDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$000(Lcom/sugree/twitter/TwDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthNotAuthorizedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/sugree/twitter/TwDialog$1;->this$0:Lcom/sugree/twitter/TwDialog;

    #getter for: Lcom/sugree/twitter/TwDialog;->mListener:Lcom/sugree/twitter/Twitter$DialogListener;
    invoke-static {v1}, Lcom/sugree/twitter/TwDialog;->access$400(Lcom/sugree/twitter/TwDialog;)Lcom/sugree/twitter/Twitter$DialogListener;

    move-result-object v1

    new-instance v2, Lcom/sugree/twitter/DialogError;

    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    invoke-direct {v2, v0, v4, v3}, Lcom/sugree/twitter/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/sugree/twitter/Twitter$DialogListener;->onError(Lcom/sugree/twitter/DialogError;)V

    goto :goto_0
.end method
