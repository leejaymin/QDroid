.class public Ledu/umich/PowerTutor/util/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    }
.end annotation


# static fields
.field public static final AID_ADB:I = 0x3f3

.field public static final AID_ALL:I = -0x1

.field public static final AID_APP:I = 0x2710

.field public static final AID_AUDIO:I = 0x3ed

.field public static final AID_BLUETOOTH:I = 0x3ea

.field public static final AID_CACHE:I = 0x7d1

.field public static final AID_CAMERA:I = 0x3ee

.field public static final AID_COMPASS:I = 0x3f0

.field public static final AID_DHCP:I = 0x3f6

.field public static final AID_DIAG:I = 0x7d2

.field public static final AID_GRAPHICS:I = 0x3eb

.field public static final AID_INET:I = 0xbbb

.field public static final AID_INPUT:I = 0x3ec

.field public static final AID_INSTALL:I = 0x3f4

.field public static final AID_LOG:I = 0x3ef

.field public static final AID_MEDIA:I = 0x3f5

.field public static final AID_MISC:I = 0x270e

.field public static final AID_MOUNT:I = 0x3f1

.field public static final AID_NET_BT:I = 0xbba

.field public static final AID_NET_BT_ADMIN:I = 0xbb9

.field public static final AID_NET_RAW:I = 0xbbc

.field public static final AID_NOBODY:I = 0x270f

.field public static final AID_RADIO:I = 0x3e9

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHELL:I = 0x7d0

.field public static final AID_SYSTEM:I = 0x3e8

.field public static final AID_WIFI:I = 0x3f2

.field public static final INDEX_MEM_BUFFERS:I = 0x2

.field public static final INDEX_MEM_CACHED:I = 0x3

.field public static final INDEX_MEM_FREE:I = 0x1

.field public static final INDEX_MEM_TOTAL:I = 0x0

.field public static final INDEX_SYS_TIME:I = 0x1

.field public static final INDEX_TOTAL_TIME:I = 0x2

.field public static final INDEX_USER_TIME:I = 0x0

