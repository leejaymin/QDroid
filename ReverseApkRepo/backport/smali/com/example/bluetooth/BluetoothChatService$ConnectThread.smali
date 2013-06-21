.class Lcom/example/bluetooth/BluetoothChatService$ConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/bluetooth/BluetoothChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private final mmDevice:Lbackport/android/bluetooth/BluetoothDevice;

.field private final mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/example/bluetooth/BluetoothChatService;


# direct methods
.method public constructor <init>(Lcom/example/bluetooth/BluetoothChatService;Lbackport/android/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter
    .parameter "device"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    .line 305
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmDevice:Lbackport/android/bluetooth/BluetoothDevice;

    .line 307
    const/4 v1, 0x0

    .line 312
    .local v1, tmp:Lbackport/android/bluetooth/BluetoothSocket;
    :try_start_0
    invoke-static {}, Lcom/example/bluetooth/BluetoothChatService;->access$1()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Lbackport/android/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Lbackport/android/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 316
    :goto_0
    iput-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    return-void

    .line 313
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 314
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    const-string v3, "create() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 357
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const-string v3, "BluetoothChatService"

    .line 320
    const-string v2, "BluetoothChatService"

    const-string v2, "BEGIN mConnectThread"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v2, "ConnectThread"

    invoke-virtual {p0, v2}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->setName(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mAdapter:Lbackport/android/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/example/bluetooth/BluetoothChatService;->access$0(Lcom/example/bluetooth/BluetoothChatService;)Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lbackport/android/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Lbackport/android/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    monitor-enter v2

    .line 346
    :try_start_1
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    const/4 v4, 0x0

    #setter for: Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;
    invoke-static {v3, v4}, Lcom/example/bluetooth/BluetoothChatService;->access$4(Lcom/example/bluetooth/BluetoothChatService;Lcom/example/bluetooth/BluetoothChatService$ConnectThread;)V

    .line 345
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    iget-object v4, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmDevice:Lbackport/android/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4}, Lcom/example/bluetooth/BluetoothChatService;->connected(Lbackport/android/bluetooth/BluetoothSocket;Lbackport/android/bluetooth/BluetoothDevice;)V

    .line 351
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 332
    .local v0, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #calls: Lcom/example/bluetooth/BluetoothChatService;->connectionFailed()V
    invoke-static {v2}, Lcom/example/bluetooth/BluetoothChatService;->access$3(Lcom/example/bluetooth/BluetoothChatService;)V

    .line 335
    :try_start_2
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Lbackport/android/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    :goto_1
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v2}, Lcom/example/bluetooth/BluetoothChatService;->start()V

    goto :goto_0

    .line 336
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 337
    .local v1, e2:Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    const-string v2, "unable to close() socket during connection failure"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 345
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
