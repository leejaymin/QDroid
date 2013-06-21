.class public abstract Lorg/apache/james/mime4j/message/SimpleContentHandler;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "SimpleContentHandler.java"


# instance fields
.field private currHeader:Lorg/apache/james/mime4j/message/Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 1
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public abstract bodyDecoded(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final endHeader()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 85
    .local v0, tmp:Lorg/apache/james/mime4j/message/Header;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 86
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/SimpleContentHandler;->headers(Lorg/apache/james/mime4j/message/Header;)V

    .line 87
    return-void
.end method

.method public final field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 78
    return-void
.end method

.method public abstract headers(Lorg/apache/james/mime4j/message/Header;)V
.end method

.method public final startHeader()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SimpleContentHandler;->currHeader:Lorg/apache/james/mime4j/message/Header;

    .line 71
    return-void
.end method
