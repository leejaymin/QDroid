.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 2
    .parameter "is"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 61
    .local v0, parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/message/MessageBuilder;

    invoke-direct {v1, p0}, Lorg/apache/james/mime4j/message/MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 62
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 63
    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object p0
.end method
