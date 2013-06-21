.class public Lcom/madvil/core/Downloading;
.super Ljava/lang/Object;
.source "Downloading.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSong(Lcom/madvil/core/SimpleDownload;)V
    .locals 14
    .parameter "sd"

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 25
    .local v1, os:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{%1$s} "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "start download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 26
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 29
    .end local v0           #is:Ljava/io/InputStream;
    .local v7, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    .line 30
    .local v5, downloadSize:I
    const/4 v6, 0x0

    .line 31
    .local v6, downloaded:I
    const v0, 0x1f400

    .line 33
    .local v0, blockSize:I
    if-nez v5, :cond_0

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madvil/core/SimpleDownload;->setFinishedWithError(Z)V

    .end local v0           #blockSize:I
    move-object v0, v1

    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v0, os:Ljava/io/FileOutputStream;
    move-object p0, v7

    .line 138
    .end local v2           #url:Ljava/net/URL;
    .end local v5           #downloadSize:I
    .end local v6           #downloaded:I
    .end local v7           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 38
    .local v0, blockSize:I
    .restart local v1       #os:Ljava/io/FileOutputStream;
    .restart local v2       #url:Ljava/net/URL;
    .restart local v5       #downloadSize:I
    .restart local v6       #downloaded:I
    .restart local v7       #is:Ljava/io/InputStream;
    .local p0, sd:Lcom/madvil/core/SimpleDownload;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/madvil/core/SimpleDownload;->setFinished(Z)V

    .line 39
    .end local v2           #url:Ljava/net/URL;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/madvil/core/SimpleDownload;->setFinishedWithError(Z)V

    .line 40
    invoke-virtual {p0, v5}, Lcom/madvil/core/SimpleDownload;->setSizeInBytes(I)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{%1$s} "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "connection open"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 43
    sget-object v2, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    if-eqz v2, :cond_1

    .line 44
    sget-object v2, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, v2, Lcom/madvil/ms/MusicToPhoneActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "connection"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 53
    :cond_1
    :goto_1
    const/16 v2, 0x2000

    .line 55
    .end local v0           #blockSize:I
    .local v2, blockSize:I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{%1$s} "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "block sized setuped"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, mkDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 59
    new-instance v0, Ljava/io/File;

    .end local v0           #mkDir:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, file:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{%1$s} "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "download path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 63
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 64
    .end local v1           #os:Ljava/io/FileOutputStream;
    .local v8, os:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    .end local v0           #file:Ljava/io/File;
    const/16 v3, 0x400

    invoke-direct {v0, v3}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 67
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    new-array v3, v2, [B

    .line 68
    .local v3, buf:[B
    const/4 v4, 0x0

    .line 69
    .local v4, current:I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{%1$s} "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "begin download"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 71
    :cond_2
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    .line 102
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    if-lez v1, :cond_3

    .line 103
    int-to-float v1, v6

    int-to-float v2, v5

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/madvil/core/SimpleDownload;->setProgress(I)V

    .line 108
    .end local v2           #blockSize:I
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{%1$s} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    .end local v3           #buf:[B
    move-result v4

    .end local v4           #current:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "finish download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 114
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 116
    sget-object v0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    if-eqz v0, :cond_4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{%1$s} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "update media"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/madvil/core/Helper;->getStorage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/madvil/core/SimpleDownload;->setFinished(Z)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{%1$s} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    move-object v0, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .local v0, os:Ljava/io/FileOutputStream;
    move-object p0, v7

    .end local v7           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 45
    .local v0, blockSize:I
    .local v1, os:Ljava/io/FileOutputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    .local p0, sd:Lcom/madvil/core/SimpleDownload;
    :pswitch_0
    const v0, 0xfa00

    goto/16 :goto_1

    .line 46
    :pswitch_1
    const v0, 0x1f400

    goto/16 :goto_1

    .line 47
    :pswitch_2
    const v0, 0x3e800

    goto/16 :goto_1

    .line 48
    :pswitch_3
    const v0, 0x7d000

    goto/16 :goto_1

    .line 49
    :pswitch_4
    const v0, 0xfa000

    goto/16 :goto_1

    .line 72
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    .local v1, bis:Ljava/io/BufferedInputStream;
    .restart local v2       #blockSize:I
    .restart local v3       #buf:[B
    .restart local v4       #current:I
    .restart local v8       #os:Ljava/io/FileOutputStream;
    :cond_5
    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->isAbortDownload()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 73
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 76
    invoke-static {p0}, Lcom/madvil/core/Helper;->deleteDownloadFromStorage(Lcom/madvil/core/SimpleDownload;)V

    .line 77
    sget-object v0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    if-eqz v0, :cond_6

    .line 78
    sget-object v0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    new-instance v1, Landroid/content/Intent;

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    .line 79
    .end local v2           #blockSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #buf:[B
    const-string v4, "file://"

    .end local v4           #current:I
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/madvil/core/Helper;->getStorage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/madvil/ms/MusicToPhoneActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    move-object v0, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .local v0, os:Ljava/io/FileOutputStream;
    move-object p0, v7

    .line 82
    .end local v7           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 85
    .local v0, baf:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #blockSize:I
    .restart local v3       #buf:[B
    .restart local v4       #current:I
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #os:Ljava/io/FileOutputStream;
    .local p0, sd:Lcom/madvil/core/SimpleDownload;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 87
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    if-lt v9, v2, :cond_2

    .line 90
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    add-int/2addr v6, v9

    .line 91
    invoke-virtual {p0, v6}, Lcom/madvil/core/SimpleDownload;->setDownloaded(I)V

    .line 92
    int-to-float v9, v6

    int-to-float v10, v5

    div-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p0, v9}, Lcom/madvil/core/SimpleDownload;->setProgress(I)V

    .line 97
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 125
    .end local v0           #baf:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #blockSize:I
    .end local v3           #buf:[B
    .end local v4           #current:I
    :catch_0
    move-exception v0

    move-object v3, v8

    .end local v8           #os:Ljava/io/FileOutputStream;
    .local v3, os:Ljava/io/FileOutputStream;
    move-object v1, v7

    .line 126
    .end local v5           #downloadSize:I
    .end local v6           #downloaded:I
    .end local v7           #is:Ljava/io/InputStream;
    .local v0, ex:Ljava/lang/Exception;
    .local v1, is:Ljava/io/InputStream;
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/madvil/core/SimpleDownload;->setFinishedWithError(Z)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    sget-object v2, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    if-eqz v2, :cond_8

    .line 133
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 134
    .local v2, msg:Landroid/os/Message;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0           #sd:Lcom/madvil/core/SimpleDownload;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "] "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v4, "download error. Reason: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .end local v0           #ex:Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    sget-object p0, Lcom/madvil/ms/MusicToPhoneActivity;->singletone:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object p0, p0, Lcom/madvil/ms/MusicToPhoneActivity;->showToastHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    move-object v0, v3

    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v0, os:Ljava/io/FileOutputStream;
    move-object p0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .local p0, is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 125
    .local v0, is:Ljava/io/InputStream;
    .local v1, os:Ljava/io/FileOutputStream;
    .local p0, sd:Lcom/madvil/core/SimpleDownload;
    :catch_1
    move-exception v2

    move-object v3, v1

    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v0

    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    move-object v0, v2

    goto :goto_3

    .end local v3           #os:Ljava/io/FileOutputStream;
    .local v1, os:Ljava/io/FileOutputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v0

    move-object v3, v1

    .end local v1           #os:Ljava/io/FileOutputStream;
    .restart local v3       #os:Ljava/io/FileOutputStream;
    move-object v1, v7

    .end local v7           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    goto :goto_3

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
