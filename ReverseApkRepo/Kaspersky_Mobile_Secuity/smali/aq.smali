.class final Laq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lap;


# direct methods
.method constructor <init>(Lap;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Laq;->a:Lap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Laq;->a:Lap;

    iget-object v0, v0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->c(Lcom/kavsdk/antivirus/AvFsMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Laq;->a:Lap;

    iget-object v0, v0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->d(Lcom/kavsdk/antivirus/AvFsMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Laq;->a:Lap;

    iget-object v0, v0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->e(Lcom/kavsdk/antivirus/AvFsMonitor;)V

    .line 345
    :cond_0
    iget-object v0, p0, Laq;->a:Lap;

    iget-object v0, v0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->c(Lcom/kavsdk/antivirus/AvFsMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Laq;->a:Lap;

    iget-object v0, v0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->e(Lcom/kavsdk/antivirus/AvFsMonitor;)V

    .line 348
    :cond_1
    return-void
.end method
