.class Lbackport/android/bluetooth/BluetoothClass$1;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothClass;
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
        "Lbackport/android/bluetooth/BluetoothClass;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbackport/android/bluetooth/BluetoothClass;
    .locals 2
    .parameter "in"

    .prologue
    .line 45
    new-instance v0, Lbackport/android/bluetooth/BluetoothClass;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lbackport/android/bluetooth/BluetoothClass;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbackport/android/bluetooth/BluetoothClass$1;->createFromParcel(Landroid/os/Parcel;)Lbackport/android/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbackport/android/bluetooth/BluetoothClass;
    .locals 1
    .parameter "size"

    .prologue
    .line 48
    new-array v0, p1, [Lbackport/android/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbackport/android/bluetooth/BluetoothClass$1;->newArray(I)[Lbackport/android/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method
