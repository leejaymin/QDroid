.class public Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;
.super Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.source "SourceFile"

# interfaces
.implements LfC;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;-><init>()V

    .line 15
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 16
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 17
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 18
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    if-ne v4, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0, v5, v6, v1}, Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;->setEventData(ZJI)V

    .line 20
    return-void

    :cond_0
    move v0, v3

    .line 19
    goto :goto_0
.end method


# virtual methods
.method public onStartEvent()V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/kms/kmsshared/KMSApplication;->a(LfC;)V

    .line 26
    return-void
.end method

.method public onThreadCreated(Ljava/lang/Thread;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
