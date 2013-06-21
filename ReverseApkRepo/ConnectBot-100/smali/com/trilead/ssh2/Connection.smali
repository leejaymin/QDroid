.class public Lcom/trilead/ssh2/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field public static final identification:Ljava/lang/String; = "TrileadSSH2Java_213"


# instance fields
.field private am:Lcom/trilead/ssh2/auth/AuthenticationManager;

.field private authenticated:Z

.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "hostname"

    .prologue
    .line 121
    const/16 v0, 0x16

    invoke-direct {p0, p1, v0}, Lcom/trilead/ssh2/Connection;-><init>(Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 94
    new-instance v0, Lcom/trilead/ssh2/crypto/CryptoWishList;

    invoke-direct {v0}, Lcom/trilead/ssh2/crypto/CryptoWishList;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    .line 96
    new-instance v0, Lcom/trilead/ssh2/DHGexParameters;

    invoke-direct {v0}, Lcom/trilead/ssh2/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    .line 104
    iput-boolean v1, p0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    .line 108
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    .line 135
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    .line 136
    iput p2, p0, Lcom/trilead/ssh2/Connection;->port:I

    .line 137
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/Connection;)Lcom/trilead/ssh2/transport/TransportManager;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    return-object v0
.end method

.method private close(Ljava/lang/Throwable;Z)V
    .locals 4
    .parameter "t"
    .parameter "hard"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->closeAllChannels()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz p2, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/trilead/ssh2/transport/TransportManager;->close(Ljava/lang/Throwable;Z)V

    .line 545
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 547
    :cond_1
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 548
    iput-object v2, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 549
    iput-boolean v3, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 550
    return-void

    .line 544
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getAvailableCiphers()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->getDefaultCipherList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableMACs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/crypto/digest/MAC;->getMacList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getAvailableServerHostKeyAlgorithms()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-class v0, Lcom/trilead/ssh2/Connection;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/trilead/ssh2/transport/KexManager;->getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final getOrCreateSecureRND()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 1073
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "list"

    .prologue
    const/4 v10, 0x0

    .line 1149
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    :cond_0
    move-object v8, p1

    .line 1183
    :goto_0
    return-object v8

    .line 1152
    :cond_1
    array-length v8, p1

    new-array v6, v8, [Ljava/lang/String;

    .line 1154
    .local v6, list2:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1156
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, p1

    if-lt v4, v8, :cond_2

    .line 1177
    array-length v8, v6

    if-ne v0, v8, :cond_8

    move-object v8, v6

    .line 1178
    goto :goto_0

    .line 1158
    :cond_2
    const/4 v2, 0x0

    .line 1160
    .local v2, duplicate:Z
    aget-object v3, p1, v4

    .line 1162
    .local v3, element:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v0, :cond_3

    .line 1171
    :goto_3
    if-eqz v2, :cond_7

    .line 1156
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1164
    :cond_3
    if-nez v3, :cond_4

    aget-object v8, v6, v5

    if-eqz v8, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    aget-object v8, v6, v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1166
    :cond_5
    const/4 v2, 0x1

    .line 1167
    goto :goto_3

    .line 1162
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1174
    :cond_7
    add-int/lit8 v1, v0, 0x1

    .local v1, count:I
    aget-object v8, p1, v4

    .end local v0           #count:I
    aput-object v8, v6, v0

    move v0, v1

    .restart local v0       #count:I
    goto :goto_4

    .line 1180
    .end local v2           #duplicate:Z
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #j:I
    .end local v1           #count:I
    :cond_8
    new-array v7, v0, [Ljava/lang/String;

    .line 1181
    .local v7, tmp:[Ljava/lang/String;
    invoke-static {v6, v10, v7, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v7

    .line 1183
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addConnectionMonitor(Lcom/trilead/ssh2/ConnectionMonitor;)V
    .locals 2
    .parameter "cmon"

    .prologue
    .line 516
    monitor-enter p0

    if-nez p1, :cond_0

    .line 517
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmon argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized authenticateWithDSA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "user"
    .parameter "pem"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 183
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 185
    :cond_3
    if-nez p1, :cond_4

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_4
    if-nez p2, :cond_5

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pem argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 193
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
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
    .line 213
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
    .line 253
    monitor-enter p0

    if-nez p3, :cond_0

    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not ne NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 263
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 266
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 268
    :cond_4
    if-nez p1, :cond_5

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateInteractive(Ljava/lang/String;[Ljava/lang/String;Lcom/trilead/ssh2/InteractiveCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 273
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
    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 362
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 365
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 367
    :cond_3
    if-nez p1, :cond_4

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticateNone(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 375
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
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 311
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 314
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 316
    :cond_3
    if-nez p1, :cond_4

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_4
    if-nez p2, :cond_5

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0, p1, p2}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 324
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .parameter "user"
    .parameter "pemFile"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    monitor-enter p0

    if-nez p2, :cond_0

    .line 478
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "pemFile argument is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 480
    :cond_0
    const/16 v4, 0x100

    :try_start_1
    new-array v0, v4, [C

    .line 482
    .local v0, buff:[C
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 484
    .local v1, cw:Ljava/io/CharArrayWriter;
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 488
    .local v2, fr:Ljava/io/FileReader;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 489
    .local v3, len:I
    if-gez v3, :cond_1

    .line 494
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 496
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p0, p1, v4, p3}, Lcom/trilead/ssh2/Connection;->authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 491
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized authenticateWithPublicKey(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 2
    .parameter "user"
    .parameter "pemPrivateKey"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_2

    .line 432
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_3

    .line 435
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 437
    :cond_3
    if-nez p1, :cond_4

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_4
    if-nez p2, :cond_5

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pemPrivateKey argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;->authenticatePublicKey(Ljava/lang/String;[CLjava/lang/String;Ljava/security/SecureRandom;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    .line 445
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
    .line 1401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1404
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/channel/ChannelManager;->requestCancelGlobalForward(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1408
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Closed due to user request."

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, t:Ljava/lang/Throwable;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    monitor-exit p0

    return-void

    .line 533
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized connect()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/trilead/ssh2/Connection;->connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;II)Lcom/trilead/ssh2/ConnectionInfo;
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

.method public declared-synchronized connect(Lcom/trilead/ssh2/ServerHostKeyVerifier;)Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2
    .parameter "verifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
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
    .locals 19
    .parameter "verifier"
    .parameter "connectTimeout"
    .parameter "kexTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 672
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already in connected state!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    .end local p1
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 674
    .restart local p1
    :cond_0
    if-gez p2, :cond_1

    .line 675
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "connectTimeout must be non-negative!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 677
    :cond_1
    if-gez p3, :cond_2

    .line 678
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "kexTimeout must be non-negative!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 680
    :cond_2
    new-instance v13, Lcom/trilead/ssh2/Connection$1TimeoutState;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/Connection$1TimeoutState;-><init>(Lcom/trilead/ssh2/Connection;)V

    .line 682
    .local v13, state:Lcom/trilead/ssh2/Connection$1TimeoutState;
    new-instance v3, Lcom/trilead/ssh2/transport/TransportManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/Connection;->port:I

    move v5, v0

    invoke-direct {v3, v4, v5}, Lcom/trilead/ssh2/transport/TransportManager;-><init>(Ljava/lang/String;I)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->connectionMonitors:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->setConnectionMonitors(Ljava/util/Vector;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    monitor-enter v3

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    const/16 v18, 0x0

    .line 708
    .local v18, token:Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    if-lez p3, :cond_3

    .line 710
    :try_start_2
    new-instance v15, Lcom/trilead/ssh2/Connection$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Connection$1;-><init>(Lcom/trilead/ssh2/Connection;Lcom/trilead/ssh2/Connection$1TimeoutState;)V

    .line 724
    .local v15, timeoutHandler:Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v5, v0

    add-long v16, v3, v5

    .line 726
    .local v16, timeoutHorizont:J
    move-wide/from16 v0, v16

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/trilead/ssh2/util/TimeoutService;->addTimeoutHandler(JLjava/lang/Runnable;)Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v18

    .line 731
    .end local v15           #timeoutHandler:Ljava/lang/Runnable;
    .end local v16           #timeoutHorizont:J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    move-object v6, v0

    invoke-direct/range {p0 .. p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;

    move-object v9, v0

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/trilead/ssh2/transport/TransportManager;->initialize(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/ServerHostKeyVerifier;Lcom/trilead/ssh2/DHGexParameters;ILjava/security/SecureRandom;Lcom/trilead/ssh2/ProxyData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 739
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;

    move-result-object v10

    .line 747
    .local v10, ci:Lcom/trilead/ssh2/ConnectionInfo;
    if-eqz v18, :cond_5

    .line 749
    invoke-static/range {v18 .. v18}, Lcom/trilead/ssh2/util/TimeoutService;->cancelTimeoutHandler(Lcom/trilead/ssh2/util/TimeoutService$TimeoutToken;)V

    .line 753
    monitor-enter v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 755
    :try_start_5
    iget-boolean v3, v13, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v3, :cond_4

    .line 756
    new-instance v3, Ljava/io/IOException;

    const-string v4, "This exception will be replaced by the one below =)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 753
    :catchall_1
    move-exception v3

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 768
    .end local p1
    .end local v10           #ci:Lcom/trilead/ssh2/ConnectionInfo;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 770
    .local v14, ste:Ljava/net/SocketTimeoutException;
    :try_start_7
    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 733
    .end local v14           #ste:Ljava/net/SocketTimeoutException;
    .restart local p1
    :catch_1
    move-exception v3

    move-object v12, v3

    .line 735
    .local v12, se:Ljava/net/SocketTimeoutException;
    :try_start_8
    new-instance v3, Ljava/net/SocketTimeoutException;

    .line 736
    const-string v4, "The connect() operation on the socket timed out."

    .line 735
    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v3, v12}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 735
    .end local p1
    check-cast p1, Ljava/net/SocketTimeoutException;

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 772
    .end local v12           #se:Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v3

    move-object v11, v3

    .line 775
    .local v11, e1:Ljava/io/IOException;
    :try_start_9
    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "There was a problem during connect."

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/trilead/ssh2/Connection;->close(Ljava/lang/Throwable;Z)V

    .line 777
    monitor-enter v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 783
    :try_start_a
    iget-boolean v3, v13, Lcom/trilead/ssh2/Connection$1TimeoutState;->timeoutSocketClosed:Z

    if-eqz v3, :cond_6

    .line 784
    new-instance v3, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The kexTimeout ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms) expired."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    :catchall_2
    move-exception v3

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 762
    .end local v11           #e1:Ljava/io/IOException;
    .restart local v10       #ci:Lcom/trilead/ssh2/ConnectionInfo;
    .restart local p1
    :cond_4
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, v13, Lcom/trilead/ssh2/Connection$1TimeoutState;->isCancelled:Z

    .line 753
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 766
    :cond_5
    monitor-exit p0

    return-object v10

    .line 777
    .end local v10           #ci:Lcom/trilead/ssh2/ConnectionInfo;
    .end local p1
    .restart local v11       #e1:Ljava/io/IOException;
    :cond_6
    :try_start_d
    monitor-exit v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 788
    :try_start_e
    instance-of v3, v11, Lcom/trilead/ssh2/HTTPProxyException;

    if-eqz v3, :cond_7

    .line 789
    throw v11

    .line 791
    :cond_7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "There was a problem while connecting to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/trilead/ssh2/Connection;->port:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v3, v11}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 791
    check-cast p1, Ljava/io/IOException;

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method public declared-synchronized createLocalPortForwarder(ILjava/lang/String;I)Lcom/trilead/ssh2/LocalPortForwarder;
    .locals 2
    .parameter "local_port"
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 819
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 821
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 822
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;ILjava/lang/String;I)V
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
    .line 850
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 853
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 854
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward ports, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/LocalPortForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/trilead/ssh2/LocalPortForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createLocalStreamForwarder(Ljava/lang/String;I)Lcom/trilead/ssh2/LocalStreamForwarder;
    .locals 2
    .parameter "host_to_connect"
    .parameter "port_to_connect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 877
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 878
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot forward, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/LocalStreamForwarder;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/trilead/ssh2/LocalStreamForwarder;-><init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createSCPClient()Lcom/trilead/ssh2/SCPClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 898
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 900
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 901
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create SCP client, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/SCPClient;

    invoke-direct {v0, p0}, Lcom/trilead/ssh2/SCPClient;-><init>(Lcom/trilead/ssh2/Connection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized enableDebugging(ZLcom/trilead/ssh2/DebugLogger;)V
    .locals 1
    .parameter "enable"
    .parameter "logger"

    .prologue
    .line 1447
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/trilead/ssh2/log/Logger;->enabled:Z

    .line 1449
    if-nez p1, :cond_1

    .line 1451
    const/4 v0, 0x0

    sput-object v0, Lcom/trilead/ssh2/log/Logger;->logger:Lcom/trilead/ssh2/DebugLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1455
    :cond_1
    if-nez p2, :cond_0

    .line 1457
    :try_start_1
    new-instance p2, Lcom/trilead/ssh2/Connection$2;

    .end local p2
    invoke-direct {p2, p0}, Lcom/trilead/ssh2/Connection$2;-><init>(Lcom/trilead/ssh2/Connection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local p2
    goto :goto_0

    .line 1447
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceKeyExchange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 924
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;

    invoke-virtual {v0, v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->forceKeyExchange(Lcom/trilead/ssh2/crypto/CryptoWishList;Lcom/trilead/ssh2/DHGexParameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getConnectionInfo()Lcom/trilead/ssh2/ConnectionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 960
    const-string v1, "Cannot get details of connection, you need to establish a connection first."

    .line 959
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 961
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/trilead/ssh2/transport/TransportManager;->getConnectionInfo(I)Lcom/trilead/ssh2/ConnectionInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->hostname:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    .line 944
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/trilead/ssh2/Connection;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 991
    monitor-enter p0

    if-nez p1, :cond_0

    .line 992
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument may not be NULL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 994
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_1

    .line 995
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not established!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-eqz v0, :cond_2

    .line 998
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already authenticated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    if-nez v0, :cond_3

    .line 1001
    new-instance v0, Lcom/trilead/ssh2/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/auth/AuthenticationManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    .line 1003
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    if-nez v0, :cond_4

    .line 1004
    new-instance v0, Lcom/trilead/ssh2/channel/ChannelManager;

    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-direct {v0, v1}, Lcom/trilead/ssh2/channel/ChannelManager;-><init>(Lcom/trilead/ssh2/transport/TransportManager;)V

    iput-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 1006
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
    .line 1056
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1057
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "method argument may not be NULL!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1059
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/trilead/ssh2/Connection;->getRemainingAuthMethods(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, methods:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v2, :cond_1

    .line 1067
    const/4 v2, 0x0

    :goto_1
    monitor-exit p0

    return v2

    .line 1063
    :cond_1
    :try_start_2
    aget-object v2, v1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1064
    const/4 v2, 0x1

    goto :goto_1

    .line 1061
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized isAuthenticationComplete()Z
    .locals 1

    .prologue
    .line 1018
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

.method public declared-synchronized isAuthenticationPartialSuccess()Z
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    .line 1038
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->am:Lcom/trilead/ssh2/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/auth/AuthenticationManager;->getPartialSuccess()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1035
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
    .line 1088
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, you need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1091
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1092
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot open session, connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1094
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

.method public declared-synchronized ping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1491
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1493
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1494
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalTrileadPing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    monitor-exit p0

    return-void
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
    .line 1374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to establish a connection first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1377
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/trilead/ssh2/Connection;->authenticated:Z

    if-nez v0, :cond_1

    .line 1378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-lez p2, :cond_2

    if-gtz p4, :cond_3

    .line 1381
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1383
    :cond_3
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/trilead/ssh2/channel/ChannelManager;->requestGlobalForward(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1384
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendIgnorePacket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/trilead/ssh2/Connection;->getOrCreateSecureRND()Ljava/security/SecureRandom;

    move-result-object v1

    .line 1110
    .local v1, rnd:Ljava/security/SecureRandom;
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v2

    new-array v0, v2, [B

    .line 1111
    .local v0, data:[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1113
    invoke-virtual {p0, v0}, Lcom/trilead/ssh2/Connection;->sendIgnorePacket([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    monitor-exit p0

    return-void

    .line 1108
    .end local v1           #rnd:Ljava/security/SecureRandom;
    .end local v0           #data:[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized sendIgnorePacket([B)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1126
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1128
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-nez v1, :cond_1

    .line 1129
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1130
    const-string v2, "Cannot send SSH_MSG_IGNORE packet, you need to establish a connection first."

    .line 1129
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1132
    :cond_1
    new-instance v0, Lcom/trilead/ssh2/packets/PacketIgnore;

    invoke-direct {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;-><init>()V

    .line 1133
    .local v0, pi:Lcom/trilead/ssh2/packets/PacketIgnore;
    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/packets/PacketIgnore;->setData([B)V

    .line 1135
    iget-object v1, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0}, Lcom/trilead/ssh2/packets/PacketIgnore;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/trilead/ssh2/transport/TransportManager;->sendMessage([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1136
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setClient2ServerCiphers([Ljava/lang/String;)V
    .locals 1
    .parameter "ciphers"

    .prologue
    .line 1193
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1195
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1196
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_enc_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setClient2ServerMACs([Ljava/lang/String;)V
    .locals 1
    .parameter "macs"

    .prologue
    .line 1207
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1209
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1210
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->c2s_mac_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setDHGexParameters(Lcom/trilead/ssh2/DHGexParameters;)V
    .locals 1
    .parameter "dgp"

    .prologue
    .line 1225
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1226
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1228
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->dhgexpara:Lcom/trilead/ssh2/DHGexParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setProxyData(Lcom/trilead/ssh2/ProxyData;)V
    .locals 1
    .parameter "proxyData"

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->proxyData:Lcom/trilead/ssh2/ProxyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 1
    .parameter "rnd"

    .prologue
    .line 1422
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1423
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1425
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/trilead/ssh2/Connection;->generator:Ljava/security/SecureRandom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1426
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServer2ClientCiphers([Ljava/lang/String;)V
    .locals 1
    .parameter "ciphers"

    .prologue
    .line 1238
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1239
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1240
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1241
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/cipher/BlockCipherFactory;->checkCipherList([Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_enc_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServer2ClientMACs([Ljava/lang/String;)V
    .locals 1
    .parameter "macs"

    .prologue
    .line 1252
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1255
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1256
    invoke-static {p1}, Lcom/trilead/ssh2/crypto/digest/MAC;->checkMacList([Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->s2c_mac_algos:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setServerHostKeyAlgorithms([Ljava/lang/String;)V
    .locals 1
    .parameter "algos"

    .prologue
    .line 1275
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1278
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/trilead/ssh2/Connection;->removeDuplicates([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-static {p1}, Lcom/trilead/ssh2/transport/KexManager;->checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->cryptoWishList:Lcom/trilead/ssh2/crypto/CryptoWishList;

    iput-object p1, v0, Lcom/trilead/ssh2/crypto/CryptoWishList;->serverHostKeyAlgorithms:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setTCPNoDelay(Z)V
    .locals 1
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1298
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/trilead/ssh2/Connection;->tcpNoDelay:Z

    .line 1300
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/trilead/ssh2/Connection;->tm:Lcom/trilead/ssh2/transport/TransportManager;

    invoke-virtual {v0, p1}, Lcom/trilead/ssh2/transport/TransportManager;->setTcpNoDelay(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1302
    :cond_0
    monitor-exit p0

    return-void

    .line 1298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
