.class public Lbackport/android/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field final mSocket:Lbackport/android/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 2
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lbackport/android/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lbackport/android/bluetooth/BluetoothSocket;-><init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mSocket:Lbackport/android/bluetooth/BluetoothSocket;

    .line 17
    return-void
.end method


# virtual methods
.method public accept()Lbackport/android/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lbackport/android/bluetooth/BluetoothServerSocket;->accept(I)Lbackport/android/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept(I)Lbackport/android/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Lbackport/android/bluetooth/BluetoothSocket;->accept(I)Lbackport/android/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothSocket;->close()V

    .line 37
    return-void

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 1
    .parameter "handler"
    .parameter "message"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    .line 41
    iput p2, p0, Lbackport/android/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
