.class public interface abstract Lcom/sugree/twitter/AsyncTwitterRunner$RequestListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sugree/twitter/AsyncTwitterRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onFileNotFoundException(Ljava/io/FileNotFoundException;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;)V
.end method

.method public abstract onMalformedURLException(Ljava/net/MalformedURLException;)V
.end method

.method public abstract onTwitterError(Lcom/sugree/twitter/TwitterError;)V
.end method
