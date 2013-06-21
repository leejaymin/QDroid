.class public abstract Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final transient HIGH_PRIORITY:I = 0x1

.field public static final transient LOW_PRIORITY:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mEventPriority:I

.field protected mNextDate:Ljava/util/Date;

.field protected mRunIfMissed:Z

.field protected mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextUTCDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->mNextDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->mEventPriority:I

    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->mRunning:Z

    return v0
.end method

.method public abstract onStartEvent()V
.end method

.method public runIfMissed()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;->mRunIfMissed:Z

    return v0
.end method

.method public abstract updateNextTime()V
.end method
