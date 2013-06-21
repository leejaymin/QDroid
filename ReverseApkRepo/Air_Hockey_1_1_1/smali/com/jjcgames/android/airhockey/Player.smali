.class Lcom/jjcgames/android/airhockey/Player;
.super Ljava/lang/Object;
.source "Player.java"


# static fields
.field private static final UNKNOWN_DATA_IN_PLAYER_FILE:Ljava/lang/String; = "Unknown data in player file."


# instance fields
.field public final highestLevel:I

.field public final id:I

.field public final level:I

.field public final name:Ljava/lang/String;

.field public final previousLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "Unknown data in player file."

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lcom/jjcgames/android/airhockey/Player;->id:I

    .line 36
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 37
    new-instance v8, Ljava/io/FileInputStream;

    invoke-static {p1, p2}, Lcom/jjcgames/android/airhockey/Player;->playerFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 38
    sget-object v9, Lcom/jjcgames/android/airhockey/Game;->PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v8, 0x400

    .line 36
    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 40
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jjcgames/android/airhockey/Player;->name:Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 47
    .local v3, level:I
    const/4 v6, -0x1

    .line 48
    .local v6, previousLevel:I
    move v2, v3

    .line 51
    .local v2, highestLevel:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 68
    iput v6, p0, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    .line 69
    iput v2, p0, Lcom/jjcgames/android/airhockey/Player;->highestLevel:I

    .line 70
    iput v3, p0, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 71
    return-void

    .line 44
    .end local v2           #highestLevel:I
    .end local v3           #level:I
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #previousLevel:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 45
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unknown data in player file."

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 52
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #highestLevel:I
    .restart local v3       #level:I
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #previousLevel:I
    :cond_0
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, parts:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1

    .line 54
    move v6, v3

    .line 56
    const/4 v7, 0x2

    :try_start_1
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 58
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 59
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unknown data in player file."

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unknown data in player file."

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static addNewMatch(Landroid/content/Context;III)V
    .locals 5
    .parameter "context"
    .parameter "playerID"
    .parameter "cpuLevel"
    .parameter "newLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, " "

    .line 76
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 77
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p0, p1}, Lcom/jjcgames/android/airhockey/Player;->playerFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 78
    sget-object v2, Lcom/jjcgames/android/airhockey/Game;->PLAYER_FILE_CHARSET:Ljava/nio/charset/Charset;

    .line 76
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 80
    .local v0, w:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 84
    return-void
.end method

.method private static playerFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 26
    new-instance v0, Ljava/io/File;

    .line 27
    const-string v1, "players"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
