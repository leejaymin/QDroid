.class Lbackport/android/bluetooth/RequestDiscoverableActivity$3;
.super Ljava/lang/Object;
.source "RequestDiscoverableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestDiscoverableActivity;->onButtonClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

.field private final synthetic val$duration:I


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestDiscoverableActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    iput p2, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->val$duration:I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbackport/android/bluetooth/RequestDiscoverableActivity$3;)Lbackport/android/bluetooth/RequestDiscoverableActivity;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    .line 124
    :goto_1
    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v3, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;
    invoke-static {v3}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->access$1(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDevice;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    iget-object v3, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;
    invoke-static {v3}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->access$1(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDevice;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    :cond_1
    :goto_2
    :try_start_1
    iget-object v3, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity;->mLocalDevice:Landroid/bluetooth/IBluetoothDevice;
    invoke-static {v3}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->access$1(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/bluetooth/IBluetoothDevice;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDevice;->getScanMode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 107
    .local v2, scanMode:I
    :goto_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 108
    iget-object v3, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->access$2(Lbackport/android/bluetooth/RequestDiscoverableActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;

    iget v5, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->val$duration:I

    invoke-direct {v4, p0, v5}, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;-><init>(Lbackport/android/bluetooth/RequestDiscoverableActivity$3;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 103
    .end local v2           #scanMode:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 104
    .local v0, e1:Landroid/os/RemoteException;
    const/high16 v2, -0x8000

    .restart local v2       #scanMode:I
    goto :goto_3

    .line 120
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_2
    const-wide/16 v3, 0x64

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 91
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v3

    goto :goto_4

    .line 96
    .end local v2           #scanMode:I
    :catch_2
    move-exception v3

    goto :goto_2
.end method
