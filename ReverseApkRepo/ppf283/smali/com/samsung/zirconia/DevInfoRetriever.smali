.class Lcom/samsung/zirconia/DevInfoRetriever;
.super Ljava/lang/Object;
.source "DevInfoRetriever.java"


# instance fields
.field private deviceMIN:Ljava/lang/String;

.field private deviceOEMInfo:Ljava/lang/String;

.field private deviceSerialNumber:Ljava/lang/String;

.field private deviceSubscriberNumber:Ljava/lang/String;

.field private isEmulator:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 14
    .local v2, mAppContext:Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 23
    .local v3, tMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, deviceIMEI:Ljava/lang/String;
    const-string v4, "ro.serialno"

    const-string v5, "Unknown"

    invoke-static {v2, v4, v5}, Lcom/samsung/zirconia/DevInfoRetriever;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, flashSerialNumber:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    .line 27
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    .line 30
    if-eqz v0, :cond_1

    const-string v4, "000000000000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 31
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    .line 36
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-nez v4, :cond_3

    .line 38
    if-eqz v1, :cond_0

    const-string v4, "Unknown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    :cond_0
    const-string v4, "000000000000000"

    iput-object v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    .line 54
    :goto_1
    return-void

    .line 33
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    goto :goto_0

    .line 41
    :cond_2
    iput-object v1, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_3
    iput-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "key"
    .parameter "def"

    .prologue
    .line 87
    move-object v7, p2

    .line 90
    .local v7, ret:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 92
    .local v1, cl:Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, SystemProperties:Ljava/lang/Class;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Class;

    .line 97
    .local v5, paramTypes:[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 98
    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 100
    const-string v8, "get"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 103
    .local v3, get:Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    .line 104
    .local v6, params:[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 105
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 107
    invoke-static {v3, v0, v6}, Lt3SkSFUAg5/OCuIf6LzbGL;->DXWlrQRnmK(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #ret:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .end local v0           #SystemProperties:Ljava/lang/Class;
    .end local v1           #cl:Ljava/lang/ClassLoader;
    .end local v3           #get:Ljava/lang/reflect/Method;
    .end local v5           #paramTypes:[Ljava/lang/Class;
    .end local v6           #params:[Ljava/lang/Object;
    .restart local v7       #ret:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 109
    .end local v7           #ret:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 111
    .local v4, iAE:Ljava/lang/IllegalArgumentException;
    move-object v7, p2

    .restart local v7       #ret:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v4           #iAE:Ljava/lang/IllegalArgumentException;
    .end local v7           #ret:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 113
    .local v2, e:Ljava/lang/Exception;
    move-object v7, p2

    .restart local v7       #ret:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSerialNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceSubscriberNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceMIN:Ljava/lang/String;

    goto :goto_0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->deviceOEMInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public isEmulator()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator:Z

    return v0
.end method
