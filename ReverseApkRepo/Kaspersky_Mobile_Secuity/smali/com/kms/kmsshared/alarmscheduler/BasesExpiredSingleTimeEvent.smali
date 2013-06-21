.class public Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;->mRunIfMissed:Z

    .line 14
    invoke-static {}, Lfp;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;->setEventData(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lfp;->k()I

    move-result v0

    .line 21
    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {}, LdT;->c()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 24
    invoke-static {}, LdT;->e()V

    .line 26
    :cond_0
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
