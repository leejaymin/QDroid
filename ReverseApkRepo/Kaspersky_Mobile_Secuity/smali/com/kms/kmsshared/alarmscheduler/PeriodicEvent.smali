.class public abstract Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDay:I

.field private mModeDaily:Z

.field private mPeriod:J

.field private mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPeriod()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mPeriod:J

    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public setEventData(ZJI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    iput-wide p2, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mTime:J

    .line 21
    iput p4, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mDay:I

    .line 22
    iput-boolean p1, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    .line 23
    const/4 v0, 0x7

    .line 24
    iget-boolean v1, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 28
    :cond_0
    const v1, 0x5265c00

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mPeriod:J

    .line 29
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->updateNextTime()V

    .line 30
    return-void
.end method

.method public updateNextTime()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v1, 0x7

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    if-eqz v0, :cond_2

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 41
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 44
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 45
    iget-wide v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mTime:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    iget-boolean v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mModeDaily:Z

    if-nez v5, :cond_0

    .line 49
    iget v5, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mDay:I

    invoke-virtual {v3, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 52
    :cond_0
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 53
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 54
    invoke-virtual {v3, v7, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 55
    invoke-virtual {v3, v8, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 56
    const/16 v1, 0xd

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 57
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    const/4 v1, 0x6

    invoke-virtual {v3, v1, v0}, Ljava/util/GregorianCalendar;->add(II)V

    .line 61
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 63
    :cond_1
    const v2, 0x5265c00

    mul-int/2addr v0, v2

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mPeriod:J

    .line 64
    iput-object v1, p0, Lcom/kms/kmsshared/alarmscheduler/PeriodicEvent;->mNextDate:Ljava/util/Date;

    .line 65
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
