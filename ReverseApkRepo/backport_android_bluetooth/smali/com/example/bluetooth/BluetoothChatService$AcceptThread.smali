.class Lcom/example/bluetooth/BluetoothChatService$AcceptThread;
.super Ljava/lang/Thread;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/bluetooth/BluetoothChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field private final mmServerSocket:Lbackport/android/bluetooth/BluetoothServerSocket;

.field final synthetic this$0:Lcom/example/bluetooth/BluetoothChatService;


# direct methods
.method public constructor <init>(Lcom/example/bluetooth/BluetoothChatService;)V
    .locals 5
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    .line 232
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 233
    const/4 v1, 0x0

    .line 237
    .local v1, tmp:Lbackport/android/bluetooth/BluetoothServerSocket;
    :try_start_0
    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mAdapter:Lbackport/android/bluetooth/BluetoothAdapter;
    invoke-static {p1}, Lcom/example/bluetooth/BluetoothChatService;->access$0(Lcom/example/bluetooth/BluetoothChatService;)Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v2

    const-string v3, "BluetoothChat"

    invoke-static {}, Lcom/example/bluetooth/BluetoothChatService;->access$1()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbackport/android/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Lbackport/android/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :goto_0
    iput-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->mmServerSocket:Lbackport/android/bluetooth/BluetoothServerSocket;

    return-void

    .line 238
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 239
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    const-string v3, "listen() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const-string v3, "BluetoothChatService"

    .line 286
    const-string v1, "BluetoothChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->mmServerSocket:Lbackport/android/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 290
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothChatService"

    const-string v1, "close() of server failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const-string v5, "BluetoothChatService"

    .line 245
    const-string v2, "BluetoothChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BEGIN mAcceptThread"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v2, "AcceptThread"

    invoke-virtual {p0, v2}, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->setName(Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x0

    .line 250
    .local v1, socket:Lbackport/android/bluetooth/BluetoothSocket;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mState:I
    invoke-static {v2}, Lcom/example/bluetooth/BluetoothChatService;->access$2(Lcom/example/bluetooth/BluetoothChatService;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 282
    :goto_1
    const-string v2, "BluetoothChatService"

    const-string v2, "END mAcceptThread"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 254
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->mmServerSocket:Lbackport/android/bluetooth/BluetoothServerSocket;

    invoke-virtual {v2}, Lbackport/android/bluetooth/BluetoothServerSocket;->accept()Lbackport/android/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    monitor-enter v2

    .line 263
    :try_start_1
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    #getter for: Lcom/example/bluetooth/BluetoothChatService;->mState:I
    invoke-static {v3}, Lcom/example/bluetooth/BluetoothChatService;->access$2(Lcom/example/bluetooth/BluetoothChatService;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 262
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 256
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothChatService"

    const-string v2, "accept() failed"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 267
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    :try_start_2
    iget-object v3, p0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->this$0:Lcom/example/bluetooth/BluetoothChatService;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothSocket;->getRemoteDevice()Lbackport/android/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/example/bluetooth/BluetoothChatService;->connected(Lbackport/android/bluetooth/BluetoothSocket;Lbackport/android/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 273
    :pswitch_1
    :try_start_3
    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    const-string v3, "BluetoothChatService"

    const-string v4, "Could not close unwanted socket"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
