.class public Lcom/example/bluetooth/BluetoothChatService;
.super Ljava/lang/Object;
.source "BluetoothChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/bluetooth/BluetoothChatService$AcceptThread;,
        Lcom/example/bluetooth/BluetoothChatService$ConnectThread;,
        Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final MY_UUID:Ljava/util/UUID; = null

.field private static final NAME:Ljava/lang/String; = "BluetoothChat"

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothChatService"


# instance fields
.field private mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

.field private final mAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

.field private mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

.field private mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

.field private final mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/example/bluetooth/BluetoothChatService;->MY_UUID:Ljava/util/UUID;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lbackport/android/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lbackport/android/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    .line 74
    iput-object p2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/example/bluetooth/BluetoothChatService;)Lbackport/android/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAdapter:Lbackport/android/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/example/bluetooth/BluetoothChatService;->MY_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/bluetooth/BluetoothChatService;)I
    .locals 1
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    return v0
.end method

.method static synthetic access$3(Lcom/example/bluetooth/BluetoothChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/example/bluetooth/BluetoothChatService;->connectionFailed()V

    return-void
.end method

.method static synthetic access$4(Lcom/example/bluetooth/BluetoothChatService;Lcom/example/bluetooth/BluetoothChatService$ConnectThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    return-void
.end method

.method static synthetic access$5(Lcom/example/bluetooth/BluetoothChatService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/example/bluetooth/BluetoothChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/example/bluetooth/BluetoothChatService;->connectionLost()V

    return-void
.end method

.method private connectionFailed()V
    .locals 4

    .prologue
    .line 199
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V

    .line 202
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 203
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "toast"

    const-string v3, "Unable to connect device"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 206
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method

.method private connectionLost()V
    .locals 4

    .prologue
    .line 213
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V

    .line 216
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 217
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "toast"

    const-string v3, "Device connection was lost"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 220
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput p1, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    .line 86
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized connect(Lbackport/android/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x2

    .line 120
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    if-ne v0, v3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 131
    :cond_1
    new-instance v0, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-direct {v0, p0, p1}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;-><init>(Lcom/example/bluetooth/BluetoothChatService;Lbackport/android/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    .line 132
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->start()V

    .line 133
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connected(Lbackport/android/bluetooth/BluetoothSocket;Lbackport/android/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "socket"
    .parameter "device"

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothChatService"

    const-string v3, "connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-virtual {v2}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-virtual {v2}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    invoke-virtual {v2}, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    .line 154
    :cond_2
    new-instance v2, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-direct {v2, p0, p1}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;-><init>(Lcom/example/bluetooth/BluetoothChatService;Lbackport/android/bluetooth/BluetoothSocket;)V

    iput-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 155
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-virtual {v2}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->start()V

    .line 158
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 159
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "device_name"

    invoke-virtual {p2}, Lbackport/android/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 162
    iget-object v2, p0, Lcom/example/bluetooth/BluetoothChatService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 142
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    invoke-direct {v0, p0}, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;-><init>(Lcom/example/bluetooth/BluetoothChatService;)V

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    .line 110
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->start()V

    .line 112
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothChatService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectThread:Lcom/example/bluetooth/BluetoothChatService$ConnectThread;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    invoke-virtual {v0}, Lcom/example/bluetooth/BluetoothChatService$AcceptThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mAcceptThread:Lcom/example/bluetooth/BluetoothChatService$AcceptThread;

    .line 175
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/example/bluetooth/BluetoothChatService;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 3
    .parameter "out"

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget v1, p0, Lcom/example/bluetooth/BluetoothChatService;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    monitor-exit p0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/example/bluetooth/BluetoothChatService;->mConnectedThread:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;

    .line 187
    .local v0, r:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;->write([B)V

    goto :goto_0

    .line 187
    .end local v0           #r:Lcom/example/bluetooth/BluetoothChatService$ConnectedThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
