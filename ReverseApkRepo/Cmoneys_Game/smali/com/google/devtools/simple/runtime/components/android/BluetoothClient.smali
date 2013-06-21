.class public final Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;
.super Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;
.source "BluetoothClient.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Bluetooth client component"
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
.field private acceptableDeviceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/devtools/simple/runtime/components/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 46
    const-string v0, "BluetoothClient"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachedComponents:Ljava/util/List;

    .line 47
    return-void
.end method

.method private connect(Ljava/lang/Object;Ljava/util/UUID;)V
    .locals 4
    .parameter "bluetoothDevice"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p1, p2}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->createBluetoothSocket(Ljava/lang/Object;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, bluetoothSocket:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->connectToBluetoothSocket(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->setConnection(Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to Bluetooth device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "functionName"
    .parameter "address"
    .parameter "uuidString"

    .prologue
    const/4 v7, 0x0

    .line 214
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 216
    const-string v5, "Bluetooth is not available."

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 264
    :goto_0
    return v5

    .line 220
    :cond_0
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 221
    const-string v5, "Bluetooth is not enabled."

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 222
    goto :goto_0

    .line 227
    :cond_1
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, firstSpace:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 229
    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 232
    :cond_2
    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 233
    const-string v5, "The specified address is not a valid Bluetooth MAC address."

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 234
    goto :goto_0

    .line 237
    :cond_3
    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, bluetoothDevice:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 239
    const-string v5, "The specified address is not a paired Bluetooth device."

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 240
    goto :goto_0

    .line 243
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 244
    const-string v5, "The specified address is not the required class of device."

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 245
    goto :goto_0

    .line 250
    :cond_5
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 256
    .local v4, uuid:Ljava/util/UUID;
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->Disconnect()V

    .line 259
    :try_start_1
    invoke-direct {p0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->connect(Ljava/lang/Object;Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    const/4 v5, 0x1

    goto :goto_0

    .line 251
    .end local v4           #uuid:Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The UUID \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not formatted correctly."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 253
    goto :goto_0

    .line 261
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v4       #uuid:Ljava/util/UUID;
    :catch_1
    move-exception v2

    .line 262
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->Disconnect()V

    .line 263
    const-string v5, "Unable to connect. Is the device turned on?"

    invoke-virtual {p0, p1, v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v7

    .line 264
    goto :goto_0
.end method

.method private isDeviceClassAcceptable(Ljava/lang/Object;)Z
    .locals 4
    .parameter "bluetoothDevice"

    .prologue
    .line 162
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 164
    const/4 v2, 0x1

    .line 174
    :goto_0
    return v2

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothClass(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, bluetoothClass:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 170
    const/4 v2, 0x0

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getDeviceClass(Ljava/lang/Object;)I

    move-result v1

    .line 174
    .local v1, deviceClass:I
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .locals 8
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, addressesAndNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, bluetoothAdapter:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 142
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 143
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBondedDevices(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, bluetoothDevice:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->isDeviceClassAcceptable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 145
    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothDeviceName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothDeviceAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, address:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v0           #address:Ljava/lang/String;
    .end local v3           #bluetoothDevice:Ljava/lang/Object;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public Connect(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 186
    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "address"
    .parameter "uuid"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .prologue
    .line 199
    const-string v0, "ConnectWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .locals 6
    .parameter "address"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    const-string v3, "IsDevicePaired"

    .line 97
    .local v3, functionName:Ljava/lang/String;
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getBluetoothAdapter()Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, bluetoothAdapter:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 99
    const-string v4, "Bluetooth is not available."

    invoke-virtual {p0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 121
    :goto_0
    return v4

    .line 103
    :cond_0
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBluetoothEnabled(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    const-string v4, "Bluetooth is not enabled."

    invoke-virtual {p0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 105
    goto :goto_0

    .line 110
    :cond_1
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, firstSpace:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 112
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_2
    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->checkBluetoothAddress(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    const-string v4, "The specified address is not a valid Bluetooth MAC address."

    invoke-virtual {p0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->BluetoothError(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->getRemoteDevice(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, bluetoothDevice:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/util/BluetoothReflection;->isBonded(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method attachComponent(Lcom/google/devtools/simple/runtime/components/Component;Ljava/util/Set;)Z
    .locals 2
    .parameter "component"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/devtools/simple/runtime/components/Component;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, acceptableDeviceClasses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 52
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 60
    if-eqz p2, :cond_0

    move v0, v1

    .line 61
    goto :goto_1

    .line 64
    :cond_3
    if-nez p2, :cond_4

    move v0, v1

    .line 65
    goto :goto_1

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 68
    goto :goto_1

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 71
    goto :goto_1
.end method

.method detachComponent(Lcom/google/devtools/simple/runtime/components/Component;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 85
    :cond_0
    return-void
.end method
