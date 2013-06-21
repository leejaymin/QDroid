.class public Lcom/peteguhl/holsterbuddy/HolsterBuddyService;
.super Landroid/app/Service;
.source "HolsterBuddyService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/hardware/SensorListener;


# static fields
.field public static final NOTIFICATION_NOISY:I = 0x2

.field public static final NOTIFICATION_SILENT:I = 0x0

.field public static final NOTIFICATION_VIBRATE:I = 0x1

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20


# instance fields
.field aList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field audioManager:Landroid/media/AudioManager;

.field autostart:Z

.field dockeventSetting:I

.field handlingDockEvent:Z

.field holstered:Z

.field holsteredNotificationType:I

.field holsteredNotificationVibrate:I

.field holsterednotificationStreamVolume:I

.field iList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field isIdle:Z

.field lightHolsterState:Z

.field private final mBinder:Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;

.field mBluetoothOn:Z

.field mDockState:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSensorManager:Landroid/hardware/SensorManager;

.field magneticHolsterEnabled:Z

.field maxProxRange:F

.field notificationMuted:Z

.field notificationStreamVolume:I

.field pStateListener:Landroid/telephony/PhoneStateListener;

.field pendingModeChange:Z

.field pendingRingMode:Z

.field phoneStateChanged:Z

.field powerManager:Landroid/os/PowerManager;

.field proxHolsterState:Z

.field ringerMuted:Z

.field running:Z

.field saList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field serviceEnabled:Z

.field siList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field telephonyManager:Landroid/telephony/TelephonyManager;

.field unholsteredNotificationType:I

.field unholsteredNotificationVibrate:I

.field unholsterednotificationStreamVolume:I

