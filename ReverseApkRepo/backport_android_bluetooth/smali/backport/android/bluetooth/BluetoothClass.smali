.class public Lbackport/android/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbackport/android/bluetooth/BluetoothClass$Device;,
        Lbackport/android/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbackport/android/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_OPP:I = 0x2


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lbackport/android/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Lbackport/android/bluetooth/BluetoothClass$1;-><init>()V

    .line 42
    sput-object v0, Lbackport/android/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "classInt"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 3
    .parameter "profile"

    .prologue
    const/high16 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    if-ne p1, v1, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Lbackport/android/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 283
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lbackport/android/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    .line 242
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 240
    goto :goto_0

    .line 244
    :cond_1
    if-nez p1, :cond_3

    .line 247
    invoke-virtual {p0, v0}, Lbackport/android/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Lbackport/android/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    .line 257
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 259
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 260
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Lbackport/android/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 261
    goto :goto_0

    .line 264
    :cond_4
    invoke-virtual {p0}, Lbackport/android/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    move v0, v2

    .line 280
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 278
    goto :goto_0

    :cond_5
    move v0, v2

    .line 283
    goto :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x414 -> :sswitch_0
        0x418 -> :sswitch_0
        0x420 -> :sswitch_0
        0x428 -> :sswitch_0
    .end sparse-switch

    .line 251
    :sswitch_data_1
    .sparse-switch
        0x404 -> :sswitch_1
        0x408 -> :sswitch_1
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 264
    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_2
        0x104 -> :sswitch_2
        0x108 -> :sswitch_2
        0x10c -> :sswitch_2
        0x110 -> :sswitch_2
        0x114 -> :sswitch_2
        0x118 -> :sswitch_2
        0x200 -> :sswitch_2
        0x204 -> :sswitch_2
        0x208 -> :sswitch_2
        0x20c -> :sswitch_2
        0x210 -> :sswitch_2
        0x214 -> :sswitch_2
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 22
    instance-of v0, p1, Lbackport/android/bluetooth/BluetoothClass;

    if-eqz v0, :cond_1

    .line 23
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Lbackport/android/bluetooth/BluetoothClass;

    .end local p1
    iget v1, p1, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 23
    goto :goto_0

    .restart local p1
    :cond_1
    move v0, v2

    .line 25
    goto :goto_0
.end method

.method public getDeviceClass()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 85
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    iget v0, p0, Lbackport/android/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
