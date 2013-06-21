.class public Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;
.super Ljava/lang/Object;
.source "C2DMUnregister.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "C2DMUnregister"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->LOG_PREFIX:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->debug:Z

    .line 12
    return-void
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 57
    iget-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->debug:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 24
    .local v1, result:Lcom/adobe/fre/FREObject;
    :try_start_0
    array-length v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 26
    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    iput-boolean v3, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->debug:Z

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->LOG_PREFIX:Ljava/lang/String;

    .line 30
    :cond_0
    const-string v3, "Unregistration dispatched"

    invoke-direct {p0, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->printDebug(Ljava/lang/String;)V

    .line 32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, unregIntent:Landroid/content/Intent;
    const-string v3, "app"

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    .end local v2           #unregIntent:Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 48
    :goto_1
    sget-object v3, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :catch_1
    move-exception v3

    goto :goto_1
.end method
