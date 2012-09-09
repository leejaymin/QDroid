.class public Lat/hochi/wdtvremote/controler/ConnectionHandler;
.super Ljava/lang/Thread;
.source "ConnectionHandler.java"


# static fields
.field private static running:Z


# instance fields
.field objectQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ois:Ljava/io/ObjectInputStream;

.field oos:Ljava/io/ObjectOutputStream;

.field os:Ljava/io/PrintStream;

.field socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->running:Z

    .line 32
    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized getObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
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

.method public getSocket()Ljava/net/Socket;
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 157
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    sget-object v3, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    :goto_0
    return-object v1

    .line 158
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeObject()V
    .locals 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 52
    :cond_0
    :goto_0
    sget-boolean v1, Lat/hochi/wdtvremote/controler/ConnectionHandler;->running:Z

    if-nez v1, :cond_1

    .line 72
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->objectQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 56
    invoke-virtual {p0}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->getObject()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    sget-object v3, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->sendData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->removeObject()V

    goto :goto_0

    .line 63
    :cond_2
    const-wide/16 v1, 0xcd

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized sendData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4
    .parameter "data"
    .parameter "IpAdress"
    .parameter "serverport"

    .prologue
    const-string v1, "true"

    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Ljava/net/Socket;

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    .line 94
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lat/hochi/wdtvremote/controler/Config;->serverUsername:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->sendDataNow(Ljava/lang/Object;)V

    .line 96
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lat/hochi/wdtvremote/controler/Config;->serverPassword:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->sendDataNow(Ljava/lang/Object;)V

    .line 97
    const-string v1, "connect to WDTV"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    instance-of v1, p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 104
    const-wide/16 v1, 0x32

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->os:Ljava/io/PrintStream;

    .line 111
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->os:Ljava/io/PrintStream;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->os:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 113
    const-string v1, "send command to WDTV"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :goto_1
    const/4 v1, 0x1

    .line 150
    :goto_2
    monitor-exit p0

    return v1

    .line 105
    .restart local p1
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local p1
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 145
    :goto_3
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->oos:Ljava/io/ObjectOutputStream;

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->ois:Ljava/io/ObjectInputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    const/4 v1, 0x0

    goto :goto_2

    .line 119
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_1
    :try_start_6
    new-instance v1, Ljava/io/ObjectOutputStream;

    iget-object v2, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->oos:Ljava/io/ObjectOutputStream;

    .line 121
    const-string v1, "try to send to"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lat/hochi/wdtvremote/controler/ConnectionHandler;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 91
    .end local p1
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 142
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public sendDataNow(Ljava/lang/Object;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 82
    sget-object v0, Lat/hochi/wdtvremote/controler/Config;->serverIpAdress:Ljava/lang/String;

    sget-object v1, Lat/hochi/wdtvremote/controler/Config;->serverPort:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lat/hochi/wdtvremote/controler/ConnectionHandler;->sendData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 83
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "run"

    .prologue
    .line 37
    sput-boolean p1, Lat/hochi/wdtvremote/controler/ConnectionHandler;->running:Z

    .line 38
    return-void
.end method
