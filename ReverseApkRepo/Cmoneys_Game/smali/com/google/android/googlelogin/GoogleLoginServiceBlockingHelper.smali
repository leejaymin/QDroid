.class public Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
.super Ljava/lang/Object;
.source "GoogleLoginServiceBlockingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleLoginServiceBlockingHelper"


# instance fields
.field private final mBackoffFactor:D

.field private mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

.field private final mContext:Landroid/content/Context;

.field private mDelay:I

.field private mGlsVerified:Z

.field private volatile mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

.field private mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final mMaxDelaySecs:I

.field private final mMinDelaySecs:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    .line 60
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    .line 62
    iput-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    .line 124
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    .line 125
    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    .line 126
    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    .line 127
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 128
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    .line 131
    const-string v0, "com.google.android.googleapps.GoogleLoginService"

    invoke-static {p1, v0}, Lcom/google/android/googlelogin/GoogleAppsVerifier;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)V

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 168
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/googlelogin/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private checkGoogleLoginServiceVerificationLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method private delay()V
    .locals 4

    .prologue
    .line 198
    :try_start_0
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 203
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    iget v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 204
    :cond_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAccount(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 353
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccounts()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 307
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAndroidId(Landroid/content/Context;)J
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 515
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAndroidId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 517
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 408
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getOneAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method private resetDelay()V
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 211
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAccount(Z)Ljava/lang/String;
    .locals 3
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 373
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 375
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccount(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 376
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAccounts()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 325
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccounts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 326
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAndroidId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 536
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAndroidId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 537
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v0

    .line 433
    .local v0, result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;

    const-string v2, "unable to find auth token for account"

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .locals 3
    .parameter "username"
    .parameter "service"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 472
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/googleapps/IGoogleLoginService;->blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 474
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 223
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling GoogleLoginServiceBlockingHelper methods from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 228
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 230
    :try_start_2
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0

    .line 236
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->checkGoogleLoginServiceVerificationLocked()V

    .line 238
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 283
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    return-void

    .line 285
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 495
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/google/android/googleapps/IGoogleLoginService;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method
