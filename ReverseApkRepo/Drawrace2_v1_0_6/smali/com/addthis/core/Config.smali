.class public Lcom/addthis/core/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static mSingletonInstance:Lcom/addthis/core/Config;


# instance fields
.field private mActionBarFont:Ljava/lang/String;

.field private mAddRemoveFavServices:Ljava/lang/Boolean;

.field private mAddThisAppId:Ljava/lang/String;

.field private mAddThisPubId:Ljava/lang/String;

.field private mAddThisUsername:Ljava/lang/String;

.field private mAutoUpdateInterval:J

.field private mFacebookAppId:Ljava/lang/String;

.field private mInfoViewFont:Ljava/lang/String;

.field private mListViewFont:Ljava/lang/String;

.field private mShouldAutoUpdate:Ljava/lang/Boolean;

.field private mShouldShowMoreServices:Ljava/lang/Boolean;

.field private mShouldUseFacebookConnect:Z

.field private mShouldUseTwitterOAuth:Z

.field private mTwitPicApiKey:Ljava/lang/String;

.field private mTwitterCallbackUrl:Ljava/lang/String;

.field private mTwitterConsumerKey:Ljava/lang/String;

.field private mTwitterConsumerSecret:Ljava/lang/String;

.field private mTwitterViaText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/Config;->mAddRemoveFavServices:Ljava/lang/Boolean;

    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/Config;->mShouldAutoUpdate:Ljava/lang/Boolean;

    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/addthis/core/Config;->mShouldShowMoreServices:Ljava/lang/Boolean;

    .line 99
    const-string v0, "DroidSans"

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setActionBarFont(Ljava/lang/String;)V

    .line 100
    const-string v0, "DroidSans"

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setActionBarFont(Ljava/lang/String;)V

    .line 101
    const-string v0, "DroidSans"

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setListViewFont(Ljava/lang/String;)V

    .line 102
    const-string v0, "addthis"

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setTwitterViaText(Ljava/lang/String;)V

    .line 103
    const-wide v0, 0x9fa52400L

    invoke-virtual {p0, v0, v1}, Lcom/addthis/core/Config;->setAutoUpdateInterval(J)V

    .line 104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setAutoUpdate(Ljava/lang/Boolean;)V

    .line 105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setAddRemoveFavServices(Ljava/lang/Boolean;)V

    .line 106
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setAddThisPubId(Ljava/lang/String;)V

    .line 107
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/addthis/core/Config;->setAddThisAppId(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static declared-synchronized configObject()Lcom/addthis/core/Config;
    .locals 2

    .prologue
    .line 112
    const-class v1, Lcom/addthis/core/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/addthis/core/Config;->mSingletonInstance:Lcom/addthis/core/Config;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/addthis/core/Config;

    invoke-direct {v0}, Lcom/addthis/core/Config;-><init>()V

    sput-object v0, Lcom/addthis/core/Config;->mSingletonInstance:Lcom/addthis/core/Config;

    .line 115
    :cond_0
    sget-object v0, Lcom/addthis/core/Config;->mSingletonInstance:Lcom/addthis/core/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActionBarFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/addthis/core/Config;->mActionBarFont:Ljava/lang/String;

    return-object v0
.end method

.method public getAddRemoveFavServices()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/addthis/core/Config;->mAddRemoveFavServices:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAddThisAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/addthis/core/Config;->mAddThisAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddThisPubId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/addthis/core/Config;->mAddThisPubId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddThisUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/addthis/core/Config;->mAddThisUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoUpdateInterval()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/addthis/core/Config;->mAutoUpdateInterval:J

    return-wide v0
.end method

.method public getFacebookAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/addthis/core/Config;->mFacebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoViewFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/addthis/core/Config;->mInfoViewFont:Ljava/lang/String;

    return-object v0
.end method

.method public getListViewFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/addthis/core/Config;->mListViewFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitPicApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/addthis/core/Config;->mTwitPicApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/addthis/core/Config;->mTwitterCallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/addthis/core/Config;->mTwitterConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/addthis/core/Config;->mTwitterConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterViaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/addthis/core/Config;->mTwitterViaText:Ljava/lang/String;

    return-object v0
.end method

.method public setActionBarFont(Ljava/lang/String;)V
    .locals 0
    .parameter "mActionBarFont"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/addthis/core/Config;->mActionBarFont:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setAddRemoveFavServices(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mAddRemoveFavServices"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/addthis/core/Config;->mAddRemoveFavServices:Ljava/lang/Boolean;

    .line 263
    return-void
.end method

.method public setAddThisAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddThisAppId"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/addthis/core/Config;->mAddThisAppId:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setAddThisPubId(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddThisPubId"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/addthis/core/Config;->mAddThisPubId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setAddThisUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "mAddThisUsername"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/addthis/core/Config;->mAddThisUsername:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setAutoUpdate(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mShouldAutoUpdate"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/addthis/core/Config;->mShouldAutoUpdate:Ljava/lang/Boolean;

    .line 277
    return-void
.end method

.method public setAutoUpdateInterval(J)V
    .locals 0
    .parameter "mAutoUpdateInterval"

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/addthis/core/Config;->mAutoUpdateInterval:J

    .line 305
    return-void
.end method

.method public setFacebookAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "mFacebookAppId"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/addthis/core/Config;->mFacebookAppId:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setInfoViewFont(Ljava/lang/String;)V
    .locals 0
    .parameter "mInfoViewFont"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/addthis/core/Config;->mInfoViewFont:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setListViewFont(Ljava/lang/String;)V
    .locals 0
    .parameter "mListViewFont"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/addthis/core/Config;->mListViewFont:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setShouldShowMoreServices(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "mShouldShowMoreServices"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/addthis/core/Config;->mShouldShowMoreServices:Ljava/lang/Boolean;

    .line 291
    return-void
.end method

.method public setShouldUseFacebookConnect(Z)V
    .locals 0
    .parameter "mShouldUseFacebookConnect"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/addthis/core/Config;->mShouldUseFacebookConnect:Z

    .line 193
    return-void
.end method

.method public setShouldUseTwitterOAuth(Z)V
    .locals 0
    .parameter "mShouldUseTwitterOAuth"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/addthis/core/Config;->mShouldUseTwitterOAuth:Z

    .line 123
    return-void
.end method

.method public setTwitPicApiKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mTwitPicApiKey"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/addthis/core/Config;->mTwitPicApiKey:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTwitterCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "mTwitterCallbackUrl"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/addthis/core/Config;->mTwitterCallbackUrl:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTwitterConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "mTwitterConsumerKey"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/addthis/core/Config;->mTwitterConsumerKey:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setTwitterConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "mTwitterConsumerSecret"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/addthis/core/Config;->mTwitterConsumerSecret:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTwitterViaText(Ljava/lang/String;)V
    .locals 0
    .parameter "twitterViaText"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/addthis/core/Config;->mTwitterViaText:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public shouldAutoUpdate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/addthis/core/Config;->mShouldAutoUpdate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public shouldShowMoreServices()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/addthis/core/Config;->mShouldShowMoreServices:Ljava/lang/Boolean;

    return-object v0
.end method

.method public shouldUseFacebookConnect()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/addthis/core/Config;->mShouldUseFacebookConnect:Z

    return v0
.end method

.method public shouldUseTwitterOAuth()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/addthis/core/Config;->mShouldUseTwitterOAuth:Z

    return v0
.end method
