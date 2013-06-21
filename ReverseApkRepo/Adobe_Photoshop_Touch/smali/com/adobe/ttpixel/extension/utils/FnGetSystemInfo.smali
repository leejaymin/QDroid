.class public Lcom/adobe/ttpixel/extension/utils/FnGetSystemInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final EGL_CFG_PATH:Ljava/lang/String; = "/system/lib/egl/egl.cfg"

.field private static final HW_GPU_FAMILY_ADRENO:I = 0x400

.field private static final HW_GPU_FAMILY_MALI:I = 0x100

.field private static final HW_GPU_FAMILY_POWERVR_SGX:I = 0x300

.field private static final HW_GPU_FAMILY_TEGRA:I = 0x200

.field private static final HW_GPU_FAMILY_UNKNOWN:I = 0x0

.field private static final LINE_PREFIX:Ljava/lang/String; = "0 1 "

.field private static final ONE_KB:I = 0x400

.field private static final OS_NAME:Ljava/lang/String; = "android"

.field private static final SYSINFO_DEVICE_MANUFACTURER:I = 0x20

.field private static final SYSINFO_DEVICE_MODEL:I = 0x21

.field private static final SYSINFO_DEVICE_NAME:I = 0x22

.field private static final SYSINFO_HW_CPU_CORES:I = 0x2

.field private static final SYSINFO_HW_GPU_FAMILY:I = 0x8

.field private static final SYSINFO_HW_MEMORY:I = 0x1

.field private static final SYSINFO_OS_NAME:I = 0x10

.field private static final SYSINFO_OS_VERSION_MAJOR:I = 0x11

.field private static final SYSINFO_OS_VERSION_MINOR:I = 0x12

.field private static final SYSINFO_OS_VERSION_PATCH:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v1, "MemTotal"

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/utils/SystemMemoryInfo;->amount(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v1, v2}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->getOnlineCPUCount()I

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/utils/FnGetSystemInfo;->determineGpuType()I

    move-result v1

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const-string v1, "android"

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_7
        0x22 -> :sswitch_7
    .end sparse-switch
.end method

.method protected determineGpuType()I
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/system/lib/egl/egl.cfg"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "0 1 "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0 1 "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mali"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0x100

    goto :goto_0

    :cond_1
    const-string v4, "tegra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x200

    goto :goto_0

    :cond_2
    const-string v4, "powervr_sgx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0x300

    goto :goto_0

    :cond_3
    const-string v4, "adreno"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x400

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method
