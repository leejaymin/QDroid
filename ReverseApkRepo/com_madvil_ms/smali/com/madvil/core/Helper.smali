.class public Lcom/madvil/core/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDownloadFromStorage(Lcom/madvil/core/SimpleDownload;)V
    .locals 2
    .parameter "sd"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madvil/core/Helper;->deleteDownloadFromStorage(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static deleteDownloadFromStorage(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 94
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static formatSpecialEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 152
    move-object v4, p0

    .line 176
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {p0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v5, "&amp;"

    const-string v6, "&"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 178
    const-string v5, "&#39;"

    const-string v6, "\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 179
    const-string v5, "&quot;"

    const-string v6, "\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 181
    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 182
    .local v1, i:I
    const/16 v5, 0x3b

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 183
    .local v2, j:I
    :goto_0
    if-ltz v1, :cond_0

    if-gtz v2, :cond_1

    .line 198
    .end local v1           #i:I
    .end local v2           #j:I
    :cond_0
    :goto_1
    return-object v4

    .line 184
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_1
    sub-int v5, v2, v1

    const/16 v6, 0xf

    if-ge v5, v6, :cond_2

    .line 185
    sub-int v3, v2, v1

    .line 186
    .local v3, k:I
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    sub-int/2addr v2, v3

    .line 190
    .end local v3           #k:I
    :cond_2
    const/16 v5, 0x26

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 191
    const/16 v5, 0x3b

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 194
    .end local v1           #i:I
    .end local v2           #j:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 195
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDownloadStorage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getStorage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/MusicSearcher/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 12
    .local v0, file:Ljava/io/File;
    const-string v1, ""

    .line 13
    .local v1, storage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_0
    return-object v1
.end method

.method public static haveCyrillic(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x1

    .line 51
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 60
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 52
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 53
    .local v0, codePoint:I
    const/16 v2, 0x410

    if-lt v0, v2, :cond_1

    const/16 v2, 0x454

    if-gt v0, v2, :cond_1

    move v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/16 v2, 0x7e

    if-le v0, v2, :cond_2

    move v2, v3

    .line 56
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isDownloadExists(Lcom/madvil/core/SimpleDownload;)Z
    .locals 11
    .parameter "sd"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 75
    .local v0, b:Z
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x4980

    div-float v3, v5, v6

    .line 76
    .local v3, fSize:F
    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getSize()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/madvil/core/SimpleDownload;->getSize()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    .local v1, dSize:F
    cmpl-float v5, v3, v1

    if-ltz v5, :cond_0

    move v0, v10

    .line 84
    .end local v1           #dSize:F
    .end local v3           #fSize:F
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v5, v10

    :goto_1
    return v5

    .restart local v1       #dSize:F
    .restart local v3       #fSize:F
    :cond_0
    move v0, v9

    .line 77
    goto :goto_0

    .line 79
    .end local v1           #dSize:F
    .end local v3           #fSize:F
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 80
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    move v5, v9

    .line 84
    goto :goto_1
.end method

.method public static isSongExists(Lcom/madvil/core/SimpleSong;)Z
    .locals 3
    .parameter "ss"

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/madvil/core/Helper;->getDownloadStorage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/madvil/core/SimpleSong;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/madvil/core/SimpleSong;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static parseBitrate(D)Ljava/lang/String;
    .locals 2
    .parameter "kbps"

    .prologue
    .line 119
    const-wide/high16 v0, 0x4049

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 120
    const-string v0, "0 kbps"

    .line 133
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const-wide v0, 0x4062c00000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 122
    const-string v0, "128 kbps"

    goto :goto_0

    .line 123
    :cond_1
    const-wide v0, 0x4067200000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 124
    const-string v0, "160 kbps"

    goto :goto_0

    .line 125
    :cond_2
    const-wide v0, 0x406ae00000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 126
    const-string v0, "192 kbps"

    goto :goto_0

    .line 127
    :cond_3
    const-wide/high16 v0, 0x406f

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    .line 128
    const-string v0, "224 kbps"

    goto :goto_0

    .line 129
    :cond_4
    const-wide v0, 0x4072c00000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    .line 130
    const-string v0, "256 kbps"

    goto :goto_0

    .line 133
    :cond_5
    const-string v0, "320 kbps"

    goto :goto_0
.end method

.method public static parseSeconds(I)Ljava/lang/String;
    .locals 5
    .parameter "seconds"

    .prologue
    const/4 v4, 0x1

    .line 105
    div-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, min:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    rem-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, sec:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static prepareString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/16 v2, 0x20

    .line 137
    const/16 v1, 0x5c

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, ret:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 139
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 140
    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 141
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 142
    const/16 v1, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 143
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 144
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 145
    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 146
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public static removeCharAt(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "pos"

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 25
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static withoutCyrillic(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 31
    move-object v2, p0

    .line 33
    .local v2, ret:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 34
    const-string v3, ""

    .line 47
    :goto_0
    return-object v3

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    move-object v3, v2

    .line 47
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 40
    .local v0, codePoint:I
    const/16 v3, 0x410

    if-lt v0, v3, :cond_2

    const/16 v3, 0x454

    if-gt v0, v3, :cond_2

    .line 41
    invoke-static {v2, v1}, Lcom/madvil/core/Helper;->removeCharAt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 43
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
