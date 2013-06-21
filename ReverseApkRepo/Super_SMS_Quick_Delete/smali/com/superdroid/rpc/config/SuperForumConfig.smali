.class public Lcom/superdroid/rpc/config/SuperForumConfig;
.super Lcom/superdroid/rpc/config/Config;
.source "SuperForumConfig.java"


# instance fields
.field protected _baseUrl:Ljava/lang/String;

.field protected _password:Ljava/lang/String;

.field protected _userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/superdroid/rpc/config/Config;-><init>()V

    .line 7
    const-string v0, "http://pwzforum.appspot.com/"

    iput-object v0, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_baseUrl:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_userID:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_baseUrl:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_password:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/superdroid/rpc/config/SuperForumConfig;->_userID:Ljava/lang/String;

    .line 40
    return-void
.end method
