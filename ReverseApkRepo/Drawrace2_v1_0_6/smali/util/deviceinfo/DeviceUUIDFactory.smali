.class public Lutil/deviceinfo/DeviceUUIDFactory;
.super Ljava/lang/Object;
.source "DeviceUUIDFactory.java"


# static fields
.field protected static final PREFIX_ANDROID_ID:Ljava/lang/String; = "AN-ID-"

.field protected static final PREFIX_DEVICE_ID:Ljava/lang/String; = "AN-TM-"

.field protected static final PREFIX_RANDOM_UUID:Ljava/lang/String; = "AN-RN-"

.field protected static final PREFS_DEVICE_ID:Ljava/lang/String; = "device_id"

.field protected static final PREFS_DEVICE_ID_PREFIX:Ljava/lang/String; = "device_id_prefix"

.field protected static final PREFS_FILE:Ljava/lang/String; = "device_id.xml"

.field protected static uuid:Ljava/util/UUID;

.field protected static uuidPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-nez v6, :cond_1

    .line 32
    const-class v7, Lutil/deviceinfo/DeviceUUIDFactory;

    monitor-enter v7

    .line 33
    :try_start_0
    sget-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-nez v6, :cond_0

    .line 34
    const-string v6, "device_id.xml"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 35
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "device_id"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, id:Ljava/lang/String;
    const-string v6, "device_id_prefix"

    const-string v8, ""

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, prefix:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 39
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 40
    sput-object v4, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;

    .line 69
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    monitor-exit v7

    .line 71
    :cond_1
    return-void

    .line 45
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "android_id"

    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    .local v0, androidId:Ljava/lang/String;
    :try_start_1
    const-string v6, "9774d56d682e549c"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 48
    const-string v6, "utf8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v6

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 49
    const-string v6, "AN-ID-"

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "device_id"

    sget-object v9, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v8, "device_id_prefix"

    sget-object v9, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 69
    .end local v0           #androidId:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 51
    .restart local v0       #androidId:Ljava/lang/String;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v4       #prefix:Ljava/lang/String;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_3
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, deviceId:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 53
    const-string v6, "utf8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v6

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 54
    const-string v6, "AN-TM-"

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 60
    .end local v1           #deviceId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 61
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #deviceId:Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 57
    const-string v6, "AN-RN-"

    sput-object v6, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getDeviceUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getDeviceUuidString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v0, Lutil/deviceinfo/DeviceUUIDFactory;->uuidPrefix:Ljava/lang/String;

    .line 79
    .local v0, s:Ljava/lang/String;
    :goto_0
    sget-object v1, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lutil/deviceinfo/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    return-object v0

    .line 78
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
