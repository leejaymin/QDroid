.class public Ledu/umich/PowerTutor/components/LCD;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "LCD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/LCD$LcdData;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private brightnessFile:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

.field private screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    const-string v2, "/sys/devices/virtual/leds/lcd-backlight/brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 81
    const-string v2, "/sys/devices/platform/trout-backlight.0/leds/lcd-backlight/brightness"

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Ledu/umich/PowerTutor/components/LCD;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 78
    const-string v2, "LCD"

    iput-object v2, p0, Ledu/umich/PowerTutor/components/LCD;->TAG:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Ledu/umich/PowerTutor/components/LCD;->context:Landroid/content/Context;

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, p0, Ledu/umich/PowerTutor/components/LCD;->screenOn:Z

    .line 95
    if-nez p1, :cond_1

    .line 122
    :cond_0
    return-void

    .line 99
    :cond_1
    new-instance v3, Ledu/umich/PowerTutor/util/ForegroundDetector;

    .line 100
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 99
    check-cast v2, Landroid/app/ActivityManager;

    invoke-direct {v3, v2}, Ledu/umich/PowerTutor/util/ForegroundDetector;-><init>(Landroid/app/ActivityManager;)V

    iput-object v3, p0, Ledu/umich/PowerTutor/components/LCD;->foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

    .line 101
    new-instance v2, Ledu/umich/PowerTutor/components/LCD$1;

    invoke-direct {v2, p0}, Ledu/umich/PowerTutor/components/LCD$1;-><init>(Ledu/umich/PowerTutor/components/LCD;)V

    iput-object v2, p0, Ledu/umich/PowerTutor/components/LCD;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Ledu/umich/PowerTutor/components/LCD;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Ledu/umich/PowerTutor/components/LCD;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 118
    new-instance v2, Ljava/io/File;

    sget-object v3, Ledu/umich/PowerTutor/components/LCD;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    sget-object v2, Ledu/umich/PowerTutor/components/LCD;->BACKLIGHT_BRIGHTNESS_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p0, Ledu/umich/PowerTutor/components/LCD;->brightnessFile:Ljava/lang/String;

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/components/LCD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Ledu/umich/PowerTutor/components/LCD;->screenOn:Z

    return-void
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 8
    .parameter "iteration"

    .prologue
    .line 132
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v3

    .line 135
    .local v3, result:Ledu/umich/PowerTutor/service/IterationData;
    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v4, p0, Ledu/umich/PowerTutor/components/LCD;->screenOn:Z

    .line 135
    .local v4, screen:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v6, p0, Ledu/umich/PowerTutor/components/LCD;->brightnessFile:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 141
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v6

    .line 142
    iget-object v7, p0, Ledu/umich/PowerTutor/components/LCD;->brightnessFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 152
    .local v0, brightness:I
    :goto_0
    if-ltz v0, :cond_0

    const/16 v6, 0xff

    if-ge v6, v0, :cond_3

    .line 153
    :cond_0
    const-string v6, "LCD"

    const-string v7, "Could not retrieve brightness information"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0           #brightness:I
    :cond_1
    :goto_1
    return-object v3

    .line 135
    .end local v4           #screen:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 145
    .restart local v4       #screen:Z
    :cond_2
    :try_start_2
    iget-object v6, p0, Ledu/umich/PowerTutor/components/LCD;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 146
    const-string v7, "screen_brightness"

    .line 145
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .restart local v0       #brightness:I
    goto :goto_0

    .line 147
    .end local v0           #brightness:I
    :catch_0
    move-exception v2

    .line 148
    .local v2, ex:Landroid/provider/Settings$SettingNotFoundException;
    const-string v6, "LCD"

    const-string v7, "Could not retrieve brightness information"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v2           #ex:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #brightness:I
    :cond_3
    invoke-static {}, Ledu/umich/PowerTutor/components/LCD$LcdData;->obtain()Ledu/umich/PowerTutor/components/LCD$LcdData;

    move-result-object v1

    .line 158
    .local v1, data:Ledu/umich/PowerTutor/components/LCD$LcdData;
    invoke-virtual {v1, v0, v4}, Ledu/umich/PowerTutor/components/LCD$LcdData;->init(IZ)V

    .line 159
    invoke-virtual {v3, v1}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 161
    if-eqz v4, :cond_1

    .line 162
    invoke-static {}, Ledu/umich/PowerTutor/components/LCD$LcdData;->obtain()Ledu/umich/PowerTutor/components/LCD$LcdData;

    move-result-object v5

    .line 163
    .local v5, uidData:Ledu/umich/PowerTutor/components/LCD$LcdData;
    invoke-virtual {v5, v0, v4}, Ledu/umich/PowerTutor/components/LCD$LcdData;->init(IZ)V

    .line 164
    iget-object v6, p0, Ledu/umich/PowerTutor/components/LCD;->foregroundDetector:Ledu/umich/PowerTutor/util/ForegroundDetector;

    invoke-virtual {v6}, Ledu/umich/PowerTutor/util/ForegroundDetector;->getForegroundUid()I

    move-result v6

    invoke-virtual {v3, v6, v5}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    goto :goto_1
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "LCD"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Ledu/umich/PowerTutor/components/LCD;->context:Landroid/content/Context;

    iget-object v1, p0, Ledu/umich/PowerTutor/components/LCD;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    invoke-super {p0}, Ledu/umich/PowerTutor/components/PowerComponent;->onExit()V

    .line 128
    return-void
.end method
