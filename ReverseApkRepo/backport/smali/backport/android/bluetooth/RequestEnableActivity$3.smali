.class Lbackport/android/bluetooth/RequestEnableActivity$3;
.super Ljava/lang/Object;
.source "RequestEnableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestEnableActivity;->onButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/RequestEnableActivity;


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestEnableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbackport/android/bluetooth/RequestEnableActivity$3;)Lbackport/android/bluetooth/RequestEnableActivity;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 101
    :goto_1
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    #getter for: Lbackport/android/bluetooth/RequestEnableActivity;->mLocalDevice:Lbackport/android/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lbackport/android/bluetooth/RequestEnableActivity;->access$1(Lbackport/android/bluetooth/RequestEnableActivity;)Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;

    #getter for: Lbackport/android/bluetooth/RequestEnableActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lbackport/android/bluetooth/RequestEnableActivity;->access$2(Lbackport/android/bluetooth/RequestEnableActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lbackport/android/bluetooth/RequestEnableActivity$3$1;

    invoke-direct {v2, p0}, Lbackport/android/bluetooth/RequestEnableActivity$3$1;-><init>(Lbackport/android/bluetooth/RequestEnableActivity$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 97
    :cond_1
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    goto :goto_2
.end method
