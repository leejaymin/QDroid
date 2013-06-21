.class public abstract Lcom/kaf/IKafManager;
.super Ljava/lang/Object;
.source "IKafManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kaf/IKafManager;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public Initialize(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "copyright"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public checkInit(I)V
    .locals 0
    .parameter "apiLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppManager(Landroid/content/Context;)Lcom/kaf/app/IAppManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/kaf/app/IAppManager$ServiceConnectionListener;)Lcom/kaf/app/IAppManager;
    .locals 1
    .parameter "context"
    .parameter "obj"
    .parameter "func"
    .parameter "listener"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBcmSocket()Lcom/kaf/net/IBcmSocket;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBcmSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;CZ)Lcom/kaf/net/IBcmSocket;
    .locals 1
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "appid"
    .parameter "billKind"
    .parameter "connectKind"
    .parameter "isTestMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateRepositoryManager(Landroid/content/Context;)Lcom/kaf/contentsbox/ICertificateRepositoryManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateRepositoryManager(Landroid/content/Context;Lcom/kaf/contentsbox/ICertificateRepositoryManager$ServiceConnectionListener;)Lcom/kaf/contentsbox/ICertificateRepositoryManager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentsBoxManager(Landroid/content/Context;)Lcom/kaf/contentsbox/IContentsBoxManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentsBoxManager(Landroid/content/Context;Lcom/kaf/contentsbox/IContentsBoxManager$ServiceConnectionListener;)Lcom/kaf/contentsbox/IContentsBoxManager;
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebug()Lcom/kaf/log/IDebug;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceControl()Lcom/kaf/device/IDeviceControl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayManager()Lcom/kaf/display/IDisplayManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaManager()Lcom/kaf/media/IMediaManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetwork()Lcom/kaf/net/INetwork;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInstance()Lcom/kaf/net/INetwork;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageManager(Landroid/content/Context;)Lcom/kaf/app/IPackageManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty()Lcom/kaf/sys/IProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSound()Lcom/kaf/sound/ISound;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method
