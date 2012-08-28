.class public Lorg/apache/harmony/niochar/charset/additional/IBM437;
.super Ljava/nio/charset/Charset;
.source "IBM437.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;,
        Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "csName"
    .parameter "aliases"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2
    .parameter "cs"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBM367"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IBM437"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/harmony/niochar/charset/additional/IBM437$Decoder;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/harmony/niochar/charset/additional/IBM437$Encoder;)V

    return-object v0
.end method
