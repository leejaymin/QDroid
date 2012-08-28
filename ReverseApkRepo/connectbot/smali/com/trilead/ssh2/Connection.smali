.class public Lcom/trilead/ssh2/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# instance fields
.field private am:Lcom/trilead/ssh2/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private compression:Z

.field private connectionMonitors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/trilead/ssh2/ConnectionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

.field private dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

.field private generator:Ljava/security/SecureRandom;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field private proxyData:Lcom/trilead/ssh2/ProxyData;

.field private tcpNoDelay:Z

.field private tm:Lcom/trilead/ssh2/transport/TransportManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 92
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->compression:Z

    .line 95
    new-instance v0, Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/CryptoWishList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 97
    new-instance v0, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    .line 105
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 136
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/trilead/ssh2/Connection;->port:I

    .line 138
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/Connection;)Lcom/trilead/ssh2/transport/TransportManager;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    return-object v0
.end method

.method private close(Ljava/lang/Throwable;Z)V
    .locals 4
    .parameter "t"
    .parameter "hard"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 606
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeAllChannels()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 611
    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 612
    iput-object v3, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 614
    :cond_1
    iput-object v3, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 615
    iput-object v3, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 616
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 617
    return-void

    .line 611
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1198
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V
    .locals 2
    .parameter "cmon"

    .prologue
    .line 569
    monitor-enter p0

    if-nez p1, :cond_0

    .line 570
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmon argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 1
    .parameter "user"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/trilead/ssh2/Connection;->authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authenticateWithKeyboardInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z
    .locals 2
    .parameter "user"
    .parameter "submethods"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    if-nez p3, :cond_0

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not ne NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 257
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 264
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 266
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 267
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 269
    :cond_4
    if-nez p1, :cond_5

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 274
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithNone(Ljava/lang/String;)Z
    .locals 2
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 359
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 363
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 368
    :cond_3
    if-nez p1, :cond_4

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateNone(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 376
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 312
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 317
    :cond_3
    if-nez p1, :cond_4

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_4
    if-nez p2, :cond_5

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 325
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "user"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 486
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 488
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 489
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 491
    :cond_3
    if-nez p1, :cond_4

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_4
    if-nez p2, :cond_5

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;Ljava/lang/Object;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 499
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized cancelRemotePortForwarding(I)V
    .locals 2
    .parameter "bindPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1526
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1529
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1530
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Closed due to user request."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-void

    .line 600
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2
    .parameter "verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 17
    .parameter "verifier"
    .parameter "connectTimeout"
    .parameter "kexTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v1, :cond_0

    .line 739
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Connection to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already in connected state!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 741
    :cond_0
    if-gez p2, :cond_1

    .line 742
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "connectTimeout must be non-negative!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_1
    if-gez p3, :cond_2

    .line 745
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "kexTimeout must be non-negative!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 747
    :cond_2
    new-instance v11, Lcom/trilead/ssh2/Connection$1TimeoutState;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/trilead/ssh2/Connection$1TimeoutState;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 749
    .local v11, state:Lcom/trilead/ssh2/Connection$1TimeoutState;
    new-instance v1, Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/trilead/ssh2/Connection;->port:I

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 754
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/trilead/ssh2/Connection;->compression:Z

    if-nez v1, :cond_3

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "none"

    aput-object v4, v2, v3

    iput-object v2, v1, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_comp_algos:[Ljava/lang/String;

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "none"

    aput-object v4, v2, v3

    iput-object v2, v1, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_comp_algos:[Ljava/lang/String;

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    monitor-enter v1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    const/16 v16, 0x0

    .line 781
    .local v16, token:Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    if-lez p3, :cond_4

    .line 783
    :try_start_2
    new-instance v13, Lcom/trilead/ssh2/Connection$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/trilead/ssh2/Connection$1;-><init>(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V

    .line 797
    .local v13, timeoutHandler:Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move/from16 v0, p3

    int-to-long v3, v0

    add-long v14, v1, v3

    .line 799
    .local v14, timeoutHorizont:J
    invoke-static {v14, v15, v13}, Lcom/trilead/ssh2/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v16

    .line 804
    .end local v13           #timeoutHandler:Ljava/lang/Runnable;
    .end local v14           #timeoutHorizont:J
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 812
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v8

    .line 820
    .local v8, ci:Lcom/trilead/ssh2/ConnectionInfo;
    if-eqz v16, :cond_6

    .line 822
    invoke-static/range {v16 .. v16}, Lcom/trilead/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 826
    monitor-enter v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 828
    :try_start_5
    iget-boolean v1, v11, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v1, :cond_5

    .line 829
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This exception will be replaced by the one below =)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 841
    .end local v8           #ci:Lcom/trilead/ssh2/ConnectionInfo;
    :catch_0
    move-exception v12

    .line 843
    .local v12, ste:Ljava/net/SocketTimeoutException;
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 806
    .end local v12           #ste:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v10

    .line 808
    .local v10, se:Ljava/net/SocketTimeoutException;
    :try_start_8
    new-instance v1, Ljava/net/SocketTimeoutException;

    .line 809
    const-string v2, "The connect() operation on the socket timed out."

    .line 808
    invoke-direct {v1, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1, v10}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 808
    check-cast v1, Ljava/net/SocketTimeoutException;

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 845
    .end local v10           #se:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v9

    .line 848
    .local v9, e1:Ljava/io/IOException;
    :try_start_9
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "There was a problem during connect."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 850
    monitor-enter v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 856
    :try_start_a
    iget-boolean v1, v11, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v1, :cond_7

    .line 857
    new-instance v1, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The kexTimeout ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms) expired."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :catchall_2
    move-exception v1

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 835
    .end local v9           #e1:Ljava/io/IOException;
    .restart local v8       #ci:Lcom/trilead/ssh2/ConnectionInfo;
    :cond_5
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, v11, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 826
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 839
    :cond_6
    monitor-exit p0

    return-object v8

    .line 850
    .end local v8           #ci:Lcom/trilead/ssh2/ConnectionInfo;
    .restart local v9       #e1:Ljava/io/IOException;
    :cond_7
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 861
    :try_start_e
    instance-of v1, v9, Lcom/trilead/ssh2/HTTPProxyException;

    if-eqz v1, :cond_8

    .line 862
    throw v9

    .line 864
    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was a problem while connecting to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/trilead/ssh2/Connection;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v1, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 864
    check-cast v1, Ljava/io/IOException;

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method public declared-synchronized createDynamicPortForwarder(Ljava/net/InetSocketAddress;)Lcom/trilead/ssh2/DynamicPortForwarder;
    .locals 2
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1002
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1003
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/DynamicPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1}, Lcom/trilead/ssh2/DynamicPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createLocalPortForwarder(Ljava/net/InetSocketAddress;Ljava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2
    .parameter "addr"
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 926
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 927
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1117
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument may not be NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1119
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_1

    .line 1120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 1123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 1126
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 1128
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 1129
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 1131
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getRemainingMethods(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized isAuthMethodAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "user"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1182
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "method argument may not be NULL!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1184
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, methods:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    .line 1192
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    .line 1188
    :cond_1
    :try_start_2
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1189
    const/4 v2, 0x1

    goto :goto_1

    .line 1186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openSession()Lcom/trilead/ssh2/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1216
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/Session;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Session;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized requestRemotePortForwarding(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "bindAddress"
    .parameter "bindPort"
    .parameter "targetAddress"
    .parameter "targetPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1502
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1503
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-lez p2, :cond_2

    if-gtz p4, :cond_3

    .line 1506
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setCompression(Z)V
    .locals 3
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in connected state!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->compression:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    monitor-exit p0

    return-void
.end method
