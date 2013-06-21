.class public abstract Landroid/bluetooth/IBluetoothDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothDevice"

.field static final TRANSACTION_cancelBondProcess:I = 0x1a

.field static final TRANSACTION_cancelDiscovery:I = 0x10

.field static final TRANSACTION_cancelPin:I = 0x29

.field static final TRANSACTION_createBond:I = 0x19

.field static final TRANSACTION_disconnectRemoteDeviceAcl:I = 0x18

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_getAddress:I = 0x4

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x1d

.field static final TRANSACTION_getCompany:I = 0xa

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_getManufacturer:I = 0x9

.field static final TRANSACTION_getName:I = 0x5

.field static final TRANSACTION_getRemoteClass:I = 0x21

.field static final TRANSACTION_getRemoteCompany:I = 0x23

.field static final TRANSACTION_getRemoteFeatures:I = 0x25

.field static final TRANSACTION_getRemoteManufacturer:I = 0x22

.field static final TRANSACTION_getRemoteName:I = 0x1e

.field static final TRANSACTION_getRemoteRevision:I = 0x20

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x24

.field static final TRANSACTION_getRemoteVersion:I = 0x1f

.field static final TRANSACTION_getRevision:I = 0x8

.field static final TRANSACTION_getScanMode:I = 0xb

.field static final TRANSACTION_getVersion:I = 0x7

.field static final TRANSACTION_isAclConnected:I = 0x17

.field static final TRANSACTION_isDiscovering:I = 0x11

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isPeriodicDiscovery:I = 0x14

.field static final TRANSACTION_lastSeen:I = 0x26

.field static final TRANSACTION_lastUsed:I = 0x27

.field static final TRANSACTION_listAclConnections:I = 0x16

.field static final TRANSACTION_listBonds:I = 0x1c

.field static final TRANSACTION_listRemoteDevices:I = 0x15

.field static final TRANSACTION_removeBond:I = 0x1b

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xe

.field static final TRANSACTION_setName:I = 0x6

.field static final TRANSACTION_setPin:I = 0x28

.field static final TRANSACTION_setScanMode:I = 0xc

.field static final TRANSACTION_startDiscovery:I = 0xf

.field static final TRANSACTION_startPeriodicDiscovery:I = 0x12

