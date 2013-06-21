.class public Lcom/kms/kmsshared/alarmscheduler/SmsFindOnSingleEvent;
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

    iput-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/SmsFindOnSingleEvent;->mRunIfMissed:Z

    .line 14
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/alarmscheduler/SmsFindOnSingleEvent;->setEventData(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->a()LbQ;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, LbQ;->g()V

    .line 21
    return-void
.end method
