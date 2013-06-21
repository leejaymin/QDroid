.class public Lcom/superdroid/rpc/config/AppEngineRpcConfig;
.super Lcom/superdroid/rpc/config/Config;
.source "AppEngineRpcConfig.java"


# instance fields
.field protected _baseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/superdroid/rpc/config/Config;-><init>()V

    .line 7
    const-string v0, "http://pwzcheckupdate.appspot.com/"

    iput-object v0, p0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;->_baseUrl:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;->_baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/superdroid/rpc/config/AppEngineRpcConfig;->_baseUrl:Ljava/lang/String;

    .line 17
    return-void
.end method
