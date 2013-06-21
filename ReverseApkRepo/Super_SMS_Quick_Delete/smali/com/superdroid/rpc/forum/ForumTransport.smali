.class public Lcom/superdroid/rpc/forum/ForumTransport;
.super Ljava/lang/Object;
.source "ForumTransport.java"


# static fields
.field public static INSTANCE:Lcom/superdroid/rpc/forum/ForumTransport; = null

.field public static final RPC_FORUM_CHECK_USERNAME_SERVICE_NAME:Ljava/lang/String; = "checkusername"

.field public static final RPC_FORUM_CLEAN_CACHE_SERVICE_NAME:Ljava/lang/String; = "cleandbcache"

.field public static final RPC_FORUM_GET_VISTORS_SERVICE_NAME:Ljava/lang/String; = "getuservistors"

.field public static final RPC_FORUM_UPDATE_PROFILE_SERVICE_NAME:Ljava/lang/String; = "updateprofile"


# instance fields
.field protected _config:Lcom/superdroid/rpc/config/SuperForumConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/superdroid/rpc/forum/ForumTransport;

    .line 83
    new-instance v1, Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v1}, Lcom/superdroid/rpc/config/SuperForumConfig;-><init>()V

    .line 82
    invoke-direct {v0, v1}, Lcom/superdroid/rpc/forum/ForumTransport;-><init>(Lcom/superdroid/rpc/config/SuperForumConfig;)V

    sput-object v0, Lcom/superdroid/rpc/forum/ForumTransport;->INSTANCE:Lcom/superdroid/rpc/forum/ForumTransport;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/superdroid/rpc/config/SuperForumConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    .line 87
    return-void
.end method


# virtual methods
.method public addFriend(Ljava/lang/String;)V
    .locals 10
    .parameter "friendName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;-><init>()V

    .line 272
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;->_friend:Ljava/lang/String;

    .line 275
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 277
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 276
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 278
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 281
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 280
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 279
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 283
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 284
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 285
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 286
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 287
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 288
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 289
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 290
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 293
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public againestPost(J)V
    .locals 10
    .parameter "postID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;-><init>()V

    .line 830
    .local v2, request:Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_postID:J

    .line 831
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_isSupport:Z

    .line 834
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 836
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 835
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 837
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 841
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "againest post Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 843
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 841
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 840
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 845
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 846
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 847
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 848
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 849
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 850
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 851
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 852
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 853
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public changePassword(Ljava/lang/String;)Z
    .locals 7
    .parameter "newpassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 494
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;-><init>()V

    .line 495
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/ChangePasswordRequest;->_newPassword:Ljava/lang/String;

    .line 498
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 500
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 499
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 501
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-nez v6, :cond_0

    .line 502
    const/4 v6, 0x1

    .line 504
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 506
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 507
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 508
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 509
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 510
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 511
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 512
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 513
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public changeThread(IJ)V
    .locals 10
    .parameter "type"
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;-><init>()V

    .line 696
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;
    iput p1, v2, Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;->_changeType:I

    .line 697
    iput-wide p2, v2, Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;->_threadID:J

    .line 701
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 703
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 702
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 704
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 705
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 706
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get thread Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 708
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 706
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 705
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 710
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 711
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 712
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 713
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 714
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 715
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 716
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 717
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 718
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 720
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public changeToDefault(J)V
    .locals 1
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/superdroid/rpc/forum/ForumTransport;->changeThread(IJ)V

    .line 692
    return-void
.end method

.method public changeToTopInAll(J)V
    .locals 1
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/superdroid/rpc/forum/ForumTransport;->changeThread(IJ)V

    .line 688
    return-void
.end method

.method public changeToTopInForum(J)V
    .locals 1
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/superdroid/rpc/forum/ForumTransport;->changeThread(IJ)V

    .line 683
    return-void
.end method

