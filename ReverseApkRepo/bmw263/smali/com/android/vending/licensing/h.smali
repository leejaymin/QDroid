.class public final Lcom/android/vending/licensing/h;
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

.field private final e:Lcom/android/vending/licensing/q;

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

    sput-object v0, Lcom/android/vending/licensing/h;->a:Ljava/security/SecureRandom;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/vending/licensing/q;Ljava/lang/String;)V
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

    iput-object v0, p0, Lcom/android/vending/licensing/h;->i:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/licensing/h;->j:Ljava/util/Queue;

    .line 90
    iput-object p1, p0, Lcom/android/vending/licensing/h;->d:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/vending/licensing/h;->e:Lcom/android/vending/licensing/q;

    .line 92
    invoke-static {p3}, Lcom/android/vending/licensing/h;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/h;->c:Ljava/security/PublicKey;

    .line 93
    iget-object v0, p0, Lcom/android/vending/licensing/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/h;->g:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/vending/licensing/h;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/vending/licensing/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/h;->h:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/android/vending/licensing/h;->f:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/android/vending/licensing/h;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/licensing/h;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 298
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 297
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .parameter

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/android/vending/licensing/a/a;->a(Ljava/lang/String;)[B

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
    .catch Lcom/android/vending/licensing/a/b; {:try_start_0 .. :try_end_0} :catch_1
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

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_2
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/n;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/android/vending/licensing/n;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/licensing/h;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/android/vending/licensing/h;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/android/vending/licensing/h;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/android/vending/licensing/h;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vending/licensing/h;->i:Ljava/util/Set;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 166
    :goto_0
    iget-object v0, p0, Lcom/android/vending/licensing/h;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/licensing/n;

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;

    .line 169
    invoke-virtual {v0}, Lcom/android/vending/licensing/n;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/android/vending/licensing/n;->c()Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v5, Lcom/android/vending/licensing/i;

    invoke-direct {v5, p0, v0}, Lcom/android/vending/licensing/i;-><init>(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V

    .line 168
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/vending/licensing/ILicensingService;->a(JLjava/lang/String;Lcom/android/vending/licensing/c;)V

    .line 171
    iget-object v1, p0, Lcom/android/vending/licensing/h;->i:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/n;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/vending/licensing/h;Lcom/android/vending/licensing/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/vending/licensing/h;->a(Lcom/android/vending/licensing/n;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/android/vending/licensing/n;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/licensing/h;->e:Lcom/android/vending/licensing/q;

    sget-object v1, Lcom/android/vending/licensing/r;->c:Lcom/android/vending/licensing/r;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/vending/licensing/q;->a(Lcom/android/vending/licensing/r;Lcom/android/vending/licensing/t;)V

    .line 250
    iget-object v0, p0, Lcom/android/vending/licensing/h;->e:Lcom/android/vending/licensing/q;

    invoke-interface {v0}, Lcom/android/vending/licensing/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/android/vending/licensing/n;->a()Lcom/android/vending/licensing/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/vending/licensing/n;->a()Lcom/android/vending/licensing/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/vending/licensing/l;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/android/vending/licensing/h;)Ljava/security/PublicKey;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/vending/licensing/h;->c:Ljava/security/PublicKey;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/licensing/h;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;

    .line 268
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/vending/licensing/h;->c()V

    .line 280
    iget-object v0, p0, Lcom/android/vending/licensing/h;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/android/vending/licensing/l;)V
    .locals 7
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/licensing/h;->e:Lcom/android/vending/licensing/q;

    invoke-interface {v0}, Lcom/android/vending/licensing/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {p1}, Lcom/android/vending/licensing/l;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/vending/licensing/n;

    iget-object v1, p0, Lcom/android/vending/licensing/h;->e:Lcom/android/vending/licensing/q;

    new-instance v2, Lcom/android/vending/licensing/o;

    invoke-direct {v2}, Lcom/android/vending/licensing/o;-><init>()V

    .line 138
    sget-object v3, Lcom/android/vending/licensing/h;->a:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/licensing/h;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/vending/licensing/h;->h:Ljava/lang/String;

    move-object v3, p1

    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/android/vending/licensing/n;-><init>(Lcom/android/vending/licensing/q;Lcom/android/vending/licensing/b;Lcom/android/vending/licensing/l;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/android/vending/licensing/h;->d:Landroid/content/Context;

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/vending/licensing/ILicensingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x1

    .line 143
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/vending/licensing/h;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/android/vending/licensing/m;->f:Lcom/android/vending/licensing/m;

    invoke-interface {p1}, Lcom/android/vending/licensing/l;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_1
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/h;->b(Lcom/android/vending/licensing/n;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 158
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/vending/licensing/h;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/android/vending/licensing/h;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/vending/licensing/f;->a(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;

    .line 232
    invoke-direct {p0}, Lcom/android/vending/licensing/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/vending/licensing/h;->b:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
