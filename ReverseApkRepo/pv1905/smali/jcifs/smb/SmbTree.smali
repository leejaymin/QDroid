.class Ljcifs/smb/SmbTree;
.super Ljava/lang/Object;
.source "SmbTree.java"


# static fields
.field private static tree_conn_counter:I


# instance fields
.field connectionState:I

.field inDfs:Z

.field inDomainDfs:Z

.field service:Ljava/lang/String;

.field service0:Ljava/lang/String;

.field session:Ljcifs/smb/SmbSession;

.field share:Ljava/lang/String;

.field tid:I

.field tree_num:I


# direct methods
.method constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "share"
    .parameter "service"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "?????"

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 49
    if-eqz p3, :cond_0

    const-string v0, "??"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p3, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 62
    instance-of v1, p1, Ljcifs/smb/SmbTree;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Ljcifs/smb/SmbTree;

    .line 64
    .local v0, tree:Ljcifs/smb/SmbTree;
    iget-object v1, v0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v2, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 66
    .end local v0           #tree:Ljcifs/smb/SmbTree;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "share"
    .parameter "service"

    .prologue
    .line 57
    iget-object v0, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    if-eqz p2, :cond_0

    const-string v0, "??"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 57
    goto :goto_0
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 6
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v2}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v3

    monitor-enter v3

    .line 71
    if-eqz p2, :cond_0

    .line 72
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 75
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    iget-boolean v2, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v2, :cond_2

    .line 76
    :cond_1
    monitor-exit v3

    .line 132
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v2, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "A:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    iget-byte v2, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    sparse-switch v2, :sswitch_data_0

    .line 104
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid operation for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 89
    :sswitch_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTransaction;

    move-object v2, v0

    iget-byte v2, v2, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_1

    .line 100
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid operation for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_3
    :sswitch_1
    iget v2, p0, Ljcifs/smb/SmbTree;->tid:I

    iput v2, p1, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 108
    iget-boolean v2, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v4, "IPC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 115
    const/16 v2, 0x1000

    iput v2, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x5c

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v4}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v4

    iget-object v4, v4, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_4
    :try_start_2
    iget-object v2, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v2, p1, p2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    :try_start_3
    monitor-exit v3

    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, se:Ljcifs/smb/SmbException;
    invoke-virtual {v1}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v4, -0x3fffff37

    if-ne v2, v4, :cond_5

    .line 127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    .line 129
    :cond_5
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x5e -> :sswitch_1
        0x4 -> :sswitch_1
        0x25 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x2f -> :sswitch_1
        0x32 -> :sswitch_0
        0x71 -> :sswitch_1
    .end sparse-switch

    .line 89
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x10 -> :sswitch_1
        0x23 -> :sswitch_1
        0x26 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x68 -> :sswitch_1
        0xd7 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmbTree[share="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string v1, ",service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string v1, ",tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string v1, ",inDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    const-string v1, ",inDomainDfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 9
    .parameter "andx"
    .parameter "andxResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 136
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v5}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v6

    monitor-enter v6

    .line 139
    :goto_0
    :try_start_0
    iget v5, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-nez v5, :cond_1

    .line 148
    const/4 v5, 0x1

    iput v5, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, v5, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5}, Ljcifs/smb/SmbTransport;->connect()V

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\\\\"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v7, v7, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v7, v7, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x5c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, unc:Ljava/lang/String;
    iget-object v5, p0, Ljcifs/smb/SmbTree;->service0:Ljava/lang/String;

    iput-object v5, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 169
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, v5, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v5, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v5, v7, :cond_0

    .line 170
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, v5, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v5, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "treeConnect: unc="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",service="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;

    invoke-direct {v2, p2}, Ljcifs/smb/SmbComTreeConnectAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 175
    .local v2, response:Ljcifs/smb/SmbComTreeConnectAndXResponse;
    new-instance v1, Ljcifs/smb/SmbComTreeConnectAndX;

    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v7, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    invoke-direct {v1, v5, v4, v7, p1}, Ljcifs/smb/SmbComTreeConnectAndX;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V

    .line 176
    .local v1, request:Ljcifs/smb/SmbComTreeConnectAndX;
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v5, v1, v2}, Ljcifs/smb/SmbSession;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 178
    iget v5, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->tid:I

    iput v5, p0, Ljcifs/smb/SmbTree;->tid:I

    .line 179
    iget-object v5, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->service:Ljava/lang/String;

    iput-object v5, p0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    .line 180
    iget-boolean v5, v2, Ljcifs/smb/SmbComTreeConnectAndXResponse;->shareIsInDfs:Z

    iput-boolean v5, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 181
    sget v5, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    add-int/lit8 v7, v5, 0x1

    sput v7, Ljcifs/smb/SmbTree;->tree_conn_counter:I

    iput v5, p0, Ljcifs/smb/SmbTree;->tree_num:I

    .line 183
    const/4 v5, 0x2

    iput v5, p0, Ljcifs/smb/SmbTree;->connectionState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :try_start_2
    monitor-exit v6

    .line 190
    .end local v1           #request:Ljcifs/smb/SmbComTreeConnectAndX;
    .end local v2           #response:Ljcifs/smb/SmbComTreeConnectAndXResponse;
    .end local v4           #unc:Ljava/lang/String;
    :goto_1
    return-void

    .line 140
    :cond_1
    iget v5, p0, Ljcifs/smb/SmbTree;->connectionState:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 141
    :cond_2
    monitor-exit v6

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 143
    :cond_3
    :try_start_3
    iget-object v5, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v5, v5, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, ie:Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v5, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 184
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 185
    .local v3, se:Ljcifs/smb/SmbException;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    .line 186
    const/4 v5, 0x0

    iput v5, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 187
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method treeDisconnect(Z)V
    .locals 4
    .parameter "inError"

    .prologue
    .line 192
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    invoke-virtual {v1}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v2

    monitor-enter v2

    .line 194
    :try_start_0
    iget v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 195
    monitor-exit v2

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 198
    if-nez p1, :cond_1

    iget v1, p0, Ljcifs/smb/SmbTree;->tid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 200
    :try_start_1
    new-instance v1, Ljcifs/smb/SmbComTreeDisconnect;

    invoke-direct {v1}, Ljcifs/smb/SmbComTreeDisconnect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Ljcifs/smb/SmbTree;->inDfs:Z

    .line 208
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 210
    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/SmbTree;->connectionState:I

    .line 212
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 192
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, se:Ljcifs/smb/SmbException;
    :try_start_3
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    .line 203
    iget-object v1, p0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
