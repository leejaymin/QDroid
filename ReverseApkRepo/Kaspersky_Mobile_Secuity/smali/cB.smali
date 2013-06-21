.class final LcB;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:LcA;


# direct methods
.method constructor <init>(LcA;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, LcB;->a:LcA;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 373
    invoke-static {v4}, LcA;->b(I)I

    .line 374
    invoke-static {}, LcA;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 376
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, LcA;->b(I)I

    .line 379
    :cond_0
    invoke-static {}, LcA;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-static {}, LcA;->q()Lcom/kavsdk/antivirus/AvObjectScanner;

    move-result-object v0

    invoke-static {}, LcA;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/kavsdk/antivirus/AvObjectScanner;->getFilesCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 388
    :goto_0
    if-gez v0, :cond_2

    .line 390
    const-string v1, "KMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilesCount returned error =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :goto_1
    iget-object v0, p0, LcB;->a:LcA;

    invoke-static {}, LcA;->r()I

    move-result v1

    invoke-static {v0, v1}, LcA;->a(LcA;I)V

    .line 397
    return-void

    .line 386
    :cond_1
    invoke-static {}, LcA;->q()Lcom/kavsdk/antivirus/AvObjectScanner;

    move-result-object v0

    invoke-static {}, LcA;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kavsdk/antivirus/AvObjectScanner;->getFilesCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 394
    :cond_2
    invoke-static {v0}, LcA;->c(I)I

    goto :goto_1
.end method
