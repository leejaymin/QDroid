.class public interface abstract Lorg/jibx/runtime/impl/IByteBuffer;
.super Ljava/lang/Object;
.source "IByteBuffer.java"


# virtual methods
.method public abstract finish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBuffer()[B
.end method

.method public abstract getOffset()I
.end method

.method public abstract setOffset(I)V
.end method
