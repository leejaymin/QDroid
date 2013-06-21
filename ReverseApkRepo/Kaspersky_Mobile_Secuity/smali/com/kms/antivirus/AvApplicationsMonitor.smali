.class public Lcom/kms/antivirus/AvApplicationsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static b:I

.field private static c:Z

.field private static d:Lcy;


# instance fields
.field private a:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v0, Lcz;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcz;-><init>(Lcom/kms/antivirus/AvApplicationsMonitor;I)V

    iput-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->g:Lcz;

    .line 241
    iput-object p1, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->a:Landroid/content/Context;

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 248
    new-instance v0, Lcy;

    invoke-direct {v0, p0}, Lcy;-><init>(Lcom/kms/antivirus/AvApplicationsMonitor;)V

    .line 249
    sput-object v0, Lcom/kms/antivirus/AvApplicationsMonitor;->d:Lcy;

    invoke-virtual {v0}, Lcy;->start()V

    .line 250
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/AvApplicationsMonitor;)Lcz;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->g:Lcz;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/antivirus/AvApplicationsMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->f:Ljava/lang/String;

    return-object p1
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kms/antivirus/AvApplicationsMonitor;->c:Z

    .line 223
    return-void
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 259
    sput p0, Lcom/kms/antivirus/AvApplicationsMonitor;->b:I

    .line 260
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/AvApplicationsMonitor;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/kms/antivirus/AvApplicationsMonitor;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kms/antivirus/AvApplicationsMonitor;->c:Z

    .line 233
    sget-object v1, Lcom/kms/antivirus/AvApplicationsMonitor;->d:Lcy;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v0, Lcom/kms/antivirus/AvApplicationsMonitor;->d:Lcy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic c()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/kms/antivirus/AvApplicationsMonitor;->b:I

    return v0
.end method

.method public static synthetic c(Lcom/kms/antivirus/AvApplicationsMonitor;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->e:Z

    return v0
.end method

.method public static synthetic d(Lcom/kms/antivirus/AvApplicationsMonitor;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 264
    sget-object v1, Lcom/kms/antivirus/AvApplicationsMonitor;->d:Lcy;

    monitor-enter v1

    .line 266
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/kms/antivirus/AvApplicationsMonitor;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 270
    :try_start_1
    sget-object v0, Lcom/kms/antivirus/AvApplicationsMonitor;->d:Lcy;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0

    .line 274
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic e(Lcom/kms/antivirus/AvApplicationsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/kms/antivirus/AvApplicationsMonitor;->d()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v1, "AvApplicationsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v1, "AvApplicationsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v1, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 287
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 289
    const-string v0, "AvApplicationsMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 292
    const-class v2, Lge;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :try_start_1
    invoke-virtual {v0}, Lge;->a()V

    .line 295
    iget v0, v0, Lge;->a:I

    .line 296
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    if-eqz v0, :cond_0

    .line 299
    :try_start_2
    iget-object v0, p0, Lcom/kms/antivirus/AvApplicationsMonitor;->g:Lcz;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz;->a(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
