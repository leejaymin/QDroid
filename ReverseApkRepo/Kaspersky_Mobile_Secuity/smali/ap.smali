.class public final Lap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kavsdk/antivirus/AvFsMonitor;


# direct methods
.method public constructor <init>(Lcom/kavsdk/antivirus/AvFsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kavsdk/antivirus/AvFsMonitor;->a:Z

    .line 334
    iget-object v0, p0, Lap;->a:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->b(Lcom/kavsdk/antivirus/AvFsMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laq;

    invoke-direct {v1, p0}, Laq;-><init>(Lap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
