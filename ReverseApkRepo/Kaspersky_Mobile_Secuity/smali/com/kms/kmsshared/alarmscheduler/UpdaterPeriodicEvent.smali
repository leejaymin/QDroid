.class public Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;
.super Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.source "SourceFile"

# interfaces
.implements LfC;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 14
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;-><init>()V

    .line 15
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    .line 16
    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 17
    invoke-virtual {v0, v2}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 18
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    iput v2, p0, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;->mEventPriority:I

    .line 20
    if-ne v3, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;->setEventData(ZJI)V

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/kms/kmsshared/KMSApplication;->a(ZLfC;)I

    .line 27
    return-void
.end method

.method public onThreadCreated(Ljava/lang/Thread;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    invoke-static {}, LdT;->e()V

    .line 41
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfy;->b(I)V

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
