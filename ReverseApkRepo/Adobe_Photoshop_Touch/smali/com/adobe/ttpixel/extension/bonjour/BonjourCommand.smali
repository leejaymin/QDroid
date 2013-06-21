.class public Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    }
.end annotation


# static fields
.field public static final LOCAL_DOMAIN:Ljava/lang/String; = "local."


# instance fields
.field private _resultCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->UNDEFINED:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->_resultCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    return-void
.end method

.method public static fullyQualifiedName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->fullyQualifiedServiceType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullyQualifiedName(Ljavax/jmdns/ServiceInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fullyQualifiedServiceType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method execute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;->OK:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;

    return-object v0
.end method

.method public declared-synchronized getResultCode()Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->_resultCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method postExecute(Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;)V
    .locals 0

    return-void
.end method

.method declared-synchronized setResultCode(Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand;->_resultCode:Lcom/adobe/ttpixel/extension/bonjour/BonjourCommand$ResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
