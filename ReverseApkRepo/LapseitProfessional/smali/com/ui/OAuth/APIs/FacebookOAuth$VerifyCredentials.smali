.class Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;
.super Landroid/os/AsyncTask;
.source "FacebookOAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/APIs/FacebookOAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyCredentials"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/ui/OAuth/OAuthCallback;

.field jsonResult:Lorg/json/JSONObject;

.field progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;


# direct methods
.method private constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->this$0:Lcom/ui/OAuth/APIs/FacebookOAuth;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/OAuth/APIs/FacebookOAuth;Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;-><init>(Lcom/ui/OAuth/APIs/FacebookOAuth;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 7
    .parameter "params"

    .prologue
    .line 183
    invoke-static {}, Lcom/ui/OAuth/APIs/FacebookOAuth;->buildService()Lorg/scribe/oauth/OAuthService;

    move-result-object v4

    .line 184
    .local v4, service:Lorg/scribe/oauth/OAuthService;
    new-instance v0, Lorg/scribe/model/Token;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v0, v5, v6}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, accessToken:Lorg/scribe/model/Token;
    new-instance v2, Lorg/scribe/model/OAuthRequest;

    sget-object v5, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    const-string v6, "https://graph.facebook.com/me"

    invoke-direct {v2, v5, v6}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V

    .line 187
    .local v2, request:Lorg/scribe/model/OAuthRequest;
    invoke-interface {v4, v0, v2}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V

    .line 188
    invoke-virtual {v2}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;

    move-result-object v3

    .line 190
    .local v3, response:Lorg/scribe/model/Response;
    const/4 v5, 0x1

    aget-object v5, p1, v5

    check-cast v5, Lcom/ui/OAuth/OAuthCallback;

    iput-object v5, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->callback:Lcom/ui/OAuth/OAuthCallback;

    .line 193
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->jsonResult:Lorg/json/JSONObject;

    .line 194
    iget-object v5, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->jsonResult:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v5

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    const-string v5, "trace"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 204
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->jsonResult:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->callback:Lcom/ui/OAuth/OAuthCallback;

    iget-object v1, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->jsonResult:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ui/OAuth/OAuthCallback;->jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/ui/OAuth/OAuthManager;->oauthActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    .line 172
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Facebook API"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Verifying credentials"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 175
    iget-object v0, p0, Lcom/ui/OAuth/APIs/FacebookOAuth$VerifyCredentials;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 177
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 178
    return-void
.end method
