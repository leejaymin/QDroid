.class Lcom/stericson/RootTools/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final BOGUS_FILE_NAME:Ljava/lang/String; = "bogus"

.field private static final LOG_TAG:Ljava/lang/String; = "RootTools::Installer"


# instance fields
.field private context:Landroid/content/Context;

.field private filesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected installBinary(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 71
    new-instance v9, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v9, mf:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 77
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 78
    .local v5, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 107
    .end local v5           #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 108
    .local v7, iss:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 110
    .local v10, oss:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 111
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .local v11, oss:Ljava/io/FileOutputStream;
    const/16 v12, 0x1000

    :try_start_2
    new-array v1, v12, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c

    .line 114
    .local v1, buffer:[B
    :goto_1
    const/4 v12, -0x1

    :try_start_3
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c

    move-result v8

    .local v8, len:I
    if-ne v12, v8, :cond_7

    .line 130
    if-eqz v11, :cond_1

    .line 132
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 137
    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 146
    :try_start_6
    new-instance v2, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "chmod "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-direct {v2, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 147
    .local v2, command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 148
    invoke-virtual {v2}, Lcom/stericson/RootTools/CommandCapture;->waitForFinish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 151
    .end local v1           #buffer:[B
    .end local v2           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v8           #len:I
    .end local v11           #oss:Ljava/io/FileOutputStream;
    :cond_2
    :goto_3
    const/4 v12, 0x1

    :goto_4
    return v12

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 82
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 83
    const-string v12, "justcreatedfilesdirectory"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 91
    if-eqz v6, :cond_0

    .line 93
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 95
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 84
    :catch_2
    move-exception v4

    .line 85
    .local v4, ex:Ljava/lang/Exception;
    :try_start_9
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_3

    .line 86
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 91
    :cond_3
    if-eqz v6, :cond_4

    .line 93
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    const-string v13, "bogus"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 88
    :cond_4
    :goto_5
    const/4 v12, 0x0

    goto :goto_4

    .line 90
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 91
    if-eqz v6, :cond_5

    .line 93
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/stericson/RootTools/Installer;->context:Landroid/content/Context;

    const-string v14, "bogus"

    invoke-virtual {v13, v14}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 97
    :cond_5
    :goto_6
    throw v12

    .line 99
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    .line 100
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_6

    .line 101
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 115
    .end local v4           #ex:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v7       #iss:Ljava/io/InputStream;
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :cond_7
    const/4 v12, 0x0

    :try_start_c
    invoke-virtual {v11, v1, v12, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_c

    goto/16 :goto_1

    .line 117
    .end local v8           #len:I
    :catch_4
    move-exception v4

    .line 118
    .restart local v4       #ex:Ljava/io/IOException;
    :try_start_d
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_8

    .line 119
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_c

    .line 130
    :cond_8
    if-eqz v11, :cond_9

    .line 132
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 121
    :cond_9
    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 123
    .end local v1           #buffer:[B
    .end local v4           #ex:Ljava/io/IOException;
    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    .line 124
    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_f
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_a

    .line 125
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 130
    :cond_a
    if-eqz v10, :cond_b

    .line 132
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 127
    :cond_b
    :goto_9
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 129
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v12

    .line 130
    :goto_a
    if-eqz v10, :cond_c

    .line 132
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 135
    :cond_c
    :goto_b
    throw v12

    .line 138
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    .line 139
    .local v4, ex:Ljava/io/IOException;
    sget-boolean v12, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v12, :cond_d

    .line 140
    const-string v12, "RootTools::Installer"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 133
    .end local v8           #len:I
    :catch_7
    move-exception v12

    goto :goto_7

    .end local v1           #buffer:[B
    .end local v11           #oss:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v12

    goto :goto_9

    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v13

    goto :goto_b

    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v1       #buffer:[B
    .restart local v8       #len:I
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v12

    goto/16 :goto_2

    .line 149
    :catch_b
    move-exception v12

    goto/16 :goto_3

    .line 129
    .end local v1           #buffer:[B
    .end local v8           #len:I
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 123
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v11       #oss:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    move-object v10, v11

    .end local v11           #oss:Ljava/io/FileOutputStream;
    .restart local v10       #oss:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 95
    .end local v7           #iss:Ljava/io/InputStream;
    .end local v10           #oss:Ljava/io/FileOutputStream;
    .restart local v3       #e:Ljava/io/FileNotFoundException;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v13

    goto :goto_6

    .local v4, ex:Ljava/lang/Exception;
    :catch_e
    move-exception v12

    goto/16 :goto_5
.end method

.method protected isBinaryInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "destName"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, installed:Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/stericson/RootTools/Installer;->filesPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, mf:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method
