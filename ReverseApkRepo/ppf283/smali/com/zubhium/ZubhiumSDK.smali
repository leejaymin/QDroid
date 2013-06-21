.class public Lcom/zubhium/ZubhiumSDK;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zubhium/ZubhiumSDK$CrashReportingMode;,
        Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;
    }
.end annotation


# static fields
.field static final DEVICEINFO:Ljava/lang/String; = "device_info"

.field static final INVALID_INPUT_DESC:Ljava/lang/String; = "Missing required filed"

.field static LOGSIZE:I = 0x0

.field static final NETWORKINFO:Ljava/lang/String; = "network_state"

.field static final NETWORK_ERROR:Ljava/lang/String; = "please check network connection"

.field static final SDK_VERSION:Ljava/lang/String; = "ZubhiumAndroidSDK 0.9"

.field static final SDK_VERSION_CODE:Ljava/lang/String; = "0.9"

.field static final ZUBHIUM_APP_ID:Ljava/lang/String; = "secret_key"

.field static final ZUBHIUM_VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static sInstance:Lcom/zubhium/ZubhiumSDK;


# instance fields
.field private ZUBHIUM_DEVICE_ID:Ljava/lang/String;

.field callback:Lcom/zubhium/interfaces/ZubhiumCallback;

.field private context:Landroid/content/Context;

.field private customDevId:Ljava/lang/String;

.field private defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

.field defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

.field dialog:Landroid/app/AlertDialog;

.field private enableCrash:Z

.field exceptionHandler:Lcom/zubhium/utils/ZubhiumCrashReporter;

.field receiverActivity:Landroid/app/Activity;

.field private screenHeight:I

.field private screenWidth:I

