.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;
.super Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;


# instance fields
.field private _qualifiedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;->_qualifiedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method execute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getPublishedServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;->_qualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->SERVICE_NOT_FOUND:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/jmdns/JmDNS;->unregisterService(Ljavax/jmdns/ServiceInfo;)V

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    goto :goto_0
.end method

.method postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;->getResultCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getPublishedServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;->_qualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getExtensionContext()Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandUnpublishService;->_qualifiedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onServiceUnpublished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
