.class public abstract Lde/androidpit/app/services/ISignedLicenseService$Stub;
.super Landroid/os/Binder;
.source "ISignedLicenseService.java"

# interfaces
.implements Lde/androidpit/app/services/ISignedLicenseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/androidpit/app/services/ISignedLicenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/androidpit/app/services/ISignedLicenseService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "de.androidpit.app.services.ISignedLicenseService"

.field static final TRANSACTION_authenticate:I = 0x2

.field static final TRANSACTION_isLicensed:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "de.androidpit.app.services.ISignedLicenseService"

    invoke-virtual {p0, p0, v0}, Lde/androidpit/app/services/ISignedLicenseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lde/androidpit/app/services/ISignedLicenseService;
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
    const-string v1, "de.androidpit.app.services.ISignedLicenseService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lde/androidpit/app/services/ISignedLicenseService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lde/androidpit/app/services/ISignedLicenseService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lde/androidpit/app/services/ISignedLicenseService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lde/androidpit/app/services/ISignedLicenseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "de.androidpit.app.services.ISignedLicenseService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "de.androidpit.app.services.ISignedLicenseService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v3, v5

    .line 56
    .local v3, _arg3:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lde/androidpit/app/services/ISignedLicenseService$Stub;->isLicensed(Ljava/lang/String;Ljava/lang/String;IZ)Lde/androidpit/app/services/SignedResponse;

    move-result-object v4

    .line 57
    .local v4, _result:Lde/androidpit/app/services/SignedResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v4, p3, v5}, Lde/androidpit/app/services/SignedResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v3           #_arg3:Z
    .end local v4           #_result:Lde/androidpit/app/services/SignedResponse;
    :cond_0
    move v3, v6

    .line 55
    goto :goto_1

    .line 63
    .restart local v3       #_arg3:Z
    .restart local v4       #_result:Lde/androidpit/app/services/SignedResponse;
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Z
    .end local v4           #_result:Lde/androidpit/app/services/SignedResponse;
    :sswitch_2
    const-string v7, "de.androidpit.app.services.ISignedLicenseService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 76
    .local v2, _arg2:Z
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lde/androidpit/app/services/ISignedLicenseService$Stub;->authenticate(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v2           #_arg2:Z
    :cond_2
    move v2, v6

    .line 75
    goto :goto_2

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
