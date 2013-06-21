.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;
.super Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;


# instance fields
.field private _domain:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _port:I

.field private _properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private _serviceInfo:Ljavax/jmdns/ServiceInfo;

.field private _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_type:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_name:Ljava/lang/String;

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_port:I

    const-string v0, "local."

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_domain:Ljava/lang/String;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_properties:Ljava/util/Map;

    iput-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_type:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_name:Ljava/lang/String;

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_port:I

    if-nez p4, :cond_0

    const-string p4, "local."

    :cond_0
    iput-object p4, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_properties:Ljava/util/Map;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_type:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_name:Ljava/lang/String;

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_port:I

    if-nez p4, :cond_0

    const-string p4, "local."

    :cond_0
    iput-object p4, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_domain:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_properties:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_type:Ljava/lang/String;

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_name:Ljava/lang/String;

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_port:I

    const-string v0, "local."

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_properties:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    return-void
.end method


# virtual methods
.method execute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_type:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->fullyQualifiedServiceType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_name:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_port:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_properties:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v0, v1}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_PUBLISHING_SERVICE:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    goto :goto_0
.end method

.method postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    .locals 3

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->getResultCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->fullyQualifiedName(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getPublishedServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandPublishService;->_serviceInfo:Ljavax/jmdns/ServiceInfo;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getExtensionContext()Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBonjour;->onServicePublished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
