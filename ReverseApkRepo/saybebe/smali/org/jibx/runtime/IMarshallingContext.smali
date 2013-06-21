.class public interface abstract Lorg/jibx/runtime/IMarshallingContext;
.super Ljava/lang/Object;
.source "IMarshallingContext.java"


# virtual methods
.method public abstract endDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract getIndent()I
.end method

.method public abstract getMarshaller(Ljava/lang/String;)Lorg/jibx/runtime/IMarshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract getStackDepth()I
.end method

.method public abstract getStackObject(I)Ljava/lang/Object;
.end method

.method public abstract getStackTop()Ljava/lang/Object;
.end method

.method public abstract getUserContext()Ljava/lang/Object;
.end method

.method public abstract getXmlWriter()Lorg/jibx/runtime/IXMLWriter;
.end method

.method public abstract marshalDocument(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract popNamespaces()V
.end method

.method public abstract popObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract pushNamespaces(Ljava/lang/String;)V
.end method

.method public abstract pushObject(Ljava/lang/Object;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setIndent(I)V
.end method

.method public abstract setIndent(ILjava/lang/String;C)V
.end method

.method public abstract setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract setOutput(Ljava/io/OutputStream;Ljava/lang/String;Lorg/jibx/runtime/ICharacterEscaper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract setOutput(Ljava/io/Writer;)V
.end method

.method public abstract setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V
.end method

.method public abstract setUserContext(Ljava/lang/Object;)V
.end method

.method public abstract setXmlWriter(Lorg/jibx/runtime/IXMLWriter;)V
.end method

.method public abstract startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method

.method public abstract startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation
.end method
