.class public abstract Lcom/superdroid/util/SmsManagerHelper;
.super Ljava/lang/Object;
.source "SmsManagerHelper.java"


# static fields
.field private static SDK_CUPCAKE:I

.field private static SDK_VERSION:I

.field private static SMSMANAGER_HELPER:Lcom/superdroid/util/SmsManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x3

    sput v0, Lcom/superdroid/util/SmsManagerHelper;->SDK_CUPCAKE:I

    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/superdroid/util/SmsManagerHelper;->SDK_VERSION:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSmsManagerInstance()Lcom/superdroid/util/SmsManagerHelper;
    .locals 5

    .prologue
    const-class v2, Lcom/superdroid/util/SmsManagerHelper;

    .line 23
    const-class v2, Lcom/superdroid/util/SmsManagerHelper;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/superdroid/util/SmsManagerHelper;->SMSMANAGER_HELPER:Lcom/superdroid/util/SmsManagerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 25
    :try_start_1
    sget v3, Lcom/superdroid/util/SmsManagerHelper;->SDK_VERSION:I

    sget v4, Lcom/superdroid/util/SmsManagerHelper;->SDK_CUPCAKE:I

    if-le v3, v4, :cond_1

    .line 27
    const-string v3, "com.superdroid.util.SmsManagerSDK4Helper"

    .line 26
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 28
    const-class v4, Lcom/superdroid/util/SmsManagerHelper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/SmsManagerHelper;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/SmsManagerHelper;>;"
    check-cast v0, Lcom/superdroid/util/SmsManagerHelper;

    sput-object v0, Lcom/superdroid/util/SmsManagerHelper;->SMSMANAGER_HELPER:Lcom/superdroid/util/SmsManagerHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lcom/superdroid/util/SmsManagerHelper;->SMSMANAGER_HELPER:Lcom/superdroid/util/SmsManagerHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v3

    .line 32
    :cond_1
    :try_start_3
    const-string v3, "com.superdroid.util.SmsManagerPreSDK4Helper"

    .line 31
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 33
    const-class v4, Lcom/superdroid/util/SmsManagerHelper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/SmsManagerHelper;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/superdroid/util/SmsManagerHelper;>;"
    check-cast v0, Lcom/superdroid/util/SmsManagerHelper;

    sput-object v0, Lcom/superdroid/util/SmsManagerHelper;->SMSMANAGER_HELPER:Lcom/superdroid/util/SmsManagerHelper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 37
    .local v1, ex:Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public abstract getBitMapDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
.end method

.method public abstract sendMessage(Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendTextMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method
