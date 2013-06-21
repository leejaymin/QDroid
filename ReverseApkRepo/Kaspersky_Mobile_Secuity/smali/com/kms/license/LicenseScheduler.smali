.class public Lcom/kms/license/LicenseScheduler;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 22
    invoke-static {}, Lgj;->f()I

    move-result v0

    .line 23
    if-gtz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad license scheduler delay"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kms/license/LicenseScheduler;->mRunIfMissed:Z

    .line 32
    invoke-virtual {p0, v0}, Lcom/kms/license/LicenseScheduler;->setEventData(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Leu;->a(Landroid/content/Context;)Z

    .line 39
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 41
    const-class v1, Lgd;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, v0, Lgd;->i:Z

    .line 44
    iget-boolean v2, v0, Lgd;->c:Z

    .line 45
    invoke-virtual {v0}, Lgd;->b()V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lgj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 48
    const/4 v0, 0x2

    invoke-static {v0}, LdT;->d(I)V

    .line 49
    invoke-static {}, LdT;->e()V

    .line 53
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