.field unnotificationStreamVolume:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->proxHolsterState:Z

    .line 62
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->lightHolsterState:Z

    .line 64
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    .line 65
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->autostart:Z

    .line 66
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->handlingDockEvent:Z

    .line 69
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    .line 70
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->ringerMuted:Z

    .line 71
    iput v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->dockeventSetting:I

    .line 72
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->isIdle:Z

    .line 73
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    .line 74
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    .line 75
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->phoneStateChanged:Z

    .line 76
    iput-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    .line 83
    iput v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mDockState:I

    .line 84
    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mBluetoothOn:Z

    .line 92
    iput-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 93
    iput-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    .line 94
    iput-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    iput-object v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->powerManager:Landroid/os/PowerManager;

    .line 255
    new-instance v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;

    invoke-direct {v0, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$1;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pStateListener:Landroid/telephony/PhoneStateListener;

    .line 275
    new-instance v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;

    invoke-direct {v0, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$2;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    new-instance v0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;

    invoke-direct {v0, p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService$3;-><init>(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mBinder:Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V

    return-void
.end method

.method static synthetic access$1(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    invoke-direct {p0, p1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goVibrate(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->startAVRService()V

    return-void
.end method

.method static synthetic access$3(Lcom/peteguhl/holsterbuddy/HolsterBuddyService;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopAVRService()V

    return-void
.end method

.method private goRing()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 577
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 579
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 581
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unholsteredNotificationType:I

    if-nez v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 590
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 592
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    .line 594
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.AudioManager.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->sendBroadcast(Landroid/content/Intent;)V

    .line 603
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationStreamVolume:I

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 604
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    .line 605
    return-void

    .line 583
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unholsteredNotificationType:I

    if-ne v1, v4, :cond_3

    .line 584
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    .line 585
    :cond_3
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unholsteredNotificationType:I

    if-ne v1, v2, :cond_0

    .line 586
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0
.end method

.method private goVibrate(I)V
    .locals 8
    .parameter "noteMode"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "android.media.VIBRATE_SETTING_CHANGED"

    const-string v6, "android.media.AudioManager.EXTRA_VIBRATE_SETTING"

    .line 516
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 518
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 523
    if-ne p1, v3, :cond_2

    .line 524
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 526
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.AudioManager.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->sendBroadcast(Landroid/content/Intent;)V

    .line 566
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    .line 570
    return-void

    .line 537
    :cond_2
    if-nez p1, :cond_4

    .line 538
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    if-nez v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 540
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    .line 543
    :cond_3
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.media.AudioManager.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 551
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 552
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    if-eqz v1, :cond_5

    .line 553
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 554
    iput-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationMuted:Z

    .line 557
    :cond_5
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 558
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationStreamVolume:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.media.AudioManager.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0, v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startAVRService()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    .line 346
    return-void
.end method

.method private stopAVRService()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    .line 358
    invoke-virtual {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopSelf()V

    .line 360
    return-void
.end method


# virtual methods
.method public aSensorChanged(IF)V
    .locals 8
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v7, 0x5

    const/high16 v6, 0x41f0

    const/high16 v5, 0x4080

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, isSilentRingerMode:Z
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_5

    .line 446
    const/4 v0, 0x1

    .line 451
    :goto_0
    if-nez v0, :cond_4

    .line 454
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->phoneStateChanged:Z

    if-nez v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 456
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingModeChange:Z

    .line 457
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    .line 458
    iput-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    .line 470
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->phoneStateChanged:Z

    if-eqz v1, :cond_2

    .line 471
    :cond_1
    iput-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->phoneStateChanged:Z

    .line 479
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    iget v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_7

    .line 480
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->proxHolsterState:Z

    .line 498
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->proxHolsterState:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    if-nez v1, :cond_a

    .line 499
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holsteredNotificationType:I

    invoke-direct {p0, v1}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goVibrate(I)V

    .line 509
    :cond_4
    :goto_3
    return-void

    .line 448
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :cond_6
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->pendingRingMode:Z

    goto :goto_1

    .line 484
    :cond_7
    if-ne p1, v7, :cond_8

    cmpg-float v1, p2, v6

    if-gez v1, :cond_8

    .line 485
    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->lightHolsterState:Z

    goto :goto_2

    .line 488
    :cond_8
    if-ne p1, v7, :cond_9

    cmpl-float v1, p2, v6

    if-lez v1, :cond_9

    .line 489
    iput-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->lightHolsterState:Z

    goto :goto_2

    .line 493
    :cond_9
    iget v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    iget v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    .line 495
    iput-boolean v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->proxHolsterState:Z

    goto :goto_2

    .line 502
    :cond_a
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->proxHolsterState:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    if-nez v1, :cond_c

    :cond_b
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->lightHolsterState:Z

    if-nez v1, :cond_4

    .line 503
    :cond_c
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V

    goto :goto_3
.end method

.method broadcastIntent()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 701
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 610
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mBinder:Lcom/peteguhl/holsterbuddy/AVRSInterface$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "holsteredNotificationType"

    .line 159
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 162
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    .line 163
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 165
    const-string v3, "MyPrefsFile"

    invoke-virtual {p0, v3, v5}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 166
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "serviceEnabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->serviceEnabled:Z

    .line 167
    const-string v3, "magneticHolsterEnabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->magneticHolsterEnabled:Z

    .line 168
    const-string v3, "holsteredNotificationType"

    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holsteredNotificationType:I

    .line 169
    const-string v3, "holsteredNotificationType"

    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->unholsteredNotificationType:I

    .line 173
    iget-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->serviceEnabled:Z

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->autostart:Z

    .line 174
    iget-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->magneticHolsterEnabled:Z

    iput-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->handlingDockEvent:Z

    .line 178
    iput-boolean v5, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holstered:Z

    .line 202
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 208
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, proxSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 221
    .local v0, proxSensor:Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 224
    const/4 v4, 0x3

    .line 221
    invoke-virtual {v3, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 229
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationStreamVolume:I

    .line 230
    iget v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationStreamVolume:I

    iget-object v4, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_0

    .line 231
    iget-object v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->notificationStreamVolume:I

    .line 233
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    iput v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->maxProxRange:F

    .line 235
    iget-boolean v3, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->serviceEnabled:Z

    if-eqz v3, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->startAVRService()V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopAVRService()V

    .line 240
    invoke-virtual {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->goRing()V

    .line 364
    invoke-direct {p0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->stopAVRService()V

    .line 365
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 368
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 1
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    if-eqz v0, :cond_0

    .line 705
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 707
    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-virtual {p0, p1, v0}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->aSensorChanged(IF)V

    .line 716
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 623
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 624
    .local v0, eSensor:Landroid/hardware/Sensor;
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->running:Z

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 627
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->aSensorChanged(IF)V

    .line 637
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public refreshSettingsService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 675
    const-string v1, "MyPrefsFile"

    invoke-virtual {p0, v1, v3}, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "serviceEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->serviceEnabled:Z

    .line 677
    const-string v1, "magneticHolsterEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->magneticHolsterEnabled:Z

    .line 678
    const-string v1, "holsteredNotificationType"

    iget v2, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holsteredNotificationType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->holsteredNotificationType:I

    .line 681
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->serviceEnabled:Z

    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->autostart:Z

    .line 682
    iget-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->magneticHolsterEnabled:Z

    iput-boolean v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->handlingDockEvent:Z

    .line 685
    return-void
.end method

.method protected registerListeners()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 331
    iget-object v1, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 332
    const/4 v2, 0x2

    .line 330
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 335
    return-void
.end method

.method protected unregisterListeners()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/peteguhl/holsterbuddy/HolsterBuddyService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 327
    return-void
.end method
