.class public abstract Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.super Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDelay:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public setEventData(I)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;->mDelay:I

    .line 19
    invoke-virtual {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;->updateNextTime()V

    .line 20
    return-void
.end method

.method public updateNextTime()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 30
    const/16 v1, 0xc

    iget v2, p0, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;->mDelay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 31
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;->mNextDate:Ljava/util/Date;

    .line 36
    return-void
.end method
