.class public abstract Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;
.super Ljava/lang/Object;
.source "BluetoothConnectionBase.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private connectedBluetoothSocket:Ljava/lang/Object;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1
    .parameter "outputStream"
    .parameter "inputStream"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 62
    const-string v0, "Not Null"

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 64
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "logTag"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 55
    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;

    .line 87
    .local v1, listener:Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;->afterConnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V

    goto :goto_0

    .line 89
    .end local v1           #listener:Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;
    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;

    .line 93
    .local v1, listener:Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V

    goto :goto_0

    .line 95
    .end local v1           #listener:Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 129
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that an error occurred while using this Bluetooth related connection component."
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothError during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "BluetoothError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 428
    const-string v1, "BytesAvailableToReceive"

    .line 429
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    const-string v2, "Not connected to a Bluetooth device."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 438
    :goto_0
    return v2

    .line 435
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 436
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 437
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 438
    goto :goto_0
.end method

.method public final Disconnect()V
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->closeBluetoothSocket(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 173
    :cond_0
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 174
    iput-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 175
    return-void

    .line 168
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 169
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while disconnecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public HighByteFirst(Z)V
    .locals 1
    .parameter "highByteFirst"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 209
    return-void

    .line 208
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 473
    const-string v1, "ReceiveSigned1ByteNumber"

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 474
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 478
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v2

    goto :goto_0
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 501
    const-string v1, "ReceiveSigned2ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 502
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 509
    :goto_0
    return v1

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 507
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 509
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 537
    const-string v1, "ReceiveSigned4ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 538
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 539
    const-wide/16 v1, 0x0

    .line 548
    :goto_0
    return-wide v1

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 543
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_0

    .line 548
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    goto :goto_0
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 5
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a 0 byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    const-string v4, "ReceiveSignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 593
    .local v0, bytes:[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 595
    aget-byte v3, v0, v1

    .line 596
    .local v3, n:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v3           #n:I
    :cond_0
    return-object v2
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 6
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a 0 byte value is received"
    .end annotation

    .prologue
    const-string v2, "ISO-8859-1"

    .line 453
    const-string v2, "ReceiveText"

    invoke-virtual {p0, v2, p1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 455
    .local v0, bytes:[B
    if-gez p1, :cond_0

    .line 457
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 463
    :goto_0
    return-object v2

    .line 459
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 462
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 487
    const-string v1, "ReceiveUnsigned1ByteNumber"

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 488
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 492
    :goto_0
    return v1

    :cond_0
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 519
    const-string v1, "ReceiveUnsigned2ByteNumber"

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 520
    .local v0, bytes:[B
    array-length v1, v0

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 527
    :goto_0
    return v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 525
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0

    .line 527
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 12
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 561
    const-string v1, "ReceiveUnsigned4ByteNumber"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 562
    .local v0, bytes:[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 563
    const-wide/16 v1, 0x0

    .line 572
    :goto_0
    return-wide v1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 567
    aget-byte v1, v0, v11

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v8

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    goto :goto_0

    .line 572
    :cond_1
    aget-byte v1, v0, v8

    int-to-long v1, v1

    and-long/2addr v1, v6

    aget-byte v3, v0, v9

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v10

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aget-byte v3, v0, v11

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    goto :goto_0
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 5
    .parameter "numberOfBytes"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a 0 byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    const-string v4, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v4, p1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 615
    .local v0, bytes:[B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 617
    aget-byte v4, v0, v1

    and-int/lit16 v3, v4, 0xff

    .line 618
    .local v3, n:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v3           #n:I
    :cond_0
    return-object v2
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .parameter "number"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 244
    const-string v2, "Send1ByteNumber"

    .line 247
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 252
    .local v3, n:I
    int-to-byte v0, v3

    .line 253
    .local v0, b:B
    shr-int/lit8 v3, v3, 0x8

    .line 254
    if-eqz v3, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not fit \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" into 1 byte."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v0           #b:B
    .end local v3           #n:I
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 249
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" as an integer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #b:B
    .restart local v3       #n:I
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    const-string v2, "Send2ByteNumber"

    .line 276
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 281
    .local v3, n:I
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 282
    .local v0, bytes:[B
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_0

    .line 283
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 284
    shr-int/lit8 v3, v3, 0x8

    .line 285
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 291
    :goto_0
    shr-int/lit8 v3, v3, 0x8

    .line 292
    if-eqz v3, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not fit \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" into 2 bytes."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v0           #bytes:[B
    .end local v3           #n:I
    :goto_1
    return-void

    .line 277
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 278
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" as an integer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #bytes:[B
    .restart local v3       #n:I
    :cond_0
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 288
    shr-int/lit8 v3, v3, 0x8

    .line 289
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .parameter "number"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    const-wide/16 v8, 0xff

    .line 311
    const-string v2, "Send4ByteNumber"

    .line 314
    .local v2, functionName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 319
    .local v3, n:J
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 320
    .local v0, bytes:[B
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_0

    .line 321
    const/4 v5, 0x3

    and-long v6, v3, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 322
    shr-long/2addr v3, v10

    .line 323
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v13

    .line 324
    shr-long/2addr v3, v10

    .line 325
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v12

    .line 326
    shr-long/2addr v3, v10

    .line 327
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 337
    :goto_0
    shr-long/2addr v3, v10

    .line 338
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not fit \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" into 4 bytes."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v0           #bytes:[B
    .end local v3           #n:J
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 316
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not decode \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" as an integer."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #bytes:[B
    .restart local v3       #n:J
    :cond_0
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v11

    .line 330
    shr-long/2addr v3, v10

    .line 331
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v12

    .line 332
    shr-long/2addr v3, v10

    .line 333
    and-long v5, v3, v8

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v13

    .line 334
    shr-long/2addr v3, v10

    .line 335
    const/4 v5, 0x3

    and-long v6, v3, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendBytes(Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 10
    .parameter "list"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 357
    const-string v4, "SendBytes"

    .line 358
    .local v4, functionName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, array:[Ljava/lang/Object;
    array-length v8, v0

    new-array v1, v8, [B

    .line 360
    .local v1, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v8, v0

    if-ge v5, v8, :cond_1

    .line 363
    aget-object v3, v0, v5

    .line 364
    .local v3, element:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, s:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 372
    .local v6, n:I
    and-int/lit16 v8, v6, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 373
    shr-int/lit8 v6, v6, 0x8

    .line 374
    if-eqz v6, :cond_0

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not fit element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into 1 byte."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .end local v3           #element:Ljava/lang/Object;
    .end local v6           #n:I
    .end local v7           #s:Ljava/lang/String;
    :goto_1
    return-void

    .line 368
    .restart local v3       #element:Ljava/lang/Object;
    .restart local v7       #s:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 369
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode element "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as an integer."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #n:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 379
    .end local v3           #element:Ljava/lang/Object;
    .end local v6           #n:I
    .end local v7           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 5
    .parameter "text"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .prologue
    .line 220
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    .local v0, bytes:[B
    :goto_0
    const-string v2, "SendText"

    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 226
    return-void

    .line 221
    .end local v0           #bytes:[B
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 222
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #bytes:[B
    goto :goto_0
.end method

.method addBluetoothConnectionListener(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->Disconnect()V

    .line 689
    :cond_0
    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 10
    .parameter "functionName"
    .parameter "numberOfBytes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v6, "End of stream has been reached."

    .line 634
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->IsConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 635
    const-string v6, "Not connected to a Bluetooth device."

    invoke-virtual {p0, p1, v6}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-array v6, v9, [B

    .line 679
    :goto_0
    return-object v6

    .line 639
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    .local v0, buffer:Ljava/io/ByteArrayOutputStream;
    if-ltz p2, :cond_3

    .line 643
    new-array v1, p2, [B

    .line 644
    .local v1, bytes:[B
    const/4 v4, 0x0

    .line 645
    .local v4, totalBytesRead:I
    :goto_1
    if-ge v4, p2, :cond_1

    .line 647
    :try_start_0
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-virtual {v6, v1, v4, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 648
    .local v3, numBytesRead:I
    if-ne v3, v8, :cond_2

    .line 649
    const-string v6, "End of stream has been reached."

    invoke-virtual {p0, p1, v6}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v3           #numBytesRead:I
    :cond_1
    :goto_2
    invoke-virtual {v0, v1, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 679
    .end local v1           #bytes:[B
    .end local v4           #totalBytesRead:I
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 652
    .restart local v1       #bytes:[B
    .restart local v3       #numBytesRead:I
    .restart local v4       #totalBytesRead:I
    :cond_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 653
    .end local v3           #numBytesRead:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 663
    .end local v1           #bytes:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #totalBytesRead:I
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 664
    .local v5, value:I
    if-ne v5, v8, :cond_4

    .line 665
    const-string v6, "End of stream has been reached."

    invoke-virtual {p0, p1, v6}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 672
    .end local v5           #value:I
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 673
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 668
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #value:I
    :cond_4
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 669
    if-nez v5, :cond_3

    goto :goto_3
.end method

.method removeBluetoothConnectionListener(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected final setConnection(Ljava/lang/Object;)V
    .locals 2
    .parameter "bluetoothSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 153
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->connectedBluetoothSocket:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getOutputStream(Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 155
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->fireAfterConnectEvent()V

    .line 156
    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 2
    .parameter "functionName"
    .parameter "b"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    const-string v1, "Not connected to a Bluetooth device."

    invoke-virtual {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 396
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 398
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 2
    .parameter "functionName"
    .parameter "bytes"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    const-string v1, "Not connected to a Bluetooth device."

    invoke-virtual {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 416
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 418
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
