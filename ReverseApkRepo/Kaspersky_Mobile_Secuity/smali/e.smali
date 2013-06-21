.class public final Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Ljava/security/SecureRandom;


# instance fields
.field private b:Lcom/android/vending/licensing/ILicensingService;

.field private c:Ljava/security/PublicKey;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/android/vending/licensing/Policy;

.field private f:Landroid/os/Handler;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Le;->a:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le;->i:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le;->j:Ljava/util/Queue;

    .line 90
    iput-object p1, p0, Le;->d:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Le;->e:Lcom/android/vending/licensing/Policy;

    .line 92
    invoke-static {p3}, Le;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Le;->c:Ljava/security/PublicKey;

    .line 93
    iget-object v0, p0, Le;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le;->g:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Le;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Le;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le;->h:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Le;->f:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v0

    const-string v0, "LicenseChecker"

    const-string v1, "Package not found. could not get version code."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lo;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 116
    :catch_1
    move-exception v0

    .line 117
    const-string v1, "LicenseChecker"

    const-string v2, "Could not decode from Base64."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_2
    move-exception v0

    .line 120
    const-string v1, "LicenseChecker"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Le;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Le;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Le;Li;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Le;->b(Li;)V

    return-void
.end method

.method private declared-synchronized a(Li;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Le;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0}, Le;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Le;)Ljava/security/PublicKey;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Le;->c:Ljava/security/PublicKey;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 166
    :goto_0
    iget-object v0, p0, Le;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li;

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    const-string v1, "LicenseChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Li;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;

    invoke-virtual {v0}, Li;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Li;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lf;

    invoke-direct {v5, p0, v0}, Lf;-><init>(Le;Li;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/vending/licensing/ILicensingService;->a(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V

    .line 172
    iget-object v1, p0, Le;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-direct {p0, v0}, Le;->b(Li;)V

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method static synthetic b(Le;Li;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Le;->a(Li;)V

    return-void
.end method

.method private declared-synchronized b(Li;)V
    .locals 3
    .parameter

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le;->e:Lcom/android/vending/licensing/Policy;

    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/vending/licensing/Policy;->a(Lcom/android/vending/licensing/Policy$LicenseResponse;Lm;)V

    .line 251
    iget-object v0, p0, Le;->e:Lcom/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/android/vending/licensing/Policy;->a()Z

    move-result v0

    nop

    nop

    .line 252
    invoke-virtual {p1}, Li;->a()Lcom/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :goto_0
    monitor-exit p0

    return-void

    .line 254
    :try_start_1
    invoke-virtual {p1}, Li;->a()Lcom/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Le;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Le;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Le;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;

    .line 269
    :cond_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    const-string v0, "LicenseChecker"

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static d()I
    .locals 1

    .prologue
    .line 286
    sget-object v0, Le;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Le;->c()V

    .line 281
    iget-object v0, p0, Le;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/android/vending/licensing/LicenseCheckerCallback;)V
    .locals 7
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le;->e:Lcom/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/android/vending/licensing/Policy;->a()Z

    move-result v0

    nop

    nop

    .line 134
    const-string v0, "LicenseChecker"

    const-string v1, "Using cached license response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {p1}, Lcom/android/vending/licensing/LicenseCheckerCallback;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :try_start_1
    new-instance v0, Li;

    iget-object v1, p0, Le;->e:Lcom/android/vending/licensing/Policy;

    new-instance v2, Lj;

    invoke-direct {v2}, Lj;-><init>()V

    invoke-static {}, Le;->d()I

    move-result v4

    iget-object v5, p0, Le;->g:Ljava/lang/String;

    iget-object v6, p0, Le;->h:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Li;-><init>(Lcom/android/vending/licensing/Policy;Lb;Lcom/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_1

    .line 141
    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    iget-object v1, p0, Le;->d:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/vending/licensing/ILicensingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 148
    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Le;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Lcom/android/vending/licensing/LicenseCheckerCallback;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    :try_start_4
    const-string v1, "LicenseChecker"

    const-string v2, "Could not bind to service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v0}, Le;->b(Li;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 158
    :cond_1
    :try_start_5
    iget-object v1, p0, Le;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Le;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$Stub;->a(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;

    .line 233
    invoke-direct {p0}, Le;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Le;->b:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
