.class public Lcom/trilead/ssh2/channel/DynamicAcceptThread;
.super Ljava/lang/Thread;
.source "DynamicAcceptThread.java"

# interfaces
.implements Lcom/trilead/ssh2/channel/IChannelWorkerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    }
.end annotation


# instance fields
.field private cm:Lcom/trilead/ssh2/channel/ChannelManager;

.field private ss:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Lcom/trilead/ssh2/channel/ChannelManager;Ljava/net/InetSocketAddress;)V
    .locals 1
    .parameter "cm"
    .parameter "localAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 240
    iput-object p1, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    .line 242
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    .line 243
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 244
    return-void
.end method

.method static synthetic access$0(Lcom/trilead/ssh2/channel/DynamicAcceptThread;)Lcom/trilead/ssh2/channel/ChannelManager;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->cm:Lcom/trilead/ssh2/channel/ChannelManager;

    invoke-virtual {v4, p0}, Lcom/trilead/ssh2/channel/ChannelManager;->registerThread(Lcom/trilead/ssh2/channel/IChannelWorkerThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v2, 0x0

    .line 259
    .local v2, sock:Ljava/net/Socket;
    :try_start_1
    iget-object v4, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 265
    new-instance v0, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;

    new-instance v4, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;

    invoke-direct {v4}, Lnet/sourceforge/jsocks/server/ServerAuthenticatorNone;-><init>()V

    invoke-direct {v0, p0, v4, v2}, Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;-><init>(Lcom/trilead/ssh2/channel/DynamicAcceptThread;Lnet/sourceforge/jsocks/server/ServerAuthenticator;Ljava/net/Socket;)V

    .line 266
    .local v0, dar:Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    .local v3, t:Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 268
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 250
    .end local v0           #dar:Lcom/trilead/ssh2/channel/DynamicAcceptThread$DynamicAcceptRunnable;
    .end local v2           #sock:Ljava/net/Socket;
    .end local v3           #t:Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    .line 262
    :goto_1
    return-void

    .line 260
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #sock:Ljava/net/Socket;
    :catch_1
    move-exception v1

    .line 261
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->stopWorking()V

    goto :goto_1
.end method

.method public stopWorking()V
    .locals 1

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/trilead/ssh2/channel/DynamicAcceptThread;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method
