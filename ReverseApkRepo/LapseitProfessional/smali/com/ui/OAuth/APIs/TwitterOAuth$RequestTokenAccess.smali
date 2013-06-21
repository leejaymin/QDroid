.class Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;
.super Landroid/os/AsyncTask;
.source "TwitterOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/TwitterOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTokenAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;


# direct methods
.method private constructor <init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->this$0:Lcom/ui/OAuth/APIs/TwitterOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OAuth/APIs/TwitterOAuth;Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;-><init>(Lcom/ui/OAuth/APIs/TwitterOAuth;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v10, 0x0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/ui/OAuth/APIs/TwitterOAuth;->buildService()Lorg/scribe/oauth/OAuthService;

    move-result-object v5

    .line 133
    .local v5, service:Lorg/scribe/oauth/OAuthService;
    new-instance v4, Lorg/scribe/model/Token;

    const/4 v7, 0x0

    aget-object v7, p1, v7

    const-string v8, "cbsSE2tDwXZ03aKJgMQNVdYTCnVQFJlHm2XSXBPrxz4"

    invoke-direct {v4, v7, v8}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v4, requestToken:Lorg/scribe/model/Token;
    new-instance v6, Lorg/scribe/model/Verifier;

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-direct {v6, v7}, Lorg/scribe/model/Verifier;-><init>(Ljava/lang/String;)V

    .line 135
    .local v6, v:Lorg/scribe/model/Verifier;
    invoke-interface {v5, v4, v6}, Lorg/scribe/oauth/OAuthService;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;

    move-result-object v0

    .line 137
    .local v0, accessToken:Lorg/scribe/model/Token;
    invoke-virtual {v0}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, authTokenValue:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/scribe/model/Token;->getSecret()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, authTokenSecretValue:Ljava/lang/String;
    const-string v7, "trace"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Access token: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v7, "twitterAuthToken"

    invoke-static {v7, v2}, Lcom/ui/OAuth/OAuthManager;->setTokenValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v7, "twitterAuthTokenSecret"

    invoke-static {v7, v1}, Lcom/ui/OAuth/OAuthManager;->setTokenValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 147
    .end local v0           #accessToken:Lorg/scribe/model/Token;
    .end local v1           #authTokenSecretValue:Ljava/lang/String;
    .end local v2           #authTokenValue:Ljava/lang/String;
    .end local v4           #requestToken:Lorg/scribe/model/Token;
    .end local v5           #service:Lorg/scribe/oauth/OAuthService;
    .end local v6           #v:Lorg/scribe/model/Verifier;
    :goto_0
    return-object v7

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string v7, "trace"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    check-cast v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->refreshView()V

    .line 162
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 163
    return-void

    .line 160
    :cond_1
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

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    .line 121
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Twitter API"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Retrieving access token"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 124
    iget-object v0, p0, Lcom/ui/OAuth/APIs/TwitterOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 126
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 127
    return-void
.end method
