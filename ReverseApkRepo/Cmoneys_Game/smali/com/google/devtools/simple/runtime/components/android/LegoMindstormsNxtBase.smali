.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;
.super Ljava/lang/Object;
.source "LegoMindstormsNxtBase.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_MESSAGES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "logTag"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 3
    .parameter "functionName"
    .parameter "status"

    .prologue
    .line 282
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, errorMessage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private receiveReturnPackage(Ljava/lang/String;)[B
    .locals 4
    .parameter "functionName"

    .prologue
    .line 247
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 248
    .local v0, header:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v1

    .line 249
    .local v1, length:I
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2, p1, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;)V
    .locals 2
    .parameter "bluetoothClient"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;)V

    .line 109
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->detachComponent(Lcom/google/devtools/simple/runtime/components/Component;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    .line 115
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->attachComponent(Lcom/google/devtools/simple/runtime/components/Component;Ljava/util/Set;)Z

    .line 116
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->addBluetoothConnectionListener(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;)V

    .line 117
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->afterConnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V

    .line 122
    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Indicates that an error occurred while using this component."
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LegoMindstormsNxtError during "

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

    .line 133
    const-string v0, "LegoMindstormsNxtError"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public afterConnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V
    .locals 0
    .parameter "bluetoothConnection"

    .prologue
    .line 474
    return-void
.end method

.method public beforeDisconnect(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionBase;)V
    .locals 0
    .parameter "bluetoothConnection"

    .prologue
    .line 479
    return-void
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 3
    .parameter "motorPortLetter"

    .prologue
    .line 415
    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    .line 416
    :cond_0
    const/4 v0, 0x0

    .line 420
    :goto_0
    return v0

    .line 417
    :cond_1
    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-ne p1, v0, :cond_3

    .line 418
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    .line 420
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 422
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .parameter "motorPortLetter"

    .prologue
    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 3
    .parameter "sensorPortLetter"

    .prologue
    .line 433
    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    .line 435
    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    .line 438
    const/4 v0, 0x2

    goto :goto_0

    .line 439
    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    .line 440
    const/4 v0, 0x3

    goto :goto_0

    .line 442
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3
    .parameter "sensorPortLetter"

    .prologue
    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result v0

    return v0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 291
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-byte v0, p2, p3

    .line 292
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 295
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 296
    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 315
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 316
    shr-int/lit8 p1, p1, 0x8

    .line 317
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 318
    shr-int/lit8 p1, p1, 0x8

    .line 319
    add-int/lit8 v0, p3, 0x2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 320
    shr-int/lit8 p1, p1, 0x8

    .line 321
    add-int/lit8 v0, p3, 0x3

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 322
    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 303
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 304
    shr-int/lit8 p1, p1, 0x8

    .line 305
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 306
    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 7
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"
    .parameter "maxCount"

    .prologue
    const/4 v6, 0x0

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p4, :cond_0

    .line 337
    invoke-virtual {p1, v6, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 341
    :cond_0
    :try_start_0
    const-string v3, "ISO-8859-1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .local v2, valueBytes:[B
    :goto_0
    array-length v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 347
    .local v1, lengthToCopy:I
    invoke-static {v2, v6, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    return-void

    .line 342
    .end local v1           #lengthToCopy:I
    .end local v2           #valueBytes:[B
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 343
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2       #valueBytes:[B
    goto :goto_0
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 1
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 299
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 300
    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 6
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    .line 325
    and-long v0, p1, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    .line 326
    shr-long/2addr p1, v5

    .line 327
    add-int/lit8 v0, p4, 0x1

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 328
    shr-long/2addr p1, v5

    .line 329
    add-int/lit8 v0, p4, 0x2

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 330
    shr-long/2addr p1, v5

    .line 331
    add-int/lit8 v0, p4, 0x3

    and-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 332
    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 2
    .parameter "value"
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 309
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 310
    shr-int/lit8 p1, p1, 0x8

    .line 311
    add-int/lit8 v0, p3, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 312
    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 2
    .parameter "functionName"
    .parameter "returnPackage"
    .parameter "command"

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result v0

    .line 254
    .local v0, status:I
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x1

    .line 258
    :goto_0
    return v1

    .line 257
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->handleError(Ljava/lang/String;I)V

    .line 258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 351
    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 169
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 170
    const/4 v2, 0x7

    aput-byte v2, v0, v4

    .line 171
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 173
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 181
    :goto_0
    return-object v2

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 16)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 355
    aget-byte v0, p1, p2

    return v0
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 373
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 363
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 6
    .parameter "functionName"
    .parameter "returnPackage"
    .parameter "command"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 263
    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 264
    aget-byte v0, p2, v4

    if-eq v0, v5, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 0: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x02)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    aget-byte v0, p2, v3

    if-eq v0, p3, :cond_1

    .line 269
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 1: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p3, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1
    invoke-virtual {p0, p2, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 278
    :goto_0
    return v0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= 3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 278
    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 3
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, length:I
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 390
    aget-byte v2, p1, v0

    if-nez v2, :cond_1

    .line 391
    sub-int v1, v0, p2

    .line 395
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 400
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-object v1

    .line 401
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 402
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 1
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 359
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 7
    .parameter "bytes"
    .parameter "offset"

    .prologue
    const-wide/16 v5, 0xff

    .line 380
    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "offset"

    .prologue
    .line 368
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 6
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 185
    new-array v0, v4, [B

    .line 186
    .local v0, command:[B
    aput-byte v5, v0, v5

    .line 187
    const/16 v2, 0xe

    aput-byte v2, v0, v3

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 190
    .local v1, returnPackage:[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 192
    invoke-virtual {p0, v1, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 198
    :goto_0
    return v2

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 4)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v5

    .line 198
    goto :goto_0
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 218
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 219
    const/16 v2, 0x10

    aput-byte v2, v0, v4

    .line 220
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 222
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    array-length v2, v1

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 230
    :goto_0
    return-object v2

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": unexpected return package length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected 20)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 6
    .parameter "functionName"
    .parameter "port"
    .parameter "data"
    .parameter "rxDataLength"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    array-length v2, p3

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "length must be <= 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    array-length v2, p3

    add-int/lit8 v2, v2, 0x5

    new-array v0, v2, [B

    .line 206
    .local v0, command:[B
    aput-byte v4, v0, v4

    .line 207
    const/16 v2, 0xf

    aput-byte v2, v0, v5

    .line 208
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 209
    array-length v2, p3

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 210
    const/4 v2, 0x4

    invoke-virtual {p0, p4, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 211
    const/4 v2, 0x5

    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 213
    .local v1, returnPackage:[B
    aget-byte v2, v0, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 214
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/devtools/simple/runtime/components/android/BluetoothConnectionListener;)V

    .line 487
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->detachComponent(Lcom/google/devtools/simple/runtime/components/Component;)V

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    .line 490
    :cond_0
    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 4
    .parameter "power"

    .prologue
    const-string v3, "power "

    .line 446
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 p1, -0x64

    .line 450
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 p1, 0x64

    .line 454
    :cond_1
    return p1
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 4
    .parameter "turnRatio"

    .prologue
    const-string v3, "turnRatio "

    .line 458
    const/16 v0, -0x64

    if-ge p1, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/16 p1, -0x64

    .line 462
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using 100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 p1, 0x64

    .line 466
    :cond_1
    return p1
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 3
    .parameter "functionName"
    .parameter "command"

    .prologue
    .line 240
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 241
    .local v0, header:[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    .line 242
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 243
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 244
    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 1
    .parameter "functionName"
    .parameter "command"

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 236
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->receiveReturnPackage(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 4
    .parameter "functionName"
    .parameter "port"
    .parameter "sensorType"
    .parameter "sensorMode"

    .prologue
    const/4 v3, 0x5

    .line 158
    new-array v0, v3, [B

    .line 159
    .local v0, command:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 160
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 161
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 162
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 163
    const/4 v1, 0x4

    invoke-virtual {p0, p4, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 165
    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 4
    .parameter "functionName"
    .parameter "port"
    .parameter "power"
    .parameter "mode"
    .parameter "regulationMode"
    .parameter "turnRatio"
    .parameter "runState"
    .parameter "tachoLimit"

    .prologue
    const/4 v3, 0x4

    .line 138
    invoke-virtual {p0, p3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result p3

    .line 139
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 140
    .local v0, command:[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 141
    const/4 v1, 0x1

    aput-byte v3, v0, v1

    .line 142
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 143
    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 144
    invoke-virtual {p0, p4, v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 145
    const/4 v1, 0x5

    invoke-virtual {p0, p5, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 146
    const/4 v1, 0x6

    invoke-virtual {p0, p6, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    .line 147
    const/4 v1, 0x7

    invoke-virtual {p0, p7, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    .line 153
    const/16 v1, 0x8

    invoke-virtual {p0, p8, p9, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    .line 155
    return-void
.end method
