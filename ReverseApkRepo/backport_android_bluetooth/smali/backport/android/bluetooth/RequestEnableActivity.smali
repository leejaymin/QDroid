.class public Lbackport/android/bluetooth/RequestEnableActivity;
.super Lbackport/android/bluetooth/RequestPermissionActivity;
.source "RequestEnableActivity.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lbackport/android/bluetooth/RequestPermissionActivity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lbackport/android/bluetooth/RequestEnableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lbackport/android/bluetooth/RequestEnableActivity;->onButtonClicked()V

    return-void
.end method

.method static synthetic access$1(Lbackport/android/bluetooth/RequestEnableActivity;)Lbackport/android/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lbackport/android/bluetooth/RequestEnableActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onButtonClicked()V
    .locals 7

    .prologue
    .line 78
    iget-object v2, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mHandler:Landroid/os/Handler;

    const-string v3, "Turning on Bluetooth..."

    .line 79
    new-instance v4, Lbackport/android/bluetooth/RequestEnableActivity$3;

    invoke-direct {v4, p0}, Lbackport/android/bluetooth/RequestEnableActivity$3;-><init>(Lbackport/android/bluetooth/RequestEnableActivity;)V

    .line 102
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 78
    invoke-virtual/range {v0 .. v6}, Lbackport/android/bluetooth/RequestEnableActivity;->indeterminate(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V

    .line 104
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothAdapter;->enable()Z

    .line 105
    return-void
.end method


# virtual methods
.method createDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 49
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestEnableActivity;->getDialogInfoIconId()I

    move-result v3

    .line 51
    .local v3, id:I
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 52
    const-string v5, "Bluetooth permission request"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v5, "An application on your phone"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v5, " is requesting permission to turn on Bluetooth."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, " Do you want to do this?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, msg:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const-string v5, "Yes"

    new-instance v6, Lbackport/android/bluetooth/RequestEnableActivity$1;

    invoke-direct {v6, p0}, Lbackport/android/bluetooth/RequestEnableActivity$1;-><init>(Lbackport/android/bluetooth/RequestEnableActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const-string v5, "No"

    new-instance v6, Lbackport/android/bluetooth/RequestEnableActivity$2;

    invoke-direct {v6, p0}, Lbackport/android/bluetooth/RequestEnableActivity$2;-><init>(Lbackport/android/bluetooth/RequestEnableActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 73
    .local v2, dialog:Landroid/app/AlertDialog;
    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lbackport/android/bluetooth/RequestPermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbackport/android/bluetooth/RequestEnableActivity;->setResult(I)V

    .line 38
    iget-object v1, p0, Lbackport/android/bluetooth/RequestEnableActivity;->mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lbackport/android/bluetooth/RequestEnableActivity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestEnableActivity;->finish()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestEnableActivity;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 45
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
