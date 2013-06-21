.class public final Lgy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "PPContacts.dat"

    sput-object v0, Lgy;->b:Ljava/lang/String;

    .line 32
    const-string v0, "PPSMS.dat"

    sput-object v0, Lgy;->c:Ljava/lang/String;

    .line 33
    const-string v0, "PPLogs.dat"

    sput-object v0, Lgy;->d:Ljava/lang/String;

    .line 34
    const-string v0, "PPHidNum.dat"

    sput-object v0, Lgy;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lgy;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 313
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 319
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 324
    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 329
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 3
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-object v0

    .line 343
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 346
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lff;->a()Lff;

    move-result-object v0

    .line 144
    sget-object v1, Lgy;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgy;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 146
    if-nez v1, :cond_0

    .line 147
    const/4 v0, -0x1

    .line 151
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v2, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lff;->a(Landroid/content/Context;Ljava/io/FileInputStream;)I

    move-result v0

    .line 150
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 158
    :try_start_0
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 159
    new-instance v2, Ljava/io/File;

    sget-object v1, Lgy;->d:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 162
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    invoke-static {}, LeE;->a()LeE;

    move-result-object v0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LeE;->a(Ljava/io/RandomAccessFile;JLjava/lang/String;I)I

    move-result v0

    .line 164
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_0
    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v6

    .line 170
    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    .line 175
    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    .line 118
    :try_start_0
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 119
    new-instance v2, Ljava/io/File;

    sget-object v1, Lgy;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 122
    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v1, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lff;->a()Lff;

    move-result-object v0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lff;->a(Ljava/io/RandomAccessFile;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 124
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v7

    .line 130
    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v7

    .line 135
    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 45
    :cond_1
    sget-object v0, Lgy;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgy;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    const/4 v0, -0x1

    goto :goto_0

    .line 48
    :cond_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 53
    :goto_1
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lfp;->a(Ljava/io/DataOutput;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 65
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    :goto_2
    move v0, v1

    .line 67
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 65
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 65
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    throw v0
.end method

.method public final a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 3
    .parameter

    .prologue
    .line 270
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 271
    invoke-static {}, LeJ;->a()LeJ;

    move-result-object v1

    .line 273
    sget-object v2, Lgy;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lgy;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 274
    if-nez v2, :cond_0

    .line 281
    :goto_0
    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2, p1}, LeJ;->a(Landroid/content/Context;Ljava/io/FileInputStream;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    .line 280
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 199
    invoke-static {}, LeE;->a()LeE;

    .line 202
    sget-object v0, Lgy;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgy;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 204
    if-nez v1, :cond_0

    .line 205
    const/4 v0, -0x1

    .line 209
    :goto_0
    return v0

    .line 206
    :cond_0
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LeE;->a(Landroid/content/Context;Ljava/io/FileInputStream;)I

    move-result v0

    .line 208
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    goto :goto_0
.end method

.method public final b(Ljava/util/Set;)I
    .locals 3
    .parameter

    .prologue
    .line 72
    sget-object v0, Lgy;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgy;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 73
    if-nez v1, :cond_0

    .line 74
    const/4 v0, -0x1

    .line 92
    :goto_0
    return v0

    .line 75
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    :goto_1
    :try_start_0
    invoke-static {v2}, Lfp;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 90
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lfp;->a(Ljava/io/InputStream;)Z

    .line 90
    invoke-static {v1}, Lfp;->a(Ljava/io/InputStream;)Z

    throw v0
.end method

.method public final c(Ljava/util/Set;)I
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lff;->a()Lff;

    move-result-object v0

    .line 99
    sget-object v1, Lgy;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 100
    if-nez v1, :cond_0

    .line 101
    const/4 v0, -0x1

    .line 110
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v2, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p1}, Lff;->a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget-object v2, p0, Lgy;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lff;->a(Landroid/content/Context;Ljava/util/Set;)Z

    .line 106
    :cond_1
    invoke-static {v1}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/io/File;

    sget-object v2, Lgy;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 295
    if-nez v1, :cond_0

    .line 296
    const-string v1, "KMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivacyProtectionStorage: can\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgy;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lgy;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 300
    if-nez v1, :cond_1

    .line 301
    const-string v1, "KMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivacyProtectionStorage: can\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lgy;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lgy;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 305
    if-nez v0, :cond_2

    .line 306
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivacyProtectionStorage: can\'t delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lgy;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    return-void
.end method

.method public final d(Ljava/util/Set;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 181
    invoke-static {}, LeE;->a()LeE;

    move-result-object v1

    .line 183
    sget-object v2, Lgy;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lgy;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 184
    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    iget-object v3, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, p1}, LeE;->a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    iget-object v4, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, LeE;->a(Landroid/content/Context;Ljava/util/Set;)Z

    .line 190
    :cond_2
    invoke-static {v2}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 191
    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final e(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .parameter

    .prologue
    .line 218
    invoke-static {}, LeJ;->a()LeJ;

    move-result-object v0

    .line 220
    sget-object v1, Lgy;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1, p1}, LeJ;->a(Landroid/content/Context;Ljava/io/FileOutputStream;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_0

    .line 225
    iget-object v3, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, LeJ;->a(Landroid/content/Context;Ljava/util/Set;)Z

    .line 227
    :cond_0
    invoke-static {v1}, Lfp;->a(Ljava/io/OutputStream;)Z

    .line 228
    return-object v2
.end method

.method public final f(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .parameter

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 237
    :try_start_0
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 238
    new-instance v2, Ljava/io/File;

    sget-object v3, Lgy;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 241
    :cond_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v0, "rwd"

    invoke-direct {v3, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-static {}, LeJ;->a()LeJ;

    move-result-object v2

    .line 244
    iget-object v0, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3, p1}, LeJ;->a(Landroid/content/Context;Ljava/io/RandomAccessFile;Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 245
    if-eqz v0, :cond_1

    .line 246
    :try_start_1
    iget-object v1, p0, Lgy;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, p1}, LeJ;->a(Landroid/content/Context;Ljava/util/Set;)Z

    .line 247
    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 259
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 252
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 254
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 256
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 254
    :catch_2
    move-exception v1

    goto :goto_2

    .line 250
    :catch_3
    move-exception v1

    goto :goto_1
.end method