.field private static final PROCESS_STATS_FORMAT:[I = null

.field private static final PROCESS_TOTAL_STATS_FORMAT:[I = null

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_LINE_TERM:I = 0xa

.field private static final PROC_MEMINFO_FORMAT:[I = null

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field private static final READ_LONG_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "SystemInfo"

.field private static instance:Ledu/umich/PowerTutor/util/SystemInfo;


# instance fields
.field private fieldUid:Ljava/lang/reflect/Field;

.field private methodGetPids:Ljava/lang/reflect/Method;

.field private methodGetProperty:Ljava/lang/reflect/Method;

.field private methodGetUidForPid:Ljava/lang/reflect/Method;

.field private methodReadProcFile:Ljava/lang/reflect/Method;

.field private readBuf:[J

.field uidCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ledu/umich/PowerTutor/util/SystemInfo;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/SystemInfo;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->instance:Ledu/umich/PowerTutor/util/SystemInfo;

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 97
    const/16 v2, 0x2020

    aput v2, v0, v1

    .line 96
    sput-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->READ_LONG_FORMAT:[I

    .line 99
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->PROCESS_STATS_FORMAT:[I

    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->PROCESS_TOTAL_STATS_FORMAT:[I

    .line 126
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->PROC_MEMINFO_FORMAT:[I

    .line 41
    return-void

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 116
    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 126
    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    .line 156
    :try_start_0
    const-class v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->fieldUid:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    .line 161
    :goto_0
    :try_start_1
    const-class v2, Landroid/os/Process;

    const-string v3, "getUidForPid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetUidForPid:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    :goto_1
    :try_start_2
    const-class v2, Landroid/os/Process;

    const-string v3, "getPids"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 167
    const-class v6, [I

    aput-object v6, v4, v5

    .line 166
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetPids:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    :goto_2
    :try_start_3
    const-class v2, Landroid/os/Process;

    const-string v3, "readProcFile"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 173
    const-class v6, [I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [J

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, [F

    aput-object v6, v4, v5

    .line 172
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :goto_3
    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, classSystemProperties:Ljava/lang/Class;
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetProperty:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 185
    .end local v0           #classSystemProperties:Ljava/lang/Class;
    :goto_4
    new-array v2, v7, [J

    iput-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->readBuf:[J

    .line 186
    return-void

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "SystemInfo"

    const-string v3, "Could not access getUidForPid method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 169
    .restart local v1       #e:Ljava/lang/NoSuchMethodException;
    const-string v2, "SystemInfo"

    const-string v3, "Could not access getPids method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 175
    .restart local v1       #e:Ljava/lang/NoSuchMethodException;
    const-string v2, "SystemInfo"

    const-string v3, "Could not access readProcFile method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 181
    .restart local v1       #e:Ljava/lang/NoSuchMethodException;
    const-string v2, "SystemInfo"

    const-string v3, "Could not access SystemProperties.get"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 182
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "SystemInfo"

    const-string v3, "Could not find class android.os.SystemProperties"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 157
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method

.method private getAppIdNoCache(ILandroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 8
    .parameter "uid"
    .parameter "pm"

    .prologue
    const/4 v5, 0x0

    .line 393
    const/16 v6, 0x2710

    if-ge p1, v6, :cond_0

    .line 394
    const-string v5, "SystemInfo"

    const-string v6, "Only pass application uids to getAppId"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v5, 0x0

    .line 408
    :goto_0
    return-object v5

    .line 397
    :cond_0
    const/4 v4, -0x1

    .line 398
    .local v4, versionCode:I
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    :goto_1
    if-lt v5, v6, :cond_3

    .line 406
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, "none"

    .line 408
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 399
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    aget-object v2, v3, v5

    .line 401
    .local v2, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 402
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 403
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public static getInstance()Ledu/umich/PowerTutor/util/SystemInfo;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Ledu/umich/PowerTutor/util/SystemInfo;->instance:Ledu/umich/PowerTutor/util/SystemInfo;

    return-object v0
.end method

.method private getUidNameNoCache(ILandroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 8
    .parameter "uid"
    .parameter "pm"

    .prologue
    const/4 v5, 0x0

    .line 427
    sparse-switch p1, :sswitch_data_0

    .line 466
    const/16 v6, 0x2710

    if-ge p1, v6, :cond_1

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sys_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    :cond_0
    :goto_0
    return-object v4

    .line 429
    :sswitch_0
    const-string v4, "Kernel"

    goto :goto_0

    .line 431
    :sswitch_1
    const-string v4, "System"

    goto :goto_0

    .line 433
    :sswitch_2
    const-string v4, "Radio Subsystem"

    goto :goto_0

    .line 435
    :sswitch_3
    const-string v4, "Bluetooth Subsystem"

    goto :goto_0

    .line 437
    :sswitch_4
    const-string v4, "Graphics Devices"

    goto :goto_0

    .line 439
    :sswitch_5
    const-string v4, "Input Devices"

    goto :goto_0

    .line 441
    :sswitch_6
    const-string v4, "Audio Devices"

    goto :goto_0

    .line 443
    :sswitch_7
    const-string v4, "Camera Devices"

    goto :goto_0

    .line 444
    :sswitch_8
    const-string v4, "Log Devices"

    goto :goto_0

    .line 446
    :sswitch_9
    const-string v4, "Compass Device (e.g. akmd)"

    goto :goto_0

    .line 448
    :sswitch_a
    const-string v4, "Mount"

    goto :goto_0

    .line 450
    :sswitch_b
    const-string v4, "Wifi Subsystem"

    goto :goto_0

    .line 452
    :sswitch_c
    const-string v4, "Android Debug Bridge"

    goto :goto_0

    .line 454
    :sswitch_d
    const-string v4, "Install"

    goto :goto_0

    .line 456
    :sswitch_e
    const-string v4, "Media Server"

    goto :goto_0

    .line 458
    :sswitch_f
    const-string v4, "DHCP Client"

    goto :goto_0

    .line 460
    :sswitch_10
    const-string v4, "Debug Shell"

    goto :goto_0

    .line 462
    :sswitch_11
    const-string v4, "Cache Access"

    goto :goto_0

    .line 464
    :sswitch_12
    const-string v4, "Diagnostics"

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, packages:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    :goto_1
    if-lt v5, v6, :cond_3

    .line 481
    :cond_2
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, uidName:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 471
    .end local v4           #uidName:Ljava/lang/String;
    :cond_3
    aget-object v2, v3, v5

    .line 473
    .local v2, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 474
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 475
    .local v1, label:Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 476
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 478
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #label:Ljava/lang/CharSequence;
    :catch_0
    move-exception v7

    .line 471
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_f
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_11
        0x7d2 -> :sswitch_12
    .end sparse-switch
.end method

.method private manualGetInts(Ljava/lang/String;[I)[I
    .locals 8
    .parameter "dir"
    .parameter "lastInts"

    .prologue
    .line 273
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_2

    const/4 v4, 0x0

    .line 275
    .local v4, sz:I
    :goto_0
    if-eqz p2, :cond_0

    array-length v6, p2

    if-ge v6, v4, :cond_3

    .line 276
    :cond_0
    new-array p2, v4, [I

    .line 280
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 281
    .local v2, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #pos:I
    .local v3, pos:I
    :goto_2
    if-lt v1, v4, :cond_4

    move v2, v3

    .line 288
    .end local v3           #pos:I
    .restart local v2       #pos:I
    :goto_3
    array-length v6, p2

    if-lt v2, v6, :cond_5

    .line 289
    return-object p2

    .line 274
    .end local v1           #i:I
    .end local v2           #pos:I
    .end local v4           #sz:I
    :cond_2
    array-length v4, v0

    goto :goto_0

    .line 277
    .restart local v4       #sz:I
    :cond_3
    mul-int/lit8 v6, v4, 0x2

    array-length v7, p2

    if-ge v6, v7, :cond_1

    .line 278
    new-array p2, v4, [I

    goto :goto_1

    .line 283
    .restart local v1       #i:I
    .restart local v3       #pos:I
    :cond_4
    :try_start_0
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 284
    .local v5, v:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #pos:I
    .restart local v2       #pos:I
    :try_start_1
    aput v5, p2, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    .end local v5           #v:I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #pos:I
    .restart local v3       #pos:I
    goto :goto_2

    .line 288
    .end local v3           #pos:I
    .restart local v2       #pos:I
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .end local v2           #pos:I
    .restart local v3       #pos:I
    const/4 v6, -0x1

    aput v6, p2, v2

    move v2, v3

    .end local v3           #pos:I
    .restart local v2       #pos:I
    goto :goto_3

    .line 285
    .end local v2           #pos:I
    .restart local v3       #pos:I
    :catch_0
    move-exception v6

    move v2, v3

    .end local v3           #pos:I
    .restart local v2       #pos:I
    goto :goto_4

    .restart local v5       #v:I
    :catch_1
    move-exception v6

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized getAppId(ILandroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .parameter "uid"
    .parameter "pm"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .line 379
    .local v0, cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    invoke-direct {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;-><init>()V

    .line 381
    .restart local v0       #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    :cond_0
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->clearIfExpired()V

    .line 384
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getAppId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 389
    :goto_0
    monitor-exit p0

    return-object v1

    .line 387
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Ledu/umich/PowerTutor/util/SystemInfo;->getAppIdNoCache(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->setAppId(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    .end local v1           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMemInfo([J)Z
    .locals 8
    .parameter "mem"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 344
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 356
    :goto_0
    return v1

    .line 346
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    .line 347
    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "/proc/meminfo"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 348
    sget-object v7, Ledu/umich/PowerTutor/util/SystemInfo;->PROC_MEMINFO_FORMAT:[I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 346
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 349
    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v3, "Failed to get mem info"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    move v1, v2

    .line 356
    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v3, "Exception thrown while getting mem info"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPidUsrSysTime(I[J)Z
    .locals 8
    .parameter "pid"
    .parameter "times"

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move v1, v2

    .line 307
    :goto_0
    return v1

    .line 299
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    .line 300
    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/proc/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/stat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 301
    sget-object v6, Ledu/umich/PowerTutor/util/SystemInfo;->PROCESS_STATS_FORMAT:[I

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 299
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v3, "Failed to get pid cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    move v1, v2

    .line 307
    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v3, "Exception thrown while getting pid cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPids([I)[I
    .locals 7
    .parameter "lastPids"

    .prologue
    const/4 v2, 0x0

    .line 232
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetPids:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-string v1, "/proc"

    invoke-direct {p0, v1, p1}, Ledu/umich/PowerTutor/util/SystemInfo;->manualGetInts(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 234
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetPids:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/proc"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v3, "Failed to get process cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    move-object v1, v2

    .line 240
    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v3, "Exception thrown while getting cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "property"

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetProperty:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 253
    :goto_0
    return-object v1

    .line 247
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetProperty:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v3, "Failed to get property"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    move-object v1, v2

    .line 253
    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v3, "Exception thrown while getting property"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getUidForPid(I)I
    .locals 12
    .parameter "pid"

    .prologue
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 189
    iget-object v8, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetUidForPid:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_1

    .line 190
    :try_start_0
    iget-object v5, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetUidForPid:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 212
    :goto_0
    return v5

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "SystemInfo"

    const-string v7, "Call to getUidForPid failed"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    :goto_1
    move v5, v6

    .line 212
    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v5, "SystemInfo"

    const-string v7, "Call to getUidForPid failed"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    .line 197
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/proc/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/status"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x100

    .line 196
    invoke-direct {v2, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 198
    .local v2, rdr:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    .line 199
    const-string v8, "Uid:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[ \t]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, tokens:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :goto_3
    aget-object v3, v4, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 203
    .local v3, realUidToken:Ljava/lang/String;
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v5

    goto :goto_0

    .end local v3           #realUidToken:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 201
    goto :goto_3

    .line 204
    .restart local v3       #realUidToken:Ljava/lang/String;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 205
    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #realUidToken:Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto :goto_2

    .line 209
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #rdr:Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    const-string v5, "SystemInfo"

    const-string v7, "Failed to manually read in process uid"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getUidForProcessInfo(Landroid/app/ActivityManager$RunningAppProcessInfo;)I
    .locals 1
    .parameter "app"

    .prologue
    .line 220
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo;->fieldUid:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo;->fieldUid:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v0

    .line 224
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidForPid(I)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getUidIcon(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "uid"
    .parameter "pm"

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .line 490
    .local v0, cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    invoke-direct {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;-><init>()V

    .line 492
    .restart local v0       #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    :cond_0
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->clearIfExpired()V

    .line 495
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getIcon()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 500
    :goto_0
    monitor-exit p0

    return-object v1

    .line 498
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidIconNoCache(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 499
    .local v1, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 489
    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getUidIconNoCache(ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "uid"
    .parameter "pm"

    .prologue
    .line 504
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, packages:[Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 514
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    return-object v3

    .line 507
    .restart local v1       #i:I
    :cond_1
    :try_start_0
    aget-object v3, v2, v1

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 508
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_2

    .line 509
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 511
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 505
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getUidName(ILandroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .parameter "uid"
    .parameter "pm"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .line 413
    .local v0, cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;

    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    invoke-direct {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;-><init>()V

    .line 415
    .restart local v0       #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    iget-object v2, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    :cond_0
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->clearIfExpired()V

    .line 418
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 419
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->getName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 423
    :goto_0
    monitor-exit p0

    return-object v1

    .line 421
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidNameNoCache(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    .end local v0           #cacheEntry:Ledu/umich/PowerTutor/util/SystemInfo$UidCacheEntry;
    .end local v1           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getUids([I)[I
    .locals 7
    .parameter "lastUids"

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetPids:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const-string v1, "/proc/uid_stat"

    invoke-direct {p0, v1, p1}, Ledu/umich/PowerTutor/util/SystemInfo;->manualGetInts(Ljava/lang/String;[I)[I

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodGetPids:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/proc/uid_stat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v3, "Failed to get process cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    move-object v1, v2

    .line 269
    goto :goto_0

    .line 266
    :catch_1
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v3, "Exception thrown while getting cpu usage"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getUsrSysTotalTime([J)Z
    .locals 14
    .parameter "times"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v7, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    if-nez v7, :cond_0

    move v7, v8

    .line 334
    :goto_0
    return v7

    .line 318
    :cond_0
    :try_start_0
    iget-object v7, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    .line 319
    const/4 v10, 0x0

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "/proc/stat"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 320
    sget-object v13, Ledu/umich/PowerTutor/util/SystemInfo;->PROCESS_TOTAL_STATS_FORMAT:[I

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p1, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x0

    aput-object v13, v11, v12

    .line 318
    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    const/4 v7, 0x0

    aget-wide v10, p1, v7

    const/4 v7, 0x1

    aget-wide v12, p1, v7

    add-long v5, v10, v12

    .line 322
    .local v5, usr:J
    const/4 v7, 0x2

    aget-wide v10, p1, v7

    const/4 v7, 0x5

    aget-wide v12, p1, v7

    add-long/2addr v10, v12

    const/4 v7, 0x6

    aget-wide v12, p1, v7

    add-long v1, v10, v12

    .line 323
    .local v1, sys:J
    add-long v10, v5, v1

    const/4 v7, 0x3

    aget-wide v12, p1, v7

    add-long/2addr v10, v12

    const/4 v7, 0x4

    aget-wide v12, p1, v7

    add-long v3, v10, v12

    .line 324
    .local v3, total:J
    const/4 v7, 0x0

    aput-wide v5, p1, v7

    .line 325
    const/4 v7, 0x1

    aput-wide v1, p1, v7

    .line 326
    const/4 v7, 0x2

    aput-wide v3, p1, v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v9

    .line 327
    goto :goto_0

    .line 329
    .end local v1           #sys:J
    .end local v3           #total:J
    .end local v5           #usr:J
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v7, "SystemInfo"

    const-string v9, "Failed to get total cpu usage"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    move v7, v8

    .line 334
    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "SystemInfo"

    const-string v9, "Exception thrown while getting total cpu usage"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public readLongFromFile(Ljava/lang/String;)J
    .locals 8
    .parameter "file"

    .prologue
    const-wide/16 v2, -0x1

    .line 361
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    move-wide v1, v2

    .line 372
    :goto_0
    return-wide v1

    .line 363
    :cond_0
    :try_start_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->methodReadProcFile:Ljava/lang/reflect/Method;

    .line 364
    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ledu/umich/PowerTutor/util/SystemInfo;->READ_LONG_FORMAT:[I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Ledu/umich/PowerTutor/util/SystemInfo;->readBuf:[J

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 363
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Ledu/umich/PowerTutor/util/SystemInfo;->readBuf:[J

    const/4 v4, 0x0

    aget-wide v1, v1, v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "SystemInfo"

    const-string v4, "Failed to get pid cpu usage"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :cond_1
    :goto_1
    move-wide v1, v2

    .line 372
    goto :goto_0

    .line 369
    :catch_1
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "SystemInfo"

    const-string v4, "Exception thrown while getting pid cpu usage"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized voidUidCache(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ledu/umich/PowerTutor/util/SystemInfo;->uidCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
