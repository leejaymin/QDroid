.class public Lexam/Data/TextLog;
.super Ljava/lang/Object;
.source "TextLog.java"


# static fields
.field static final DIR_SELF:I = 0x1

.field static final LOG_SDCARD:I = 0x2

.field static final LOG_SYSTEM:I = 0x4

.field static mDir:I

.field static mFile:Ljava/lang/String;

.field static mHaveSD:Z

.field static mMain:Landroid/content/Context;

.field static mSDPath:Ljava/lang/String;

.field static mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ViewLog()V
    .locals 9

    .prologue
    .line 116
    sget-object v6, Lexam/Data/TextLog;->mMain:Landroid/content/Context;

    sget-object v7, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, path:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, Result:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 121
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 122
    .end local v3           #in:Ljava/io/BufferedReader;
    .local v4, in:Ljava/io/BufferedReader;
    if-eqz v4, :cond_0

    .line 124
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 125
    .local v1, ch:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 135
    .end local v1           #ch:I
    :cond_0
    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 140
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lexam/Data/TextLog;->mMain:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 142
    const-string v7, "Log"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 143
    const-string v7, "OK"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 144
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    return-void

    .line 126
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v1       #ch:I
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_2
    int-to-char v6, v1

    :try_start_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 130
    .end local v1           #ch:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 131
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "log file not found"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 137
    :catch_1
    move-exception v6

    goto :goto_1

    .line 133
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 135
    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 138
    :cond_3
    :goto_4
    throw v6

    .line 137
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_4

    .line 133
    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 130
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_4
    move-object v3, v4

    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v3       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static addMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 148
    const v0, 0x18ae5

    const-string v1, "ViewLog"

    invoke-interface {p0, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 149
    const v0, 0x18ae6

    const-string v1, "ResetLog"

    invoke-interface {p0, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    return-void
.end method

.method public static execMenu(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 155
    :pswitch_0
    invoke-static {}, Lexam/Data/TextLog;->ViewLog()V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-static {}, Lexam/Data/TextLog;->reset()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x18ae5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "main"

    .prologue
    .line 31
    sput-object p0, Lexam/Data/TextLog;->mMain:Landroid/content/Context;

    .line 32
    const-string v0, "andlog.txt"

    sput-object v0, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    .line 33
    const-string v0, "textlog"

    sput-object v0, Lexam/Data/TextLog;->mTag:Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    sput v0, Lexam/Data/TextLog;->mDir:I

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    sput-boolean v0, Lexam/Data/TextLog;->mHaveSD:Z

    .line 37
    sget-boolean v0, Lexam/Data/TextLog;->mHaveSD:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 38
    sput-object v0, Lexam/Data/TextLog;->mSDPath:Ljava/lang/String;

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start time:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexam/Data/TextLog;->o(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    .line 59
    if-nez p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget v4, Lexam/Data/TextLog;->mDir:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 64
    const/4 v3, 0x0

    .line 66
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v4, Lexam/Data/TextLog;->mMain:Landroid/content/Context;

    sget-object v5, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    const v6, 0x8000

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_2
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 83
    .end local v3           #fout:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    sget v4, Lexam/Data/TextLog;->mDir:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    sget-boolean v4, Lexam/Data/TextLog;->mHaveSD:Z

    if-eqz v4, :cond_5

    .line 84
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lexam/Data/TextLog;->mSDPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 87
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    if-eqz v2, :cond_4

    .line 89
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 90
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 98
    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 104
    .end local v0           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :cond_5
    :goto_2
    sget v4, Lexam/Data/TextLog;->mDir:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 105
    sget-object v4, Lexam/Data/TextLog;->mTag:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 77
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    move-exception v4

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v4

    .line 77
    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 80
    :cond_6
    :goto_3
    throw v4

    .line 93
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 98
    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 100
    :catch_3
    move-exception v4

    goto :goto_2

    .line 96
    :catchall_1
    move-exception v4

    .line 98
    :goto_5
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 101
    :cond_7
    :goto_6
    throw v4

    .line 79
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    goto :goto_3

    :catch_5
    move-exception v4

    goto :goto_1

    .line 100
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v5

    goto :goto_6

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v4

    goto :goto_2

    .line 96
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 93
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public static reset()V
    .locals 4

    .prologue
    .line 46
    sget v1, Lexam/Data/TextLog;->mDir:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lexam/Data/TextLog;->mMain:Landroid/content/Context;

    sget-object v2, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 49
    :cond_0
    sget v1, Lexam/Data/TextLog;->mDir:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    sget-boolean v1, Lexam/Data/TextLog;->mHaveSD:Z

    if-eqz v1, :cond_1

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lexam/Data/TextLog;->mSDPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lexam/Data/TextLog;->mFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reset time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lexam/Data/TextLog;->o(Ljava/lang/String;)V

    .line 54
    return-void
.end method
