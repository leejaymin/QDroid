.class public Lcom/scoreloop/client/android/core/model/Device;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Device$State;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lorg/json/JSONObject;

.field private e:Lcom/scoreloop/client/android/core/model/DeviceUuid;

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/scoreloop/client/android/core/model/DeviceIdStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "device"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Device;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/Device;)Lcom/scoreloop/client/android/core/model/DeviceIdStore;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->g:Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    return-object v0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/model/DeviceUuid;)Lcom/scoreloop/client/android/core/model/DeviceUuid;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Device;->e:Lcom/scoreloop/client/android/core/model/DeviceUuid;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 69
    const-string v1, "country_code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 72
    const-string v1, "mcc"

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "mnc"

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 59
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/model/Device;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 106
    :cond_0
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_4

    .line 107
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 108
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 110
    if-eq v3, v5, :cond_1

    .line 111
    const-string v4, "lac"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 114
    if-eq v0, v5, :cond_2

    .line 115
    const-string v3, "cid"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    :cond_4
    move-object v0, v1

    .line 122
    goto :goto_0
.end method

.method private g()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 128
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/model/Device;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/scoreloop/client/android/core/model/Device;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Device;->c:Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    invoke-direct {v0, p1}, Lcom/scoreloop/client/android/core/model/DeviceIdStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->g:Lcom/scoreloop/client/android/core/model/DeviceIdStore;

    .line 183
    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$1;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/model/Device$1;-><init>(Lcom/scoreloop/client/android/core/model/Device;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Device$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->f:Landroid/os/AsyncTask;

    .line 195
    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/Device;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->d:Lorg/json/JSONObject;

    .line 196
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 259
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Device;->b:Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/scoreloop/client/android/core/model/Device$2;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/model/Device$2;-><init>(Lcom/scoreloop/client/android/core/model/Device;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Device$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Device;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const-string v0, "uuid"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Device;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_0
    const-string v0, "system_name"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "system_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v2, "attached_data"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "home_network"

    iget-object v4, p0, Lcom/scoreloop/client/android/core/model/Device;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "current_network"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Device;->g()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cell_location"

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Device;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    return-object v1

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->f:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Device;->e:Lcom/scoreloop/client/android/core/model/DeviceUuid;

    iget-object v0, v0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Device;->f:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Device;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 204
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 202
    :catch_1
    move-exception v1

    goto :goto_0
.end method