.field static final TRANSACTION_stopPeriodicDiscovery:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDevice;
    .locals 2
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    .line 37
    :cond_0
    const-string v1, "android.bluetooth.IBluetoothDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothDevice;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Landroid/bluetooth/IBluetoothDevice;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.bluetooth.IBluetoothDevice"

    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 53
    :sswitch_0
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 54
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isEnabled()Z

    move-result v3

    .line 60
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v3, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 62
    goto :goto_0

    :cond_0
    move v4, v7

    .line 61
    goto :goto_1

    .line 66
    .end local v3           #_result:Z
    :sswitch_2
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getBluetoothState()I

    move-result v3

    .line 68
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 70
    goto :goto_0

    .line 74
    .end local v3           #_result:I
    :sswitch_3
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->enable()Z

    move-result v3

    .line 76
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 78
    goto :goto_0

    :cond_1
    move v4, v7

    .line 77
    goto :goto_2

    .line 82
    .end local v3           #_result:Z
    :sswitch_4
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 86
    goto :goto_0

    .line 90
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 94
    goto :goto_0

    .line 98
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setName(Ljava/lang/String;)Z

    move-result v3

    .line 102
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v3, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 104
    goto :goto_0

    :cond_2
    move v4, v7

    .line 103
    goto :goto_3

    .line 108
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 112
    goto/16 :goto_0

    .line 116
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRevision()Ljava/lang/String;

    move-result-object v3

    .line 118
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 128
    goto/16 :goto_0

    .line 132
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getCompany()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 136
    goto/16 :goto_0

    .line 140
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getScanMode()I

    move-result v3

    .line 142
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 144
    goto/16 :goto_0

    .line 148
    .end local v3           #_result:I
    :sswitch_c
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setScanMode(I)Z

    move-result v3

    .line 152
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 154
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 153
    goto :goto_4

    .line 158
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_d
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getDiscoverableTimeout()I

    move-result v3

    .line 160
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 162
    goto/16 :goto_0

    .line 166
    .end local v3           #_result:I
    :sswitch_e
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setDiscoverableTimeout(I)Z

    move-result v3

    .line 170
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v3, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 172
    goto/16 :goto_0

    :cond_4
    move v4, v7

    .line 171
    goto :goto_5

    .line 176
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_f
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v5

    .line 179
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->startDiscovery(Z)Z

    move-result v3

    .line 180
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v3, :cond_6

    move v4, v5

    :goto_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 182
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_5
    move v0, v7

    .line 178
    goto :goto_6

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_6
    move v4, v7

    .line 181
    goto :goto_7

    .line 186
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_10
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelDiscovery()Z

    move-result v3

    .line 188
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v3, :cond_7

    move v4, v5

    :goto_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 190
    goto/16 :goto_0

    :cond_7
    move v4, v7

    .line 189
    goto :goto_8

    .line 194
    .end local v3           #_result:Z
    :sswitch_11
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isDiscovering()Z

    move-result v3

    .line 196
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    if-eqz v3, :cond_8

    move v4, v5

    :goto_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 198
    goto/16 :goto_0

    :cond_8
    move v4, v7

    .line 197
    goto :goto_9

    .line 202
    .end local v3           #_result:Z
    :sswitch_12
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->startPeriodicDiscovery()Z

    move-result v3

    .line 204
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v3, :cond_9

    move v4, v5

    :goto_a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 206
    goto/16 :goto_0

    :cond_9
    move v4, v7

    .line 205
    goto :goto_a

    .line 210
    .end local v3           #_result:Z
    :sswitch_13
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->stopPeriodicDiscovery()Z

    move-result v3

    .line 212
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v3, :cond_a

    move v4, v5

    :goto_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 214
    goto/16 :goto_0

    :cond_a
    move v4, v7

    .line 213
    goto :goto_b

    .line 218
    .end local v3           #_result:Z
    :sswitch_14
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isPeriodicDiscovery()Z

    move-result v3

    .line 220
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v3, :cond_b

    move v4, v5

    :goto_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 222
    goto/16 :goto_0

    :cond_b
    move v4, v7

    .line 221
    goto :goto_c

    .line 226
    .end local v3           #_result:Z
    :sswitch_15
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listRemoteDevices()[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 230
    goto/16 :goto_0

    .line 234
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listAclConnections()[Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 238
    goto/16 :goto_0

    .line 242
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_17
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isAclConnected(Ljava/lang/String;)Z

    move-result v3

    .line 246
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v3, :cond_c

    move v4, v5

    :goto_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 248
    goto/16 :goto_0

    :cond_c
    move v4, v7

    .line 247
    goto :goto_d

    .line 252
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_18
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->disconnectRemoteDeviceAcl(Ljava/lang/String;)Z

    move-result v3

    .line 256
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v3, :cond_d

    move v4, v5

    :goto_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 258
    goto/16 :goto_0

    :cond_d
    move v4, v7

    .line 257
    goto :goto_e

    .line 262
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_19
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->createBond(Ljava/lang/String;)Z

    move-result v3

    .line 266
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v3, :cond_e

    move v4, v5

    :goto_f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 268
    goto/16 :goto_0

    :cond_e
    move v4, v7

    .line 267
    goto :goto_f

    .line 272
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1a
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v3

    .line 276
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v3, :cond_f

    move v4, v5

    :goto_10
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 278
    goto/16 :goto_0

    :cond_f
    move v4, v7

    .line 277
    goto :goto_10

    .line 282
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1b
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v3

    .line 286
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v3, :cond_10

    move v4, v5

    :goto_11
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 288
    goto/16 :goto_0

    :cond_10
    move v4, v7

    .line 287
    goto :goto_11

    .line 292
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_1c
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v4, v5

    .line 296
    goto/16 :goto_0

    .line 300
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_1d
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getBondState(Ljava/lang/String;)I

    move-result v3

    .line 304
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 306
    goto/16 :goto_0

    .line 310
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_1e
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 316
    goto/16 :goto_0

    .line 320
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1f
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 326
    goto/16 :goto_0

    .line 330
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_20
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteRevision(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 336
    goto/16 :goto_0

    .line 340
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v3

    .line 344
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 346
    goto/16 :goto_0

    .line 350
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_22
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 356
    goto/16 :goto_0

    .line 360
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteCompany(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 366
    goto/16 :goto_0

    .line 370
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_24
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/IBluetoothDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDeviceCallback;

    move-result-object v2

    .line 377
    .local v2, _arg2:Landroid/bluetooth/IBluetoothDeviceCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteServiceChannel(Ljava/lang/String;ILandroid/bluetooth/IBluetoothDeviceCallback;)Z

    move-result v3

    .line 378
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v3, :cond_11

    move v4, v5

    :goto_12
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 380
    goto/16 :goto_0

    :cond_11
    move v4, v7

    .line 379
    goto :goto_12

    .line 384
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothDeviceCallback;
    .end local v3           #_result:Z
    :sswitch_25
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteFeatures(Ljava/lang/String;)[B

    move-result-object v3

    .line 388
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v4, v5

    .line 390
    goto/16 :goto_0

    .line 394
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:[B
    :sswitch_26
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->lastSeen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 400
    goto/16 :goto_0

    .line 404
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->lastUsed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 410
    goto/16 :goto_0

    .line 414
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_28
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 419
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothDevice$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v3

    .line 420
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v3, :cond_12

    move v4, v5

    :goto_13
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 422
    goto/16 :goto_0

    :cond_12
    move v4, v7

    .line 421
    goto :goto_13

    .line 426
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v3           #_result:Z
    :sswitch_29
    const-string v4, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelPin(Ljava/lang/String;)Z

    move-result v3

    .line 430
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v3, :cond_13

    move v4, v5

    :goto_14
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 432
    goto/16 :goto_0

    :cond_13
    move v4, v7

    .line 431
    goto :goto_14

    .line 49
    nop

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
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
