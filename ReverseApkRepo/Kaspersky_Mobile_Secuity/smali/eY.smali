.class public final LeY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1470
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    if-eqz v0, :cond_2

    .line 1475
    :goto_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->d()Las;

    move-result-object v0

    .line 1478
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v1}, Lcom/kavsdk/antivirus/AvFsMonitor;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1483
    :cond_0
    invoke-virtual {v0}, Las;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1489
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->e()V

    goto :goto_0

    .line 1496
    :cond_2
    return-void
.end method
