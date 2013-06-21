.class public final Lorg/apache/james/mime4j/util/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# static fields
.field public static final ENC_7BIT:Ljava/lang/String; = "7bit"

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BASE64:Ljava/lang/String; = "base64"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"

.field public static final ENC_QUOTED_PRINTABLE:Ljava/lang/String; = "quoted-printable"

.field public static final MIME_HEADER_CONTENT_DESCRIPTION:Ljava/lang/String; = "content-description"

.field public static final MIME_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final MIME_HEADER_CONTENT_ID:Ljava/lang/String; = "content-id"

.field public static final MIME_HEADER_LANGAUGE:Ljava/lang/String; = "content-language"

.field public static final MIME_HEADER_LOCATION:Ljava/lang/String; = "content-location"

.field public static final MIME_HEADER_MD5:Ljava/lang/String; = "content-md5"

.field public static final MIME_HEADER_MIME_VERSION:Ljava/lang/String; = "mime-version"

.field public static final PARAM_CREATION_DATE:Ljava/lang/String; = "creation-date"

.field public static final PARAM_FILENAME:Ljava/lang/String; = "filename"

.field public static final PARAM_MODIFICATION_DATE:Ljava/lang/String; = "modification-date"

.field public static final PARAM_READ_DATE:Ljava/lang/String; = "read-date"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field private static counter:I

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    .line 110
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    .line 113
    const/4 v0, 0x0

    sput v0, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static createUniqueBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 358
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "-=Part."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 362
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 366
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v1, "=-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hostName"

    .prologue
    const/16 v3, 0x2e

    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<Mime4j."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->nextCounterValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    sget-object v1, Lorg/apache/james/mime4j/util/MimeUtil;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    if-eqz p0, :cond_0

    .line 391
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter "pValue"

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v2, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 176
    .local v2, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, c:C
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 176
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 181
    .local v0, c:C
    :cond_1
    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    goto :goto_1

    .line 183
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v6, result:Ljava/util/Map;
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 191
    .end local v1           #i:I
    move-object p0, p0

    .line 192
    .local p0, main:Ljava/lang/String;
    const/4 v0, 0x0

    .line 198
    .local v0, rest:Ljava/lang/String;
    :goto_2
    const-string v1, ""

    invoke-interface {v6, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz v0, :cond_f

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 201
    .local v0, chars:[C
    new-instance v2, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    .end local v2           #sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/16 p0, 0x40

    invoke-direct {v2, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 202
    .end local p0           #main:Ljava/lang/String;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    new-instance v3, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 p0, 0x40

    invoke-direct {v3, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 204
    .local v3, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/4 p0, 0x0

    .line 205
    .local p0, READY_FOR_NAME:B
    const/4 p0, 0x1

    .line 206
    .local p0, IN_NAME:B
    const/4 p0, 0x2

    .line 207
    .local p0, READY_FOR_VALUE:B
    const/4 p0, 0x3

    .line 208
    .local p0, IN_VALUE:B
    const/4 p0, 0x4

    .line 209
    .local p0, IN_QUOTED_VALUE:B
    const/4 p0, 0x5

    .line 210
    .local p0, VALUE_DONE:B
    const/16 p0, 0x63

    .line 212
    .local p0, ERROR:B
    const/4 v4, 0x0

    .line 213
    .local v4, state:B
    const/4 p0, 0x0

    .line 214
    .local p0, escaped:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    move v7, v4

    .end local v4           #state:B
    .local v7, state:B
    move-object v5, v3

    .end local v3           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    move-object v4, v2

    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v1, p0

    .end local p0           #escaped:Z
    .local v1, escaped:I
    :goto_3
    array-length p0, v0

    if-ge v3, p0, :cond_e

    .line 215
    aget-char p0, v0, v3

    .line 217
    .local p0, c:C
    sparse-switch v7, :sswitch_data_0

    .end local v1           #escaped:I
    :cond_3
    :goto_4
    move p0, v1

    .local p0, escaped:I
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .line 214
    .end local v7           #state:B
    .end local p0           #escaped:I
    .local v5, state:B
    :goto_5
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    move v7, v5

    .end local v5           #state:B
    .restart local v7       #state:B
    move v1, p0

    .local v1, escaped:I
    move-object v5, v4

    .end local v4           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v2

    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    goto :goto_3

    .line 194
    .end local v0           #chars:[C
    .end local v1           #escaped:I
    .end local v3           #i:I
    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .end local v7           #state:B
    .local v2, sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local p0, pValue:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, main:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .local p0, rest:Ljava/lang/String;
    move-object v8, p0

    .end local p0           #rest:Ljava/lang/String;
    .local v8, rest:Ljava/lang/String;
    move-object p0, v0

    .end local v0           #main:Ljava/lang/String;
    .local p0, main:Ljava/lang/String;
    move-object v0, v8

    .end local v8           #rest:Ljava/lang/String;
    .local v0, rest:Ljava/lang/String;
    goto :goto_2

    .line 219
    .end local v2           #sb:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v0, chars:[C
    .restart local v1       #escaped:I
    .restart local v3       #i:I
    .restart local v4       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v5       #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_0
    const/16 v2, 0x3b

    if-ne p0, v2, :cond_3

    .line 220
    const/4 p0, 0x0

    .end local v7           #state:B
    .local p0, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, p0

    .end local p0           #state:B
    .local v5, state:B
    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    goto :goto_5

    .line 224
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v1       #escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_1
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_5

    .line 225
    sget-object p0, Lorg/apache/james/mime4j/util/MimeUtil;->log:Lorg/apache/commons/logging/Log;

    .end local p0           #c:C
    const-string v2, "Expected header param name, got \'=\'"

    invoke-interface {p0, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 226
    const/16 p0, 0x63

    .end local v7           #state:B
    .local p0, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, p0

    .end local p0           #state:B
    .local v5, state:B
    move p0, v1

    .line 227
    .end local v1           #escaped:I
    .local p0, escaped:I
    goto :goto_5

    .line 230
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v1       #escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :cond_5
    new-instance v2, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 231
    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    new-instance v4, Lorg/apache/james/mime4j/util/CharArrayBuffer;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;-><init>(I)V

    .line 233
    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    const/4 v5, 0x1

    .line 237
    .end local v7           #state:B
    .local v5, state:B
    :goto_6
    const/16 v7, 0x3d

    if-ne p0, v7, :cond_7

    .line 238
    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->length()I

    move-result p0

    .end local p0           #c:C
    if-nez p0, :cond_6

    .line 239
    const/16 p0, 0x63

    .end local v5           #state:B
    .local p0, state:B
    move v5, p0

    .end local p0           #state:B
    .restart local v5       #state:B
    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    goto :goto_5

    .line 241
    .end local p0           #escaped:I
    .restart local v1       #escaped:I
    :cond_6
    const/4 p0, 0x2

    .end local v5           #state:B
    .local p0, state:B
    move v5, p0

    .end local p0           #state:B
    .restart local v5       #state:B
    move p0, v1

    .line 242
    .end local v1           #escaped:I
    .local p0, escaped:I
    goto :goto_5

    .line 246
    .restart local v1       #escaped:I
    .local p0, c:C
    :cond_7
    invoke-virtual {v2, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    move p0, v1

    .line 247
    .end local v1           #escaped:I
    .local p0, escaped:I
    goto :goto_5

    .line 250
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v1       #escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_2
    const/4 v2, 0x0

    .line 251
    .local v2, fallThrough:Z
    sparse-switch p0, :sswitch_data_1

    .line 261
    const/4 v7, 0x3

    .line 262
    const/4 v2, 0x1

    .line 265
    :goto_7
    :sswitch_3
    if-nez v2, :cond_8

    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .line 266
    .end local v7           #state:B
    .local v5, state:B
    goto :goto_5

    .line 257
    .restart local v1       #escaped:I
    .local v2, fallThrough:Z
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_4
    const/4 v7, 0x4

    .line 258
    goto :goto_7

    .line 271
    .end local v2           #fallThrough:Z
    :cond_8
    :sswitch_5
    const/4 v2, 0x0

    .line 272
    .restart local v2       #fallThrough:Z
    sparse-switch p0, :sswitch_data_2

    .line 283
    invoke-virtual {v5, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    .line 286
    :goto_8
    if-nez v2, :cond_9

    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .line 287
    .end local v7           #state:B
    .local v5, state:B
    goto :goto_5

    .line 276
    .restart local v1       #escaped:I
    .local v2, fallThrough:Z
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_6
    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #fallThrough:Z
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #state:B
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const/4 v7, 0x5

    .line 280
    .restart local v7       #state:B
    const/4 v2, 0x1

    .line 281
    .restart local v2       #fallThrough:Z
    goto :goto_8

    :cond_9
    move v2, v7

    .line 290
    .end local v7           #state:B
    .local v2, state:B
    :goto_9
    sparse-switch p0, :sswitch_data_3

    .line 300
    const/16 p0, 0x63

    .end local v2           #state:B
    .local p0, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, p0

    .end local p0           #state:B
    .local v5, state:B
    move p0, v1

    .line 301
    .end local v1           #escaped:I
    .local p0, escaped:I
    goto/16 :goto_5

    .line 292
    .restart local v1       #escaped:I
    .local v2, state:B
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local p0, c:C
    :sswitch_7
    const/4 p0, 0x0

    .end local v2           #state:B
    .local p0, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, p0

    .end local p0           #state:B
    .local v5, state:B
    move p0, v1

    .line 293
    .end local v1           #escaped:I
    .local p0, escaped:I
    goto/16 :goto_5

    .restart local v1       #escaped:I
    .local v2, state:B
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local p0, c:C
    :sswitch_8
    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    move v8, v2

    .end local v2           #state:B
    .local v8, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v8

    .line 297
    .end local v8           #state:B
    .local v5, state:B
    goto/16 :goto_5

    .line 306
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v1       #escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_9
    sparse-switch p0, :sswitch_data_4

    .line 328
    if-eqz v1, :cond_a

    .line 329
    const/16 v1, 0x5c

    invoke-virtual {v5, v1}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    .line 331
    .end local v1           #escaped:I
    :cond_a
    const/4 v1, 0x0

    .line 332
    .local v1, escaped:Z
    invoke-virtual {v5, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    goto/16 :goto_4

    .line 308
    .local v1, escaped:I
    :sswitch_a
    if-nez v1, :cond_b

    .line 310
    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #c:C
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 p0, 0x5

    .end local v7           #state:B
    .local p0, state:B
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, p0

    .end local p0           #state:B
    .local v5, state:B
    move p0, v1

    .end local v1           #escaped:I
    .local p0, escaped:I
    goto/16 :goto_5

    .line 315
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v1       #escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :cond_b
    const/4 v1, 0x0

    .line 316
    .local v1, escaped:Z
    invoke-virtual {v5, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    move p0, v1

    .local p0, escaped:I
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .line 318
    .end local v7           #state:B
    .local v5, state:B
    goto/16 :goto_5

    .line 321
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v1, escaped:I
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_b
    if-eqz v1, :cond_c

    .line 322
    const/16 p0, 0x5c

    invoke-virtual {v5, p0}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->append(C)V

    .line 324
    .end local p0           #c:C
    :cond_c
    if-nez v1, :cond_d

    const/4 p0, 0x1

    .local p0, escaped:Z
    :goto_a
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v2       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .line 325
    .end local v7           #state:B
    .local v5, state:B
    goto/16 :goto_5

    .line 324
    .end local v2           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .end local p0           #escaped:Z
    .local v4, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v5, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    :cond_d
    const/4 p0, 0x0

    goto :goto_a

    .line 341
    :cond_e
    const/4 p0, 0x3

    if-ne v7, p0, :cond_f

    .line 342
    invoke-virtual {v4}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #chars:[C
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v1           #escaped:I
    .end local v3           #i:I
    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .end local v7           #state:B
    :cond_f
    return-object v6

    .restart local v0       #chars:[C
    .restart local v1       #escaped:I
    .restart local v3       #i:I
    .restart local v4       #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v5       #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .restart local v7       #state:B
    .local p0, c:C
    :sswitch_c
    move v2, v7

    .end local v7           #state:B
    .local v2, state:B
    goto :goto_9

    .end local v2           #state:B
    .restart local v7       #state:B
    :sswitch_d
    move-object v2, v4

    .end local v4           #paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v2, paramName:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move-object v4, v5

    .end local v5           #paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    .local v4, paramValue:Lorg/apache/james/mime4j/util/CharArrayBuffer;
    move v5, v7

    .end local v7           #state:B
    .local v5, state:B
    goto/16 :goto_6

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_d
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_9
        0x5 -> :sswitch_c
        0x63 -> :sswitch_0
    .end sparse-switch

    .line 251
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 272
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_6
        0x20 -> :sswitch_6
        0x3b -> :sswitch_6
    .end sparse-switch

    .line 290
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_8
        0x20 -> :sswitch_8
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 306
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_a
        0x5c -> :sswitch_b
    .end sparse-switch
.end method

.method public static isBase64Encoding(Ljava/lang/String;)Z
    .locals 1
    .parameter "pTransferEncoding"

    .prologue
    .line 145
    const-string v0, "base64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMessage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pMimeType"

    .prologue
    .line 131
    if-eqz p0, :cond_0

    const-string v0, "message/rfc822"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultipart(Ljava/lang/String;)Z
    .locals 2
    .parameter "pMimeType"

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQuotedPrintableEncoded(Ljava/lang/String;)Z
    .locals 1
    .parameter "pTransferEncoding"

    .prologue
    .line 152
    const-string v0, "quoted-printable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pType1"
    .parameter "pType2"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized nextCounterValue()I
    .locals 3

    .prologue
    .line 399
    const-class v0, Lorg/apache/james/mime4j/util/MimeUtil;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/apache/james/mime4j/util/MimeUtil;->counter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
