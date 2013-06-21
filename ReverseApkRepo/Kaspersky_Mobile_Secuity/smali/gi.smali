.class public final Lgi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lgi;


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    .line 32
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 33
    new-instance v1, Ljava/io/File;

    const-string v0, "prefs.dat"

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v3, "newprefs.dat"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 54
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 55
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 56
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lgi;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    :cond_0
    :goto_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/shared_prefs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "prefs.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0}, Lgi;->d()V

    .line 87
    :cond_1
    :goto_2
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "SettingsStorage log"

    const-string v3, "Error parsing JSON"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .line 84
    :cond_2
    invoke-direct {p0}, Lgi;->c()V

    goto :goto_2

    .line 72
    :catch_3
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lgi;
    .locals 2

    .prologue
    .line 135
    const-class v1, Lgi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgi;->b:Lgi;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lgi;

    invoke-direct {v0}, Lgi;-><init>()V

    sput-object v0, Lgi;->b:Lgi;

    .line 138
    :cond_0
    sget-object v0, Lgi;->b:Lgi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p0}, Lgi;->b()V

    .line 95
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    .line 99
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 105
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 108
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 109
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 113
    :cond_2
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 114
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 118
    :cond_3
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 119
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    if-nez v1, :cond_0

    .line 124
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p0}, Lgi;->b()V

    .line 130
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 142
    .line 144
    :try_start_0
    iget-object v2, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 146
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 157
    :goto_0
    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 154
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 152
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 146
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 162
    .line 164
    :try_start_0
    iget-object v2, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 166
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    :goto_0
    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 174
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 172
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 166
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 213
    .line 215
    :try_start_0
    iget-object v2, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 217
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    :goto_0
    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 223
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgi;->b(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 217
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 180
    .line 182
    :try_start_0
    iget-object v2, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 184
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    :goto_0
    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 192
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 190
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    move-object v0, p2

    goto :goto_2

    .line 184
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    iput-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    .line 326
    invoke-virtual {p0}, Lgi;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lgi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-object p2

    .line 203
    :cond_0
    invoke-static {v0}, Lcom/kavsdk/shared/SdkUtils;->decodeBase64jni(Ljava/lang/String;)[B

    move-result-object v0

    .line 204
    if-nez v0, :cond_1

    .line 206
    const-string v0, "KMS"

    const-string v1, "Settings base64 decode failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 285
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/File;

    const-string v2, "newprefs.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    new-instance v2, Ljava/io/File;

    const-string v3, "prefs.dat"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v3, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    iget-object v4, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 294
    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 296
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 297
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 309
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "SettingsStorage log"

    const-string v3, "error deleting old settings file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "SettingsStorage log"

    const-string v1, "error renaming settings file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    :goto_1
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 305
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    const-string v1, "SettingsStorage log"

    const-string v2, "error writing file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_0
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_0
    return-void

    .line 277
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lgi;->a:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    iget-object v0, p0, Lgi;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-static {p2}, Lfn;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 268
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, p1, v0}, Lgi;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
