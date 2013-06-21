.class public interface abstract Lcom/wolfram/alpha/net/impl/HttpTransaction;
.super Ljava/lang/Object;
.source "HttpTransaction.java"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract execute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/net/WAHttpException;
        }
    .end annotation
.end method

.method public abstract getCharSet()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContentLength()J
.end method

.method public abstract getResponseHeaders()[[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseString()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract setNoRetry()V
.end method
