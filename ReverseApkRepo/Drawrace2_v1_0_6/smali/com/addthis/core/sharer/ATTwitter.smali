.class public Lcom/addthis/core/sharer/ATTwitter;
.super Lcom/addthis/core/sharer/ATOAuthSharer;
.source "ATTwitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;,
        Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_URL:Ljava/lang/String; = "http://twitter.com/oauth/access_token"

.field private static final AUTH_URL:Ljava/lang/String; = "http://twitter.com/oauth/authorize?force_login=true"

.field private static final PARAM_OAUTH_VERIFIER:Ljava/lang/String; = "oauth_verifier"

.field private static final REQUEST_URL:Ljava/lang/String; = "http://twitter.com/oauth/request_token"

.field private static final TAG:Ljava/lang/String; = "ATTwitter"

.field private static final TWITPIC_UPLOAD_URL:Ljava/lang/String; = "http://api.twitpic.com/2/upload.json"

.field private static final TWITTER_ACCOUNT_VERIFY:Ljava/lang/String; = "https://api.twitter.com/1/account/verify_credentials.json"

.field private static final TWITTER_PREF:Ljava/lang/String; = "attwitter_pref"

.field private static final TWITTER_PREF_ACCESS_SECRET:Ljava/lang/String; = "attwitter_access_token_secret"

.field private static final TWITTER_PREF_ACCESS_TOKEN:Ljava/lang/String; = "attwitter_access_token"

.field private static final TWITTER_STATUSUPDATE_URL:Ljava/lang/String; = "http://twitter.com/statuses/update.xml"


# direct methods
.method public constructor <init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V
    .locals 1
    .parameter "service"
    .parameter "item"
    .parameter "shareActivity"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/addthis/core/sharer/ATOAuthSharer;-><init>(Lcom/addthis/models/ATService;Lcom/addthis/models/ATShareItem;Lcom/addthis/ui/activities/ATShareActivity;)V

    .line 77
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setConsumerKey(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getTwitterConsumerSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setConsumerSecret(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getTwitterCallbackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setCallbackUrl(Ljava/lang/String;)V

    .line 81
    const-string v0, "http://twitter.com/oauth/request_token"

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setRequestUrl(Ljava/lang/String;)V

    .line 82
    const-string v0, "http://twitter.com/oauth/access_token"

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setAccessTokenUrl(Ljava/lang/String;)V

    .line 83
    const-string v0, "http://twitter.com/oauth/authorize?force_login=true"

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->setAuthUrl(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private isAuthenticated()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LGv5u6rSHT5apS5pQZFDw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v3, "Please change the Twitter api key with your own key in Config.java"

    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/addthis/utils/ATUtil;->showNotificationToast(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addthis/ui/activities/ATShareActivity;

    .line 113
    const-string v3, "attwitter_pref"

    .line 112
    invoke-virtual {v1, v3, v2}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "attwitter_access_token"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    .line 115
    const-string v1, "attwitter_access_token_secret"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    .line 119
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected didCancelAuth()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method protected didCompleteAuth(Landroid/os/Bundle;)V
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 125
    const-string v4, "oauth_verifier"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, oauthVerifier:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->mProvider:Loauth/signpost/OAuthProvider;

    iget-object v5, p0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4, v5, v2}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    .line 129
    iget-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addthis/ui/activities/ATShareActivity;

    .line 133
    const-string v5, "attwitter_pref"

    const/4 v6, 0x0

    .line 132
    invoke-virtual {v4, v5, v6}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 134
    .local v3, settings:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 135
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "attwitter_access_token"

    iget-object v5, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v4, "attwitter_access_token_secret"

    iget-object v5, p0, Lcom/addthis/core/sharer/ATTwitter;->ACCESS_TOKEN_SECRET:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    iget-object v4, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v4}, Lcom/addthis/ui/activities/ATShareActivity;->showShareView()V
    :try_end_0
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 155
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 144
    invoke-virtual {p0, v7}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthNotAuthorizedException;->printStackTrace()V

    .line 147
    invoke-virtual {p0, v7}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    .line 150
    invoke-virtual {p0, v7}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_3
    move-exception v0

    .line 152
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    .line 153
    invoke-virtual {p0, v7}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected login()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATTwitter;->startAuthentication()V

    .line 165
    return-void
.end method

.method protected logout()V
    .locals 5

    .prologue
    .line 169
    iget-object v2, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/addthis/ui/activities/ATShareActivity;

    .line 170
    const-string v3, "attwitter_pref"

    const/4 v4, 0x0

    .line 169
    invoke-virtual {v2, v3, v4}, Lcom/addthis/ui/activities/ATShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "attwitter_access_token"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v2, "attwitter_access_token_secret"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public logoutSharer()V
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATTwitter;->logout()V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/addthis/core/sharer/ATTwitter;->didCompleteShare(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public share()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/addthis/error/ATSharerException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATTwitter;->initializeOAuth()V

    .line 91
    invoke-direct {p0}, Lcom/addthis/core/sharer/ATTwitter;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "ATTwitter"

    const-string v1, "Already authenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/addthis/core/sharer/ATTwitter;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addthis/ui/activities/ATShareActivity;

    invoke-virtual {v0}, Lcom/addthis/ui/activities/ATShareActivity;->showShareView()V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v0, "ATTwitter"

    const-string v1, "Not authenticated, initiating auth..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/addthis/core/sharer/ATTwitter;->login()V

    goto :goto_0
.end method

.method public shareMessage(Landroid/os/Bundle;)V
    .locals 4
    .parameter "messageValues"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 357
    const-string v1, "sharetitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/addthis/core/sharer/ATTwitter;->mItem:Lcom/addthis/models/ATShareItem;

    invoke-virtual {v1}, Lcom/addthis/models/ATShareItem;->doesContainBitmapImage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;

    invoke-direct {v1, p0}, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;-><init>(Lcom/addthis/core/sharer/ATTwitter;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/addthis/core/sharer/ATTwitter$ATImageSendingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v1, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;

    invoke-direct {v1, p0}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;-><init>(Lcom/addthis/core/sharer/ATTwitter;)V

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/addthis/core/sharer/ATTwitter$ATMessageSendingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
