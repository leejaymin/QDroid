.class public final LfB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/kms/kmsshared/alarmscheduler/AlarmEvent;
    .locals 1
    .parameter

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/ScannerPeriodicEvent;-><init>()V

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/UpdaterPeriodicEvent;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/PPSingleTimeEvent;-><init>()V

    goto :goto_0

    .line 51
    :pswitch_3
    new-instance v0, Lcom/kms/license/LicenseScheduler;

    invoke-direct {v0}, Lcom/kms/license/LicenseScheduler;-><init>()V

    goto :goto_0

    .line 58
    :pswitch_4
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/BasesExpiredSingleTimeEvent;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_5
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/SmsFindOnSingleEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/SmsFindOnSingleEvent;-><init>()V

    goto :goto_0

    .line 72
    :pswitch_6
    new-instance v0, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;

    invoke-direct {v0}, Lcom/kms/kmsshared/alarmscheduler/RateUsPeriodicEvent;-><init>()V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
