.class public interface abstract Lorg/jibx/runtime/impl/IInByteBuffer;
.super Ljava/lang/Object;
.source "IInByteBuffer.java"

# interfaces
.implements Lorg/jibx/runtime/impl/IByteBuffer;


# virtual methods
.method public abstract getLimit()I
.end method

.method public abstract require(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
