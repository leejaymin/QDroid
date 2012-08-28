.class public abstract Lorg/connectbot/transport/AbsTransport;
.super Ljava/lang/Object;
.source "AbsTransport.java"


# instance fields
.field bridge:Lorg/connectbot/service/TerminalBridge;

.field emulation:Ljava/lang/String;

.field host:Lorg/connectbot/bean/HostBean;

.field manager:Lorg/connectbot/service/TerminalManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormatHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    const-string v0, "???"

    return-object v0
.end method


# virtual methods
.method public addPortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public canForwardPorts()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract createHost(Landroid/net/Uri;)Lorg/connectbot/bean/HostBean;
.end method

.method public disablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public enablePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getEmulation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/connectbot/transport/AbsTransport;->emulation:Ljava/lang/String;

    return-object v0
.end method

.method public getPortForwards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/connectbot/bean/PortForwardBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSelectionArgs(Landroid/net/Uri;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isSessionOpen()Z
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public removePortForward(Lorg/connectbot/bean/PortForwardBean;)Z
    .locals 1
    .parameter "portForward"

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public setBridge(Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 152
    iput-object p1, p0, Lorg/connectbot/transport/AbsTransport;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 153
    return-void
.end method

.method public setCompression(Z)V
    .locals 0
    .parameter "compression"

    .prologue
    .line 133
    return-void
.end method

.method public abstract setDimensions(IIII)V
.end method

.method public setEmulation(Ljava/lang/String;)V
    .locals 0
    .parameter "emulation"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/connectbot/transport/AbsTransport;->emulation:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setHost(Lorg/connectbot/bean/HostBean;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/connectbot/transport/AbsTransport;->host:Lorg/connectbot/bean/HostBean;

    .line 149
    return-void
.end method

.method public setManager(Lorg/connectbot/service/TerminalManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/connectbot/transport/AbsTransport;->manager:Lorg/connectbot/service/TerminalManager;

    .line 157
    return-void
.end method

.method public setUseAuthAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "useAuthAgent"

    .prologue
    .line 137
    return-void
.end method

.method public abstract usesNetwork()Z
.end method

.method public abstract write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
