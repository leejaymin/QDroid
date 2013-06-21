.class Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;
.super Landroid/os/AsyncTask;
.source "FacebookOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/FacebookOAuth;
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

.field final synthetic this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;


# direct methods
.method private constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 130
    :try_start_0
    invoke-static {}, Lcom/ui/OAuth/APIs/FacebookOAuth;->buildService()Lorg/scribe/oauth/OAuthService;

    move-result-object v3

    .line 131
    .local v3, service:Lorg/scribe/oauth/OAuthService;
    new-instance v4, Lorg/scribe/model/Verifier;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v4, v5}, Lorg/scribe/model/Verifier;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, v:Lorg/scribe/model/Verifier;
    invoke-static {}, Lcom/ui/OAuth/APIs/FacebookOAuth;->access$2()Lorg/scribe/model/Token;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/scribe/oauth/OAuthService;->getAccessToken(Lorg/scribe/model/Token;Lorg/scribe/model/Verifier;)Lorg/scribe/model/Token;

    move-result-object v0

    .line 134
    .local v0, accessToken:Lorg/scribe/model/Token;
    invoke-virtual {v0}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, authTokenValue:Ljava/lang/String;
    const-string v5, "trace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Access token: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v5, "facebookAccessToken"

    invoke-static {v5, v1}, Lcom/ui/OAuth/OAuthManager;->setTokenValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 142
    .end local v0           #accessToken:Lorg/scribe/model/Token;
    .end local v1           #authTokenValue:Ljava/lang/String;
    .end local v3           #service:Lorg/scribe/oauth/OAuthService;
    .end local v4           #v:Lorg/scribe/model/Verifier;
    :goto_0
    return-object v5

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v5, "trace"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    check-cast v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->refreshView()V

    .line 157
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 158
    return-void

    .line 155
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

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    .line 119
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Facebook API"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Retrieving access token"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 122
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$RequestTokenAccess;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 124
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 125
    return-void
.end method
