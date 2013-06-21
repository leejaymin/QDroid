.class public interface abstract Lorg/tf/player/PCMDecoder;
.super Ljava/lang/Object;
.source "PCMDecoder.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getChannels()I
.end method

.method public abstract getRate()I
.end method

.method public abstract isOpened()Z
.end method

.method public abstract isSeekable()Z
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seekToTime(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