.method public cleanCache()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v2, Lcom/superdroid/rpc/RpcRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 96
    .local v2, request:Lcom/superdroid/rpc/RpcRequest;
    const-string v6, "cleandbcache"

    invoke-virtual {v2, v6}, Lcom/superdroid/rpc/RpcRequest;->setServiceName(Ljava/lang/String;)V

    .line 99
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 101
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 100
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 102
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 106
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 109
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 110
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 111
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 112
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 113
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 114
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 115
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 118
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public createEventLog(Lcom/superdroid/rpc/forum/model/EventLog;)J
    .locals 10
    .parameter "eventlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1150
    new-instance v2, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;-><init>()V

    .line 1151
    .local v2, request:Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;->_eventlog:Lcom/superdroid/rpc/forum/model/EventLog;

    .line 1154
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1156
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1155
    check-cast v3, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;

    .line 1157
    .local v3, response:Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1158
    iget-wide v6, v3, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;->_eventlogID:J

    return-wide v6

    .line 1160
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;->getReturnCode()I

    move-result v7

    .line 1161
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create event log Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1163
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1161
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1160
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1165
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/event/CreateEventLogResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1166
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1167
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1168
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1169
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1170
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1171
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1172
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1173
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public createForum(Lcom/superdroid/rpc/forum/model/Forum;)J
    .locals 10
    .parameter "forum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v2, Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;-><init>()V

    .line 521
    .local v2, request:Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;->_forum:Lcom/superdroid/rpc/forum/model/Forum;

    .line 524
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 526
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 525
    check-cast v3, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;

    .line 527
    .local v3, response:Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 528
    iget-wide v6, v3, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;->_forumID:J

    return-wide v6

    .line 530
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;->getReturnCode()I

    move-result v7

    .line 531
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create forum Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 533
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 531
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 530
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 535
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/forum/CreateForumResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 536
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 537
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 538
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 539
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 540
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 541
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 542
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 543
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public createPost(Lcom/superdroid/rpc/forum/model/Post;)J
    .locals 10
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 858
    new-instance v2, Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;-><init>()V

    .line 859
    .local v2, request:Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;->_post:Lcom/superdroid/rpc/forum/model/Post;

    .line 862
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 864
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 863
    check-cast v3, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;

    .line 865
    .local v3, response:Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 866
    iget-wide v6, v3, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;->_postId:J

    return-wide v6

    .line 868
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;->getReturnCode()I

    move-result v7

    .line 869
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create post Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 871
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 869
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 868
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 873
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/post/CreatePostResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 874
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 875
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 876
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 877
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 878
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 879
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 880
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 881
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public createThread(Lcom/superdroid/rpc/forum/model/ForumThread;)J
    .locals 10
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 601
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;-><init>()V

    .line 602
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;->_thread:Lcom/superdroid/rpc/forum/model/ForumThread;

    .line 605
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 607
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 606
    check-cast v3, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;

    .line 608
    .local v3, response:Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 609
    iget-wide v6, v3, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;->_threadID:J

    return-wide v6

    .line 611
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;->getReturnCode()I

    move-result v7

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create thread Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 614
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 612
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 611
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 616
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/thread/CreateThreadResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 617
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 618
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 619
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 620
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 621
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 622
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 623
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 624
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public createUserMessage(Lcom/superdroid/rpc/forum/model/UserMessage;)V
    .locals 10
    .parameter "usermessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;-><init>()V

    .line 350
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/CreateMessageRequest;->_usermessage:Lcom/superdroid/rpc/forum/model/UserMessage;

    .line 353
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 355
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 354
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 356
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 358
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 357
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 361
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 362
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 363
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 364
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 365
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 366
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 367
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 368
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 371
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public deleteEventLog(J)V
    .locals 1
    .parameter "eventid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 767
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/superdroid/rpc/forum/ForumTransport;->deleteThreadPost(JI)V

    .line 768
    return-void
.end method

.method public deleteFriend(Ljava/lang/String;)V
    .locals 10
    .parameter "friendName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;-><init>()V

    .line 241
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;->_friend:Ljava/lang/String;

    .line 244
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 246
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 245
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 247
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 249
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 250
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 249
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 253
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 254
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 255
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 256
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 257
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 258
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 259
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 262
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public deletePost(J)V
    .locals 1
    .parameter "postID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/superdroid/rpc/forum/ForumTransport;->deleteThreadPost(JI)V

    .line 764
    return-void
