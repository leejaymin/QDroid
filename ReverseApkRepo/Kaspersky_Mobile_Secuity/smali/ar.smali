.class public final Lar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kavsdk/antivirus/AvFsMonitor;


# direct methods
.method public constructor <init>(Lcom/kavsdk/antivirus/AvFsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lar;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lar;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lar;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->f(Lcom/kavsdk/antivirus/AvFsMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lar;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->g(Lcom/kavsdk/antivirus/AvFsMonitor;)Z

    .line 387
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
