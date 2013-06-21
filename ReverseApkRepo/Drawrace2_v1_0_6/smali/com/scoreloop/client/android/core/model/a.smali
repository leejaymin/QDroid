.class Lcom/scoreloop/client/android/core/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "9774d56d682e549c"

    aput-object v1, v0, v2

    sput-object v0, Lcom/scoreloop/client/android/core/model/a;->a:[Ljava/lang/String;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "000000000000000"

    aput-object v1, v0, v2

    const-string v1, "3580673013795895"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "358673013795895"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "004999010640000"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/a;->b:[Ljava/lang/String;

    .line 27
    const-class v0, Lcom/scoreloop/client/android/core/model/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/a;->c:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/a;->c:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 44
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    sget-object v1, Lcom/scoreloop/client/android/core/model/a;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/scoreloop/client/android/core/model/DeviceUuid;
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceUuid;

    sget-object v2, Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;->IMEI:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/DeviceUuid;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;)V

    .line 69
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/scoreloop/client/android/core/model/a;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 64
    :goto_1
    if-eqz v1, :cond_2

    .line 65
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceUuid;

    sget-object v2, Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;->ANDROID_ID:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/DeviceUuid;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 69
    :cond_2
    new-instance v0, Lcom/scoreloop/client/android/core/model/DeviceUuid;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-generated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;->GENERATED:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/DeviceUuid;-><init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;)V

    goto :goto_0
.end method
