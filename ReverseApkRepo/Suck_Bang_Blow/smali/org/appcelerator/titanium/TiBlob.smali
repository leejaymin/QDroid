.class public Lorg/appcelerator/titanium/TiBlob;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiBlob.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiBlob"

.field public static final TYPE_DATA:I = 0x2

.field public static final TYPE_FILE:I = 0x1

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_STRING:I = 0x3


# instance fields
.field private data:Ljava/lang/Object;

.field private height:I

.field private mimetype:Ljava/lang/String;

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/TiBlob;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "tiContext"
    .parameter "type"
    .parameter "data"
    .parameter "mimetype"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 46
    iput p2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    .line 47
    iput-object p3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .line 48
    iput-object p4, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    .line 49
    iput v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 50
    iput v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 51
    return-void
.end method

.method public static blobFromData(Lorg/appcelerator/titanium/TiContext;[B)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter "tiContext"
    .parameter "data"

    .prologue
    .line 85
    const-string v0, "application/octet-stream"

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromData(Lorg/appcelerator/titanium/TiContext;[BLjava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .parameter "tiContext"
    .parameter "data"
    .parameter "mimetype"

    .prologue
    const/4 v2, 0x2

    .line 89
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v1, "application/octet-stream"

    invoke-direct {v0, p0, v2, p1, v1}, Lorg/appcelerator/titanium/TiBlob;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    invoke-direct {v0, p0, v2, p1, p2}, Lorg/appcelerator/titanium/TiBlob;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .parameter "tiContext"
    .parameter "file"

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public static blobFromFile(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 2
    .parameter "tiContext"
    .parameter "file"
    .parameter "mimeType"

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 66
    invoke-virtual {p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/appcelerator/titanium/TiBlob;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blobFromImage(Lorg/appcelerator/titanium/TiContext;Landroid/graphics/Bitmap;)Lorg/appcelerator/titanium/TiBlob;
    .locals 6
    .parameter "tiContext"
    .parameter "image"

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-array v2, v5, [B

    .line 74
    .local v2, data:[B
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 78
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const-string v3, "image/bitmap"

    invoke-direct {v0, p0, v5, v2, v3}, Lorg/appcelerator/titanium/TiBlob;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V

    .line 79
    .local v0, blob:Lorg/appcelerator/titanium/TiBlob;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->width:I

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/appcelerator/titanium/TiBlob;->height:I

    .line 81
    return-object v0
.end method

.method public static blobFromString(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    .locals 3
    .parameter "tiContext"
    .parameter "data"

    .prologue
    .line 55
    new-instance v0, Lorg/appcelerator/titanium/TiBlob;

    const/4 v1, 0x3

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/appcelerator/titanium/TiBlob;-><init>(Lorg/appcelerator/titanium/TiContext;ILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public append(Lorg/appcelerator/titanium/TiBlob;)V
    .locals 10
    .parameter "blob"

    .prologue
    const/4 v8, 0x0

    .line 166
    iget v6, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v6, :pswitch_data_0

    .line 189
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Blob type id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 169
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 170
    .local v3, dataString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v8

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v3           #dataString:Ljava/lang/String;
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 172
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "TiBlob"

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_1
    iget-object v6, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 178
    .local v2, dataBytes:[B
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    .line 179
    .local v1, appendBytes:[B
    array-length v6, v2

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v5, v6, [B

    .line 180
    .local v5, newData:[B
    array-length v6, v2

    invoke-static {v2, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v6, v2

    array-length v7, v1

    invoke-static {v1, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iput-object v5, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    goto :goto_0

    .line 186
    .end local v1           #appendBytes:[B
    .end local v2           #dataBytes:[B
    .end local v5           #newData:[B
    :pswitch_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not yet implemented. TYPE_FILE"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytes()[B
    .locals 7

    .prologue
    const-string v6, "TiBlob"

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, bytes:[B
    iget v4, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v4, :pswitch_data_0

    .line 129
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Blob type id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 103
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "TiBlob"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local p0
    :pswitch_1
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v1, v0

    .line 110
    goto :goto_0

    .line 112
    .restart local p0
    :pswitch_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 113
    .local v3, stream:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 115
    :try_start_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getLength()I

    move-result v4

    new-array v1, v4, [B

    .line 116
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v2

    .line 123
    .local v2, e:Ljava/io/IOException;
    const-string v4, "TiBlob"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 118
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "TiBlob"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 122
    :catch_3
    move-exception v2

    .line 123
    const-string v4, "TiBlob"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 121
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 124
    :goto_1
    throw v4

    .line 122
    :catch_4
    move-exception v2

    .line 123
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "TiBlob"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->height:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 151
    iget v1, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v1, :pswitch_data_0

    .line 160
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local p0
    :goto_0
    return-object v1

    .line 154
    .restart local p0
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 156
    .local v0, e:Ljava/io/IOException;
    const-string v1, "TiBlob"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .end local p0
    :goto_0
    return v0

    .line 139
    .restart local p0
    :pswitch_0
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 142
    .restart local p0
    :pswitch_1
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "TiBlob"

    .line 260
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    if-nez v2, :cond_0

    move-object v2, v4

    .line 280
    .end local p0
    :goto_0
    return-object v2

    .line 263
    .restart local p0
    :cond_0
    iget v2, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 264
    const-string v2, "TiBlob"

    const-string v2, "getNativePath not supported for non-file blob types."

    invoke-static {v5, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 265
    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    instance-of v2, v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v2, :cond_2

    .line 267
    const-string v2, "TiBlob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNativePath unable to return value: underlying data is not file, rather "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 268
    goto :goto_0

    .line 270
    :cond_2
    iget-object v2, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    check-cast v2, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    iget-object p0, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_3

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0           #f:Ljava/io/File;
    :cond_3
    move-object v2, v1

    .line 280
    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 198
    .local v1, result:Ljava/lang/String;
    iget v3, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    move-object v3, v1

    .line 218
    :goto_1
    return-object v3

    .line 200
    :pswitch_0
    iget-object v1, p0, Lorg/appcelerator/titanium/TiBlob;->data:Ljava/lang/Object;

    .end local v1           #result:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 207
    .restart local v1       #result:Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->isBinaryMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/appcelerator/titanium/TiBlob;->mimetype:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    if-eq v3, v4, :cond_0

    .line 208
    const/4 v3, 0x0

    goto :goto_1

    .line 211
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    move-object v1, v2

    .line 214
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 212
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 213
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "TiBlob"

    const-string v4, "Unable to convert to string."

    invoke-static {v3, v4}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->type:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/appcelerator/titanium/TiBlob;->width:I

    return v0
.end method

.method public toBase64()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 254
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "[object TiBlob]"

    goto :goto_0
.end method
