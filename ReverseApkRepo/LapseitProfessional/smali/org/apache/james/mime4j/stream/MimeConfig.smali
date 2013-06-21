.class public final Lorg/apache/james/mime4j/stream/MimeConfig;
.super Ljava/lang/Object;
.source "MimeConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private countLineNumbers:Z

.field private headlessParsing:Ljava/lang/String;

.field private malformedHeaderStartsBody:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxHeaderLen:I

.field private maxLineLen:I

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    .line 40
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    .line 41
    iput-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    .line 42
    iput v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 44
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeConfig;->clone()Lorg/apache/james/mime4j/stream/MimeConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/james/mime4j/stream/MimeConfig;
    .locals 2

    .prologue
    .line 261
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/stream/MimeConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getHeadlessParsing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxContentLen()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxHeaderLen()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMalformedHeaderStartsBody()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    return v0
.end method

.method public setCountLineNumbers(Z)V
    .locals 0
    .parameter "countLineNumbers"

    .prologue
    .line 229
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    .line 230
    return-void
.end method

.method public setHeadlessParsing(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 255
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->headlessParsing:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setMalformedHeaderStartsBody(Z)V
    .locals 0
    .parameter "malformedHeaderStartsBody"

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->malformedHeaderStartsBody:Z

    .line 72
    return-void
.end method

.method public setMaxContentLen(J)V
    .locals 0
    .parameter "maxContentLen"

    .prologue
    .line 207
    iput-wide p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    .line 208
    return-void
.end method

.method public setMaxHeaderCount(I)V
    .locals 0
    .parameter "maxHeaderCount"

    .prologue
    .line 150
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 151
    return-void
.end method

.method public setMaxHeaderLen(I)V
    .locals 0
    .parameter "maxHeaderLen"

    .prologue
    .line 181
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 182
    return-void
.end method

.method public setMaxLineLen(I)V
    .locals 0
    .parameter "maxLineLen"

    .prologue
    .line 124
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 125
    return-void
.end method

.method public setStrictParsing(Z)V
    .locals 0
    .parameter "strictParsing"

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/stream/MimeConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
