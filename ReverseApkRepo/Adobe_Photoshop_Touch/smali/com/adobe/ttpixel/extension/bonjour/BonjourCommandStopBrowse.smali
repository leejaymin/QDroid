.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;
.super Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;


# instance fields
.field private _domain:Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_type:Ljava/lang/String;

    const-string v0, "local."

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;-><init>()V

    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_type:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "local."

    :cond_0
    iput-object p2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method execute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->_domain:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommandStopBrowse;->fullyQualifiedServiceType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavax/jmdns/JmDNS;->removeServiceListener(Ljava/lang/String;Ljavax/jmdns/ServiceListener;)V

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->ERROR_STOP_BROWSING:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    goto :goto_0
.end method
