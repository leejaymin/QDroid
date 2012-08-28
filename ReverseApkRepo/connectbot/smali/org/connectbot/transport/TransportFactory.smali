.class public Lorg/connectbot/transport/TransportFactory;
.super Ljava/lang/Object;
.source "TransportFactory.java"


# static fields
.field private static transportNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lorg/connectbot/transport/SSH;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 40
    invoke-static {}, Lorg/connectbot/transport/Telnet;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 41
    invoke-static {}, Lorg/connectbot/transport/Local;->getProtocolName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    sput-object v0, Lorg/connectbot/transport/TransportFactory;->transportNames:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canForwardPorts(Ljava/lang/String;)Z
    .locals 1
    .parameter "protocol"

    .prologue
    .line 88
    invoke-static {}, Lorg/connectbot/transport/SSH;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static findHost(Lorg/connectbot/util/HostDatabase;Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;
    .locals 7
    .parameter "hostdb"
    .parameter "uri"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/connectbot/transport/TransportFactory;->getTransport(Ljava/lang/String;)Lorg/connectbot/transport/AbsTransport;

    move-result-object v1

    .line 121
    .local v1, transport:Lorg/connectbot/transport/AbsTransport;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, selection:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, p1, v0}, Lorg/connectbot/transport/AbsTransport;->getSelectionArgs(Landroid/net/Uri;Ljava/util/Map;)V

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const-string v2, "ConnectBot.TransportFactory"

    const-string v3, "Transport %s failed to do something useful with URI=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to get needed selection arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lorg/connectbot/util/HostDatabase;->findHost(Ljava/util/Map;)Lorg/connectbot/bean/HostBean;

    move-result-object v2

    return-object v2
.end method

.method public static getFormatHint(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "protocol"
    .parameter "context"

    .prologue
    .line 101
    invoke-static {}, Lorg/connectbot/transport/SSH;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1}, Lorg/connectbot/transport/SSH;->getFormatHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-static {}, Lorg/connectbot/transport/Telnet;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p1}, Lorg/connectbot/transport/Telnet;->getFormatHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Lorg/connectbot/transport/Local;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p1}, Lorg/connectbot/transport/Local;->getFormatHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {p1}, Lorg/connectbot/transport/AbsTransport;->getFormatHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTransport(Ljava/lang/String;)Lorg/connectbot/transport/AbsTransport;
    .locals 1
    .parameter "protocol"

    .prologue
    .line 49
    invoke-static {}, Lorg/connectbot/transport/SSH;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lorg/connectbot/transport/SSH;

    invoke-direct {v0}, Lorg/connectbot/transport/SSH;-><init>()V

    .line 56
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Lorg/connectbot/transport/Telnet;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lorg/connectbot/transport/Telnet;

    invoke-direct {v0}, Lorg/connectbot/transport/Telnet;-><init>()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {}, Lorg/connectbot/transport/Local;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Lorg/connectbot/transport/Local;

    invoke-direct {v0}, Lorg/connectbot/transport/Local;-><init>()V

    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransportNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/connectbot/transport/TransportFactory;->transportNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "scheme"
    .parameter "input"

    .prologue
    .line 61
    const-string v0, "TransportFactory"

    .line 62
    const-string v1, "Attempting to discover URI for scheme=%s on input=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    .line 63
    aput-object p1, v2, v3

    .line 61
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lorg/connectbot/transport/SSH;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lorg/connectbot/transport/SSH;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lorg/connectbot/transport/Telnet;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p1}, Lorg/connectbot/transport/Telnet;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lorg/connectbot/transport/Local;->getProtocolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string v0, "TransportFactory"

    const-string v1, "Got to the local parsing area"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Lorg/connectbot/transport/Local;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
