.class public interface abstract Lorg/jibx/runtime/impl/IOutByteBuffer;
.super Ljava/lang/Object;
.source "IOutByteBuffer.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IByteBuffer;


# virtual methods
.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract free(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
