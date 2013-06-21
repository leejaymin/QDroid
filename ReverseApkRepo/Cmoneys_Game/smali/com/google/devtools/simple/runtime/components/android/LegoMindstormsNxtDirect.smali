.class public Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;
.super Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;
.source "LegoMindstormsNxtDirect.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->INTERNAL:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "A component that provides a low-level interface to a Lego Mindstorms NXT robot, with functions to send NXT Direct Commands"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private final form:Lcom/google/devtools/simple/runtime/components/android/Form;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 44
    const-string v0, "LegoMindstormsNxtDirect"

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtBase;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 46
    return-void
.end method

.method private closeHandle(Ljava/lang/String;I)V
    .locals 4
    .parameter "functionName"
    .parameter "handle"

    .prologue
    const/4 v3, 0x1

    .line 758
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 759
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v3, v0, v2

    .line 760
    const/16 v2, -0x7c

    aput-byte v2, v0, v3

    .line 761
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 762
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 763
    .local v1, returnPackage:[B
    aget-byte v2, v0, v3

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    .line 764
    return-void
.end method

.method private getOutputState(Ljava/lang/String;I)[B
    .locals 5
    .parameter "functionName"
    .parameter "port"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    const/4 v2, 0x3

    new-array v0, v2, [B

    .line 246
    .local v0, command:[B
    aput-byte v3, v0, v3

    .line 247
    const/4 v2, 0x6

    aput-byte v2, v0, v4

    .line 248
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 250
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    array-length v2, v1

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    move-object v2, v1

    .line 258
    :goto_0
    return-object v2

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

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

    const-string v4, " (expected 25)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .parameter "functionName"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    const/4 v4, 0x1

    .line 711
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 712
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 713
    const/16 v2, -0x7f

    aput-byte v2, v0, v4

    .line 714
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 715
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyULONGValueToBytes(J[BI)V

    .line 716
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 717
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 719
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 725
    :goto_0
    return-object v2

    .line 721
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

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

    .line 725
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    .locals 5
    .parameter "functionName"
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    const/4 v4, 0x1

    .line 830
    const/16 v2, 0x1a

    new-array v0, v2, [B

    .line 831
    .local v0, command:[B
    const/4 v2, 0x0

    aput-byte v4, v0, v2

    .line 832
    const/16 v2, -0x77

    aput-byte v2, v0, v4

    .line 833
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 834
    const/16 v2, 0x16

    invoke-virtual {p0, p3, p4, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyULONGValueToBytes(J[BI)V

    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 836
    .local v1, returnPackage:[B
    aget-byte v2, v0, v4

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 837
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 838
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 844
    :goto_0
    return-object v2

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

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

    .line 844
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private writeChunk(Ljava/lang/String;I[BI)I
    .locals 7
    .parameter "functionName"
    .parameter "handle"
    .parameter "buffer"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 730
    const/16 v3, 0x20

    if-le p4, v3, :cond_0

    .line 731
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "length must be <= 32"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    :cond_0
    add-int/lit8 v3, p4, 0x3

    new-array v0, v3, [B

    .line 735
    .local v0, command:[B
    aput-byte v4, v0, v6

    .line 736
    const/16 v3, -0x7d

    aput-byte v3, v0, v4

    .line 737
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 738
    const/4 v3, 0x3

    invoke-static {p3, v6, v0, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    invoke-virtual {p0, p1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    .line 740
    .local v1, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    array-length v3, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 742
    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 743
    .local v2, writtenLength:I
    if-eq v2, p4, :cond_1

    .line 744
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes were written "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write file on robot"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v3, v2

    .line 754
    .end local v2           #writtenLength:I
    :goto_0
    return v3

    .line 750
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 6)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v6

    .line 754
    goto :goto_0
.end method


# virtual methods
.method public DeleteFile(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Delete a file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 768
    const-string v1, "DeleteFile"

    .line 769
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 770
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 774
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 778
    const-string v3, "Invalid file name."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_2
    const/16 v3, 0x16

    new-array v0, v3, [B

    .line 783
    .local v0, command:[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 784
    const/16 v3, -0x7b

    aput-byte v3, v0, v5

    .line 785
    const/4 v3, 0x2

    const/16 v4, 0x13

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 786
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 787
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "source"
    .parameter "destination"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Download a file to the robot."
    .end annotation

    .prologue
    .line 655
    const-string v10, "DownloadFile"

    .line 656
    .local v10, functionName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 657
    const-string v17, "The Bluetooth property has not been set."

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_0
    return-void

    .line 660
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v17

    if-nez v17, :cond_1

    .line 661
    const-string v17, "Not connected to a robot."

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 665
    const-string v17, "Invalid source argument."

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    .line 669
    const-string v17, "Invalid destination argument."

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->form:Lcom/google/devtools/simple/runtime/components/android/Form;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->copyMediaToTempFile(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 676
    .local v15, tempFile:Ljava/io/File;
    :try_start_1
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v18, 0x400

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 678
    .local v12, in:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 679
    .local v8, fileSize:J
    const-string v17, ".rxe"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, ".ric"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->openWriteLinear(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v17

    move-object/from16 v11, v17

    .line 682
    .local v11, handle:Ljava/lang/Integer;
    :goto_1
    if-nez v11, :cond_6

    .line 699
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 702
    :try_start_4
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 704
    .end local v8           #fileSize:J
    .end local v11           #handle:Ljava/lang/Integer;
    .end local v12           #in:Ljava/io/InputStream;
    .end local v15           #tempFile:Ljava/io/File;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 705
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #fileSize:J
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #tempFile:Ljava/io/File;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p2

    move-wide v3, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->openWrite(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Integer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v17

    move-object/from16 v11, v17

    goto :goto_1

    .line 687
    .restart local v11       #handle:Ljava/lang/Integer;
    :cond_6
    const/16 v17, 0x20

    :try_start_6
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v5, v0

    .line 688
    .local v5, buffer:[B
    const-wide/16 v13, 0x0

    .line 689
    .local v13, sentLength:J
    :goto_2
    cmp-long v17, v13, v8

    if-gez v17, :cond_7

    .line 690
    const-wide/16 v17, 0x20

    sub-long v19, v8, v13

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move v6, v0

    .line 691
    .local v6, chunkLength:I
    const/16 v17, 0x0

    move-object v0, v12

    move-object v1, v5

    move/from16 v2, v17

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 692
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->writeChunk(Ljava/lang/String;I[BI)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v16

    .line 693
    .local v16, writtenLength:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v13, v13, v17

    .line 694
    goto :goto_2

    .line 696
    .end local v6           #chunkLength:I
    .end local v16           #writtenLength:I
    :cond_7
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->closeHandle(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 699
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 702
    :try_start_9
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 696
    .end local v5           #buffer:[B
    .end local v13           #sentLength:J
    :catchall_0
    move-exception v17

    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->closeHandle(Ljava/lang/String;I)V

    throw v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 699
    .end local v8           #fileSize:J
    .end local v11           #handle:Ljava/lang/Integer;
    :catchall_1
    move-exception v17

    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    throw v17
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 702
    .end local v12           #in:Ljava/io/InputStream;
    :catchall_2
    move-exception v17

    :try_start_c
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    throw v17
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
.end method

.method public GetBatteryLevel()I
    .locals 7
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Get the battery level for the robot. Returns the voltage in millivolts."
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 394
    const-string v1, "GetBatteryLevel"

    .line 395
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 396
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 416
    :goto_0
    return v3

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 400
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v6

    .line 401
    goto :goto_0

    .line 404
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 405
    .local v0, command:[B
    aput-byte v6, v0, v6

    .line 406
    const/16 v3, 0xb

    aput-byte v3, v0, v4

    .line 407
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 408
    .local v2, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    array-length v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 410
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUWORDValueFromBytes([BI)I

    move-result v3

    goto :goto_0

    .line 412
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetBatteryLevel: unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 5)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v6

    .line 416
    goto :goto_0
.end method

.method public GetBrickName()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Get the brick name of the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v5, ""

    .line 873
    const-string v1, "GetBrickName"

    .line 874
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 875
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v3, ""

    move-object v3, v5

    .line 890
    :goto_0
    return-object v3

    .line 878
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 879
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v3, ""

    move-object v3, v5

    goto :goto_0

    .line 883
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 884
    .local v0, command:[B
    const/4 v3, 0x0

    aput-byte v4, v0, v3

    .line 885
    const/16 v3, -0x65

    aput-byte v3, v0, v4

    .line 886
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 887
    .local v2, returnPackage:[B
    aget-byte v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 888
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 890
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method public GetCurrentProgramName()Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Get the name of currently running program on the robot."
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    .line 582
    const-string v1, "GetCurrentProgramName"

    .line 583
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 584
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, ""

    move-object v3, v4

    .line 599
    :goto_0
    return-object v3

    .line 587
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v3, ""

    move-object v3, v4

    goto :goto_0

    .line 592
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 593
    .local v0, command:[B
    aput-byte v5, v0, v5

    .line 594
    const/16 v3, 0x11

    aput-byte v3, v0, v6

    .line 595
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 596
    .local v2, returnPackage:[B
    aget-byte v3, v0, v6

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 599
    :cond_2
    const-string v3, ""

    move-object v3, v4

    goto :goto_0
.end method

.method public GetInputValues(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Reads the values of an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const-string v1, "GetInputValues"

    .line 265
    .local v1, functionName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v5, :cond_0

    .line 266
    const-string v5, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :goto_0
    return-object v5

    .line 269
    :cond_0
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 270
    const-string v5, "Not connected to a robot."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 283
    .local v3, port:I
    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v4

    .line 284
    .local v4, returnPackage:[B
    if-eqz v4, :cond_2

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, inputValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getBooleanValueFromBytes([BI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    const/16 v5, 0xa

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const/16 v5, 0xc

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v5, 0xe

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSWORDValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    .line 294
    goto/16 :goto_0

    .line 277
    .end local v2           #inputValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3           #port:I
    .end local v4           #returnPackage:[B
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The NXT does not have a sensor port labeled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #port:I
    .restart local v4       #returnPackage:[B
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public GetOutputState(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "motorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Reads the output state of a motor on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    const-string v1, "GetOutputState"

    .line 207
    .local v1, functionName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v5, :cond_0

    .line 208
    const-string v5, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :goto_0
    return-object v5

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 212
    const-string v5, "Not connected to a robot."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 218
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 225
    .local v3, port:I
    invoke-direct {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getOutputState(Ljava/lang/String;I)[B

    move-result-object v4

    .line 226
    .local v4, returnPackage:[B
    if-eqz v4, :cond_2

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v2, outputState:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Number;>;"
    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const/4 v5, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const/4 v5, 0x7

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/16 v5, 0x8

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getULONGValueFromBytes([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/16 v5, 0x11

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v5, 0x15

    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getSLONGValueFromBytes([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v2

    .line 237
    goto/16 :goto_0

    .line 219
    .end local v2           #outputState:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Number;>;"
    .end local v3           #port:I
    .end local v4           #returnPackage:[B
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The NXT does not have an motor port labeled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    .line 241
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #port:I
    .restart local v4       #returnPackage:[B
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method public KeepAlive()J
    .locals 8
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Keep Alive. Returns the current sleep time limit in milliseconds."
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    .line 440
    const-string v1, "KeepAlive"

    .line 441
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 442
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v6

    .line 462
    :goto_0
    return-wide v3

    .line 445
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 446
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v6

    .line 447
    goto :goto_0

    .line 450
    :cond_1
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 451
    .local v0, command:[B
    aput-byte v4, v0, v4

    .line 452
    const/16 v3, 0xd

    aput-byte v3, v0, v5

    .line 453
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 454
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    array-length v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 456
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getULONGValueFromBytes([BI)J

    move-result-wide v3

    goto :goto_0

    .line 458
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeepAlive: unexpected return package length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (expected 7)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v3, v6

    .line 462
    goto :goto_0
.end method

.method public ListFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "wildcard"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Returns a list containing the names of matching files found on the robot."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 793
    const-string v3, "ListFiles"

    .line 794
    .local v3, functionName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v7, :cond_0

    .line 795
    const-string v7, "The Bluetooth property has not been set."

    invoke-virtual {p0, v3, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 826
    :goto_0
    return-object v7

    .line 798
    :cond_0
    iget-object v7, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v7}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 799
    const-string v7, "Not connected to a robot."

    invoke-virtual {p0, v3, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 803
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v2, fileNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 806
    const-string p1, "*.*"

    .line 809
    :cond_2
    const/16 v7, 0x16

    new-array v0, v7, [B

    .line 810
    .local v0, command:[B
    aput-byte v8, v0, v9

    .line 811
    const/16 v7, -0x7a

    aput-byte v7, v0, v8

    .line 812
    const/16 v7, 0x13

    invoke-virtual {p0, p1, v0, v10, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 813
    invoke-virtual {p0, v3, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 814
    .local v5, returnPackage:[B
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 815
    .local v6, status:I
    :goto_1
    if-nez v6, :cond_3

    .line 816
    invoke-virtual {p0, v5, v11}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v4

    .line 817
    .local v4, handle:I
    const/4 v7, 0x4

    invoke-virtual {p0, v5, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStringValueFromBytes([BI)Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, fileName:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    new-array v0, v11, [B

    .line 820
    aput-byte v8, v0, v9

    .line 821
    const/16 v7, -0x79

    aput-byte v7, v0, v8

    .line 822
    invoke-virtual {p0, v4, v0, v10}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 823
    invoke-virtual {p0, v3, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 824
    aget-byte v7, v0, v8

    invoke-virtual {p0, v3, v5, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStatus(Ljava/lang/String;[BB)I

    move-result v6

    .line 825
    goto :goto_1

    .end local v1           #fileName:Ljava/lang/String;
    .end local v4           #handle:I
    :cond_3
    move-object v7, v2

    .line 826
    goto :goto_0
.end method

.method public LsGetStatus(Ljava/lang/String;)I
    .locals 6
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Returns the count of available bytes to read."
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 467
    const-string v1, "LsGetStatus"

    .line 468
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 469
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 486
    :goto_0
    return v3

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 473
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 474
    goto :goto_0

    .line 479
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 486
    .local v2, port:I
    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->lsGetStatus(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 480
    .end local v2           #port:I
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The NXT does not have a sensor port labeled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 483
    goto :goto_0
.end method

.method public LsRead(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Reads unsigned low speed data from an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    const-string v2, "LsRead"

    .line 546
    .local v2, functionName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v8, :cond_0

    .line 547
    const-string v8, "The Bluetooth property has not been set."

    invoke-virtual {p0, v2, v8}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 576
    :goto_0
    return-object v8

    .line 550
    :cond_0
    iget-object v8, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v8}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 551
    const-string v8, "Not connected to a robot."

    invoke-virtual {p0, v2, v8}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 557
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 564
    .local v6, port:I
    invoke-virtual {p0, v2, v6}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->lsRead(Ljava/lang/String;I)[B

    move-result-object v7

    .line 565
    .local v7, returnPackage:[B
    if-eqz v7, :cond_3

    .line 566
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v8, 0x3

    invoke-virtual {p0, v7, v8}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v0

    .line 568
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 569
    add-int/lit8 v8, v3, 0x4

    aget-byte v8, v7, v8

    and-int/lit16 v5, v8, 0xff

    .line 570
    .local v5, n:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 558
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5           #n:I
    .end local v6           #port:I
    .end local v7           #returnPackage:[B
    :catch_0
    move-exception v1

    .line 559
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The NXT does not have a sensor port labeled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #count:I
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6       #port:I
    .restart local v7       #returnPackage:[B
    :cond_2
    move-object v8, v4

    .line 572
    goto :goto_0

    .line 576
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public LsWrite(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;I)V
    .locals 11
    .parameter "sensorPortLetter"
    .parameter "list"
    .parameter "rxDataLength"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Writes low speed data to an input sensor on the robot. Assumes sensor type has been configured via SetInputMode."
    .end annotation

    .prologue
    .line 492
    const-string v4, "LsWrite"

    .line 493
    .local v4, functionName:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v9, :cond_0

    .line 494
    const-string v9, "The Bluetooth property has not been set."

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v9}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 498
    const-string v9, "Not connected to a robot."

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 511
    .local v7, port:I
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/components/util/YailList;->size()I

    move-result v9

    const/16 v10, 0x10

    if-le v9, v10, :cond_2

    .line 512
    const-string v9, "The data is too large; it must be 16 bytes or less."

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v7           #port:I
    :catch_0
    move-exception v2

    .line 506
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The NXT does not have a sensor port labeled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #port:I
    :cond_2
    invoke-virtual {p2}, Lcom/google/devtools/simple/runtime/components/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 517
    .local v0, array:[Ljava/lang/Object;
    array-length v9, v0

    new-array v1, v9, [B

    .line 518
    .local v1, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v0

    if-ge v5, v9, :cond_4

    .line 521
    aget-object v3, v0, v5

    .line 522
    .local v3, element:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, s:Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 531
    .local v6, n:I
    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v1, v5

    .line 532
    shr-int/lit8 v6, v6, 0x8

    .line 533
    if-eqz v6, :cond_3

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    .line 534
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not fit element "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " into 1 byte."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v6           #n:I
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 527
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not decode element "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as an integer."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v4, v9}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #n:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 538
    .end local v3           #element:Ljava/lang/Object;
    .end local v6           #n:I
    .end local v8           #s:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4, v7, v1, p3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->lsWrite(Ljava/lang/String;I[BI)V

    goto/16 :goto_0
.end method

.method public MessageRead(I)Ljava/lang/String;
    .locals 11
    .parameter "mailbox"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Read a message from a mailbox on the robot."
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    .line 604
    const-string v1, "MessageRead"

    .line 605
    .local v1, functionName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v5, :cond_0

    .line 606
    const-string v5, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v5, ""

    move-object v5, v9

    .line 641
    :goto_0
    return-object v5

    .line 609
    :cond_0
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v5}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 610
    const-string v5, "Not connected to a robot."

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v5, ""

    move-object v5, v9

    goto :goto_0

    .line 614
    :cond_1
    if-ltz p1, :cond_2

    const/16 v5, 0x9

    if-le p1, v5, :cond_3

    .line 615
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The NXT does not have a mailbox number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v5, ""

    move-object v5, v9

    goto :goto_0

    .line 620
    :cond_3
    const/4 v5, 0x5

    new-array v0, v5, [B

    .line 621
    .local v0, command:[B
    aput-byte v6, v0, v6

    .line 622
    const/16 v5, 0x13

    aput-byte v5, v0, v8

    .line 623
    const/4 v5, 0x2

    invoke-virtual {p0, v6, v0, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 624
    invoke-virtual {p0, p1, v0, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 625
    invoke-virtual {p0, v8, v0, v10}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyBooleanValueToBytes(Z[BI)V

    .line 626
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v4

    .line 627
    .local v4, returnPackage:[B
    aget-byte v5, v0, v8

    invoke-virtual {p0, v1, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 628
    array-length v5, v4

    const/16 v6, 0x40

    if-ne v5, v6, :cond_5

    .line 629
    invoke-virtual {p0, v4, v7}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v2

    .line 630
    .local v2, mailboxEcho:I
    if-eq v2, p1, :cond_4

    .line 631
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return mailbox: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_4
    invoke-virtual {p0, v4, v10}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getUBYTEValueFromBytes([BI)I

    move-result v5

    sub-int v3, v5, v8

    .line 635
    .local v3, messageLength:I
    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 637
    .end local v2           #mailboxEcho:I
    .end local v3           #messageLength:I
    :cond_5
    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageRead: unexpected return package length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (expected 64)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_6
    const-string v5, ""

    move-object v5, v9

    goto/16 :goto_0
.end method

.method public MessageWrite(ILjava/lang/String;)V
    .locals 6
    .parameter "mailbox"
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Write a message to a mailbox on the robot."
    .end annotation

    .prologue
    const/16 v5, 0x9

    .line 331
    const-string v1, "MessageWrite"

    .line 332
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 333
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v5, :cond_3

    .line 341
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The NXT does not have a mailbox number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 346
    .local v2, messageLength:I
    const/16 v3, 0x3a

    if-le v2, v3, :cond_4

    .line 347
    const-string v3, "The NXT only accepts messages up to 58 characters."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_4
    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 352
    .local v0, command:[B
    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v0, v3

    .line 353
    const/4 v3, 0x1

    aput-byte v5, v0, v3

    .line 354
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 356
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 357
    const/4 v3, 0x4

    invoke-virtual {p0, p2, v0, v3, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 359
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlaySoundFile(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Play a sound file on the robot."
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 101
    const-string v1, "PlaySoundFile"

    .line 102
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 103
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 111
    const-string v2, "Invalid file name."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_3
    const/16 v2, 0x17

    new-array v0, v2, [B

    .line 119
    .local v0, command:[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 120
    const/4 v2, 0x1

    aput-byte v5, v0, v2

    .line 121
    invoke-virtual {p0, v4, v0, v5}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyBooleanValueToBytes(Z[BI)V

    .line 122
    const/4 v2, 0x3

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 123
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public PlayTone(II)V
    .locals 6
    .parameter "frequencyHz"
    .parameter "durationMs"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .prologue
    const-string v5, "frequencyHz "

    .line 128
    const-string v1, "PlayTone"

    .line 129
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 130
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    const/16 v2, 0xc8

    if-ge p1, v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 200."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 p1, 0xc8

    .line 142
    :cond_2
    const/16 v2, 0x36b0

    if-le p1, v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frequencyHz "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid, using 14000."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 p1, 0x36b0

    .line 146
    :cond_3
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 147
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 148
    const/4 v2, 0x1

    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 149
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUWORDValueToBytes(I[BI)V

    .line 150
    const/4 v2, 0x4

    invoke-virtual {p0, p2, v0, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUWORDValueToBytes(I[BI)V

    .line 151
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public ResetInputScaledValue(Ljava/lang/String;)V
    .locals 6
    .parameter "sensorPortLetter"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Reset the scaled value of an input sensor on the robot."
    .end annotation

    .prologue
    .line 303
    const-string v2, "ResetInputScaledValue"

    .line 304
    .local v2, functionName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v4, :cond_0

    .line 305
    const-string v4, "The Bluetooth property has not been set."

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 309
    const-string v4, "Not connected to a robot."

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 322
    .local v3, port:I
    const/4 v4, 0x3

    new-array v0, v4, [B

    .line 323
    .local v0, command:[B
    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v0, v4

    .line 324
    const/4 v4, 0x1

    const/16 v5, 0x8

    aput-byte v5, v0, v4

    .line 325
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 326
    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 316
    .end local v0           #command:[B
    .end local v3           #port:I
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The NXT does not have a sensor port labeled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ResetMotorPosition(Ljava/lang/String;Z)V
    .locals 6
    .parameter "motorPortLetter"
    .parameter "relative"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Reset motor position."
    .end annotation

    .prologue
    .line 364
    const-string v2, "ResetMotorPosition"

    .line 365
    .local v2, functionName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v4, :cond_0

    .line 366
    const-string v4, "The Bluetooth property has not been set."

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 370
    const-string v4, "Not connected to a robot."

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 383
    .local v3, port:I
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 384
    .local v0, command:[B
    const/4 v4, 0x0

    const/16 v5, -0x80

    aput-byte v5, v0, v4

    .line 385
    const/4 v4, 0x1

    const/16 v5, 0xa

    aput-byte v5, v0, v4

    .line 386
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyUBYTEValueToBytes(I[BI)V

    .line 387
    const/4 v4, 0x3

    invoke-virtual {p0, p2, v0, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyBooleanValueToBytes(Z[BI)V

    .line 388
    invoke-virtual {p0, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0

    .line 377
    .end local v0           #command:[B
    .end local v3           #port:I
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The NXT does not have an motor port labeled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetBrickName(Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Set the brick name of the robot."
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 853
    const-string v1, "SetBrickName"

    .line 854
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 855
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 859
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_1
    const/16 v3, 0x12

    new-array v0, v3, [B

    .line 864
    .local v0, command:[B
    const/4 v3, 0x0

    aput-byte v5, v0, v3

    .line 865
    const/16 v3, -0x68

    aput-byte v3, v0, v5

    .line 866
    const/4 v3, 0x2

    const/16 v4, 0xf

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 867
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v2

    .line 868
    .local v2, returnPackage:[B
    aget-byte v3, v0, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->evaluateStatus(Ljava/lang/String;[BB)Z

    goto :goto_0
.end method

.method public SetInputMode(Ljava/lang/String;II)V
    .locals 5
    .parameter "sensorPortLetter"
    .parameter "sensorType"
    .parameter "sensorMode"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Configure an input sensor on the robot."
    .end annotation

    .prologue
    .line 182
    const-string v1, "SetInputMode"

    .line 183
    .local v1, functionName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v3, :cond_0

    .line 184
    const-string v3, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    const-string v3, "Not connected to a robot."

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 201
    .local v2, port:I
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->setInputMode(Ljava/lang/String;III)V

    goto :goto_0

    .line 195
    .end local v2           #port:I
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The NXT does not have a sensor port labeled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetOutputState(Ljava/lang/String;IIIIIJ)V
    .locals 13
    .parameter "motorPortLetter"
    .parameter "power"
    .parameter "mode"
    .parameter "regulationMode"
    .parameter "turnRatio"
    .parameter "runState"
    .parameter "tachoLimit"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Sets the output state of a motor on the robot."
    .end annotation

    .prologue
    .line 157
    const-string v3, "SetOutputState"

    .line 158
    .local v3, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v3, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v3, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->convertMotorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 176
    .local v4, port:I
    move-object v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sanitizeTurnRatio(I)I

    move-result v8

    move-object v2, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-virtual/range {v2 .. v11}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 170
    .end local v4           #port:I
    :catch_0
    move-exception v12

    .line 171
    .local v12, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The NXT does not have an motor port labeled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public StartProgram(Ljava/lang/String;)V
    .locals 5
    .parameter "programName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Start execution of a previously downloaded program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    const-string v1, "StartProgram"

    .line 57
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 58
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 66
    const-string v2, "Invalid program name."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".rxe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_3
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 74
    .local v0, command:[B
    const/16 v2, -0x80

    aput-byte v2, v0, v4

    .line 75
    const/4 v2, 0x1

    aput-byte v4, v0, v2

    .line 76
    const/4 v2, 0x2

    const/16 v3, 0x13

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->copyStringValueToBytes(Ljava/lang/String;[BII)V

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopProgram()V
    .locals 5
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Stop execution of the currently running program on the robot."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 83
    const-string v1, "StopProgram"

    .line 84
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 85
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 94
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 95
    aput-byte v4, v0, v4

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public StopSoundPlayback()V
    .locals 4
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Stop sound playback."
    .end annotation

    .prologue
    .line 421
    const-string v1, "StopSoundPlayback"

    .line 422
    .local v1, functionName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    if-nez v2, :cond_0

    .line 423
    const-string v2, "The Bluetooth property has not been set."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->bluetooth:Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/BluetoothClient;->IsConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 427
    const-string v2, "Not connected to a robot."

    invoke-virtual {p0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->LegoMindstormsNxtError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 432
    .local v0, command:[B
    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v0, v2

    .line 433
    const/4 v2, 0x1

    const/16 v3, 0xc

    aput-byte v3, v0, v2

    .line 434
    invoke-virtual {p0, v1, v0}, Lcom/google/devtools/simple/runtime/components/android/LegoMindstormsNxtDirect;->sendCommand(Ljava/lang/String;[B)V

    goto :goto_0
.end method
