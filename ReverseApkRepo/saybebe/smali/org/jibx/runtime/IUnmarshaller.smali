.class public interface abstract Lorg/jibx/runtime/IUnmarshaller;
.super Ljava/lang/Object;
.source "IUnmarshaller.java"


# virtual methods
.method public abstract isPresent(Lorg/jibx/runtime/IUnmarshallingContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract unmarshal(Ljava/lang/Object;Lorg/jibx/runtime/IUnmarshallingContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method
