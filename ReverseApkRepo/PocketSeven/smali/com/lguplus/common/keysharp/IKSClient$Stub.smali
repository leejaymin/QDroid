.class public abstract Lcom/lguplus/common/keysharp/IKSClient$Stub;
.super Landroid/os/Binder;
.source "IKSClient.java"

# interfaces
.implements Lcom/lguplus/common/keysharp/IKSClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/common/keysharp/IKSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common/keysharp/IKSClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lguplus.common.keysharp.IKSClient"

.field static final TRANSACTION_decryptMessage:I = 0x6

.field static final TRANSACTION_decryptMessageBase64:I = 0x7

.field static final TRANSACTION_encryptMessage:I = 0x4

.field static final TRANSACTION_encryptMessageBase64:I = 0x5

.field static final TRANSACTION_finalizeKey:I = 0x2

.field static final TRANSACTION_finalizeKeyValidity:I = 0x3

.field static final TRANSACTION_initializeKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p0, p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lguplus/common/keysharp/IKSClient;
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
    const-string v1, "com.lguplus.common.keysharp.IKSClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lguplus/common/keysharp/IKSClient;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lguplus/common/keysharp/IKSClient;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lguplus/common/keysharp/IKSClient$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lguplus/common/keysharp/IKSClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->initializeKey()[B

    move-result-object v2

    .line 49
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 55
    .end local v2           #_result:[B
    :sswitch_2
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 58
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->finalizeKey([B)I

    move-result v2

    .line 59
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:[B
    .end local v2           #_result:I
    :sswitch_3
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->finalizeKeyValidity([BI)I

    move-result v2

    .line 71
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v2           #_result:I
    :sswitch_4
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 80
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->encryptMessage([B)[B

    move-result-object v2

    .line 81
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:[B
    .end local v2           #_result:[B
    :sswitch_5
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 90
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->encryptMessageBase64([B)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0           #_arg0:[B
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 100
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->decryptMessage([B)[B

    move-result-object v2

    .line 101
    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 107
    .end local v0           #_arg0:[B
    .end local v2           #_result:[B
    :sswitch_7
    const-string v4, "com.lguplus.common.keysharp.IKSClient"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lguplus/common/keysharp/IKSClient$Stub;->decryptMessageBase64(Ljava/lang/String;)[B

    move-result-object v2

    .line 111
    .restart local v2       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method