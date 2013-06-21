.class final Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/classfile/ClassFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StackMapTable"
.end annotation


# static fields
.field static final DEBUGSTACKMAP:Z


# instance fields
.field private locals:[I

.field private localsTop:I

.field private rawStackMap:[B

.field private rawStackMapTop:I

.field private stack:[I

.field private stackTop:I

.field private superBlockDeps:[Lorg/mozilla/classfile/SuperBlock;

.field private superBlocks:[Lorg/mozilla/classfile/SuperBlock;

.field final synthetic this$0:Lorg/mozilla/classfile/ClassFileWriter;

.field private workList:[Lorg/mozilla/classfile/SuperBlock;

.field private workListTop:I


# direct methods
.method constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1465
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 1467
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 1468
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 1469
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 1470
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 1471
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 1472
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 1473
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 1474
    return-void
.end method

.method private addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 4
    .parameter "sb"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1848
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->isInQueue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1849
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    .line 1850
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/SuperBlock;->setInitialized(Z)V

    .line 1851
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1852
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lorg/mozilla/classfile/SuperBlock;

    .line 1853
    .local v0, tmp:[Lorg/mozilla/classfile/SuperBlock;
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1854
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 1856
    .end local v0           #tmp:[Lorg/mozilla/classfile/SuperBlock;
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aput-object p1, v1, v2

    .line 1858
    :cond_1
    return-void
.end method

.method private clearStack()V
    .locals 1

    .prologue
    .line 2386
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 2387
    return-void
.end method

.method private computeRawStackMap()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x1

    .line 2417
    iget-object v11, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    const/4 v12, 0x0

    aget-object v8, v11, v12

    .line 2418
    .local v8, prev:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v8}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v9

    .line 2419
    .local v9, prevLocals:[I
    const/4 v10, -0x1

    .line 2420
    .local v10, prevOffset:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    iget-object v11, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v11, v11

    if-ge v4, v11, :cond_9

    .line 2421
    iget-object v11, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v0, v11, v4

    .line 2422
    .local v0, current:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getTrimmedLocals()[I

    move-result-object v1

    .line 2423
    .local v1, currentLocals:[I
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v2

    .line 2424
    .local v2, currentStack:[I
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v11

    sub-int/2addr v11, v10

    sub-int v7, v11, v13

    .line 2426
    .local v7, offsetDelta:I
    array-length v11, v2

    if-nez v11, :cond_6

    .line 2427
    array-length v11, v9

    array-length v12, v1

    if-le v11, v12, :cond_1

    array-length v11, v1

    move v6, v11

    .line 2429
    .local v6, last:I
    :goto_1
    array-length v11, v9

    array-length v12, v1

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2434
    .local v3, delta:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v6, :cond_0

    .line 2435
    aget v11, v9, v5

    aget v12, v1, v5

    if-eq v11, v12, :cond_2

    .line 2439
    :cond_0
    array-length v11, v1

    if-ne v5, v11, :cond_3

    if-nez v3, :cond_3

    .line 2442
    invoke-direct {p0, v1, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameFrame([II)V

    .line 2475
    .end local v3           #delta:I
    .end local v5           #j:I
    .end local v6           #last:I
    :goto_3
    move-object v8, v0

    .line 2476
    move-object v9, v1

    .line 2477
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v10

    .line 2420
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2427
    :cond_1
    array-length v11, v9

    move v6, v11

    goto :goto_1

    .line 2434
    .restart local v3       #delta:I
    .restart local v5       #j:I
    .restart local v6       #last:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2443
    :cond_3
    array-length v11, v1

    if-ne v5, v11, :cond_4

    if-gt v3, v14, :cond_4

    .line 2446
    invoke-direct {p0, v3, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeChopFrame(II)V

    goto :goto_3

    .line 2447
    :cond_4
    array-length v11, v9

    if-ne v5, v11, :cond_5

    if-gt v3, v14, :cond_5

    .line 2450
    invoke-direct {p0, v1, v3, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeAppendFrame([III)V

    goto :goto_3

    .line 2454
    :cond_5
    invoke-direct {p0, v1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    goto :goto_3

    .line 2457
    .end local v3           #delta:I
    .end local v5           #j:I
    .end local v6           #last:I
    :cond_6
    array-length v11, v2

    if-ne v11, v13, :cond_8

    .line 2458
    invoke-static {v9, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2459
    invoke-direct {p0, v1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeSameLocalsOneStackItemFrame([I[II)V

    goto :goto_3

    .line 2465
    :cond_7
    invoke-direct {p0, v1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    goto :goto_3

    .line 2472
    :cond_8
    invoke-direct {p0, v1, v2, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeFullFrame([I[II)V

    goto :goto_3

    .line 2479
    .end local v0           #current:Lorg/mozilla/classfile/SuperBlock;
    .end local v1           #currentLocals:[I
    .end local v2           #currentStack:[I
    .end local v7           #offsetDelta:I
    :cond_9
    return-void
.end method

.method private execute(I)I
    .locals 37
    .parameter "bci"

    .prologue
    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v34

    aget-byte v34, v34, p1

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .line 1869
    .local v4, bc:I
    const/16 v20, 0x0

    .line 1873
    .local v20, length:I
    packed-switch v4, :pswitch_data_0

    .line 2271
    :pswitch_0
    new-instance v34, Ljava/lang/IllegalArgumentException;

    const-string v35, "bad opcode"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1881
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1882
    add-int/lit8 v34, p1, 0x1

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v34

    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2274
    :cond_0
    :goto_0
    :pswitch_2
    if-nez v20, :cond_1

    .line 2275
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeLength(I)I

    move-result v20

    .line 2277
    :cond_1
    return v20

    .line 1892
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1902
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1915
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto :goto_0

    .line 1918
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    goto :goto_0

    .line 1921
    :pswitch_7
    const/16 v34, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_0

    .line 1943
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1953
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1968
    :pswitch_a
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_0

    .line 1982
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1987
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1995
    :pswitch_d
    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_0

    .line 2003
    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2008
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2017
    :pswitch_10
    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_0

    .line 2025
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2030
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2038
    :pswitch_13
    const/16 v34, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto :goto_0

    .line 2041
    :pswitch_14
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto :goto_0

    .line 2047
    :pswitch_15
    const/16 v34, 0x3b

    sub-int v34, v4, v34

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2050
    :pswitch_16
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    const/16 v35, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2056
    :pswitch_17
    const/16 v34, 0x3f

    sub-int v34, v4, v34

    const/16 v35, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2059
    :pswitch_18
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2065
    :pswitch_19
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2068
    :pswitch_1a
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    const/16 v35, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2074
    :pswitch_1b
    const/16 v34, 0x47

    sub-int v34, v4, v34

    const/16 v35, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    goto/16 :goto_0

    .line 2077
    :pswitch_1c
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    goto/16 :goto_0

    .line 2083
    :pswitch_1d
    const/16 v34, 0x2a

    sub-int v34, v4, v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    goto/16 :goto_0

    .line 2086
    :pswitch_1e
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeAStore(I)V

    goto/16 :goto_0

    .line 2092
    :pswitch_1f
    const/16 v34, 0x4b

    sub-int v34, v4, v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeAStore(I)V

    goto/16 :goto_0

    .line 2100
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    goto/16 :goto_0

    .line 2103
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2104
    .local v31, type:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->clearStack()V

    .line 2105
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2108
    .end local v31           #type:I
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2109
    .restart local v31       #type:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v32

    .line 2110
    .local v32, type2:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2111
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2116
    .end local v31           #type:I
    .end local v32           #type2:I
    :pswitch_23
    const/16 v34, 0x12

    move v0, v4

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 2117
    add-int/lit8 v34, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(I)I

    move-result v14

    .line 2121
    .local v14, index:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantType(I)B

    move-result v7

    .line 2122
    .local v7, constType:B
    packed-switch v7, :pswitch_data_1

    .line 2140
    :pswitch_24
    new-instance v34, Ljava/lang/IllegalArgumentException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "bad const type "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 2119
    .end local v7           #constType:B
    .end local v14           #index:I
    :cond_2
    add-int/lit8 v34, p1, 0x1

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v14

    .restart local v14       #index:I
    goto :goto_1

    .line 2124
    .restart local v7       #constType:B
    :pswitch_25
    const/16 v34, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2127
    :pswitch_26
    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2130
    :pswitch_27
    const/16 v34, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2133
    :pswitch_28
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2136
    :pswitch_29
    const-string v34, "java/lang/String"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v35, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v35 .. v35}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2145
    .end local v7           #constType:B
    .end local v14           #index:I
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2148
    :pswitch_2b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v34

    add-int/lit8 v35, p1, 0x1

    aget-byte v34, v34, v35

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->arrayTypeToName(I)C
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$1000(I)C

    move-result v6

    .line 2151
    .local v6, componentType:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v14

    .line 2152
    .restart local v14       #index:I
    move v0, v14

    int-to-short v0, v0

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2155
    .end local v6           #componentType:C
    .end local v14           #index:I
    :pswitch_2c
    add-int/lit8 v34, p1, 0x1

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v14

    .line 2156
    .restart local v14       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2157
    .local v5, className:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2158
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "[L"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x3b

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v35, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v35 .. v35}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2165
    .end local v5           #className:Ljava/lang/String;
    .end local v14           #index:I
    :pswitch_2d
    add-int/lit8 v34, p1, 0x1

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v14

    .line 2166
    .restart local v14       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 2168
    .local v22, m:Lorg/mozilla/classfile/FieldOrMethodRef;
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object v24

    .line 2169
    .local v24, methodType:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/classfile/FieldOrMethodRef;->getName()Ljava/lang/String;

    move-result-object v23

    .line 2170
    .local v23, methodName:Ljava/lang/String;
    #calls: Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I
    invoke-static/range {v24 .. v24}, Lorg/mozilla/classfile/ClassFileWriter;->access$1100(Ljava/lang/String;)I

    move-result v34

    ushr-int/lit8 v26, v34, 0x10

    .line 2171
    .local v26, parameterCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move v0, v13

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 2172
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2171
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2174
    :cond_3
    const/16 v34, 0xb8

    move v0, v4

    move/from16 v1, v34

    if-eq v0, v1, :cond_5

    .line 2175
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v15

    .line 2176
    .local v15, instType:I
    invoke-static {v15}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v30

    .line 2177
    .local v30, tag:I
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/TypeInfo;->UNINITIALIZED_VARIABLE(I)I

    move-result v34

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    const/16 v34, 0x6

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 2179
    :cond_4
    const-string v34, "<init>"

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 2180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$1200(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v34

    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v25

    .line 2182
    .local v25, newType:I
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II)V

    .line 2188
    .end local v15           #instType:I
    .end local v25           #newType:I
    .end local v30           #tag:I
    :cond_5
    const/16 v34, 0x29

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    .line 2189
    .local v27, rParen:I
    add-int/lit8 v34, v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 2190
    .local v28, returnType:Ljava/lang/String;
    #calls: Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lorg/mozilla/classfile/ClassFileWriter;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2191
    const-string v34, "V"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_0

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2184
    .end local v27           #rParen:I
    .end local v28           #returnType:Ljava/lang/String;
    .restart local v15       #instType:I
    .restart local v30       #tag:I
    :cond_6
    new-instance v34, Ljava/lang/IllegalStateException;

    const-string v35, "bad instance"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 2196
    .end local v13           #i:I
    .end local v14           #index:I
    .end local v15           #instType:I
    .end local v22           #m:Lorg/mozilla/classfile/FieldOrMethodRef;
    .end local v23           #methodName:Ljava/lang/String;
    .end local v24           #methodType:Ljava/lang/String;
    .end local v26           #parameterCount:I
    .end local v30           #tag:I
    :pswitch_2e
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2198
    :pswitch_2f
    add-int/lit8 v34, p1, 0x1

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v14

    .line 2199
    .restart local v14       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 2201
    .local v10, f:Lorg/mozilla/classfile/FieldOrMethodRef;
    invoke-virtual {v10}, Lorg/mozilla/classfile/FieldOrMethodRef;->getType()Ljava/lang/String;

    move-result-object v34

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2202
    .local v11, fieldType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2205
    .end local v10           #f:Lorg/mozilla/classfile/FieldOrMethodRef;
    .end local v11           #fieldType:Ljava/lang/String;
    .end local v14           #index:I
    :pswitch_30
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2206
    .restart local v31       #type:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2207
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2210
    .end local v31           #type:I
    :pswitch_31
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2211
    .restart local v31       #type:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v32

    .line 2212
    .restart local v32       #type2:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2213
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2214
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2217
    .end local v31           #type:I
    .end local v32           #type2:I
    :pswitch_32
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2218
    .restart local v31       #type:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v16

    .line 2219
    .local v16, lType:J
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2220
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 2221
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 2224
    .end local v16           #lType:J
    .end local v31           #type:I
    :pswitch_33
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v16

    .line 2225
    .restart local v16       #lType:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 2226
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_0

    .line 2229
    .end local v16           #lType:J
    :pswitch_34
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v16

    .line 2230
    .restart local v16       #lType:J
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v31

    .line 2231
    .restart local v31       #type:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 2232
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2233
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_0

    .line 2236
    .end local v16           #lType:J
    .end local v31           #type:I
    :pswitch_35
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v16

    .line 2237
    .restart local v16       #lType:J
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    move-result-wide v18

    .line 2238
    .local v18, lType2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 2239
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 2240
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    goto/16 :goto_0

    .line 2243
    .end local v16           #lType:J
    .end local v18           #lType2:J
    :pswitch_36
    add-int/lit8 v34, p1, 0x1

    xor-int/lit8 v35, p1, -0x1

    and-int/lit8 v35, v35, 0x3

    add-int v29, v34, v35

    .line 2244
    .local v29, switchStart:I
    add-int/lit8 v34, v29, 0x4

    const/16 v35, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v21

    .line 2245
    .local v21, low:I
    add-int/lit8 v34, v29, 0x8

    const/16 v35, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v12

    .line 2246
    .local v12, high:I
    sub-int v34, v12, v21

    add-int/lit8 v34, v34, 0x4

    mul-int/lit8 v34, v34, 0x4

    add-int v34, v34, v29

    sub-int v20, v34, p1

    .line 2247
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    goto/16 :goto_0

    .line 2250
    .end local v12           #high:I
    .end local v21           #low:I
    .end local v29           #switchStart:I
    :pswitch_37
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2251
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v34

    ushr-int/lit8 v33, v34, 0x8

    .line 2252
    .local v33, typeIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2254
    .restart local v5       #className:Ljava/lang/String;
    move-object v3, v5

    .line 2255
    .local v3, arrayType:Ljava/lang/String;
    const/16 v34, 0x0

    move-object v0, v3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x5b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_7

    .line 2256
    new-instance v34, Ljava/lang/IllegalStateException;

    const-string v35, "bad array type"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 2258
    :cond_7
    const/16 v34, 0x1

    move-object v0, v3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2259
    .local v8, elementDesc:Ljava/lang/String;
    #calls: Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->access$1300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2260
    .local v9, elementType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v34, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static/range {v34 .. v34}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v33

    .line 2261
    invoke-static/range {v33 .. v33}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    goto/16 :goto_0

    .line 1873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_1c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_37
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_1e
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_22
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_9
        :pswitch_c
        :pswitch_12
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_36
        :pswitch_0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_2f
        :pswitch_5
        :pswitch_2e
        :pswitch_4
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_9
        :pswitch_21
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_2
    .end packed-switch

    .line 2122
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_28
        :pswitch_26
        :pswitch_27
        :pswitch_25
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method

.method private executeALoad(I)V
    .locals 5
    .parameter "localIndex"

    .prologue
    .line 2281
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getLocal(I)I

    move-result v1

    .line 2282
    .local v1, type:I
    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    .line 2283
    .local v0, tag:I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 2287
    :cond_0
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2293
    return-void

    .line 2289
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad local variable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private executeAStore(I)V
    .locals 1
    .parameter "localIndex"

    .prologue
    .line 2296
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    .line 2297
    return-void
.end method

.method private executeBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 27
    .parameter "work"

    .prologue
    .line 1727
    const/4 v9, 0x0

    .line 1728
    .local v9, bc:I
    const/16 v21, 0x0

    .line 1737
    .local v21, next:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v10

    .local v10, bci:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v4

    if-ge v10, v4, :cond_6

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v4

    aget-byte v4, v4, v10

    and-int/lit16 v9, v4, 0xff

    .line 1739
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->execute(I)I

    move-result v21

    .line 1746
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isBranch(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1747
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v26

    .line 1758
    .local v26, targetSB:Lorg/mozilla/classfile/SuperBlock;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1791
    .end local v26           #targetSB:Lorg/mozilla/classfile/SuperBlock;
    :cond_0
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v4

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_5

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v4

    aget-object v14, v4, v18

    .line 1793
    .local v14, ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    iget v5, v14, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v4

    move v0, v4

    int-to-short v0, v0

    move/from16 v24, v0

    .line 1794
    .local v24, startPC:S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    iget v5, v14, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v4

    int-to-short v13, v4

    .line 1795
    .local v13, endPC:S
    move v0, v10

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    if-lt v10, v13, :cond_3

    .line 1791
    :cond_1
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1765
    .end local v13           #endPC:S
    .end local v14           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v18           #i:I
    .end local v24           #startPC:S
    :cond_2
    const/16 v4, 0xaa

    if-ne v9, v4, :cond_0

    .line 1766
    add-int/lit8 v4, v10, 0x1

    xor-int/lit8 v5, v10, -0x1

    and-int/lit8 v5, v5, 0x3

    add-int v25, v4, v5

    .line 1767
    .local v25, switchStart:I
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v12

    .line 1768
    .local v12, defaultOffset:I
    add-int v4, v10, v12

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v26

    .line 1774
    .restart local v26       #targetSB:Lorg/mozilla/classfile/SuperBlock;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1775
    add-int/lit8 v4, v25, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v20

    .line 1776
    .local v20, low:I
    add-int/lit8 v4, v25, 0x8

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v17

    .line 1777
    .local v17, high:I
    sub-int v4, v17, v20

    add-int/lit8 v23, v4, 0x1

    .line 1778
    .local v23, numCases:I
    add-int/lit8 v11, v25, 0xc

    .line 1779
    .local v11, caseBase:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 1780
    mul-int/lit8 v4, v18, 0x4

    add-int/2addr v4, v11

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v4

    add-int v19, v10, v4

    .line 1781
    .local v19, label:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v26

    .line 1787
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1779
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1798
    .end local v11           #caseBase:I
    .end local v12           #defaultOffset:I
    .end local v17           #high:I
    .end local v19           #label:I
    .end local v20           #low:I
    .end local v23           #numCases:I
    .end local v25           #switchStart:I
    .end local v26           #targetSB:Lorg/mozilla/classfile/SuperBlock;
    .restart local v13       #endPC:S
    .restart local v14       #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .restart local v24       #startPC:S
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    iget v5, v14, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v4

    move v0, v4

    int-to-short v0, v0

    move/from16 v16, v0

    .line 1800
    .local v16, handlerPC:S
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v3

    .line 1803
    .local v3, sb:Lorg/mozilla/classfile/SuperBlock;
    iget-short v4, v14, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    if-nez v4, :cond_4

    .line 1804
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v4, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v4

    const-string v5, "java/lang/Throwable"

    invoke-virtual {v4, v5}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v4

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v15

    .line 1809
    .local v15, exceptionType:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    move v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v15, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    move-object v8, v0

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 1811
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    goto/16 :goto_2

    .line 1807
    .end local v15           #exceptionType:I
    :cond_4
    iget-short v4, v14, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    invoke-static {v4}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v15

    .restart local v15       #exceptionType:I
    goto :goto_4

    .line 1737
    .end local v3           #sb:Lorg/mozilla/classfile/SuperBlock;
    .end local v13           #endPC:S
    .end local v14           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v15           #exceptionType:I
    .end local v16           #handlerPC:S
    .end local v24           #startPC:S
    :cond_5
    add-int v10, v10, v21

    goto/16 :goto_0

    .line 1824
    .end local v18           #i:I
    :cond_6
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->isSuperBlockEnd(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1825
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/SuperBlock;->getIndex()I

    move-result v4

    add-int/lit8 v22, v4, 0x1

    .line 1826
    .local v22, nextIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    move-object v4, v0

    array-length v4, v4

    move/from16 v0, v22

    move v1, v4

    if-ge v0, v1, :cond_7

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    move-object v4, v0

    aget-object v4, v4, v22

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1835
    .end local v22           #nextIndex:I
    :cond_7
    return-void
.end method

.method private executeStore(II)V
    .locals 0
    .parameter "localIndex"
    .parameter "typeInfo"

    .prologue
    .line 2300
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2301
    invoke-direct {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->setLocal(II)V

    .line 2302
    return-void
.end method

.method private executeWorkList()V
    .locals 4

    .prologue
    .line 1712
    :goto_0
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    if-lez v1, :cond_0

    .line 1713
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    aget-object v0, v1, v2

    .line 1714
    .local v0, work:Lorg/mozilla/classfile/SuperBlock;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/SuperBlock;->setInQueue(Z)V

    .line 1715
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 1716
    invoke-virtual {v0}, Lorg/mozilla/classfile/SuperBlock;->getStack()[I

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 1717
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    array-length v1, v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 1718
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    array-length v1, v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 1719
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeBlock(Lorg/mozilla/classfile/SuperBlock;)V

    goto :goto_0

    .line 1721
    .end local v0           #work:Lorg/mozilla/classfile/SuperBlock;
    :cond_0
    return-void
.end method

.method private flowInto(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 6
    .parameter "sb"

    .prologue
    .line 1842
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1845
    :cond_0
    return-void
.end method

.method private getBranchTarget(I)Lorg/mozilla/classfile/SuperBlock;
    .locals 3
    .parameter "bci"

    .prologue
    .line 1586
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v1

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 1587
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v1

    add-int v0, p1, v1

    .line 1591
    .local v0, target:I
    :goto_0
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v1

    return-object v1

    .line 1589
    .end local v0           #target:I
    :cond_0
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v1

    int-to-short v1, v1

    add-int v0, p1, v1

    .restart local v0       #target:I
    goto :goto_0
.end method

.method private getLocal(I)I
    .locals 1
    .parameter "localIndex"

    .prologue
    .line 2324
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-ge p1, v0, :cond_0

    .line 2325
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aget v0, v0, p1

    .line 2327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOperand(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 1625
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    move-result v0

    return v0
.end method

.method private getOperand(II)I
    .locals 5
    .parameter "start"
    .parameter "size"

    .prologue
    .line 1634
    const/4 v1, 0x0

    .line 1635
    .local v1, result:I
    const/4 v2, 0x4

    if-le p2, v2, :cond_0

    .line 1636
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad operand size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1638
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1639
    shl-int/lit8 v2, v1, 0x8

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v3

    add-int v4, p1, v0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1641
    :cond_1
    return v1
.end method

.method private getSuperBlockDependencies()[Lorg/mozilla/classfile/SuperBlock;
    .locals 14

    .prologue
    .line 1557
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v12, v12

    new-array v3, v12, [Lorg/mozilla/classfile/SuperBlock;

    .line 1559
    .local v3, deps:[Lorg/mozilla/classfile/SuperBlock;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I
    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v12

    if-ge v7, v12, :cond_0

    .line 1560
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;
    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v12

    aget-object v4, v12, v7

    .line 1561
    .local v4, ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v13, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v12

    int-to-short v8, v12

    .line 1562
    .local v8, startPC:S
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v13, v4, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v12

    int-to-short v5, v12

    .line 1563
    .local v5, handlerPC:S
    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v6

    .line 1564
    .local v6, handlerSB:Lorg/mozilla/classfile/SuperBlock;
    invoke-direct {p0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v2

    .line 1565
    .local v2, dep:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v6}, Lorg/mozilla/classfile/SuperBlock;->getIndex()I

    move-result v12

    aput-object v2, v3, v12

    .line 1559
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1567
    .end local v2           #dep:Lorg/mozilla/classfile/SuperBlock;
    .end local v4           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v5           #handlerPC:S
    .end local v6           #handlerSB:Lorg/mozilla/classfile/SuperBlock;
    .end local v8           #startPC:S
    :cond_0
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;
    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/javascript/UintMap;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object v10

    .line 1568
    .local v10, targetPCs:[I
    const/4 v7, 0x0

    :goto_1
    array-length v12, v10

    if-ge v7, v12, :cond_1

    .line 1569
    aget v9, v10, v7

    .line 1570
    .local v9, targetPC:I
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;
    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->access$700(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/javascript/UintMap;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v9, v13}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    .line 1571
    .local v0, branchPC:I
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v1

    .line 1572
    .local v1, branchSB:Lorg/mozilla/classfile/SuperBlock;
    invoke-direct {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v11

    .line 1573
    .local v11, targetSB:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v11}, Lorg/mozilla/classfile/SuperBlock;->getIndex()I

    move-result v12

    aput-object v1, v3, v12

    .line 1568
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1576
    .end local v0           #branchPC:I
    .end local v1           #branchSB:Lorg/mozilla/classfile/SuperBlock;
    .end local v9           #targetPC:I
    .end local v11           #targetSB:Lorg/mozilla/classfile/SuperBlock;
    :cond_1
    return-object v3
.end method

.method private getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;
    .locals 5
    .parameter "offset"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1518
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v1, v2, v0

    .line 1519
    .local v1, sb:Lorg/mozilla/classfile/SuperBlock;
    if-nez v1, :cond_1

    .line 1525
    .end local v1           #sb:Lorg/mozilla/classfile/SuperBlock;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1521
    .restart local v1       #sb:Lorg/mozilla/classfile/SuperBlock;
    :cond_1
    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v2

    if-lt p1, v2, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1522
    return-object v1

    .line 1517
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getWorstCaseWriteSize()I
    .locals 3

    .prologue
    .line 2489
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method private initializeTypeInfo(II)V
    .locals 2
    .parameter "prevType"
    .parameter "newType"

    .prologue
    .line 2310
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    .line 2311
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->initializeTypeInfo(II[II)V

    .line 2312
    return-void
.end method

.method private initializeTypeInfo(II[II)V
    .locals 2
    .parameter "prevType"
    .parameter "newType"
    .parameter "data"
    .parameter "dataTop"

    .prologue
    .line 2316
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 2317
    aget v1, p3, v0

    if-ne v1, p1, :cond_0

    .line 2318
    aput p2, p3, v0

    .line 2316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2321
    :cond_1
    return-void
.end method

.method private isBranch(I)Z
    .locals 1
    .parameter "opcode"

    .prologue
    .line 1599
    sparse-switch p1, :sswitch_data_0

    .line 1620
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1618
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1599
    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private isSuperBlockEnd(I)Z
    .locals 1
    .parameter "opcode"

    .prologue
    .line 1533
    sparse-switch p1, :sswitch_data_0

    .line 1546
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1544
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1533
    nop

    :sswitch_data_0
    .sparse-switch
        0xa7 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method private killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 14
    .parameter "sb"

    .prologue
    .line 1685
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1686
    .local v1, locals:[I
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const-string v2, "java/lang/Throwable"

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v2

    aput v2, v3, v0

    .line 1688
    .local v3, stack:[I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$400(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 1689
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-result-object v0

    aget-object v8, v0, v13

    .line 1690
    .local v8, ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v2, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v10

    .line 1691
    .local v10, eteStart:I
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v2, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v9

    .line 1692
    .local v9, eteEnd:I
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v0

    if-lt v0, v10, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v0

    if-lt v0, v9, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v0

    if-lt v10, v0, :cond_3

    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 1694
    :cond_1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    iget v1, v8, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .end local v1           #locals:[I
    #calls: Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I
    invoke-static {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I

    move-result v11

    .line 1695
    .local v11, handlerPC:I
    invoke-direct {p0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    move-result-object v12

    .line 1696
    .local v12, handlerSB:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v12}, Lorg/mozilla/classfile/SuperBlock;->getLocals()[I

    move-result-object v1

    .line 1701
    .end local v8           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v9           #eteEnd:I
    .end local v10           #eteStart:I
    .end local v11           #handlerPC:I
    .end local v12           #handlerSB:Lorg/mozilla/classfile/SuperBlock;
    .restart local v1       #locals:[I
    :cond_2
    array-length v2, v1

    array-length v4, v3

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 1704
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getEnd()I

    move-result v0

    const/4 v1, 0x1

    sub-int v7, v0, v1

    .line 1705
    .local v7, end:I
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .end local v1           #locals:[I
    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    const/16 v1, -0x41

    aput-byte v1, v0, v7

    .line 1706
    invoke-virtual {p1}, Lorg/mozilla/classfile/SuperBlock;->getStart()I

    move-result v6

    .local v6, bci:I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 1707
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B

    move-result-object v0

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    .line 1706
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1688
    .end local v6           #bci:I
    .end local v7           #end:I
    .restart local v1       #locals:[I
    .restart local v8       #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .restart local v9       #eteEnd:I
    .restart local v10       #eteStart:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1709
    .end local v1           #locals:[I
    .end local v8           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v9           #eteEnd:I
    .end local v10           #eteStart:I
    .restart local v6       #bci:I
    .restart local v7       #end:I
    :cond_4
    return-void
.end method

.method private pop()I
    .locals 3

    .prologue
    .line 2351
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aget v0, v0, v1

    return v0
.end method

.method private pop2()J
    .locals 6

    .prologue
    .line 2377
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v2

    int-to-long v0, v2

    .line 2378
    .local v0, type:J
    long-to-int v2, v0

    invoke-static {v2}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    .line 2381
    :goto_0
    return-wide v2

    :cond_0
    const/16 v2, 0x20

    shl-long v2, v0, v2

    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    or-long/2addr v2, v4

    goto :goto_0
.end method

.method private push(I)V
    .locals 4
    .parameter "typeInfo"

    .prologue
    const/4 v3, 0x0

    .line 2342
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 2343
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [I

    .line 2344
    .local v0, tmp:[I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2345
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 2347
    .end local v0           #tmp:[I
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    aput p1, v1, v2

    .line 2348
    return-void
.end method

.method private push2(J)V
    .locals 4
    .parameter "typeInfo"

    .prologue
    const-wide/32 v2, 0xffffff

    .line 2361
    and-long v0, p1, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2362
    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    .line 2363
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2364
    and-long v0, p1, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 2366
    :cond_0
    return-void
.end method

.method private setLocal(II)V
    .locals 4
    .parameter "localIndex"
    .parameter "typeInfo"

    .prologue
    const/4 v3, 0x0

    .line 2332
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    if-lt p1, v1, :cond_0

    .line 2333
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 2334
    .local v0, tmp:[I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2335
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 2336
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 2338
    .end local v0           #tmp:[I
    :cond_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    aput p2, v1, p1

    .line 2339
    return-void
.end method

.method private verify()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1649
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v1

    .line 1650
    .local v1, initialLocals:[I
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v0, v0, v4

    array-length v2, v1

    new-array v3, v4, [I

    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;
    invoke-static {v5}, Lorg/mozilla/classfile/ClassFileWriter;->access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 1655
    new-array v0, v8, [Lorg/mozilla/classfile/SuperBlock;

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v2, v2, v4

    aput-object v2, v0, v4

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 1656
    iput v8, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 1657
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    .line 1660
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 1661
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    aget-object v7, v0, v6

    .line 1662
    .local v7, sb:Lorg/mozilla/classfile/SuperBlock;
    invoke-virtual {v7}, Lorg/mozilla/classfile/SuperBlock;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->killSuperBlock(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1660
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1666
    .end local v7           #sb:Lorg/mozilla/classfile/SuperBlock;
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeWorkList()V

    .line 1667
    return-void
.end method

.method private writeAppendFrame([III)V
    .locals 4
    .parameter "locals"
    .parameter "localsDelta"
    .parameter "offsetDelta"

    .prologue
    .line 2541
    array-length v1, p1

    sub-int v0, v1, p2

    .line 2542
    .local v0, start:I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit16 v3, p2, 0xfb

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2543
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {p3, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2544
    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2545
    return-void
.end method

.method private writeChopFrame(II)V
    .locals 3
    .parameter "localsDelta"
    .parameter "offsetDelta"

    .prologue
    .line 2548
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/16 v2, 0xfb

    sub-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2549
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2550
    return-void
.end method

.method private writeFullFrame([I[II)V
    .locals 3
    .parameter "locals"
    .parameter "stack"
    .parameter "offsetDelta"

    .prologue
    .line 2529
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 2530
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {p3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2531
    array-length v0, p1

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2533
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2534
    array-length v0, p2

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2536
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2537
    return-void
.end method

.method private writeSameFrame([II)V
    .locals 3
    .parameter "locals"
    .parameter "offsetDelta"

    .prologue
    .line 2494
    const/16 v0, 0x3f

    if-gt p2, v0, :cond_0

    .line 2498
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 2506
    :goto_0
    return-void

    .line 2502
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    .line 2503
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    goto :goto_0
.end method

.method private writeSameLocalsOneStackItemFrame([I[II)V
    .locals 3
    .parameter "locals"
    .parameter "stack"
    .parameter "offsetDelta"

    .prologue
    .line 2511
    const/16 v0, 0x3f

    if-gt p3, v0, :cond_0

    .line 2515
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, p3, 0x40

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 2524
    :goto_0
    const/4 v0, 0x0

    aget v0, p2, v0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    .line 2525
    return-void

    .line 2520
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    .line 2521
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {p3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    goto :goto_0
.end method

.method private writeType(I)I
    .locals 4
    .parameter "type"

    .prologue
    .line 2565
    and-int/lit16 v0, p1, 0xff

    .line 2566
    .local v0, tag:I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 2567
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2569
    :cond_0
    ushr-int/lit8 v1, p1, 0x8

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2572
    :cond_1
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return v1
.end method

.method private writeTypes([I)I
    .locals 1
    .parameter "types"

    .prologue
    .line 2553
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    move-result v0

    return v0
.end method

.method private writeTypes([II)I
    .locals 3
    .parameter "types"
    .parameter "start"

    .prologue
    .line 2557
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2558
    .local v1, startOffset:I
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2559
    aget v2, p1, v0

    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    move-result v2

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 2558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2561
    :cond_0
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    return v2
.end method


# virtual methods
.method computeWriteSize()I
    .locals 2

    .prologue
    .line 2400
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getWorstCaseWriteSize()I

    move-result v0

    .line 2401
    .local v0, writeSize:I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 2402
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeRawStackMap()V

    .line 2403
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method generate()V
    .locals 6

    .prologue
    .line 1477
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v4

    new-array v4, v4, [Lorg/mozilla/classfile/SuperBlock;

    iput-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 1478
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #calls: Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v2

    .line 1480
    .local v2, initialLocals:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1481
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v4

    aget v3, v4, v1

    .line 1483
    .local v3, start:I
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$000(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    .line 1484
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$300(Lorg/mozilla/classfile/ClassFileWriter;)I

    move-result v0

    .line 1488
    .local v0, end:I
    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    new-instance v5, Lorg/mozilla/classfile/SuperBlock;

    invoke-direct {v5, v1, v3, v0, v2}, Lorg/mozilla/classfile/SuperBlock;-><init>(III[I)V

    aput-object v5, v4, v1

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1486
    .end local v0           #end:I
    :cond_0
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    #getter for: Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I
    invoke-static {v4}, Lorg/mozilla/classfile/ClassFileWriter;->access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget v0, v4, v5

    .restart local v0       #end:I
    goto :goto_1

    .line 1501
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockDependencies()[Lorg/mozilla/classfile/SuperBlock;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlockDeps:[Lorg/mozilla/classfile/SuperBlock;

    .line 1503
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->verify()V

    .line 1514
    return-void
.end method

.method write([BI)I
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 2407
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p2

    .line 2408
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 2409
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2410
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    add-int/2addr v0, p2

    return v0
.end method
