.class public abstract Ledu/umich/PowerTutor/PowerNotifications$Stub;
.super Landroid/os/Binder;
.source "PowerNotifications.java"

# interfaces
.implements Ledu/umich/PowerTutor/PowerNotifications;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/PowerNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/PowerNotifications$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "edu.umich.PowerTutor.PowerNotifications"

.field static final TRANSACTION_noteAudioOff:I = 0x24

.field static final TRANSACTION_noteAudioOn:I = 0x23

.field static final TRANSACTION_noteBluetoothOff:I = 0x18

.field static final TRANSACTION_noteBluetoothOn:I = 0x17

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x19

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x1a

.field static final TRANSACTION_noteInputEvent:I = 0xe

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x12

.field static final TRANSACTION_notePhoneOff:I = 0x11

.field static final TRANSACTION_notePhoneOn:I = 0x10

.field static final TRANSACTION_noteScanWifiLockAcquired:I = 0x1b

.field static final TRANSACTION_noteScanWifiLockReleased:I = 0x1c

.field static final TRANSACTION_noteScreenBrightness:I = 0x7

.field static final TRANSACTION_noteScreenOff:I = 0xd

.field static final TRANSACTION_noteScreenOn:I = 0xc

.field static final TRANSACTION_noteStartGps:I = 0x5

.field static final TRANSACTION_noteStartMedia:I = 0x8

.field static final TRANSACTION_noteStartSensor:I = 0x3

.field static final TRANSACTION_noteStartWakelock:I = 0x1

.field static final TRANSACTION_noteStopGps:I = 0x6

.field static final TRANSACTION_noteStopMedia:I = 0x9

.field static final TRANSACTION_noteStopSensor:I = 0x4

.field static final TRANSACTION_noteStopWakelock:I = 0x2

.field static final TRANSACTION_noteSystemMediaCall:I = 0xb

.field static final TRANSACTION_noteUserActivity:I = 0xf

.field static final TRANSACTION_noteVideoOff:I = 0x22

.field static final TRANSACTION_noteVideoOn:I = 0x21

.field static final TRANSACTION_noteVideoSize:I = 0xa

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x1e

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x1d

.field static final TRANSACTION_noteWifiOff:I = 0x14

.field static final TRANSACTION_noteWifiOn:I = 0x13

.field static final TRANSACTION_noteWifiRunning:I = 0x15

.field static final TRANSACTION_noteWifiStopped:I = 0x16

.field static final TRANSACTION_recordCurrentLevel:I = 0x20

.field static final TRANSACTION_setOnBattery:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p0, p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ledu/umich/PowerTutor/PowerNotifications;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "edu.umich.PowerTutor.PowerNotifications"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ledu/umich/PowerTutor/PowerNotifications;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Ledu/umich/PowerTutor/PowerNotifications;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Ledu/umich/PowerTutor/PowerNotifications$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 380
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStartWakelock(ILjava/lang/String;I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_2
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStopWakelock(ILjava/lang/String;I)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_3
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStartSensor(II)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStopSensor(II)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_5
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStartGps(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStopGps(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteScreenBrightness(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:I
    :sswitch_8
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStartMedia(II)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 133
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_9
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 138
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteStopMedia(II)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_a
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteVideoSize(IIII)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    :sswitch_b
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteSystemMediaCall(I)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteScreenOn()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_d
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteScreenOff()V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 182
    :sswitch_e
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteInputEvent()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    :sswitch_f
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteUserActivity(II)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 200
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_10
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->notePhoneOn()V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    :sswitch_11
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->notePhoneOff()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    :sswitch_12
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    .line 219
    .local v1, _arg1:Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->notePhoneDataConnectionState(IZ)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    :sswitch_13
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiOn(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v0           #_arg0:I
    :sswitch_14
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiOff(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    .end local v0           #_arg0:I
    :sswitch_15
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiRunning()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    :sswitch_16
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiStopped()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    :sswitch_17
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteBluetoothOn()V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 264
    :sswitch_18
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteBluetoothOff()V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 271
    :sswitch_19
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteFullWifiLockAcquired(I)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 280
    .end local v0           #_arg0:I
    :sswitch_1a
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteFullWifiLockReleased(I)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 289
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteScanWifiLockAcquired(I)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 298
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteScanWifiLockReleased(I)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 307
    .end local v0           #_arg0:I
    :sswitch_1d
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiMulticastEnabled(I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 316
    .end local v0           #_arg0:I
    :sswitch_1e
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteWifiMulticastDisabled(I)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 325
    .end local v0           #_arg0:I
    :sswitch_1f
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 329
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->setOnBattery(ZI)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_1
    move v0, v1

    .line 327
    goto :goto_1

    .line 336
    :sswitch_20
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->recordCurrentLevel(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v0           #_arg0:I
    :sswitch_21
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteVideoOn(I)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 354
    .end local v0           #_arg0:I
    :sswitch_22
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteVideoOff(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 363
    .end local v0           #_arg0:I
    :sswitch_23
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteAudioOn(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 372
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v5, "edu.umich.PowerTutor.PowerNotifications"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/PowerNotifications$Stub;->noteAudioOff(I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
