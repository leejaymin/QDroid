.class public final Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;
.super Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;
.source "BluetoothServer.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Bluetooth server component"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.BLUETOOTH"
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private final arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 47
    const-string v0, "BluetoothServer"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    return-void
.end method

.method private accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "functionName"
    .parameter "name"
    .parameter "uuidString"

    .prologue
    .line 70
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 72
    const-string v4, "Bluetooth is not available."

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 77
    const-string v4, "Bluetooth is not enabled."

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 90
    .local v3, uuid:Ljava/util/UUID;
    :try_start_1
    invoke-static {v0, p2, v3}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->listenUsingRfcommWithServiceRecord(Ljava/lang/Object;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    .local v1, bluetoothServerSocket:Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    new-instance v4, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;

    invoke-direct {v4, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 84
    .end local v1           #bluetoothServerSocket:Ljava/lang/Object;
    .end local v3           #uuid:Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 85
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The UUID \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not formatted correctly."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #uuid:Ljava/util/UUID;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 94
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Unable to listen for a connection from a bluetooth device."

    invoke-virtual {p0, p1, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public AcceptConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "serviceName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Accept an incoming connection with the Serial Port Profile (SPP)."
    .end annotation

    .prologue
    .line 58
    const-string v0, "AcceptConnection"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public AcceptConnectionWithUUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serviceName"
    .parameter "uuid"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Accept an incoming connection with a specific UUID."
    .end annotation

    .prologue
    .line 66
    const-string v0, "AcceptConnectionWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public ConnectionAccepted()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that a bluetooth connection has been accepted."
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->logTag:Ljava/lang/String;

    const-string v1, "Successfullly accepted bluetooth connection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "ConnectionAccepted"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public final IsAccepting()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StopAccepting()V
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Stop accepting an incoming connection."
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    .local v0, bluetoothServerSocket:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->closeBluetoothServerSocket(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothServer;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while closing bluetooth server socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
