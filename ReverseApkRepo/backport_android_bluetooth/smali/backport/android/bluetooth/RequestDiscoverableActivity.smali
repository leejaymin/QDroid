.class public Lbackport/android/bluetooth/RequestDiscoverableActivity;
.super Lbackport/android/bluetooth/RequestPermissionActivity;
.source "RequestDiscoverableActivity.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x78


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLocalDevice:Landroid/bluetooth/IBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lbackport/android/bluetooth/RequestPermissionActivity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->onButtonClicked(I)V

    return-void
.end method

.method static synthetic access$1(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/bluetooth/IBluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onButtonClicked(I)V
    .locals 8
    .parameter "duration"

    .prologue
    .line 87
    iget-object v2, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mHandler:Landroid/os/Handler;

    const-string v3, "Making device Discoverable..."

    .line 88
    new-instance v4, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;

    invoke-direct {v4, p0, p1}, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;-><init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V

    .line 125
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 87
    invoke-virtual/range {v0 .. v6}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->indeterminate(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;

    .line 129
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothDevice;->setScanMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 131
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method createDialog(I)Landroid/app/AlertDialog;
    .locals 7
    .parameter "duration"

    .prologue
    .line 55
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->getDialogInfoIconId()I

    move-result v3

    .line 57
    .local v3, id:I
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v5, "Bluetooth permission request"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "An application on your phone"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, " is requesting permission to turn on Bluetooth"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v5, " and to make your phone discoverable by other devices"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v5, " for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v5, " seconds."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, " Do you want to do this?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, msg:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v5, "Yes"

    new-instance v6, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;

    invoke-direct {v6, p0, p1}, Lbackport/android/bluetooth/RequestDiscoverableActivity$1;-><init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    const-string v5, "No"

    new-instance v6, Lbackport/android/bluetooth/RequestDiscoverableActivity$2;

    invoke-direct {v6, p0}, Lbackport/android/bluetooth/RequestDiscoverableActivity$2;-><init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 83
    .local v2, dialog:Landroid/app/AlertDialog;
    return-object v2
.end method

.method obtainDuration(Landroid/content/Intent;)I
    .locals 3
    .parameter "i"

    .prologue
    .line 49
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    .line 50
    const/16 v2, 0x78

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, d:I
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lbackport/android/bluetooth/RequestPermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->setResult(I)V

    .line 41
    invoke-static {}, Lbackport/android/bluetooth/IBluetoothDeviceLocator;->get()Landroid/bluetooth/IBluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;

    .line 42
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->obtainDuration(Landroid/content/Intent;)I

    move-result v1

    .line 44
    .local v1, duration:I
    invoke-virtual {p0, v1}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 45
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 46
    return-void
.end method
