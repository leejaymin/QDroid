.class Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;
.super Ljava/lang/Object;
.source "RpcHttpChannel.java"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/rpc/http/RpcHttpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RpcHttpContentProducer"
.end annotation


# instance fields
.field private final _request:Lcom/superdroid/rpc/RpcRequest;


# direct methods
.method public constructor <init>(Lcom/superdroid/rpc/RpcRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;->_request:Lcom/superdroid/rpc/RpcRequest;

    .line 56
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v0, out:Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lcom/superdroid/rpc/http/RpcHttpChannel$RpcHttpContentProducer;->_request:Lcom/superdroid/rpc/RpcRequest;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 63
    return-void
.end method
