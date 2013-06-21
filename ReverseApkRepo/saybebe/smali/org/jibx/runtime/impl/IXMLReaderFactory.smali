.class public interface abstract Lorg/jibx/runtime/impl/IXMLReaderFactory;
.super Ljava/lang/Object;
.source "IXMLReaderFactory.java"


# virtual methods
.method public abstract createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract createReader(Ljava/io/Reader;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/Reader;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method
