.class public Lorg/appcelerator/titanium/util/TiStreamHelper;
.super Ljava/lang/Object;
.source "TiStreamHelper.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "TiStreamHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 21
    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/util/TiStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 22
    return-void
.end method

.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .parameter "in"
    .parameter "out"
    .parameter "bufferSize"

    .prologue
    .line 26
    new-array v0, p2, [B

    .line 27
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 29
    .local v1, count:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 35
    .local v2, e:Ljava/io/IOException;
    const-string v3, "TiStreamHelper"

    const-string v4, "IOException pumping streams"

    invoke-static {v3, v4, v2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/appcelerator/titanium/util/TiStreamHelper;->pump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 43
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
