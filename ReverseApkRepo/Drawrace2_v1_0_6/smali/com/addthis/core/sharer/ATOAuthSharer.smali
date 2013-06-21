.class public abstract Lcom/addthis/core/sharer/ATOAuthSharer;
.super Lcom/addthis/core/sharer/ATSharer;
.source "ATOAuthSharer.java"

# interfaces
.implements Lcom/addthis/ui/views/ATOAuthDialogListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ATOAuthsharer"


# instance fields
.field protected ACCESS_TOKEN:Ljava/lang/String;

.field protected ACCESS_TOKEN_SECRET:Ljava/lang/String;

.field private mAccessTokenURL:Ljava/lang/String;

.field private mAuthURL:Ljava/lang/String;

.field private mCallBackUrl:Ljava/lang/String;

.field protected mConsumer:Loauth/signpost/OAuthConsumer;

.field private mConsumerKey:Ljava/lang/String;

.field private mConsumerSecret:Ljava/lang/String;

.field protected mProvider:Loauth/signpost/OAuthProvider;

.field private mRequestTokenAuthUrl:Ljava/lang/String;

.field private mRequestURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->isOExchange:Z

    .line 61
    return-void
.end method


# virtual methods
.method protected abstract didCancelAuth()V
.end method

.method protected abstract didCompleteAuth(Landroid/os/Bundle;)V
.end method

.method protected getAccessTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAuthURL:Ljava/lang/String;

    return-object v0
.end method

.method protected getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mCallBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method protected getRequestTokenAuthUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, authUrl:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v3, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v4, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mCallBackUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v1           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthNotAuthorizedException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v1           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_0

    .line 104
    .end local v1           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_3
    move-exception v1

    .line 106
    .local v1, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v1}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestURL:Ljava/lang/String;

    return-object v0
.end method

.method protected initializeOAuth()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mCallBackUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Lcom/addthis/error/ATSharerException;

    .line 75
    const-string v1, "OAuth keys/parameters are not present. Make sure to give the appropriate values at com.addthis.core.Config"

    .line 74
    invoke-direct {v0, v1}, Lcom/addthis/error/ATSharerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 77
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAccessTokenURL:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAuthURL:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mProvider:Loauth/signpost/OAuthProvider;

    .line 80
    return-void
.end method

.method protected abstract login()V
.end method

.method protected abstract logout()V
.end method

.method public onAuthViewCancel()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "ATOAuthsharer"

    const-string v1, "Reached listener on cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATOAuthSharer;->didCancelAuth()V

    .line 114
    return-void
.end method

.method public onAuthViewComplete(Landroid/os/Bundle;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 117
    const-string v0, "ATOAuthsharer"

    const-string v1, "Reached listener on complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0, p1}, Lcom/addthis/core/sharer/ATOAuthSharer;->didCompleteAuth(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method protected setAccessTokenUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "accessTokenUrl"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAccessTokenURL:Ljava/lang/String;

    .line 131
    return-void
.end method

.method protected setAuthUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "authUrl"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mAuthURL:Ljava/lang/String;

    .line 139
    return-void
.end method

.method protected setCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "callbackUrl"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mCallBackUrl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerKey:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mConsumerSecret:Ljava/lang/String;

    .line 156
    return-void
.end method

.method protected setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "requestUrl"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestURL:Ljava/lang/String;

    .line 123
    return-void
.end method

.method protected startAuthentication()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATOAuthSharer;->getRequestTokenAuthUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestTokenAuthUrl:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestTokenAuthUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "string"

    const-string v2, "an_error_occured"

    invoke-static {v0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATOAuthSharer;->didCompleteShare(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v1, Lcom/addthis/ui/views/ATOAuthDialog;

    iget-object v0, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mRequestTokenAuthUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/addthis/core/sharer/ATOAuthSharer;->mService:Lcom/addthis/models/ATService;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/addthis/ui/views/ATOAuthDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/addthis/models/ATService;Lcom/addthis/ui/views/ATOAuthDialogListener;)V

    .line 88
    invoke-virtual {v1}, Lcom/addthis/ui/views/ATOAuthDialog;->show()V

    goto :goto_0
.end method
