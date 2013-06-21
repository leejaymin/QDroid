.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Lorg/apache/james/mime4j/message/BodyPart;
.source "FormBodyPart.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .parameter "name"
    .parameter "body"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Name may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Body may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    .line 63
    .local v0, header:Lorg/apache/james/mime4j/message/Header;
    invoke-virtual {p0, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 66
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    .line 69
    return-void
.end method

.method private addField(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 118
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, ex:Lorg/apache/james/mime4j/MimeException;
    new-instance v1, Lorg/apache/http/entity/mime/UnexpectedMimeException;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/mime/UnexpectedMimeException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw v1
.end method


# virtual methods
.method protected generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 3
    .parameter "body"

    .prologue
    const-string v2, "\""

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ": form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 3
    .parameter "desc"

    .prologue
    .line 92
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;)V

    .line 103
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method protected generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 2
    .parameter "desc"

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;)V

    .line 113
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
