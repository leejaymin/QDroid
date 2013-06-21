.class public abstract Lcom/sphericbox/syb/processing/IProcessingService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/processing/IProcessingService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sphericbox.syb.processing.IProcessingService"

    invoke-virtual {p0, p0, v0}, Lcom/sphericbox/syb/processing/IProcessingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sphericbox/syb/processing/IProcessingService;
    .locals 3
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.sphericbox.syb.processing.IProcessingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/sphericbox/syb/processing/IProcessingService;

    if-eqz v2, :cond_1

    .line 28
    move-object v0, v1

    check-cast v0, Lcom/sphericbox/syb/processing/IProcessingService;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/sphericbox/syb/processing/f;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/processing/f;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v2, "com.sphericbox.syb.processing.IProcessingService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.sphericbox.syb.processing.IProcessingService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.sphericbox.syb.processing.IProcessingService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/IProcessingService$Stub;->registerCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 52
    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "com.sphericbox.syb.processing.IProcessingService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sphericbox/syb/processing/IProcessingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sphericbox/syb/processing/IProcessingServiceCallback;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/processing/IProcessingService$Stub;->unregisterCallback(Lcom/sphericbox/syb/processing/IProcessingServiceCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 61
    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