.end method

.method public deleteThread(J)V
    .locals 1
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/superdroid/rpc/forum/ForumTransport;->deleteThreadPost(JI)V

    .line 759
    return-void
.end method

.method public deleteThreadPost(JI)V
    .locals 10
    .parameter "id"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 771
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;-><init>()V

    .line 772
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;->_id:J

    .line 773
    iput p3, v2, Lcom/superdroid/rpc/forum/calls/thread/DeleteThreadPostRequest;->_deleteType:I

    .line 776
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 778
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 777
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 779
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 780
    return-void

    .line 782
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 783
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delete thread post Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 785
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 783
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 782
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 787
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 788
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 789
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 790
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 791
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 792
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 793
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 794
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 795
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public deleteUserMessages(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 374
    .local p1, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;-><init>()V

    .line 375
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/DeleteMessagesRequest;->_messageIds:Ljava/util/List;

    .line 378
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 380
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 379
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 381
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 382
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 383
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 384
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 383
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 382
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 386
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 387
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 388
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 389
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 390
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 391
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 392
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 393
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 394
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 396
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public getEventLogsInThread(JIII)Ljava/util/List;
    .locals 10
    .parameter "threadid"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/EventLog;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1118
    new-instance v2, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;-><init>()V

    .line 1119
    .local v2, request:Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;->_threadID:J

    .line 1120
    iput p3, v2, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;->_start:I

    .line 1121
    iput p4, v2, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;->_length:I

    .line 1122
    iput p5, v2, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;->_sort:I

    .line 1125
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1127
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1126
    check-cast v3, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;

    .line 1128
    .local v3, response:Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1129
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;->_eventlogs:Ljava/util/List;

    return-object v6

    .line 1131
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;->getReturnCode()I

    move-result v7

    .line 1132
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get event logs Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1134
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", threadid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1135
    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1131
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1137
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/event/GetEventLogResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1138
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1139
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1140
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1141
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1142
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1143
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1144
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1145
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected getForum(JLjava/lang/String;)Lcom/superdroid/rpc/forum/model/Forum;
    .locals 10
    .parameter "id"
    .parameter "forumName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v2, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;-><init>()V

    .line 563
    .local v2, request:Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;->_forumID:J

    .line 564
    iput-object p3, v2, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;->_forumName:Ljava/lang/String;

    .line 567
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 569
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 568
    check-cast v3, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;

    .line 570
    .local v3, response:Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 571
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;->_forum:Lcom/superdroid/rpc/forum/model/Forum;

    return-object v6

    .line 573
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;->getReturnCode()I

    move-result v7

    .line 574
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get forum Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 576
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 573
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 578
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/forum/GetForumResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 579
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 580
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 581
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 582
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 583
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 584
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 585
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 586
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getForumByID(J)Lcom/superdroid/rpc/forum/model/Forum;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/superdroid/rpc/forum/ForumTransport;->getForum(JLjava/lang/String;)Lcom/superdroid/rpc/forum/model/Forum;

    move-result-object v0

    return-object v0
.end method

.method public getForumByName(Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/Forum;
    .locals 2
    .parameter "forumName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 591
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/superdroid/rpc/forum/ForumTransport;->getForum(JLjava/lang/String;)Lcom/superdroid/rpc/forum/model/Forum;

    move-result-object v0

    return-object v0
.end method

.method public getForumList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Forum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 549
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/superdroid/rpc/forum/ForumTransport;->searchForumList(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Friend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;-><init>()V

    .line 322
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;->_username:Ljava/lang/String;

    .line 325
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 327
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 326
    check-cast v3, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;

    .line 328
    .local v3, response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v7

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 331
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 329
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 335
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 336
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 337
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 333
    .end local v5           #urie:Ljava/net/URISyntaxException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    :try_start_1
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->_friends:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 338
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 339
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 340
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 341
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 342
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getHotThreadsByCategory(II)Ljava/util/List;
    .locals 10
    .parameter "category"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;-><init>()V

    .line 1044
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;
    iput p1, v2, Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;->_category:I

    .line 1045
    iput p2, v2, Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;->_length:I

    .line 1048
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1050
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1049
    check-cast v3, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;

    .line 1051
    .local v3, response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1052
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->_threads:Ljava/util/List;

    return-object v6

    .line 1054
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v7

    .line 1055
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get hot threads Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1057
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1058
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1055
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1054
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1060
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1061
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1062
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1063
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1064
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1065
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1066
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1067
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1068
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getPartnerByForumName(Ljava/lang/String;Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/Partner;
    .locals 10
    .parameter "forumName"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1180
    new-instance v2, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;-><init>()V

    .line 1181
    .local v2, request:Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;->_forumName:Ljava/lang/String;

    .line 1182
    iput-object p2, v2, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;->_email:Ljava/lang/String;

    .line 1185
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1187
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1186
    check-cast v3, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;

    .line 1188
    .local v3, response:Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1189
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;->_partner:Lcom/superdroid/rpc/forum/model/Partner;

    return-object v6

    .line 1191
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;->getReturnCode()I

    move-result v7

    .line 1192
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get partner Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1194
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1191
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1196
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/partner/GetPartnerResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1197
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1198
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1199
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1200
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1201
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1202
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1203
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1204
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getPosts(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 886
    .local p1, postids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;-><init>()V

    .line 887
    .local v2, request:Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_ids:Ljava/util/List;

    .line 890
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 892
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 891
    check-cast v3, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;

    .line 893
    .local v3, response:Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 894
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->_posts:Ljava/util/List;

    return-object v6

    .line 896
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v7

    .line 897
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get posts Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 899
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 897
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 896
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 901
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 902
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 903
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 904
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 905
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 906
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 907
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 908
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 909
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getPostsInThread(JII)Ljava/util/List;
    .locals 7
    .parameter "threadid"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 915
    const-string v1, ""

    .line 916
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .line 915
    invoke-virtual/range {v0 .. v6}, Lcom/superdroid/rpc/forum/ForumTransport;->searchPostsInThread(Ljava/lang/String;JIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPostsInThread(JIII)Ljava/util/List;
    .locals 7
    .parameter "threadid"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 921
    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/superdroid/rpc/forum/ForumTransport;->searchPostsInThread(Ljava/lang/String;JIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProfile(Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/User;
    .locals 10
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;-><init>()V

    .line 467
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/GetProfileRequest;->_requestUserName:Ljava/lang/String;

    .line 470
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 472
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 471
    check-cast v3, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;

    .line 473
    .local v3, response:Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 474
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;->_user:Lcom/superdroid/rpc/forum/model/User;

    return-object v6

    .line 476
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;->getReturnCode()I

    move-result v7

    .line 477
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get user profile Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 479
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 477
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 476
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 481
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetProfileResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 482
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 483
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 484
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 485
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 486
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 487
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 488
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 489
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getRecentPosts(I)Ljava/util/List;
    .locals 1
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/superdroid/rpc/forum/ForumTransport;->getRecentPostsByUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentPostsByUser(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .parameter "userName"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 989
    new-instance v2, Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;-><init>()V

    .line 990
    .local v2, request:Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;->_username:Ljava/lang/String;

    .line 991
    iput p2, v2, Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;->_length:I

    .line 994
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 996
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 995
    check-cast v3, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;

    .line 997
    .local v3, response:Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 998
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;->_posts:Ljava/util/List;

    return-object v6

    .line 1000
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;->getReturnCode()I

    move-result v7

    .line 1001
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get recent posts Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1003
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1004
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1001
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1000
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1006
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1007
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1008
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1009
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1010
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1011
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1012
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1013
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1014
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getRecentUpdateThreadByCategory(II)Ljava/util/List;
    .locals 10
    .parameter "category"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1082
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;-><init>()V

    .line 1083
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;
    iput p1, v2, Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;->_category:I

    .line 1084
    iput p2, v2, Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;->_length:I

    .line 1087
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1089
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1088
    check-cast v3, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;

    .line 1090
    .local v3, response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 1091
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->_threads:Ljava/util/List;

    return-object v6

    .line 1093
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v7

    .line 1094
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get recent threads Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1096
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1097
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1094
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1093
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1099
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1100
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1101
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1102
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1103
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1104
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1105
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1106
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1107
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getThread(J)Lcom/superdroid/rpc/forum/model/ForumThread;
    .locals 10
    .parameter "threadID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v2, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;-><init>()V

    .line 653
    .local v2, request:Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;->_threadID:J

    .line 657
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 659
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 658
    check-cast v3, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;

    .line 660
    .local v3, response:Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 661
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;->_thread:Lcom/superdroid/rpc/forum/model/ForumThread;

    return-object v6

    .line 663
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;->getReturnCode()I

    move-result v7

    .line 664
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "get thread Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 666
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 664
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 663
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 668
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 669
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 670
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 671
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 672
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 673
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 674
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 675
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 676
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getThreadsInForum(JII)Ljava/util/List;
    .locals 8
    .parameter "forumID"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 636
    const-string v1, ""

    const/4 v2, 0x0

    .line 637
    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-wide v6, p1

    .line 636
    invoke-virtual/range {v0 .. v7}, Lcom/superdroid/rpc/forum/ForumTransport;->searchThreadInForum(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThreadsInForum(JIII)Ljava/util/List;
    .locals 8
    .parameter "forumID"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 642
    const-string v1, ""

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/superdroid/rpc/forum/ForumTransport;->searchThreadInForum(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThreadsInForum(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .parameter "forumname"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 630
    const-string v1, ""

    .line 631
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 630
    invoke-virtual/range {v0 .. v7}, Lcom/superdroid/rpc/forum/ForumTransport;->searchThreadInForum(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThreadsInForum(Ljava/lang/String;III)Ljava/util/List;
    .locals 8
    .parameter "forumname"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 647
    const-string v1, ""

    .line 648
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 647
    invoke-virtual/range {v0 .. v7}, Lcom/superdroid/rpc/forum/ForumTransport;->searchThreadInForum(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopUsers(I)Ljava/util/List;
    .locals 1
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1028
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserMessages(II)Ljava/util/List;
    .locals 10
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/UserMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;-><init>()V

    .line 401
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;
    iput p1, v2, Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;->_start:I

    .line 402
    iput p2, v2, Lcom/superdroid/rpc/forum/calls/user/GetMessagesRequest;->_length:I

    .line 405
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 407
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 406
    check-cast v3, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;

    .line 408
    .local v3, response:Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;->getReturnCode()I

    move-result v7

    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 411
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 410
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 409
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 415
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 416
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 417
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 413
    .end local v5           #urie:Ljava/net/URISyntaxException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    :try_start_1
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;->_messages:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 418
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 419
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 420
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 421
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 422
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 423
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getUserVistors(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "username"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Friend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1236
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;-><init>()V

    .line 1237
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;->_username:Ljava/lang/String;

    .line 1238
    const-string v6, "getuservistors"

    invoke-virtual {v2, v6}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;->setServiceName(Ljava/lang/String;)V

    .line 1241
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1243
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1242
    check-cast v3, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;

    .line 1244
    .local v3, response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1245
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v7

    .line 1246
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1247
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1246
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1245
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1251
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1252
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1253
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1249
    .end local v5           #urie:Ljava/net/URISyntaxException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    :try_start_1
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;->_friends:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v6

    .line 1254
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1255
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1256
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1257
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1258
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1259
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public isUsernameAvailable(Ljava/lang/String;)Z
    .locals 10
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;-><init>()V

    .line 161
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/LoginResquest;
    const-string v6, "checkusername"

    invoke-virtual {v2, v6}, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;->setServiceName(Ljava/lang/String;)V

    .line 162
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;->_loginid:Ljava/lang/String;

    .line 166
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 168
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 167
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 169
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 170
    const/4 v6, 0x0

    .line 172
    :goto_0
    return v6

    .line 171
    :cond_0
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 172
    const/4 v6, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 175
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 177
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 178
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 179
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 180
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 181
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 182
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 183
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 184
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lcom/superdroid/rpc/forum/model/User;
    .locals 10
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;-><init>()V

    .line 122
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/LoginResquest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;->_loginid:Ljava/lang/String;

    .line 123
    iput-object p2, v2, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;->_loginpass:Ljava/lang/String;

    .line 126
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 128
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 127
    check-cast v3, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;

    .line 129
    .local v3, response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 130
    iget-object v6, v3, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->_user:Lcom/superdroid/rpc/forum/model/User;

    return-object v6

    .line 131
    :cond_0
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getReturnCode()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    .line 132
    new-instance v6, Lcom/superdroid/rpc/forum/exception/PasswordNotMatchException;

    invoke-direct {v6}, Lcom/superdroid/rpc/forum/exception/PasswordNotMatchException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 140
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 141
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 133
    .end local v5           #urie:Ljava/net/URISyntaxException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getReturnCode()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 134
    new-instance v6, Lcom/superdroid/rpc/forum/exception/UserNotExistException;

    invoke-direct {v6}, Lcom/superdroid/rpc/forum/exception/UserNotExistException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 143
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 144
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 136
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getReturnCode()I

    move-result v7

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 138
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/user/LoginResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/user/LoginResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 146
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public registerUser(Lcom/superdroid/rpc/forum/model/User;)Lcom/superdroid/rpc/forum/model/User;
    .locals 11
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;,
            Lcom/superdroid/rpc/forum/exception/IMEIBindException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v3, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;

    invoke-direct {v3}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;-><init>()V

    .line 200
    .local v3, request:Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;
    iput-object p1, v3, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->_user:Lcom/superdroid/rpc/forum/model/User;

    .line 203
    :try_start_0
    new-instance v5, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v7, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v5, v7}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 205
    .local v5, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v5, v3}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v4

    .line 204
    check-cast v4, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;

    .line 206
    .local v4, response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getReturnCode()I

    move-result v7

    if-nez v7, :cond_0

    .line 207
    iget-wide v7, v4, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->_userID:J

    invoke-virtual {p1, v7, v8}, Lcom/superdroid/rpc/forum/model/User;->setId(J)V

    .line 208
    iget-object v7, v4, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->_level:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/superdroid/rpc/forum/model/User;->setLevel(Ljava/lang/String;)V

    .line 209
    iget-object v7, v4, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->_role:Lcom/superdroid/rpc/forum/model/UserRole;

    invoke-virtual {v7}, Lcom/superdroid/rpc/forum/model/UserRole;->getRoleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/superdroid/rpc/forum/model/User;->setRole(Ljava/lang/String;)V

    .line 210
    iget-object v7, v4, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->_role:Lcom/superdroid/rpc/forum/model/UserRole;

    invoke-virtual {p1, v7}, Lcom/superdroid/rpc/forum/model/User;->setUserRole(Lcom/superdroid/rpc/forum/model/UserRole;)V

    .line 211
    return-object p1

    .line 212
    :cond_0
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getReturnCode()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1

    .line 215
    new-instance v1, Lcom/superdroid/rpc/forum/exception/IMEIBindException;

    .line 216
    const-string v7, "IMEI already bind"

    .line 215
    invoke-direct {v1, v7}, Lcom/superdroid/rpc/forum/exception/IMEIBindException;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, imeibinde:Lcom/superdroid/rpc/forum/exception/IMEIBindException;
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/superdroid/rpc/forum/exception/IMEIBindException;->_bindUserName:Ljava/lang/String;

    .line 218
    throw v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    .end local v1           #imeibinde:Lcom/superdroid/rpc/forum/exception/IMEIBindException;
    .end local v4           #response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    .end local v5           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 228
    .local v6, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v6}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 229
    new-instance v7, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v7, v6}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 219
    .end local v6           #urie:Ljava/net/URISyntaxException;
    .restart local v4       #response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    .restart local v5       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getReturnCode()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_2

    .line 220
    new-instance v7, Lcom/superdroid/rpc/forum/exception/UserAlreadyExistException;

    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/superdroid/rpc/forum/exception/UserAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 230
    .end local v4           #response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    .end local v5           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 231
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 232
    new-instance v7, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v7, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 222
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    .restart local v4       #response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    .restart local v5       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_2
    :try_start_2
    new-instance v7, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getReturnCode()I

    move-result v8

    .line 223
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Register User Error,Return code:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getReturnCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Error Msg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 225
    invoke-virtual {v4}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 222
    invoke-direct {v7, v8, v9}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    .end local v4           #response:Lcom/superdroid/rpc/forum/calls/user/RegisterUserResponse;
    .end local v5           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 234
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    new-instance v7, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v7, v2}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public searchForumList(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "keywords"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Forum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPostsInAll(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "keywords"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 965
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPostsInForum(Ljava/lang/String;JII)Ljava/util/List;
    .locals 1
    .parameter "keywords"
    .parameter "forumID"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPostsInThread(Ljava/lang/String;JIII)Ljava/util/List;
    .locals 12
    .parameter "keywords"
    .parameter "threadid"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 926
    new-instance v4, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;

    invoke-direct {v4}, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;-><init>()V

    .line 927
    .local v4, request:Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;
    iput-object p1, v4, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_keywords:Ljava/lang/String;

    .line 928
    iput-wide p2, v4, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_threadID:J

    .line 929
    move/from16 v0, p4

    move-object v1, v4

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_start:I

    .line 930
    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_length:I

    .line 931
    move/from16 v0, p6

    move-object v1, v4

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_sort:I

    .line 934
    :try_start_0
    new-instance v6, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v8, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v6, v8}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 936
    .local v6, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v6, v4}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v5

    .line 935
    check-cast v5, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;

    .line 937
    .local v5, response:Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;
    invoke-virtual {v5}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v8

    if-nez v8, :cond_0

    .line 938
    iget-object v8, v5, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->_posts:Ljava/util/List;

    return-object v8

    .line 940
    :cond_0
    new-instance v8, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v5}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v9

    .line 941
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get posts Error,Return code:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v5}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getReturnCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",Error Msg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 943
    invoke-virtual {v5}, Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 941
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 940
    invoke-direct {v8, v9, v10}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 945
    .end local v5           #response:Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;
    .end local v6           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 946
    .local v7, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v7}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 947
    new-instance v8, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v8, v7}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 948
    .end local v7           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 949
    .local v2, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 950
    new-instance v8, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v8, v2}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 951
    .end local v2           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 952
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 953
    new-instance v8, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v8, v3}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public searchThreadInForum(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/util/List;
    .locals 13
    .parameter "keywords"
    .parameter "forumname"
    .parameter "start"
    .parameter "length"
    .parameter "sort"
    .parameter "forumID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIJ)",
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/ForumThread;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v5, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;

    invoke-direct {v5}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;-><init>()V

    .line 726
    .local v5, request:Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;
    iput-object p1, v5, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_keywords:Ljava/lang/String;

    .line 727
    iput-object p2, v5, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_forumName:Ljava/lang/String;

    .line 728
    move/from16 v0, p3

    move-object v1, v5

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_start:I

    .line 729
    move/from16 v0, p4

    move-object v1, v5

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_length:I

    .line 730
    move/from16 v0, p5

    move-object v1, v5

    iput v0, v1, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_sort:I

    .line 731
    move-wide/from16 v0, p6

    move-object v2, v5

    iput-wide v0, v2, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_forumID:J

    .line 734
    :try_start_0
    new-instance v7, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v9, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v7, v9}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 736
    .local v7, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v7, v5}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v6

    .line 735
    check-cast v6, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;

    .line 737
    .local v6, response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    invoke-virtual {v6}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v9

    if-nez v9, :cond_0

    .line 738
    iget-object v9, v6, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->_threads:Ljava/util/List;

    return-object v9

    .line 740
    :cond_0
    new-instance v9, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v6}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v10

    .line 741
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get threads Error,Return code:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v6}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getReturnCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",Error Msg:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 743
    invoke-virtual {v6}, Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 741
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 740
    invoke-direct {v9, v10, v11}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 745
    .end local v6           #response:Lcom/superdroid/rpc/forum/calls/thread/GetThreadResponse;
    .end local v7           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 746
    .local v8, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 747
    new-instance v9, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v9, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 748
    .end local v8           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 749
    .local v3, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 750
    new-instance v9, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v9, v3}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 751
    .end local v3           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v9

    move-object v4, v9

    .line 752
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 753
    new-instance v9, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v9, v4}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public setConfig(Lcom/superdroid/rpc/config/SuperForumConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    .line 91
    return-void
.end method

.method public stopUserPost(Ljava/lang/String;)V
    .locals 10
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;-><init>()V

    .line 297
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/StopUserPostRequest;->_username:Ljava/lang/String;

    .line 300
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 302
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 301
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 303
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "RPC Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 306
    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 305
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 308
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 309
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 310
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 311
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 312
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 313
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 314
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 315
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 318
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public supportPost(J)V
    .locals 10
    .parameter "postID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 800
    new-instance v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;-><init>()V

    .line 801
    .local v2, request:Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;
    iput-wide p1, v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_postID:J

    .line 802
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/superdroid/rpc/forum/calls/post/SupAgaPostRequest;->_isSupport:Z

    .line 805
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 807
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 806
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 808
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 812
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "support post Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 814
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 812
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 811
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 816
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 817
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 818
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 819
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 820
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 821
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 822
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 823
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 824
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public updatePartnerAdStatus(Lcom/superdroid/rpc/forum/model/PartnerAdStatus;)V
    .locals 10
    .parameter "adstatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 1210
    new-instance v2, Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;-><init>()V

    .line 1211
    .local v2, request:Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;->_adstatus:Lcom/superdroid/rpc/forum/model/PartnerAdStatus;

    .line 1214
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 1216
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 1215
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 1217
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1218
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v7

    .line 1219
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update partner adstatus Error,Return code:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Error Msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1221
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1219
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1218
    invoke-direct {v6, v7, v8}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1223
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1224
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 1225
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1226
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 1227
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1228
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1229
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 1230
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1231
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1233
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v3       #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .restart local v4       #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :cond_0
    return-void
.end method

.method public updateProfile(Lcom/superdroid/rpc/forum/model/User;Z)Z
    .locals 7
    .parameter "user"
    .parameter "isTakePointsAway"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/superdroid/rpc/forum/exception/ForumException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v2, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;

    invoke-direct {v2}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;-><init>()V

    .line 433
    .local v2, request:Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;
    const-string v6, "updateprofile"

    invoke-virtual {v2, v6}, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->setServiceName(Ljava/lang/String;)V

    .line 434
    iput-object p1, v2, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->_user:Lcom/superdroid/rpc/forum/model/User;

    .line 435
    iput-boolean p2, v2, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->_isTakePointsAway:Z

    .line 438
    :try_start_0
    new-instance v4, Lcom/superdroid/rpc/http/RpcHttpChannel;

    iget-object v6, p0, Lcom/superdroid/rpc/forum/ForumTransport;->_config:Lcom/superdroid/rpc/config/SuperForumConfig;

    invoke-direct {v4, v6}, Lcom/superdroid/rpc/http/RpcHttpChannel;-><init>(Lcom/superdroid/rpc/config/Config;)V

    .line 440
    .local v4, rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    invoke-interface {v4, v2}, Lcom/superdroid/rpc/RpcChannel;->invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;

    move-result-object v3

    .line 439
    check-cast v3, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;

    .line 441
    .local v3, response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    invoke-virtual {v3}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;->getReturnCode()I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    if-nez v6, :cond_0

    .line 442
    const/4 v6, 0x1

    .line 444
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 446
    .end local v3           #response:Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
    .end local v4           #rpcChannel:Lcom/superdroid/rpc/RpcChannel;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 447
    .local v5, urie:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 448
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v5}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 449
    .end local v5           #urie:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 450
    .local v0, ce:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 451
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 452
    .end local v0           #ce:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 453
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    new-instance v6, Lcom/superdroid/rpc/forum/exception/ForumException;

    invoke-direct {v6, v1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
