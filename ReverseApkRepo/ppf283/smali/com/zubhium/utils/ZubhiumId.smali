.class public Lcom/zubhium/utils/ZubhiumId;
.super Ljava/lang/Object;
.source "ZubhiumId.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field static final ZUBHIUM_DEVICE_ID:Ljava/lang/String; = "uuid"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/zubhium/utils/ZubhiumId;->getRandomSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "uuid"

    sget-object v1, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 29
    invoke-static {}, Lcom/zubhium/utils/ZubhiumId;->getDeviceSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 31
    :cond_1
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 32
    invoke-static {p1}, Lcom/zubhium/utils/ZubhiumId;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 34
    :cond_2
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 35
    invoke-static {p1}, Lcom/zubhium/utils/ZubhiumId;->getBuildSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 38
    :cond_3
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 39
    invoke-direct {p0}, Lcom/zubhium/utils/ZubhiumId;->createRandomSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    .line 40
    const-string v0, "uuid"

    sget-object v1, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_4
    return-void
.end method

.method private static checkSerial(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 105
    const-string v5, "unknown"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v4

    .line 110
    :cond_1
    const-string v5, "9774d56d682e549c"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, c0:I
    const/4 v2, 0x0

    .line 117
    .local v2, counter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_0

    .line 131
    const/4 v4, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 119
    .local v1, c1:I
    if-nez v3, :cond_3

    .line 120
    move v0, v1

    .line 122
    :cond_3
    if-ne v0, v1, :cond_4

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 117
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private createRandomSerial()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBuildSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "SERIAL"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 94
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumId;->checkSerial(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 100
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumId;->checkSerial(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDeviceSerial()Ljava/lang/String;
    .locals 7

    .prologue
    .line 69
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    .local v1, get:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-static {v1, v0, v3}, Lt3SkSFUAg5/OCuIf6LzbGL;->DXWlrQRnmK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumId;->checkSerial(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->getHash(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 77
    .end local v1           #get:Ljava/lang/reflect/Method;
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 75
    :catch_0
    move-exception v3

    .line 77
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getRandomSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x20

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, s:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 54
    :cond_0
    const-string v1, "uuid"

    invoke-static {p1, v1}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_2

    move-object v1, v0

    .line 60
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 140
    const-class v3, Lcom/zubhium/utils/ZubhiumId;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "INSTALLATION"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v1, installation:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    invoke-static {v1}, Lcom/zubhium/utils/ZubhiumId;->writeInstallationFile(Ljava/io/File;)V

    .line 145
    :cond_0
    invoke-static {v1}, Lcom/zubhium/utils/ZubhiumId;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    .end local v1           #installation:Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 146
    .restart local v1       #installation:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #installation:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "installation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v1, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 156
    .local v0, bytes:[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 157
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 158
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 3
    .parameter "installation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, id:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 166
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/zubhium/utils/ZubhiumId;->sID:Ljava/lang/String;

    return-object v0
.end method
