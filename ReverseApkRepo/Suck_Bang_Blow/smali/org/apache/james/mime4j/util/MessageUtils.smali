.class public final Lorg/apache/james/mime4j/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset; = null

.field public static final CR:I = 0xd

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset; = null

.field public static final HT:I = 0x9

.field public static final ISO_8859_1:Ljava/nio/charset/Charset; = null

.field public static final LENIENT:I = 0x3

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20

.field public static final STRICT_ERROR:I = 0x2

.field public static final STRICT_IGNORE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "US-ASCII"

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->ASCII:Ljava/nio/charset/Charset;

    .line 38
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 40
    sget-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/util/MessageUtils;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isASCII(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 50
    const v0, 0xff80

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 58
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/MessageUtils;->isASCII(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    const/4 v2, 0x0

    .line 63
    :goto_1
    return v2

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 67
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
