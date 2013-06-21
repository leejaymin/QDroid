.class public Lbackport/android/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;
    }
.end annotation


# static fields
.field static final DEFAULT_CHANNEL:I = 0x1e

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static final M_ADDRESS_FIELD:Ljava/lang/reflect/Field; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"


# instance fields
.field private mClosed:Z

.field private mInStream:Ljava/io/InputStream;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mOutStream:Ljava/io/OutputStream;

.field private mPort:I

.field private mRemoteDevice:Lbackport/android/bluetooth/BluetoothDevice;

.field final mRfcommSocket:Landroid/bluetooth/RfcommSocket;

.field private final mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 35
    .local v0, fld:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/bluetooth/RfcommSocket;

    const-string v2, "mAddress"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    sput-object v0, Lbackport/android/bluetooth/BluetoothSocket;->M_ADDRESS_FIELD:Ljava/lang/reflect/Field;

    .line 17
    return-void

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0

    .line 41
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 2
    .parameter "remDev"
    .parameter "uuid"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mPort:I

    .line 68
    iput-object p1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRemoteDevice:Lbackport/android/bluetooth/BluetoothDevice;

    .line 69
    new-instance v0, Landroid/bluetooth/RfcommSocket;

    invoke-direct {v0}, Landroid/bluetooth/RfcommSocket;-><init>()V

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    .line 72
    :try_start_0
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->create()Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    if-nez p2, :cond_0

    .line 78
    iput-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    .line 90
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 92
    return-void

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    .line 83
    new-instance v0, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    invoke-direct {v0, p1, p2}, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;-><init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    goto :goto_1

    .line 86
    :cond_1
    iput-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private obtainAddress(Landroid/bluetooth/RfcommSocket;)Ljava/lang/String;
    .locals 3
    .parameter "rfcommSocket"

    .prologue
    .line 343
    const/4 v1, 0x0

    .line 346
    .local v1, addr:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lbackport/android/bluetooth/BluetoothSocket;->M_ADDRESS_FIELD:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v2

    goto :goto_0

    .line 347
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method accept(I)Lbackport/android/bluetooth/BluetoothSocket;
    .locals 7
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 205
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 207
    :try_start_0
    iget-boolean v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z

    if-eqz v4, :cond_0

    .line 208
    new-instance v4, Ljava/io/IOException;

    const-string v5, "socket closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :catchall_0
    move-exception v4

    .line 211
    iget-object v5, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 212
    throw v4

    .line 211
    :cond_0
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 214
    new-instance v1, Lbackport/android/bluetooth/BluetoothSocket;

    invoke-direct {v1, v5, v5}, Lbackport/android/bluetooth/BluetoothSocket;-><init>(Lbackport/android/bluetooth/BluetoothDevice;Ljava/util/UUID;)V

    .line 215
    .local v1, socket:Lbackport/android/bluetooth/BluetoothSocket;
    iget-object v2, v1, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    .line 218
    .local v2, tmp:Landroid/bluetooth/RfcommSocket;
    if-le p1, v6, :cond_2

    move v3, p1

    .line 221
    .local v3, tmpTimeout:I
    :cond_1
    :goto_0
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v4, v2, v3}, Landroid/bluetooth/RfcommSocket;->accept(Landroid/bluetooth/RfcommSocket;I)Ljava/io/FileDescriptor;

    .line 223
    if-le p1, v6, :cond_3

    .line 242
    :goto_1
    invoke-direct {p0, v2}, Lbackport/android/bluetooth/BluetoothSocket;->obtainAddress(Landroid/bluetooth/RfcommSocket;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, addr:Ljava/lang/String;
    new-instance v4, Lbackport/android/bluetooth/BluetoothDevice;

    invoke-direct {v4, v0}, Lbackport/android/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lbackport/android/bluetooth/BluetoothSocket;->mRemoteDevice:Lbackport/android/bluetooth/BluetoothDevice;

    move-object v4, v1

    .line 245
    .end local v0           #addr:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 218
    .end local v3           #tmpTimeout:I
    :cond_2
    const/16 v4, 0x1f4

    move v3, v4

    goto :goto_0

    .line 227
    .restart local v3       #tmpTimeout:I
    :cond_3
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 229
    :try_start_1
    iget-boolean v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v4, v5

    .line 230
    goto :goto_2

    .line 233
    :catchall_1
    move-exception v4

    .line 234
    iget-object v5, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 235
    throw v4

    .line 234
    :cond_4
    iget-object v4, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 237
    invoke-virtual {v2}, Landroid/bluetooth/RfcommSocket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1
.end method

.method bindListen()I
    .locals 4

    .prologue
    const/16 v3, 0x62

    .line 173
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 177
    :try_start_0
    iget-boolean v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 179
    const/16 v1, 0x4d

    .line 198
    :goto_0
    return v1

    .line 184
    :cond_0
    :try_start_1
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/RfcommSocket;->bind(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :try_start_2
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/RfcommSocket;->listen(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 198
    const/4 v1, 0x0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 200
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v1, v3

    .line 187
    goto :goto_0

    .line 193
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 200
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move v1, v3

    .line 195
    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 200
    iget-object v2, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 201
    throw v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 133
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_1
    :try_start_2
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->shutdownInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 111
    :goto_1
    :try_start_3
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->shutdownOutput()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 116
    :goto_2
    :try_start_4
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->shutdown()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 121
    :goto_3
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 126
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 128
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z

    .line 129
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 122
    throw v0

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 132
    throw v0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_3

    .line 112
    :catch_1
    move-exception v0

    goto :goto_2

    .line 107
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mClosed:Z

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string v1, "socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 149
    throw v0

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mSdp:Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;

    invoke-virtual {v0}, Lbackport/android/bluetooth/BluetoothSocket$SdpHelper;->doSdp()I

    move-result v0

    iput v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mPort:I

    .line 146
    :cond_1
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    iget-object v1, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRemoteDevice:Lbackport/android/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lbackport/android/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lbackport/android/bluetooth/BluetoothSocket;->mPort:I

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/RfcommSocket;->connect(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 150
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mInStream:Ljava/io/InputStream;

    .line 156
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mInStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRfcommSocket:Landroid/bluetooth/RfcommSocket;

    invoke-virtual {v0}, Landroid/bluetooth/RfcommSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mOutStream:Ljava/io/OutputStream;

    .line 163
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mOutStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRemoteDevice()Lbackport/android/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lbackport/android/bluetooth/BluetoothSocket;->mRemoteDevice:Lbackport/android/bluetooth/BluetoothDevice;

    return-object v0
.end method
