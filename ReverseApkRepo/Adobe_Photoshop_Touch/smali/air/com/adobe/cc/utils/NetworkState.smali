.class public Lair/com/adobe/cc/utils/NetworkState;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static LOG_PREFIX:Ljava/lang/String;

.field private static NETWORK_MOBILE:I

.field private static NETWORK_OFFLINE:I

.field private static NETWORK_WIFI:I


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "AdobeNetworkState"

    sput-object v0, Lair/com/adobe/cc/utils/NetworkState;->LOG_PREFIX:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput v0, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_OFFLINE:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_WIFI:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_MOBILE:I

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lair/com/adobe/cc/utils/NetworkState;->debug:Z

    .line 13
    return-void
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    iget-boolean v0, p0, Lair/com/adobe/cc/utils/NetworkState;->debug:Z

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lair/com/adobe/cc/utils/NetworkState;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 25
    array-length v5, p2

    if-lez v5, :cond_0

    .line 29
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v5

    iput-boolean v5, p0, Lair/com/adobe/cc/utils/NetworkState;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 36
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 40
    .local v3, result:Lcom/adobe/fre/FREObject;
    :try_start_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 43
    .local v4, wifi:Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 45
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    sget v5, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_WIFI:I

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 64
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v2           #mobile:Landroid/net/NetworkInfo;
    .end local v4           #wifi:Landroid/net/NetworkInfo;
    :goto_1
    return-object v3

    .line 47
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    .restart local v2       #mobile:Landroid/net/NetworkInfo;
    .restart local v4       #wifi:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    sget v5, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_MOBILE:I

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    goto :goto_1

    .line 50
    :cond_2
    sget v5, Lair/com/adobe/cc/utils/NetworkState;->NETWORK_OFFLINE:I

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 52
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v2           #mobile:Landroid/net/NetworkInfo;
    .end local v4           #wifi:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 55
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v3

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network State Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lair/com/adobe/cc/utils/NetworkState;->printDebug(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 59
    :catch_1
    move-exception v5

    goto :goto_1

    .line 31
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #result:Lcom/adobe/fre/FREObject;
    :catch_2
    move-exception v5

    goto :goto_0
.end method
