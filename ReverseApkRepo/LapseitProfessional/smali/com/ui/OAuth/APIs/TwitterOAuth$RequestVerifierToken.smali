.class Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;
.super Landroid/os/AsyncTask;
.source "TwitterOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/TwitterOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestVerifierToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ui/OAuth/OAuthCallback;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private authUrl:Ljava/lang/String;

.field private oauthCallback:Lcom/ui/OAuth/OAuthCallback;

.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;


# direct methods
.method private constructor <init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OAuth/APIs/TwitterOAuth;Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ui/OAuth/OAuthCallback;)Ljava/lang/Boolean;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/ui/OAuth/APIs/TwitterOAuth;->buildService()Lorg/scribe/oauth/OAuthService;

    move-result-object v2

    .line 89
    .local v2, service:Lorg/scribe/oauth/OAuthService;
    invoke-interface {v2}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;

    move-result-object v1

    .line 90
    .local v1, requestToken:Lorg/scribe/model/Token;
    invoke-interface {v2, v1}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    .line 91
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authorization URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x0

    aget-object v3, p1, v3

    iput-object v3, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->oauthCallback:Lcom/ui/OAuth/OAuthCallback;

    .line 93
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 97
    .end local v1           #requestToken:Lorg/scribe/model/Token;
    .end local v2           #service:Lorg/scribe/oauth/OAuthService;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    const-string v3, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ui/OAuth/OAuthCallback;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->doInBackground([Lcom/ui/OAuth/OAuthCallback;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->oauthCallback:Lcom/ui/OAuth/OAuthCallback;

    invoke-static {v0, v1}, Lcom/ui/OAuth/OAuthWebView;->show(Landroid/net/Uri;Lcom/ui/OAuth/OAuthCallback;)V

    .line 109
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 107
    :cond_0
    const-string v0, "Network error"

    const-string v1, "There was an error contacting the server"

    invoke-static {v0, v1}, Lcom/ui/OAuth/OAuthManager;->buildErrorAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    .line 77
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Twitter API"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Retrieving request token"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 80
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 82
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 83
    return-void
.end method
