.class Lbackport/android/bluetooth/BluetoothDevice$1;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lbackport/android/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbackport/android/bluetooth/BluetoothDevice;
    .locals 2
    .parameter "in"

    .prologue
    .line 470
    new-instance v0, Lbackport/android/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbackport/android/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbackport/android/bluetooth/BluetoothDevice$1;->createFromParcel(Landroid/os/Parcel;)Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbackport/android/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "size"

    .prologue
    .line 474
    new-array v0, p1, [Lbackport/android/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbackport/android/bluetooth/BluetoothDevice$1;->newArray(I)[Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method
