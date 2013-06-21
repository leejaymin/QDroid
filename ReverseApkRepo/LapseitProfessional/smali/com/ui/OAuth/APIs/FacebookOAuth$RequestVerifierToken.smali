.class Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;
.super Landroid/os/AsyncTask;
.source "FacebookOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/FacebookOAuth;
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

.field final synthetic this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;


# direct methods
.method private constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ui/OAuth/OAuthCallback;)Ljava/lang/Boolean;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 86
    :try_start_0
    invoke-static {}, Lcom/ui/OAuth/APIs/FacebookOAuth;->buildService()Lorg/scribe/oauth/OAuthService;

    move-result-object v1

    .line 88
    .local v1, service:Lorg/scribe/oauth/OAuthService;
    invoke-static {}, Lcom/ui/OAuth/APIs/FacebookOAuth;->access$2()Lorg/scribe/model/Token;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    .line 89
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Authorization URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->oauthCallback:Lcom/ui/OAuth/OAuthCallback;

    .line 91
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    .end local v1           #service:Lorg/scribe/oauth/OAuthService;
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ui/OAuth/OAuthCallback;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->doInBackground([Lcom/ui/OAuth/OAuthCallback;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->authUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->oauthCallback:Lcom/ui/OAuth/OAuthCallback;

    invoke-static {v0, v1}, Lcom/ui/OAuth/OAuthWebView;->show(Landroid/net/Uri;Lcom/ui/OAuth/OAuthCallback;)V

    .line 107
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 108
    return-void

    .line 105
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

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    .line 76
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Facebook API"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Retrieving request token"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 79
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestVerifierToken;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 80
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 81
    return-void
.end method
