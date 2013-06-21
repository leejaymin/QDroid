.class public Lcom/kms/kmsdaemon/KMSDaemon;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lab;


# instance fields
.field private a:LfE;

.field private b:LgS;

.field private c:Laa;

.field private d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    invoke-direct {v0, p0}, Lcom/kms/kmsdaemon/KMSDaemon$Binder;-><init>(Lcom/kms/kmsdaemon/KMSDaemon;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    .line 132
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlCategory;)Ljava/io/InputStream;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 169
    const/16 v0, 0x35

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p2}, Lcom/kaspersky/components/urlchecker/UrlCategory;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 170
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->h()V

    .line 172
    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 174
    new-instance v6, Ljava/io/File;

    const-string v0, ""

    invoke-virtual {p0, v0, v4}, Lcom/kms/kmsdaemon/KMSDaemon;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v1, "smile.png"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    const v0, 0x7f060016

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    invoke-static {v3, v1}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "chmod 644 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    .line 192
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 205
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 213
    :cond_1
    :goto_1
    const v0, 0x7f06001f

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 220
    :try_start_4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 221
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    .line 224
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 226
    const-string v2, "${BLOCK_PAGE_TITLE}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_5

    .line 228
    const-string v2, "${BLOCK_PAGE_TITLE}"

    const/high16 v7, 0x7f08

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 251
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    .line 253
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 257
    if-eqz v2, :cond_3

    .line 261
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 268
    :cond_3
    :goto_5
    if-eqz v3, :cond_c

    .line 272
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v0, v1

    .line 279
    :goto_6
    return-object v0

    .line 186
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 188
    :goto_7
    :try_start_a
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 192
    if-eqz v1, :cond_0

    .line 196
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_0

    .line 200
    :catch_2
    move-exception v0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_4

    .line 196
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 200
    :cond_4
    :goto_9
    throw v0

    .line 207
    :catch_3
    move-exception v0

    .line 209
    invoke-static {v0}, Lam;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 230
    :cond_5
    :try_start_d
    const-string v2, "${BLOCK_PAGE_HEADER}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 232
    const-string v2, "${BLOCK_PAGE_HEADER}"

    const v7, 0x7f0802d3

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 234
    :cond_6
    const-string v2, "${BLOCK_PAGE_TEXT}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_7

    .line 236
    const-string v2, "${BLOCK_PAGE_TEXT}"

    const v7, 0x7f0802d4

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 238
    :cond_7
    const-string v2, "${BLOCK_PAGE_URL}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_8

    .line 240
    const-string v2, "${BLOCK_PAGE_URL}"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 242
    :cond_8
    const-string v2, "${ICON_FILE}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_2

    .line 244
    const-string v2, "${ICON_FILE}"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 249
    :cond_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 257
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 268
    :goto_a
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_6

    .line 276
    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_6

    .line 257
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_b
    if-eqz v3, :cond_a

    .line 261
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 268
    :cond_a
    :goto_c
    if-eqz v4, :cond_b

    .line 272
    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 276
    :cond_b
    :goto_d
    throw v0

    .line 200
    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v1

    goto :goto_d

    .line 257
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_b

    .line 251
    :catch_c
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4

    .line 192
    :catchall_5
    move-exception v0

    goto/16 :goto_8

    .line 186
    :catch_e
    move-exception v0

    goto/16 :goto_7

    :cond_c
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:Laa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laa;->a(Z)V

    .line 98
    return-void
.end method

.method public final a(LfD;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:LfE;

    invoke-virtual {v0, p1}, LfE;->a(LfD;)V

    .line 118
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LgS;

    invoke-virtual {v0, p1}, LgS;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:Laa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa;->a(Z)V

    .line 103
    return-void
.end method

.method public final c()LfE;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:LfE;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->d:Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    const-string v0, "com.kms.wd.READY"

    const-string v1, "com.kms.LAUNCH"

    invoke-static {p0, v0, v1}, Lcom/kaspersky/components/WatchDog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v0, LfE;

    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LfE;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->a:LfE;

    .line 72
    new-instance v0, Lcom/kms/antivirus/AvApplicationsMonitor;

    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kms/antivirus/AvApplicationsMonitor;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {p0}, LZ;->a(Landroid/content/Context;)LZ;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0, v1}, LZ;->a(Lcom/kaspersky/components/urlchecker/UrlCategory;)V

    .line 76
    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0, v1}, LZ;->a(Lcom/kaspersky/components/urlchecker/UrlCategory;)V

    .line 77
    new-instance v0, Laa;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Laa;-><init>(Landroid/content/Context;Lab;I)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->c:Laa;

    .line 79
    new-instance v0, LgS;

    invoke-virtual {p0}, Lcom/kms/kmsdaemon/KMSDaemon;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LgS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LgS;

    .line 80
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LgS;

    invoke-static {v0}, LW;->a(LV;)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kms/kmsdaemon/KMSDaemon;->b:LgS;

    invoke-static {v0}, LW;->b(LV;)V

    .line 87
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 88
    return-void
.end method
