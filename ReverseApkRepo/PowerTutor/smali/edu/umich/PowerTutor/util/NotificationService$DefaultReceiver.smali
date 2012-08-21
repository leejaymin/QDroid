.class public Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;
.super Ledu/umich/PowerTutor/PowerNotifications$Stub;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public noteAudioOff(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 192
    return-void
.end method

.method public noteAudioOn(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 191
    return-void
.end method

.method public noteBluetoothOff()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public noteBluetoothOn()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 181
    return-void
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 182
    return-void
.end method

.method public noteInputEvent()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 0
    .parameter "dataType"
    .parameter "hasData"

    .prologue
    .line 174
    return-void
.end method

.method public notePhoneOff()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public notePhoneOn()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public noteScanWifiLockAcquired(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 183
    return-void
.end method

.method public noteScanWifiLockReleased(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 184
    return-void
.end method

.method public noteScreenBrightness(I)V
    .locals 0
    .parameter "brightness"

    .prologue
    .line 168
    return-void
.end method

.method public noteScreenOff()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public noteScreenOn()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public noteStartGps(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 165
    return-void
.end method

.method public noteStartMedia(II)V
    .locals 0
    .parameter "uid"
    .parameter "id"

    .prologue
    .line 158
    return-void
.end method

.method public noteStartSensor(II)V
    .locals 0
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 163
    return-void
.end method

.method public noteStartWakelock(ILjava/lang/String;I)V
    .locals 0
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 161
    return-void
.end method

.method public noteStopGps(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 166
    return-void
.end method

.method public noteStopMedia(II)V
    .locals 0
    .parameter "uid"
    .parameter "id"

    .prologue
    .line 159
    return-void
.end method

.method public noteStopSensor(II)V
    .locals 0
    .parameter "uid"
    .parameter "sensor"

    .prologue
    .line 164
    return-void
.end method

.method public noteStopWakelock(ILjava/lang/String;I)V
    .locals 0
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 162
    return-void
.end method

.method public noteSystemMediaCall(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 157
    return-void
.end method

.method public noteUserActivity(II)V
    .locals 0
    .parameter "uid"
    .parameter "event"

    .prologue
    .line 171
    return-void
.end method

.method public noteVideoOff(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 190
    return-void
.end method

.method public noteVideoOn(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 189
    return-void
.end method

.method public noteVideoSize(IIII)V
    .locals 0
    .parameter "uid"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 160
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 186
    return-void
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 185
    return-void
.end method

.method public noteWifiOff(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 176
    return-void
.end method

.method public noteWifiOn(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 175
    return-void
.end method

.method public noteWifiRunning()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public noteWifiStopped()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public recordCurrentLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 188
    return-void
.end method

.method public setOnBattery(ZI)V
    .locals 0
    .parameter "onBattery"
    .parameter "level"

    .prologue
    .line 187
    return-void
.end method
