.class public Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;
.super Ljava/lang/Object;
.source "KSClientMeta.java"


# static fields
.field private static volatile instance:Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;


# instance fields
.field private keyInit:[B

.field private ksc:Lcom/lumensoft/ks/KSClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->ksc:Lcom/lumensoft/ks/KSClient;

    .line 11
    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->keyInit:[B

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    invoke-direct {v0}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;-><init>()V

    sput-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->instance:Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)[B
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->ksc:Lcom/lumensoft/ks/KSClient;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lumensoft/ks/KSClient;->encrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_ENCRYPT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 57
    throw v0
.end method

.method public getKeyInit()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->keyInit:[B

    return-object v0
.end method

.method public getKeyInitLength()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->keyInit:[B

    array-length v0, v0

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3
    .parameter "pageName"

    .prologue
    .line 31
    new-instance v0, Lcom/lumensoft/ks/KSClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/signCert.der"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/KSClient;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->ksc:Lcom/lumensoft/ks/KSClient;

    .line 32
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->ksc:Lcom/lumensoft/ks/KSClient;

    invoke-virtual {v0}, Lcom/lumensoft/ks/KSClient;->keyInit()[B

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->keyInit:[B

    .line 33
    return-void
.end method

.method public keyFinalValidity([B)I
    .locals 3
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->ksc:Lcom/lumensoft/ks/KSClient;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/lumensoft/ks/KSClient;->keyFinalValidity([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;

    move-result-object v1

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEYINAL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/info/SocketError;->setResultCode(Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;)V

    .line 48
    throw v0
.end method
