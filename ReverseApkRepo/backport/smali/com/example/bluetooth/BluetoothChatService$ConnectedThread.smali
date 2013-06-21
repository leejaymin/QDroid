.class Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;
.super Ljava/lang/Thread;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/bluetooth/BluetoothChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field private final mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/example/bluetooth/BluetoothChatService;


# direct methods
.method public constructor <init>(Lcom/example/bluetooth/BluetoothChatService;Lbackport/android/bluetooth/BluetoothSocket;)V
    .locals 5
    .parameter
    .parameter "socket"

    .prologue
    const-string v4, "BluetoothChatService"

    .line 387
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    .line 371
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 372
    const-string v3, "BluetoothChatService"

    const-string v3, "create ConnectedThread"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iput-object p2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, tmpIn:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 379
    .local v2, tmpOut:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Lbackport/android/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 380
    invoke-virtual {p2}, Lbackport/android/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 385
    :goto_0
    iput-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 386
    iput-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    return-void

    .line 381
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 382
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BluetoothChatService"

    const-string v3, "temp sockets not created"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmSocket:Lbackport/android/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 431
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const-string v6, "BluetoothChatService"

    .line 390
    const-string v3, "BluetoothChatService"

    const-string v3, "BEGIN mConnectedThread"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 398
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 401
    .local v1, bytes:I
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/example/bluetooth/BluetoothChatService;->access$5(Lcom/example/bluetooth/BluetoothChatService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    .end local v1           #bytes:I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 404
    .local v2, e:Ljava/io/IOException;
    const-string v3, "BluetoothChatService"

    const-string v3, "disconnected"

    invoke-static {v6, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #calls: Lcom/example/bluetooth/BluetoothChatService;->connectionLost()V
    invoke-static {v3}, Lcom/example/bluetooth/BluetoothChatService;->access$6(Lcom/example/bluetooth/BluetoothChatService;)V

    .line 409
    return-void
.end method

.method public write([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 420
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/example/bluetooth/BluetoothChatService;->access$5(Lcom/example/bluetooth/BluetoothChatService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 423
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
