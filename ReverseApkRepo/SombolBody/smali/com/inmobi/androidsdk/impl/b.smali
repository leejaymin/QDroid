.class Lcom/inmobi/androidsdk/impl/b;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final a:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x400

    .line 1226
    const-class v3, Lcom/inmobi/androidsdk/impl/b;

    monitor-enter v3

    const/4 v0, 0x0

    .line 1228
    cmp-long v1, p0, v6

    if-ltz v1, :cond_2

    .line 1229
    :try_start_0
    const-string v0, " KB"

    .line 1230
    const-wide/16 v1, 0x400

    div-long v1, p0, v1

    .line 1233
    :goto_0
    cmp-long v4, v1, v6

    if-ltz v4, :cond_0

    .line 1234
    const-string v0, " MB"

    .line 1235
    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    .line 1237
    :cond_0
    cmp-long v4, v1, v6

    if-ltz v4, :cond_1

    .line 1238
    const-string v0, " GB"

    .line 1239
    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    .line 1242
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move-wide v1, p0

    goto :goto_0
.end method

.method static declared-synchronized a()Z
    .locals 3

    .prologue
    .line 1193
    const-class v1, Lcom/inmobi/androidsdk/impl/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1194
    const-string v2, "mounted"

    .line 1193
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b()J
    .locals 5

    .prologue
    .line 1199
    const-class v2, Lcom/inmobi/androidsdk/impl/b;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1200
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 1202
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 1203
    mul-long/2addr v0, v3

    .line 1205
    :goto_0
    monitor-exit v2

    return-wide v0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static declared-synchronized c()J
    .locals 7

    .prologue
    const-wide/16 v0, -0x1

    .line 1211
    const-class v2, Lcom/inmobi/androidsdk/impl/b;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 1213
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v5, v3

    .line 1215
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 1216
    mul-long/2addr v0, v5

    .line 1221
    :cond_0
    :goto_0
    monitor-exit v2

    return-wide v0

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1220
    :catch_0
    move-exception v3

    goto :goto_0
.end method
