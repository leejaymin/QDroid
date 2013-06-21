.class public Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;
.super Ljava/lang/Object;
.source "C2DMRegister.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static APP_NAME:Ljava/lang/String; = null

.field private static LOG_PREFIX:Ljava/lang/String; = null

.field public static final RESPONSE_ERROR:I = 0x0

.field public static final RESPONSE_REGISTERED_WITH_GOOGLE:I = 0x1

.field public static final RESPONSE_REGISTER_WITH_GOOGLE:I = 0x2

.field public static debug:Z

.field private static metadataPattern:Ljava/util/regex/Pattern;


# instance fields
.field private senderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->APP_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "C2DMRegister"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->LOG_PREFIX:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->debug:Z

    .line 29
    const-string v0, "^/api/v\\d+/(collections|assets)((/[\\w\\-]+)|(/[\\w\\-]+/metadata/(name|modified|trashed)))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->metadataPattern:Ljava/util/regex/Pattern;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->senderId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static getPattern()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->metadataPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 109
    sget-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->debug:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method private sendRegistrationEvent(Lcom/adobe/fre/FREContext;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v1, "Registration dispatched"

    invoke-direct {p0, v1}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->printDebug(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, registrationIntent:Landroid/content/Intent;
    const-string v1, "app"

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string v1, "sender"

    iget-object v2, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    const/4 v1, 0x2

    return v1
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    const/4 v8, 0x0

    .line 33
    const/4 v3, 0x0

    .line 35
    .local v3, result:Lcom/adobe/fre/FREObject;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "C2DMPreferences"

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    array-length v6, p2

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 41
    const/4 v4, 0x0

    .line 43
    .local v4, resultCode:I
    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    sput-boolean v6, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->debug:Z

    .line 44
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->APP_NAME:Ljava/lang/String;

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->APP_NAME:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->LOG_PREFIX:Ljava/lang/String;

    .line 47
    const/4 v6, 0x2

    aget-object v6, p2, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 48
    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    sput-object v6, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->metadataPattern:Ljava/util/regex/Pattern;

    .line 50
    :cond_0
    const/4 v6, 0x3

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->senderId:Ljava/lang/String;

    .line 51
    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    mul-int/lit16 v5, v6, 0x3e8

    .line 55
    .local v5, sleepTime:I
    int-to-long v6, v5

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :goto_0
    if-nez v1, :cond_2

    .line 61
    :try_start_2
    const-string v6, "Shared prefs are null"

    invoke-direct {p0, v6}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->printDebug(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->sendRegistrationEvent(Lcom/adobe/fre/FREContext;)I

    move-result v4

    .line 75
    :goto_1
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 90
    .end local v4           #resultCode:I
    .end local v5           #sleepTime:I
    :cond_1
    :goto_2
    return-object v3

    .line 66
    .restart local v4       #resultCode:I
    .restart local v5       #sleepTime:I
    :cond_2
    const-string v6, "registrationKey"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, regId:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Registration id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->printDebug(Ljava/lang/String;)V

    .line 69
    :cond_3
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    invoke-direct {p0, p1}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->sendRegistrationEvent(Lcom/adobe/fre/FREContext;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    goto :goto_1

    .line 72
    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    .line 78
    .end local v2           #regId:Ljava/lang/String;
    .end local v4           #resultCode:I
    .end local v5           #sleepTime:I
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_3
    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    .line 87
    :goto_3
    sget-object v6, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->LOG_PREFIX:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C2DM Registration Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 57
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #resultCode:I
    .restart local v5       #sleepTime:I
    :catch_1
    move-exception v6

    goto :goto_0

    .line 84
    .end local v4           #resultCode:I
    .end local v5           #sleepTime:I
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_3
.end method
