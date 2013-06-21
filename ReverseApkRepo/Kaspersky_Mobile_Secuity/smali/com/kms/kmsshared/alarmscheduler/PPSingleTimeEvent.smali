.class public Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;
.super Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kms/kmsshared/alarmscheduler/SingleTimeAlarmEvent;-><init>()V

    .line 14
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 15
    iget-wide v0, v0, Lgf;->i:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;->setEventData(I)V

    .line 16
    return-void
.end method


# virtual methods
.method public onStartEvent()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;)V

    .line 22
    return-void
.end method
