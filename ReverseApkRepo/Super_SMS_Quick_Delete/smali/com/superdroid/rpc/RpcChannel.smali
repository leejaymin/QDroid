.class public interface abstract Lcom/superdroid/rpc/RpcChannel;
.super Ljava/lang/Object;
.source "RpcChannel.java"


# virtual methods
.method public abstract invokeBlockingRPC(Lcom/superdroid/rpc/RpcRequest;)Lcom/superdroid/rpc/RpcResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