.field updateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private zubhiumSecretKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x64

    sput v0, Lcom/zubhium/ZubhiumSDK;->LOGSIZE:I

    .line 48
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "app_secret_key"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zubhium/ZubhiumSDK;->enableCrash:Z

    .line 59
    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenWidth:I

    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenHeight:I

    .line 61
    sget-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    .line 67
    const-string v0, "uuid"

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    .line 170
    new-instance v0, Lcom/zubhium/ZubhiumSDK$1;

    invoke-direct {v0, p0}, Lcom/zubhium/ZubhiumSDK$1;-><init>(Lcom/zubhium/ZubhiumSDK;)V

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->callback:Lcom/zubhium/interfaces/ZubhiumCallback;

    .line 751
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    .line 752
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    .line 142
    if-eqz p1, :cond_1

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "invalid secret_key, failed to get ZubhiumSDK instance"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    .line 148
    const-string v0, "initializing ZubhiumAndroidSDK 0.9"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p2}, Lcom/zubhium/ZubhiumSDK;->initsdk(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    const-string v0, "invalid parameters,  failed to get ZubhiumSDK instance"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "app_secret_key"
    .parameter "developer_data"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zubhium/ZubhiumSDK;->enableCrash:Z

    .line 59
    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenWidth:I

    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenHeight:I

    .line 61
    sget-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    .line 67
    const-string v0, "uuid"

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/zubhium/ZubhiumSDK$CrashReportingMode;->DEFAULT:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    .line 170
    new-instance v0, Lcom/zubhium/ZubhiumSDK$1;

    invoke-direct {v0, p0}, Lcom/zubhium/ZubhiumSDK$1;-><init>(Lcom/zubhium/ZubhiumSDK;)V

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->callback:Lcom/zubhium/interfaces/ZubhiumCallback;

    .line 751
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    .line 752
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    .line 122
    if-eqz p1, :cond_2

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "invalid secret_key,failed to get ZubhiumSDK instance"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "invalid developer data,failed to get ZubhiumSDK instance"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    .line 134
    const-string v0, "initializing ZubhiumAndroidSDK 0.9"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/zubhium/ZubhiumSDK;->initsdk(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    const-string v0, "invalid parameters, failed to get ZubhiumSDK instance"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zubhium/ZubhiumSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->enableCrashReporting()V

    return-void
.end method

.method static synthetic access$10(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct/range {p0 .. p5}, Lcom/zubhium/ZubhiumSDK;->getCrashReportJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/zubhium/ZubhiumSDK;)Lcom/zubhium/ZubhiumSDK$CrashReportingMode;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    return-object v0
.end method

.method static synthetic access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 714
    invoke-direct {p0, p1, p2}, Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 608
    invoke-direct/range {p0 .. p6}, Lcom/zubhium/ZubhiumSDK;->submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/zubhium/ZubhiumSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->initDeviceId()V

    return-void
.end method

.method static synthetic access$3(Lcom/zubhium/ZubhiumSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->initWindow()V

    return-void
.end method

.method static synthetic access$4(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumSDK;->getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->getDeviceState()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/zubhium/ZubhiumSDK;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/zubhium/ZubhiumSDK;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->getParameters()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static checkOfflineCrash(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 438
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    .local v4, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 441
    :try_start_0
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, lineSep:Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "zubhium.trace"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 444
    .local v0, br:Ljava/io/BufferedReader;
    const-string v3, ""

    .line 445
    .local v3, nextLine:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-nez v3, :cond_1

    .line 459
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #lineSep:Ljava/lang/String;
    .end local v3           #nextLine:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 446
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #lineSep:Ljava/lang/String;
    .restart local v3       #nextLine:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 454
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #lineSep:Ljava/lang/String;
    .end local v3           #nextLine:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "crashreport:not found any crash"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_1

    .line 456
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private clearCrashReports(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v1, "zubhium.trace"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 263
    :cond_0
    return-void
.end method

.method private static convertListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 963
    .local p0, logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 964
    :cond_0
    const-string v3, ""

    .line 973
    :goto_0
    return-object v3

    .line 966
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 967
    .local v0, listItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .local v1, log:Ljava/lang/StringBuilder;
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 969
    .local v2, separator:Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 970
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static convertListToString(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-gtz p1, :cond_1

    .line 948
    :cond_0
    const-string v4, ""

    .line 959
    :goto_0
    return-object v4

    .line 950
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 951
    .local v1, listItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .local v2, log:Ljava/lang/StringBuilder;
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, separator:Ljava/lang/String;
    const/4 v0, 0x0

    .line 954
    .local v0, counter:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v0, p1, :cond_3

    .line 959
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 955
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private enableCrashReporting()V
    .locals 3

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/zubhium/ZubhiumSDK;->enableCrash:Z

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "configuring crash reporting"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/zubhium/utils/ZubhiumCrashReporter;

    invoke-direct {v0}, Lcom/zubhium/utils/ZubhiumCrashReporter;-><init>()V

    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->exceptionHandler:Lcom/zubhium/utils/ZubhiumCrashReporter;

    .line 166
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->exceptionHandler:Lcom/zubhium/utils/ZubhiumCrashReporter;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->callback:Lcom/zubhium/interfaces/ZubhiumCallback;

    invoke-virtual {v0, v1, v2}, Lcom/zubhium/utils/ZubhiumCrashReporter;->init(Landroid/content/Context;Lcom/zubhium/interfaces/ZubhiumCallback;)V

    .line 168
    :cond_0
    return-void
.end method

.method static executeCommand([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "commands"
    .parameter "boundSize"

    .prologue
    .line 918
    if-eqz p0, :cond_2

    array-length v5, p0

    if-lez v5, :cond_2

    .line 920
    const/4 v3, 0x0

    .line 922
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 923
    .local v2, mLogcatProc:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 924
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v1, logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 929
    if-eqz p1, :cond_3

    .line 930
    sget v5, Lcom/zubhium/ZubhiumSDK;->LOGSIZE:I

    invoke-static {v1, v5}, Lcom/zubhium/ZubhiumSDK;->convertListToString(Ljava/util/ArrayList;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 936
    if-eqz v4, :cond_0

    .line 938
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 943
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mLogcatProc:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 927
    .restart local v0       #line:Ljava/lang/String;
    .restart local v1       #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #mLogcatProc:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 934
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 936
    .end local v2           #mLogcatProc:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v3, :cond_2

    .line 938
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 943
    .end local v3           #reader:Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    const-string v5, ""

    goto :goto_1

    .line 932
    .restart local v0       #line:Ljava/lang/String;
    .restart local v1       #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #mLogcatProc:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_5
    invoke-static {v1}, Lcom/zubhium/ZubhiumSDK;->convertListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v5

    .line 936
    if-eqz v4, :cond_0

    .line 938
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 939
    :catch_1
    move-exception v6

    goto :goto_1

    .line 935
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mLogcatProc:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    .line 936
    :goto_4
    if-eqz v3, :cond_4

    .line 938
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 941
    :cond_4
    :goto_5
    throw v5

    .line 939
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v0       #line:Ljava/lang/String;
    .restart local v1       #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #mLogcatProc:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v0           #line:Ljava/lang/String;
    .end local v1           #logsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #mLogcatProc:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_5

    .line 935
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #mLogcatProc:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 934
    .end local v2           #mLogcatProc:Ljava/lang/Process;
    :catch_5
    move-exception v5

    goto :goto_2
.end method

.method private getCrashReportJSON(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "stacktrace"
    .parameter "fileName"
    .parameter "className"
    .parameter "methodName"
    .parameter "lineNo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/zubhium/utils/ZubhiumError;
        }
    .end annotation

    .prologue
    .line 463
    const-string v3, "crash"

    invoke-direct {p0, v3}, Lcom/zubhium/ZubhiumSDK;->getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 464
    .local v2, values:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 465
    .local v0, crashData:Lorg/json/JSONObject;
    const-string v3, "full_exception"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    const-string v3, "file"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    const-string v3, "class"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    const-string v3, "method"

    invoke-virtual {v0, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 469
    const-string v3, "logcat"

    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/zubhium/ZubhiumSDK;->getLogcat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    const-string v3, "memdump"

    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->getMemdump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v3, "lineno"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->getDeviceState()Lorg/json/JSONObject;

    move-result-object v1

    .line 473
    .local v1, deviceState:Lorg/json/JSONObject;
    const-string v3, "device_state"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v3, "uuid"

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v3, "crash"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    const-string v3, "devuuid"

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDevicePostData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "requestType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v0, object:Lorg/json/JSONObject;
    const-string v1, "zubhium_sdk"

    const-string v2, "0.9"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v1, "request_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 339
    const-string v1, "secret_key"

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "app_version"

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v1, "app_version_code"

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 343
    const-string v1, "app_package"

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    :cond_0
    return-object v0
.end method

.method private getDeviceState()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 728
    .local v0, device_state:Lorg/json/JSONObject;
    const-string v2, "device_info"

    iget v3, p0, Lcom/zubhium/ZubhiumSDK;->screenWidth:I

    iget v4, p0, Lcom/zubhium/ZubhiumSDK;->screenHeight:I

    invoke-static {v3, v4}, Lcom/zubhium/utils/ZubhiumUtils;->getDeviceInfo(II)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zubhium/utils/ZubhiumUtils;->haveInternet(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 730
    .local v1, network:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 731
    const-string v2, "network_state"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    :cond_0
    return-object v0
.end method

.method private getLogcat(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "tag"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 887
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 888
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 889
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.permission.READ_LOGS"

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 891
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 892
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "logcat"

    aput-object v3, v1, v5

    const-string v3, "-d"

    aput-object v3, v1, v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AndroidRuntime:E "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":V *:S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 905
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, ""

    :goto_0
    return-object v3

    .line 894
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 895
    .local v0, SDK_INT:I
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 896
    new-array v1, v9, [Ljava/lang/String;

    const-string v3, "logcat"

    aput-object v3, v1, v5

    const-string v3, "-v"

    aput-object v3, v1, v6

    const-string v3, "time"

    aput-object v3, v1, v7

    const-string v3, "-d"

    aput-object v3, v1, v8

    .line 897
    .local v1, commands:[Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/zubhium/ZubhiumSDK;->executeCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 899
    .end local v1           #commands:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "logcat"

    aput-object v3, v1, v5

    const-string v3, "-t"

    aput-object v3, v1, v6

    const-string v3, "200"

    aput-object v3, v1, v7

    const-string v3, "-v"

    aput-object v3, v1, v8

    const-string v3, "time"

    aput-object v3, v1, v9

    .line 900
    .restart local v1       #commands:[Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/zubhium/ZubhiumSDK;->executeCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getMemdump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v0, commandLine:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "dumpsys"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    const-string v1, "meminfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zubhium/ZubhiumSDK;->executeCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getParameters()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 351
    .local v0, object:Lorg/json/JSONObject;
    const-string v1, "secret_key"

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v1, "zubhium_sdk"

    const-string v2, "0.9"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    return-object v0
.end method

.method public static declared-synchronized getZubhiumSDKInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/zubhium/ZubhiumSDK;
    .locals 2
    .parameter "context"
    .parameter "app_secret_key"

    .prologue
    .line 94
    const-class v1, Lcom/zubhium/ZubhiumSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/zubhium/ZubhiumSDK;

    invoke-direct {v0, p0, p1}, Lcom/zubhium/ZubhiumSDK;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;

    .line 97
    :cond_0
    sget-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getZubhiumSDKInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/zubhium/ZubhiumSDK;
    .locals 2
    .parameter "context"
    .parameter "app_secret_key"
    .parameter "developer_data"

    .prologue
    .line 109
    const-class v1, Lcom/zubhium/ZubhiumSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/zubhium/ZubhiumSDK;

    invoke-direct {v0, p0, p1, p2}, Lcom/zubhium/ZubhiumSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;

    .line 112
    :cond_0
    sget-object v0, Lcom/zubhium/ZubhiumSDK;->sInstance:Lcom/zubhium/ZubhiumSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized initConfig(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "init"
    .parameter "new_install"
    .parameter "version_code"
    .parameter "secret_key"

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 267
    if-eqz p1, :cond_1

    .line 268
    new-instance v0, Lcom/zubhium/ZubhiumSDK$3;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/zubhium/ZubhiumSDK$3;-><init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    .line 312
    const-string v0, "confiured ZubhiumAndroidSDK 0.9 successfully"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->sendOfflineCrash()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDeviceId()V
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    new-instance v2, Lcom/zubhium/utils/ZubhiumId;

    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/zubhium/utils/ZubhiumId;-><init>(Landroid/content/Context;)V

    .line 190
    .local v2, zId:Lcom/zubhium/utils/ZubhiumId;
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v2}, Lcom/zubhium/utils/ZubhiumId;->get()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, id:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/zubhium/ZubhiumSDK;->ZUBHIUM_DEVICE_ID:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/zubhium/utils/ZubhiumUtils;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #zId:Lcom/zubhium/utils/ZubhiumId;
    :cond_0
    return-void
.end method

.method private initWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 324
    iget v1, p0, Lcom/zubhium/ZubhiumSDK;->screenWidth:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/zubhium/ZubhiumSDK;->screenHeight:I

    if-ne v1, v2, :cond_1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 327
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenWidth:I

    .line 329
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/zubhium/ZubhiumSDK;->screenHeight:I

    .line 332
    .end local v0           #display:Landroid/view/Display;
    :cond_1
    return-void
.end method

.method private initsdk(Ljava/lang/String;)V
    .locals 7
    .parameter "app_secret_key"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 203
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 204
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, versionCode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 206
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v4, "version_code"

    invoke-static {v3, v4}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, prevVersionCode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :cond_0
    invoke-direct {p0, v5, v5, v2, p1}, Lcom/zubhium/ZubhiumSDK;->initConfig(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v1           #prevVersionCode:Ljava/lang/String;
    .end local v2           #versionCode:Ljava/lang/String;
    :goto_0
    return-void

    .line 210
    .restart local v1       #prevVersionCode:Ljava/lang/String;
    .restart local v2       #versionCode:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v4, "secret_key"

    invoke-static {v3, v4}, Lcom/zubhium/utils/ZubhiumUtils;->readPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, prevAppKey:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v4, "secret_key"

    invoke-static {v3, v4}, Lcom/zubhium/utils/ZubhiumUtils;->clearPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v5, v5, v2, p1}, Lcom/zubhium/ZubhiumSDK;->initConfig(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-direct {p0, v6, v6, v2, v0}, Lcom/zubhium/ZubhiumSDK;->initConfig(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v0           #prevAppKey:Ljava/lang/String;
    .end local v1           #prevVersionCode:Ljava/lang/String;
    :cond_3
    const-string v3, "invalid versionCode, failed to confiure sdk."

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v2           #versionCode:Ljava/lang/String;
    :cond_4
    const-string v3, "invalid parameters, failed to confiure sdk"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openDefaultDialog(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V
    .locals 16
    .parameter "activity"
    .parameter "actionListener"

    .prologue
    .line 510
    new-instance v14, Lcom/zubhium/ZubhiumView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/zubhium/ZubhiumView;-><init>(Landroid/content/Context;)V

    .line 511
    .local v14, v:Landroid/view/View;
    if-eqz v14, :cond_3

    .line 512
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v13, screenDialog:Landroid/app/AlertDialog$Builder;
    const-string v1, "Submit Feedback"

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 515
    const-string v1, "zubhiumIcon"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 516
    .local v9, appIcon:Landroid/widget/ImageView;
    const-string v1, "zubhiumHeadline"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 517
    .local v11, appName:Landroid/widget/TextView;
    const-string v1, "zubhiumDescription"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 518
    .local v12, appVersion:Landroid/widget/TextView;
    const-string v1, "zubhiumFeedback"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 519
    .local v4, appFeedback:Landroid/widget/EditText;
    const-string v1, "zubhiumOptionsGroup"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 521
    .local v3, zubhiumOptionGroup:Landroid/widget/RadioGroup;
    const-string v1, "zubhiumSystemcheckbox"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 523
    .local v6, includeSystemDetails:Landroid/widget/CheckBox;
    const-string v1, "zubhiumFeedbackEmail"

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 525
    .local v5, emailEditText:Landroid/widget/EditText;
    if-eqz v11, :cond_0

    .line 526
    invoke-static/range {p1 .. p1}, Lcom/zubhium/utils/ZubhiumUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_0
    if-eqz v12, :cond_1

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/zubhium/utils/ZubhiumUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    if-eqz v9, :cond_2

    .line 534
    invoke-static/range {p1 .. p1}, Lcom/zubhium/utils/ZubhiumUtils;->getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 535
    .local v10, appIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 536
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    .end local v10           #appIconDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 541
    const-string v15, "OK"

    new-instance v1, Lcom/zubhium/ZubhiumSDK$5;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/zubhium/ZubhiumSDK$5;-><init>(Lcom/zubhium/ZubhiumSDK;Landroid/widget/RadioGroup;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V

    invoke-virtual {v13, v15, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    const-string v1, "Cancel"

    new-instance v2, Lcom/zubhium/ZubhiumSDK$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/zubhium/ZubhiumSDK$6;-><init>(Lcom/zubhium/ZubhiumSDK;)V

    invoke-virtual {v13, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 590
    .end local v3           #zubhiumOptionGroup:Landroid/widget/RadioGroup;
    .end local v4           #appFeedback:Landroid/widget/EditText;
    .end local v5           #emailEditText:Landroid/widget/EditText;
    .end local v6           #includeSystemDetails:Landroid/widget/CheckBox;
    .end local v9           #appIcon:Landroid/widget/ImageView;
    .end local v11           #appName:Landroid/widget/TextView;
    .end local v12           #appVersion:Landroid/widget/TextView;
    .end local v13           #screenDialog:Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void
.end method

.method private declared-synchronized sendOfflineCrash()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/zubhium/ZubhiumSDK$2;

    invoke-direct {v0, p0}, Lcom/zubhium/ZubhiumSDK$2;-><init>(Lcom/zubhium/ZubhiumSDK;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :cond_0
    :try_start_1
    const-string v0, "crashreport:please check network connection"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "a"
    .parameter "string"

    .prologue
    .line 715
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    new-instance v0, Lcom/zubhium/ZubhiumSDK$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/zubhium/ZubhiumSDK$8;-><init>(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    :cond_0
    return-void
.end method

.method private submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
    .locals 8
    .parameter "activity"
    .parameter "actionListener"
    .parameter "email"
    .parameter "message"
    .parameter "feedbackCategory"
    .parameter "includeSystemDetails"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Lcom/zubhium/ZubhiumSDK$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/zubhium/ZubhiumSDK$7;-><init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;ZLandroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 679
    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 684
    :goto_0
    return-void

    .line 682
    :cond_0
    const-string v0, "feedback:SDK not configured properly"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addMetaData(Ljava/lang/String;)V
    .locals 1
    .parameter "metaData"

    .prologue
    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->customDevId:Ljava/lang/String;

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    const-string v0, "Invalid identifier"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableCrashReporting(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/zubhium/ZubhiumSDK;->enableCrash:Z

    .line 157
    return-void
.end method

.method protected launchUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 877
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v0, i:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/4 v1, 0x1

    .line 883
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    .line 881
    :catch_0
    move-exception v1

    .line 883
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openFeedbackDialog(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 502
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zubhium/ZubhiumSDK;->openDefaultDialog(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    const-string v0, "feedback:failed to open feedback dialog , sdk not configured properly"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openFeedbackDialog(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V
    .locals 1
    .parameter "activity"
    .parameter "actionListener"

    .prologue
    .line 489
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/zubhium/ZubhiumSDK;->openDefaultDialog(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v0, "feedback:failed to open feedback dialog , sdk not configured properly"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected parseResult(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "activity"
    .parameter "result"

    .prologue
    .line 687
    if-eqz p2, :cond_0

    const-string v2, "body"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    const-string v2, "body"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 691
    .local v0, body:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, message:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 694
    invoke-static {v1}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v0           #body:Lorg/json/JSONObject;
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerUpdateReceiver(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->receiverActivity:Landroid/app/Activity;

    .line 772
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->receiverActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    new-instance v0, Lcom/zubhium/ZubhiumSDK$9;

    invoke-direct {v0, p0, p1}, Lcom/zubhium/ZubhiumSDK$9;-><init>(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 862
    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 773
    iput-object v0, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    .line 865
    :cond_0
    return-void
.end method

.method protected reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V
    .locals 0
    .parameter "actionListener"
    .parameter "e"

    .prologue
    .line 709
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 710
    invoke-interface {p1, p2}, Lcom/zubhium/interfaces/ZubhiumListener;->onZubhiumError(Lcom/zubhium/utils/ZubhiumError;)V

    .line 712
    :cond_0
    return-void
.end method

.method declared-synchronized reportLogs(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ehandler"
    .parameter "t"
    .parameter "e"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/zubhium/ZubhiumSDK$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/zubhium/ZubhiumSDK$4;-><init>(Lcom/zubhium/ZubhiumSDK;Ljava/lang/Throwable;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 408
    invoke-virtual {v0, v1}, Lcom/zubhium/ZubhiumSDK$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reportSuccessBack(Lcom/zubhium/interfaces/ZubhiumListener;)V
    .locals 0
    .parameter "actionListener"

    .prologue
    .line 703
    if-eqz p1, :cond_0

    .line 704
    invoke-interface {p1}, Lcom/zubhium/interfaces/ZubhiumListener;->onZubhiumActionCompleted()V

    .line 706
    :cond_0
    return-void
.end method

.method public setCrashReportingMode(Lcom/zubhium/ZubhiumSDK$CrashReportingMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 745
    if-eqz p1, :cond_0

    .line 746
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK;->defaultReportingMode:Lcom/zubhium/ZubhiumSDK$CrashReportingMode;

    .line 748
    :cond_0
    return-void
.end method

.method protected submitCrashes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/zubhium/ZubhiumSDK;->checkOfflineCrash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, oldStackTrace:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/zubhium/ZubhiumSDK;->getParameters()Lorg/json/JSONObject;

    move-result-object v2

    .line 248
    .local v2, postParams:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/zubhium/utils/ZubhiumNetworkUtils;->submitLogs(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zubhium/ZubhiumSDK;->clearCrashReports(Lorg/json/JSONObject;)V

    .line 249
    const-string v3, "crashreport:offline crash report submitted successfully"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zubhium/utils/ZubhiumError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .end local v1           #oldStackTrace:Ljava/lang/String;
    .end local v2           #postParams:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string v3, ""

    return-object v3

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Lcom/zubhium/utils/ZubhiumError;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "crashreport:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zubhium/utils/ZubhiumError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    .end local v0           #e:Lcom/zubhium/utils/ZubhiumError;
    :catch_1
    move-exception v0

    .line 254
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "crashreport:JSONException"

    invoke-static {v3}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public submitFeedback(Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
    .locals 7
    .parameter "actionListener"
    .parameter "email"
    .parameter "message"
    .parameter "feedbackCategory"
    .parameter "includeSystemDetails"

    .prologue
    .line 594
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zubhium/ZubhiumSDK;->submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V

    .line 595
    return-void
.end method

.method public submitFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
    .locals 7
    .parameter "email"
    .parameter "message"
    .parameter "feedbackCategory"
    .parameter "includeSystemDetails"

    .prologue
    const/4 v1, 0x0

    .line 598
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/zubhium/ZubhiumSDK;->submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V

    .line 599
    return-void
.end method

.method public unRegisterUpdateReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 756
    const-string v0, "unregistred update receiver"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 759
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->dialog:Landroid/app/AlertDialog;

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 763
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 764
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->updateTask:Landroid/os/AsyncTask;

    .line 766
    :cond_1
    iput-object v2, p0, Lcom/zubhium/ZubhiumSDK;->receiverActivity:Landroid/app/Activity;

    .line 768
    :cond_2
    return-void
.end method

.method declared-synchronized writeToOfflineCrash(Ljava/lang/String;)V
    .locals 8
    .parameter "newCrash"

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 414
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/zubhium/ZubhiumSDK;->checkOfflineCrash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, oldCrash:Ljava/lang/String;
    const-string v5, "crashreport:analysing new problem"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 417
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    const-string v5, "crashreport:analysed as old problem"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #oldCrash:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 420
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v2       #oldCrash:Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, separator:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 424
    const-string v5, "crashreport:analysed as new problem"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 426
    .end local v3           #separator:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/zubhium/ZubhiumSDK;->context:Landroid/content/Context;

    const-string v6, "zubhium.trace"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 427
    .local v4, trace:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 428
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 429
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #oldCrash:Ljava/lang/String;
    .end local v4           #trace:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 430
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    const-string v5, "crashreport:failed to save new problem"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 412
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 433
    :cond_2
    :try_start_4
    const-string v5, "crashreport:failed to analyse new problem"

    invoke-static {v5}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
