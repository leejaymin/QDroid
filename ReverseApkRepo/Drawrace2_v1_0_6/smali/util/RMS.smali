.class public Lutil/RMS;
.super Ljava/lang/Object;
.source "RMS.java"


# static fields
.field private static final RECORD_NAME:Ljava/lang/String; = "dr2_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecordLength(I)I
    .locals 9
    .parameter "recordId"

    .prologue
    const/4 v6, -0x1

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dr2_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    .local v5, recordName:Ljava/lang/String;
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    .line 19
    .local v0, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 23
    .local v4, length:I
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 25
    .local v2, iStream:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 26
    .local v3, inp:I
    if-le v3, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 27
    :cond_1
    if-gt v3, v6, :cond_0

    move v6, v4

    .line 31
    .end local v2           #iStream:Ljava/io/FileInputStream;
    .end local v3           #inp:I
    :goto_0
    return v6

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static readBuffer(I[B)V
    .locals 9
    .parameter "recordId"
    .parameter "buffer"

    .prologue
    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dr2_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, recordName:Ljava/lang/String;
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    .line 37
    .local v0, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 41
    .local v4, length:I
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, iStream:Ljava/io/FileInputStream;
    move v5, v4

    .line 43
    .end local v4           #length:I
    .local v5, length:I
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 44
    .local v3, inp:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 45
    add-int/lit8 v4, v5, 0x1

    .end local v5           #length:I
    .restart local v4       #length:I
    int-to-byte v7, v3

    :try_start_2
    aput-byte v7, p1, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v4

    .end local v4           #length:I
    .restart local v5       #length:I
    goto :goto_0

    :cond_0
    move v4, v5

    .line 57
    .end local v2           #iStream:Ljava/io/FileInputStream;
    .end local v3           #inp:I
    .end local v5           #length:I
    .restart local v4       #length:I
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/io/IOException;
    :goto_2
    const-string v7, "drawrace2"

    const-string v8, "io exception occurred in readBuffer"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #length:I
    .restart local v2       #iStream:Ljava/io/FileInputStream;
    .restart local v5       #length:I
    :catch_1
    move-exception v1

    move v4, v5

    .end local v5           #length:I
    .restart local v4       #length:I
    goto :goto_2
.end method

.method public static writeBuffer(I[B)V
    .locals 6
    .parameter "recordId"
    .parameter "buffer"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string v4, "drawrace2"

    const-string v5, "writeBuffer: input buffer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dr2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, recordName:Ljava/lang/String;
    sget-object v0, Lcom/redlynx/drawrace2/DrawRace2Native;->appContext:Landroid/content/Context;

    .line 69
    .local v0, context:Landroid/content/Context;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 70
    .local v2, oStream:Ljava/io/FileOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 71
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v2           #oStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/io/IOException;
    const-string v4, "drawrace2"

    const-string v5, "io exception occurred in writeBuffer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
