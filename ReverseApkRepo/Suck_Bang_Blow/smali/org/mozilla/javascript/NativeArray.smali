.class public Lorg/mozilla/javascript/NativeArray;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeArray.java"


# static fields
.field private static final ARRAY_TAG:Ljava/lang/Object; = null

.field private static final ConstructorId_concat:I = -0xd

.field private static final ConstructorId_every:I = -0x11

.field private static final ConstructorId_filter:I = -0x12

.field private static final ConstructorId_forEach:I = -0x13

.field private static final ConstructorId_indexOf:I = -0xf

.field private static final ConstructorId_isArray:I = -0x18

.field private static final ConstructorId_join:I = -0x5

.field private static final ConstructorId_lastIndexOf:I = -0x10

.field private static final ConstructorId_map:I = -0x14

.field private static final ConstructorId_pop:I = -0x9

.field private static final ConstructorId_push:I = -0x8

.field private static final ConstructorId_reduce:I = -0x16

.field private static final ConstructorId_reduceRight:I = -0x17

.field private static final ConstructorId_reverse:I = -0x6

.field private static final ConstructorId_shift:I = -0xa

.field private static final ConstructorId_slice:I = -0xe

.field private static final ConstructorId_some:I = -0x15

.field private static final ConstructorId_sort:I = -0x7

.field private static final ConstructorId_splice:I = -0xc

.field private static final ConstructorId_unshift:I = -0xb

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0xa

.field private static final GROW_FACTOR:D = 1.5

.field private static final Id_concat:I = 0xd

.field private static final Id_constructor:I = 0x1

.field private static final Id_every:I = 0x11

.field private static final Id_filter:I = 0x12

.field private static final Id_forEach:I = 0x13

.field private static final Id_indexOf:I = 0xf

.field private static final Id_join:I = 0x5

.field private static final Id_lastIndexOf:I = 0x10

.field private static final Id_length:I = 0x1

.field private static final Id_map:I = 0x14

.field private static final Id_pop:I = 0x9

.field private static final Id_push:I = 0x8

.field private static final Id_reduce:I = 0x16

.field private static final Id_reduceRight:I = 0x17

.field private static final Id_reverse:I = 0x6

.field private static final Id_shift:I = 0xa

.field private static final Id_slice:I = 0xe

.field private static final Id_some:I = 0x15

.field private static final Id_sort:I = 0x7

.field private static final Id_splice:I = 0xc

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x4

.field private static final Id_toString:I = 0x2

.field private static final Id_unshift:I = 0xb

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PRE_GROW_SIZE:I = 0x55555554

.field private static final MAX_PROTOTYPE_ID:I = 0x17

.field private static final NEGATIVE_ONE:Ljava/lang/Integer; = null

.field private static maximumInitialCapacity:I = 0x0

.field static final serialVersionUID:J = 0x65be3f5055db7c6aL


# instance fields
.field private dense:[Ljava/lang/Object;

.field private denseOnly:Z

.field private length:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "Array"

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    .line 70
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    .line 1757
    const/16 v0, 0x2710

    sput v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .parameter "lengthArg"

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 88
    sget v1, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 89
    iget-boolean v1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_1

    .line 90
    long-to-int v0, p1

    .line 91
    .local v0, intLength:I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 92
    const/16 v0, 0xa

    .line 93
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .end local v0           #intLength:I
    :cond_1
    iput-wide p1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 97
    return-void

    .line 88
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 102
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 103
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 104
    return-void
.end method

.method private defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 527
    .local v1, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_0

    move-object v1, p0

    .line 528
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 529
    .local v0, desc:Lorg/mozilla/javascript/ScriptableObject;
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 530
    const-string v2, "value"

    invoke-virtual {v0, v2, p1, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 531
    const-string v2, "writable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 532
    const-string v2, "enumerable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 533
    const-string v2, "configurable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 534
    return-object v0
.end method

.method private static deleteElem(Lorg/mozilla/javascript/Scriptable;J)V
    .locals 3
    .parameter "target"
    .parameter "index"

    .prologue
    .line 721
    long-to-int v0, p1

    .line 722
    .local v0, i:I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 724
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ensureCapacity(I)Z
    .locals 6
    .parameter "capacity"

    .prologue
    const/4 v5, 0x0

    .line 403
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 404
    const v1, 0x55555554

    if-le p1, v1, :cond_0

    .line 405
    iput-boolean v5, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    move v1, v5

    .line 415
    :goto_0
    return v1

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 409
    new-array v0, p1, [Ljava/lang/Object;

    .line 410
    .local v0, newDense:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    array-length v2, v0

    sget-object v3, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 413
    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 415
    .end local v0           #newDense:[Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "target"
    .parameter "index"

    .prologue
    .line 728
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 729
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, id:Ljava/lang/String;
    invoke-static {p1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 732
    .end local v0           #id:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    long-to-int v1, p2

    invoke-static {p1, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method static getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J
    .locals 2
    .parameter "cx"
    .parameter "obj"

    .prologue
    .line 699
    instance-of v0, p1, Lorg/mozilla/javascript/NativeString;

    if-eqz v0, :cond_0

    .line 700
    check-cast p1, Lorg/mozilla/javascript/NativeString;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeString;->getLength()I

    move-result v0

    int-to-long v0, v0

    .line 704
    :goto_0
    return-wide v0

    .line 701
    .restart local p1
    :cond_0
    instance-of v0, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_1

    .line 702
    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    goto :goto_0

    .line 704
    .restart local p1
    :cond_1
    const-string v0, "length"

    invoke-static {p1, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static getMaximumInitialCapacity()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    return v0
.end method

.method private static getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 2
    .parameter "target"
    .parameter "index"

    .prologue
    .line 738
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 739
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    long-to-int v0, p1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private indexOfHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"
    .parameter "isLast"

    .prologue
    .line 1434
    array-length v9, p3

    if-lez v9, :cond_1

    const/4 v9, 0x0

    aget-object v9, p3, v9

    move-object v1, v9

    .line 1435
    .local v1, compareTo:Ljava/lang/Object;
    :goto_0
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    .line 1437
    .local v4, length:J
    if-eqz p4, :cond_4

    .line 1450
    array-length v9, p3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 1452
    const-wide/16 v9, 0x1

    sub-long v7, v4, v9

    .line 1488
    .local v7, start:J
    :cond_0
    :goto_1
    instance-of v9, p2, Lorg/mozilla/javascript/NativeArray;

    if-eqz v9, :cond_a

    .line 1489
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v6, v0

    .line 1490
    .local v6, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v9, v6, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v9, :cond_a

    .line 1491
    if-eqz p4, :cond_7

    .line 1492
    long-to-int v2, v7

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_9

    .line 1493
    iget-object v9, v6, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v9, v9, v2

    sget-object v10, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v9, v10, :cond_6

    iget-object v9, v6, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1496
    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1524
    .end local v2           #i:I
    .end local v6           #na:Lorg/mozilla/javascript/NativeArray;
    :goto_3
    return-object v9

    .line 1434
    .end local v1           #compareTo:Ljava/lang/Object;
    .end local v4           #length:J
    .end local v7           #start:J
    :cond_1
    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v1, v9

    goto :goto_0

    .line 1454
    .restart local v1       #compareTo:Ljava/lang/Object;
    .restart local v4       #length:J
    :cond_2
    const/4 v9, 0x1

    aget-object v9, p3, v9

    invoke-static {v9}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v9

    int-to-long v7, v9

    .line 1455
    .restart local v7       #start:J
    cmp-long v9, v7, v4

    if-ltz v9, :cond_3

    .line 1456
    const-wide/16 v9, 0x1

    sub-long v7, v4, v9

    goto :goto_1

    .line 1457
    :cond_3
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    .line 1458
    add-long/2addr v7, v4

    goto :goto_1

    .line 1474
    .end local v7           #start:J
    :cond_4
    array-length v9, p3

    const/4 v10, 0x2

    if-ge v9, v10, :cond_5

    .line 1476
    const-wide/16 v7, 0x0

    .restart local v7       #start:J
    goto :goto_1

    .line 1478
    .end local v7           #start:J
    :cond_5
    const/4 v9, 0x1

    aget-object v9, p3, v9

    invoke-static {v9}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v9

    int-to-long v7, v9

    .line 1479
    .restart local v7       #start:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    .line 1480
    add-long/2addr v7, v4

    .line 1481
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    .line 1482
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 1492
    .restart local v2       #i:I
    .restart local v6       #na:Lorg/mozilla/javascript/NativeArray;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1500
    .end local v2           #i:I
    :cond_7
    long-to-int v2, v7

    .restart local v2       #i:I
    :goto_4
    int-to-long v9, v2

    cmp-long v9, v9, v4

    if-gez v9, :cond_9

    .line 1501
    iget-object v9, v6, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v9, v9, v2

    sget-object v10, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v9, v10, :cond_8

    iget-object v9, v6, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v9, v9, v2

    invoke-static {v9, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1504
    int-to-long v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_3

    .line 1500
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1508
    :cond_9
    sget-object v9, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto :goto_3

    .line 1511
    .end local v2           #i:I
    .end local v6           #na:Lorg/mozilla/javascript/NativeArray;
    :cond_a
    if-eqz p4, :cond_c

    .line 1512
    move-wide v2, v7

    .local v2, i:J
    :goto_5
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_e

    .line 1513
    invoke-static {p1, p2, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1514
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto/16 :goto_3

    .line 1512
    :cond_b
    const-wide/16 v9, 0x1

    sub-long/2addr v2, v9

    goto :goto_5

    .line 1518
    .end local v2           #i:J
    :cond_c
    move-wide v2, v7

    .restart local v2       #i:J
    :goto_6
    cmp-long v9, v2, v4

    if-gez v9, :cond_e

    .line 1519
    invoke-static {p1, p2, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1520
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto/16 :goto_3

    .line 1518
    :cond_d
    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    goto :goto_6

    .line 1524
    :cond_e
    sget-object v9, Lorg/mozilla/javascript/NativeArray;->NEGATIVE_ONE:Ljava/lang/Integer;

    goto/16 :goto_3
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 74
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    .line 75
    .local v0, obj:Lorg/mozilla/javascript/NativeArray;
    const/16 v1, 0x17

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeArray;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 76
    return-void
.end method

.method private iterativeMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .parameter "cx"
    .parameter "id"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1533
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_1

    const/16 v22, 0x0

    aget-object v22, p5, v22

    move-object/from16 v6, v22

    .line 1534
    .local v6, callbackArg:Ljava/lang/Object;
    :goto_0
    if-eqz v6, :cond_0

    move-object v0, v6

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 1535
    :cond_0
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v22

    throw v22

    .line 1533
    .end local v6           #callbackArg:Ljava/lang/Object;
    :cond_1
    sget-object v22, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v6, v22

    goto :goto_0

    .line 1537
    .restart local v6       #callbackArg:Ljava/lang/Object;
    :cond_2
    move-object v0, v6

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v8, v0

    .line 1538
    .local v8, f:Lorg/mozilla/javascript/Function;
    invoke-static {v8}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v18

    .line 1540
    .local v18, parent:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    const/16 v22, 0x1

    aget-object v22, p5, v22

    if-eqz v22, :cond_3

    const/16 v22, 0x1

    aget-object v22, p5, v22

    sget-object v23, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1542
    :cond_3
    move-object/from16 v21, v18

    .line 1546
    .local v21, thisArg:Lorg/mozilla/javascript/Scriptable;
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v16

    .line 1547
    .local v16, length:J
    const/16 v22, 0x14

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v20, v22

    .line 1548
    .local v20, resultLength:I
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 1549
    .local v5, array:Lorg/mozilla/javascript/Scriptable;
    const-wide/16 v12, 0x0

    .line 1550
    .local v12, j:J
    const-wide/16 v9, 0x0

    .local v9, i:J
    move-wide v14, v12

    .end local v12           #j:J
    .local v14, j:J
    :goto_3
    cmp-long v22, v9, v16

    if-gez v22, :cond_8

    .line 1551
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object v11, v0

    .line 1552
    .local v11, innerArgs:[Ljava/lang/Object;
    move-object/from16 v0, p4

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v7

    .line 1553
    .local v7, elem:Ljava/lang/Object;
    sget-object v22, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-object v0, v7

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-wide v12, v14

    .line 1550
    .end local v14           #j:J
    .restart local v12       #j:J
    :goto_4
    const-wide/16 v22, 0x1

    add-long v9, v9, v22

    move-wide v14, v12

    .end local v12           #j:J
    .restart local v14       #j:J
    goto :goto_3

    .line 1544
    .end local v5           #array:Lorg/mozilla/javascript/Scriptable;
    .end local v7           #elem:Ljava/lang/Object;
    .end local v9           #i:J
    .end local v11           #innerArgs:[Ljava/lang/Object;
    .end local v14           #j:J
    .end local v16           #length:J
    .end local v20           #resultLength:I
    .end local v21           #thisArg:Lorg/mozilla/javascript/Scriptable;
    :cond_4
    const/16 v22, 0x1

    aget-object v22, p5, v22

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v21

    .restart local v21       #thisArg:Lorg/mozilla/javascript/Scriptable;
    goto :goto_1

    .line 1547
    .restart local v16       #length:J
    :cond_5
    const/16 v22, 0x0

    move/from16 v20, v22

    goto :goto_2

    .line 1556
    .restart local v5       #array:Lorg/mozilla/javascript/Scriptable;
    .restart local v7       #elem:Ljava/lang/Object;
    .restart local v9       #i:J
    .restart local v11       #innerArgs:[Ljava/lang/Object;
    .restart local v14       #j:J
    .restart local v20       #resultLength:I
    :cond_6
    const/16 v22, 0x0

    aput-object v7, v11, v22

    .line 1557
    const/16 v22, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v11, v22

    .line 1558
    const/16 v22, 0x2

    aput-object p4, v11, v22

    .line 1559
    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object v4, v11

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1560
    .local v19, result:Ljava/lang/Object;
    packed-switch p2, :pswitch_data_0

    :cond_7
    move-wide v12, v14

    .end local v14           #j:J
    .restart local v12       #j:J
    goto :goto_4

    .line 1562
    .end local v12           #j:J
    .restart local v14       #j:J
    :pswitch_0
    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1563
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1590
    .end local v7           #elem:Ljava/lang/Object;
    .end local v11           #innerArgs:[Ljava/lang/Object;
    .end local v19           #result:Ljava/lang/Object;
    :goto_5
    return-object v22

    .line 1566
    .restart local v7       #elem:Ljava/lang/Object;
    .restart local v11       #innerArgs:[Ljava/lang/Object;
    .restart local v19       #result:Ljava/lang/Object;
    :pswitch_1
    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1567
    const-wide/16 v22, 0x1

    add-long v12, v14, v22

    .end local v14           #j:J
    .restart local v12       #j:J
    const/16 v22, 0x0

    aget-object v22, v11, v22

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v14

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_4

    .end local v12           #j:J
    .restart local v14       #j:J
    :pswitch_2
    move-wide v12, v14

    .line 1570
    .end local v14           #j:J
    .restart local v12       #j:J
    goto :goto_4

    .line 1572
    .end local v12           #j:J
    .restart local v14       #j:J
    :pswitch_3
    move-object/from16 v0, p1

    move-object v1, v5

    move-wide v2, v9

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    move-wide v12, v14

    .line 1573
    .end local v14           #j:J
    .restart local v12       #j:J
    goto :goto_4

    .line 1575
    .end local v12           #j:J
    .restart local v14       #j:J
    :pswitch_4
    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1576
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    .line 1580
    .end local v7           #elem:Ljava/lang/Object;
    .end local v11           #innerArgs:[Ljava/lang/Object;
    .end local v19           #result:Ljava/lang/Object;
    :cond_8
    packed-switch p2, :pswitch_data_1

    .line 1590
    :pswitch_5
    sget-object v22, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_5

    .line 1582
    :pswitch_6
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :pswitch_7
    move-object/from16 v22, v5

    .line 1585
    goto :goto_5

    .line 1587
    :pswitch_8
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .line 1560
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1580
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 584
    array-length v4, p2

    if-nez v4, :cond_0

    .line 585
    new-instance v4, Lorg/mozilla/javascript/NativeArray;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    .line 602
    :goto_0
    return-object v4

    .line 590
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_1

    .line 591
    new-instance v4, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v4, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_1
    const/4 v4, 0x0

    aget-object v0, p2, v4

    .line 594
    .local v0, arg0:Ljava/lang/Object;
    array-length v4, p2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    instance-of v4, v0, Ljava/lang/Number;

    if-nez v4, :cond_3

    .line 595
    :cond_2
    new-instance v4, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v4, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v1

    .line 598
    .local v1, len:J
    long-to-double v4, v1

    check-cast v0, Ljava/lang/Number;

    .end local v0           #arg0:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    .line 599
    const-string v4, "msg.arraylength.bad"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, msg:Ljava/lang/String;
    const-string v4, "RangeError"

    invoke-static {v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 602
    .end local v3           #msg:Ljava/lang/String;
    :cond_4
    new-instance v4, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v4, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    goto :goto_0
.end method

.method private static js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 12
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1304
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1305
    const-string v1, "Array"

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v2

    .line 1306
    .local v2, ctor:Lorg/mozilla/javascript/Function;
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v2, p0, p1, v1}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    .line 1307
    .local v7, result:Lorg/mozilla/javascript/Scriptable;
    instance-of p1, p2, Lorg/mozilla/javascript/NativeArray;

    .end local p1
    if-eqz p1, :cond_4

    instance-of p1, v7, Lorg/mozilla/javascript/NativeArray;

    if-eqz p1, :cond_4

    .line 1308
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v4, v0

    .line 1309
    .local v4, denseThis:Lorg/mozilla/javascript/NativeArray;
    move-object v0, v7

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v3, v0

    .line 1310
    .local v3, denseResult:Lorg/mozilla/javascript/NativeArray;
    iget-boolean p1, v4, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p1, :cond_4

    iget-boolean p1, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p1, :cond_4

    .line 1312
    const/4 p1, 0x1

    .line 1313
    .local p1, canUseDense:Z
    iget-wide v5, v4, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v5, v5

    .line 1314
    .local v5, length:I
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #length:I
    .local v6, length:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_0
    array-length v1, p3

    if-ge v5, v1, :cond_1

    if-eqz p1, :cond_1

    .line 1315
    aget-object v1, p3, v5

    instance-of v1, v1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_0

    .line 1318
    aget-object p1, p3, v5

    .end local p1           #canUseDense:Z
    check-cast p1, Lorg/mozilla/javascript/NativeArray;

    .line 1319
    .local p1, arg:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v1, p1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 1320
    .local v1, canUseDense:Z
    int-to-long v8, v6

    iget-wide v10, p1, Lorg/mozilla/javascript/NativeArray;->length:J

    add-long/2addr v8, v10

    long-to-int p1, v8

    .end local v6           #length:I
    .local p1, length:I
    move v6, p1

    .end local p1           #length:I
    .restart local v6       #length:I
    move p1, v1

    .line 1314
    .end local v1           #canUseDense:Z
    .local p1, canUseDense:Z
    :goto_1
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_0

    .line 1322
    :cond_0
    add-int/lit8 v1, v6, 0x1

    .end local v6           #length:I
    .local v1, length:I
    move v6, v1

    .end local v1           #length:I
    .restart local v6       #length:I
    goto :goto_1

    .line 1325
    :cond_1
    if-eqz p1, :cond_4

    invoke-direct {v3, v6}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1326
    iget-object p0, v4, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .end local p0
    const/4 p2, 0x0

    iget-object v1, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .end local p2
    const/4 v2, 0x0

    iget-wide v8, v4, Lorg/mozilla/javascript/NativeArray;->length:J

    .end local v2           #ctor:Lorg/mozilla/javascript/Function;
    long-to-int v5, v8

    invoke-static {p0, p2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1328
    .end local v5           #i:I
    iget-wide v1, v4, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p0, v1

    .line 1329
    .local p0, cursor:I
    const/4 p2, 0x0

    .local p2, i:I
    move v1, p2

    .end local p2           #i:I
    .local v1, i:I
    move p2, p0

    .end local v4           #denseThis:Lorg/mozilla/javascript/NativeArray;
    .end local p0           #cursor:I
    .local p2, cursor:I
    :goto_2
    array-length p0, p3

    if-ge v1, p0, :cond_3

    if-eqz p1, :cond_3

    .line 1330
    aget-object p0, p3, v1

    instance-of p0, p0, Lorg/mozilla/javascript/NativeArray;

    if-eqz p0, :cond_2

    .line 1331
    aget-object p0, p3, v1

    check-cast p0, Lorg/mozilla/javascript/NativeArray;

    .line 1332
    .local p0, arg:Lorg/mozilla/javascript/NativeArray;
    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v8, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v8, v8

    invoke-static {v2, v4, v5, p2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1335
    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p0, v4

    add-int/2addr p0, p2

    .line 1329
    .end local p2           #cursor:I
    .local p0, cursor:I
    :goto_3
    add-int/lit8 p2, v1, 0x1

    .end local v1           #i:I
    .local p2, i:I
    move v1, p2

    .end local p2           #i:I
    .restart local v1       #i:I
    move p2, p0

    .end local p0           #cursor:I
    .local p2, cursor:I
    goto :goto_2

    .line 1337
    :cond_2
    iget-object v2, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    add-int/lit8 p0, p2, 0x1

    .end local p2           #cursor:I
    .restart local p0       #cursor:I
    aget-object v4, p3, v1

    aput-object v4, v2, p2

    goto :goto_3

    .line 1340
    .end local p0           #cursor:I
    .restart local p2       #cursor:I
    :cond_3
    int-to-long p0, v6

    iput-wide p0, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    move-object p0, v7

    .line 1381
    .end local v1           #i:I
    .end local v3           #denseResult:Lorg/mozilla/javascript/NativeArray;
    .end local v6           #length:I
    .end local v7           #result:Lorg/mozilla/javascript/Scriptable;
    .end local p1           #canUseDense:Z
    .end local p2           #cursor:I
    .local p0, result:Lorg/mozilla/javascript/Scriptable;
    :goto_4
    return-object p0

    .line 1347
    .restart local v2       #ctor:Lorg/mozilla/javascript/Function;
    .restart local v7       #result:Lorg/mozilla/javascript/Scriptable;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p2, thisObj:Lorg/mozilla/javascript/Scriptable;
    :cond_4
    const-wide/16 v3, 0x0

    .line 1352
    .local v3, slot:J
    invoke-static {p2, v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1353
    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    .line 1356
    .local v3, length:J
    const-wide/16 v5, 0x0

    .local v5, slot:J
    :goto_5
    cmp-long p1, v5, v3

    if-gez p1, :cond_6

    .line 1357
    invoke-static {p0, p2, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    .line 1358
    .local p1, temp:Ljava/lang/Object;
    invoke-static {p0, v7, v5, v6, p1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1356
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    goto :goto_5

    .line 1361
    .end local v5           #slot:J
    .end local p1           #temp:Ljava/lang/Object;
    .local v3, slot:J
    :cond_5
    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    .end local v3           #slot:J
    .restart local v5       #slot:J
    invoke-static {p0, v7, v3, v4, p2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    :cond_6
    move-wide v3, v5

    .line 1368
    .end local v5           #slot:J
    .restart local v3       #slot:J
    const/4 p1, 0x0

    .local p1, i:I
    move p2, p1

    .end local p1           #i:I
    .local p2, i:I
    move-wide v8, v3

    .end local v3           #slot:J
    .local v8, slot:J
    :goto_6
    array-length p1, p3

    if-ge p2, p1, :cond_9

    .line 1369
    aget-object p1, p3, p2

    invoke-static {p1, v2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1371
    aget-object p1, p3, p2

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .line 1372
    .local p1, arg:Lorg/mozilla/javascript/Scriptable;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v5

    .line 1373
    .local v5, length:J
    const-wide/16 v3, 0x0

    .local v3, j:J
    :goto_7
    cmp-long v1, v3, v5

    if-gez v1, :cond_7

    .line 1374
    invoke-static {p0, p1, v3, v4}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v1

    .line 1375
    .local v1, temp:Ljava/lang/Object;
    invoke-static {p0, v7, v8, v9, v1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1373
    const-wide/16 v10, 0x1

    add-long/2addr v3, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_7

    .end local v1           #temp:Ljava/lang/Object;
    :cond_7
    move-wide v3, v8

    .line 1368
    .end local v5           #length:J
    .end local v8           #slot:J
    .end local p1           #arg:Lorg/mozilla/javascript/Scriptable;
    .local v3, slot:J
    :goto_8
    add-int/lit8 p1, p2, 0x1

    .end local p2           #i:I
    .local p1, i:I
    move p2, p1

    .end local p1           #i:I
    .restart local p2       #i:I
    move-wide v8, v3

    .end local v3           #slot:J
    .restart local v8       #slot:J
    goto :goto_6

    .line 1378
    :cond_8
    const-wide/16 v3, 0x1

    add-long/2addr v3, v8

    .end local v8           #slot:J
    .restart local v3       #slot:J
    aget-object p1, p3, p2

    invoke-static {p0, v7, v8, v9, p1}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    goto :goto_8

    .end local v3           #slot:J
    .restart local v8       #slot:J
    :cond_9
    move-object p0, v7

    .line 1381
    .end local v7           #result:Lorg/mozilla/javascript/Scriptable;
    .local p0, result:Lorg/mozilla/javascript/Scriptable;
    goto :goto_4
.end method

.method private static js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 855
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    .line 856
    .local v3, llength:J
    long-to-int v2, v3

    .line 857
    .local v2, length:I
    int-to-long v5, v2

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 858
    const-string p0, "msg.arraylength.too.big"

    .end local p0
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 862
    .restart local p0
    .restart local p1
    :cond_0
    array-length v1, p2

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    .end local v3           #llength:J
    const/4 v1, 0x0

    aget-object v1, p2, v1

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v1, v3, :cond_4

    :cond_1
    const-string p2, ","

    .end local p2
    move-object v3, p2

    .line 865
    .local v3, separator:Ljava/lang/String;
    :goto_0
    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz p2, :cond_6

    .line 866
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object p2, v0

    .line 867
    .local p2, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v1, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_6

    .line 868
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 869
    .local p1, sb:Ljava/lang/StringBuilder;
    const/4 p0, 0x0

    .local p0, i:I
    :goto_1
    if-ge p0, v2, :cond_5

    .line 870
    if-eqz p0, :cond_2

    .line 871
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :cond_2
    iget-object v1, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p0, v1, :cond_3

    .line 874
    iget-object v1, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v1, p0

    .line 875
    .local v1, temp:Ljava/lang/Object;
    if-eqz v1, :cond_3

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v1, v4, :cond_3

    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v4, :cond_3

    .line 878
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #temp:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 862
    .end local v3           #separator:Ljava/lang/String;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, thisObj:Lorg/mozilla/javascript/Scriptable;
    .local p2, args:[Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    aget-object p2, p2, v1

    .end local p2           #args:[Ljava/lang/Object;
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_0

    .line 882
    .restart local v3       #separator:Ljava/lang/String;
    .local p0, i:I
    .local p1, sb:Ljava/lang/StringBuilder;
    .local p2, na:Lorg/mozilla/javascript/NativeArray;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 910
    .end local p0           #i:I
    .end local p1           #sb:Ljava/lang/StringBuilder;
    .end local p2           #na:Lorg/mozilla/javascript/NativeArray;
    :goto_2
    return-object p0

    .line 885
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, thisObj:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    if-nez v2, :cond_7

    .line 886
    const-string p0, ""

    goto :goto_2

    .line 888
    :cond_7
    new-array p2, v2, [Ljava/lang/String;

    .line 889
    .local p2, buf:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 890
    .local v4, total_size:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #total_size:I
    .local v5, total_size:I
    :goto_3
    if-eq v1, v2, :cond_9

    .line 891
    int-to-long v6, v1

    invoke-static {p0, p1, v6, v7}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    .line 892
    .local v4, temp:Ljava/lang/Object;
    if-eqz v4, :cond_8

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v4, v6, :cond_8

    .line 893
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 894
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 895
    aput-object v4, p2, v1

    .end local v4           #str:Ljava/lang/String;
    :cond_8
    move v4, v5

    .line 890
    .end local v5           #total_size:I
    .local v4, total_size:I
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #total_size:I
    .restart local v5       #total_size:I
    goto :goto_3

    .line 898
    :cond_9
    const/4 p0, 0x1

    sub-int p0, v2, p0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    move-result p1

    .end local p1           #thisObj:Lorg/mozilla/javascript/Scriptable;
    mul-int/2addr p0, p1

    add-int/2addr p0, v5

    .line 899
    .end local v5           #total_size:I
    .local p0, total_size:I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 900
    .local p1, sb:Ljava/lang/StringBuilder;
    const/4 p0, 0x0

    .end local v1           #i:I
    .local p0, i:I
    :goto_4
    if-eq p0, v2, :cond_c

    .line 901
    if-eqz p0, :cond_a

    .line 902
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_a
    aget-object v1, p2, p0

    .line 905
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 907
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 910
    .end local v1           #str:Ljava/lang/String;
    :cond_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private static js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const-wide/16 v10, 0x1

    const-wide/16 v8, 0x0

    .line 1064
    instance-of v6, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v6, :cond_0

    .line 1065
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v3, v0

    .line 1066
    .local v3, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v6, v3, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v6, :cond_0

    iget-wide v6, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 1067
    iget-wide v6, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    sub-long/2addr v6, v10

    iput-wide v6, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 1068
    iget-object v6, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v7, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v7, v7

    aget-object v4, v6, v7

    .line 1069
    .local v4, result:Ljava/lang/Object;
    iget-object v6, v3, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v7, v3, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v7, v7

    sget-object v8, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    aput-object v8, v6, v7

    move-object v5, v4

    .line 1089
    .end local v3           #na:Lorg/mozilla/javascript/NativeArray;
    .end local v4           #result:Ljava/lang/Object;
    .local v5, result:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 1073
    .end local v5           #result:Ljava/lang/Object;
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v1

    .line 1074
    .local v1, length:J
    cmp-long v6, v1, v8

    if-lez v6, :cond_1

    .line 1075
    sub-long/2addr v1, v10

    .line 1078
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    .line 1087
    .restart local v4       #result:Ljava/lang/Object;
    :goto_1
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-object v5, v4

    .line 1089
    .end local v4           #result:Ljava/lang/Object;
    .restart local v5       #result:Ljava/lang/Object;
    goto :goto_0

    .line 1083
    .end local v5           #result:Ljava/lang/Object;
    :cond_1
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .restart local v4       #result:Ljava/lang/Object;
    goto :goto_1
.end method

.method private static js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1027
    instance-of v6, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v6, :cond_1

    .line 1028
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v5, v0

    .line 1029
    .local v5, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v6, v5, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v6, :cond_1

    iget-wide v6, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v6, v6

    array-length v7, p2

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1032
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    .line 1033
    iget-object v6, v5, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v7, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    iput-wide v9, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v7, v7

    aget-object v8, p2, v1

    aput-object v8, v6, v7

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    iget-wide v6, v5, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    .line 1057
    .end local v5           #na:Lorg/mozilla/javascript/NativeArray;
    :goto_1
    return-object v6

    .line 1038
    .end local v1           #i:I
    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v2

    .line 1039
    .local v2, length:J
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v6, p2

    if-ge v1, v6, :cond_2

    .line 1040
    int-to-long v6, v1

    add-long/2addr v6, v2

    aget-object v8, p2, v1

    invoke-static {p0, p1, v6, v7, v8}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1043
    :cond_2
    array-length v6, p2

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 1044
    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v4

    .line 1050
    .local v4, lengthObj:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_4

    .line 1052
    array-length v6, p2

    if-nez v6, :cond_3

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    array-length v6, p2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget-object v6, p2, v6

    goto :goto_1

    :cond_4
    move-object v6, v4

    .line 1057
    goto :goto_1
.end method

.method private static js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 11
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 919
    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    .end local p2
    if-eqz p2, :cond_0

    .line 920
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v1, v0

    .line 921
    .local v1, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean p2, v1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz p2, :cond_0

    .line 922
    const/4 p0, 0x0

    .local p0, i:I
    iget-wide v2, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p2, v2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    .local p2, j:I
    :goto_0
    if-ge p0, p2, :cond_1

    .line 923
    iget-object v2, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v2, v2, p0

    .line 924
    .local v2, temp:Ljava/lang/Object;
    iget-object v3, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-object v4, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v4, v4, p2

    aput-object v4, v3, p0

    .line 925
    iget-object v3, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object v2, v3, p2

    .line 922
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 930
    .end local v1           #na:Lorg/mozilla/javascript/NativeArray;
    .end local v2           #temp:Ljava/lang/Object;
    .end local p2           #j:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v7

    .line 932
    .local v7, len:J
    const-wide/16 v1, 0x2

    div-long v1, v7, v1

    .line 933
    .local v1, half:J
    const-wide/16 v3, 0x0

    .local v3, i:J
    :goto_1
    cmp-long p2, v3, v1

    if-gez p2, :cond_1

    .line 934
    sub-long v5, v7, v3

    const-wide/16 v9, 0x1

    sub-long/2addr v5, v9

    .line 935
    .local v5, j:J
    invoke-static {p0, p1, v3, v4}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p2

    .line 936
    .local p2, temp1:Ljava/lang/Object;
    invoke-static {p0, p1, v5, v6}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v9

    .line 937
    .local v9, temp2:Ljava/lang/Object;
    invoke-static {p0, p1, v3, v4, v9}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 938
    invoke-static {p0, p1, v5, v6, p2}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 933
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_1

    .line 940
    .end local v1           #half:J
    .end local v3           #i:J
    .end local v5           #j:J
    .end local v7           #len:J
    .end local v9           #temp2:Ljava/lang/Object;
    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    .end local p2           #temp1:Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method private static js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1095
    instance-of p2, p1, Lorg/mozilla/javascript/NativeArray;

    .end local p2
    if-eqz p2, :cond_0

    .line 1096
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object p2, v0

    .line 1097
    .local p2, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v1, p2, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v1, :cond_0

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1098
    iget-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    .end local p0
    const-wide/16 v1, 0x1

    sub-long/2addr p0, v1

    iput-wide p0, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 1099
    iget-object p0, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 1100
    .end local p1
    .local p0, result:Ljava/lang/Object;
    iget-object p1, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v1, 0x1

    iget-object v2, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v4, v4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1101
    iget-object p1, p2, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    iget-wide v1, p2, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int p2, v1

    sget-object v1, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    .end local p2           #na:Lorg/mozilla/javascript/NativeArray;
    aput-object v1, p1, p2

    .line 1130
    :goto_0
    return-object p0

    .line 1106
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    .line 1107
    .local v3, length:J
    const-wide/16 v1, 0x0

    cmp-long p2, v3, v1

    if-lez p2, :cond_2

    .line 1108
    const-wide/16 v1, 0x0

    .line 1109
    .local v1, i:J
    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 1112
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p2

    .line 1118
    .local p2, result:Ljava/lang/Object;
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 1119
    const-wide/16 v1, 0x1

    :goto_1
    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 1120
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    .line 1121
    .local v5, temp:Ljava/lang/Object;
    const-wide/16 v6, 0x1

    sub-long v6, v1, v6

    invoke-static {p0, p1, v6, v7, v5}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1119
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    goto :goto_1

    .end local v5           #temp:Ljava/lang/Object;
    :cond_1
    move-wide v1, v3

    .line 1129
    .end local v3           #length:J
    .local v1, length:J
    :goto_2
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-object p0, p2

    .line 1130
    .end local p2           #result:Ljava/lang/Object;
    .local p0, result:Ljava/lang/Object;
    goto :goto_0

    .line 1127
    .end local v1           #length:J
    .restart local v3       #length:J
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_2
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .restart local p2       #result:Ljava/lang/Object;
    move-wide v1, v3

    .end local v3           #length:J
    .restart local v1       #length:J
    goto :goto_2
.end method

.method private js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 18
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1387
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v12

    .line 1388
    .local v12, scope:Lorg/mozilla/javascript/Scriptable;
    const-string v16, "Array"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v11

    .line 1389
    .local v11, result:Lorg/mozilla/javascript/Scriptable;
    invoke-static/range {p1 .. p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v9

    .line 1392
    .local v9, length:J
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 1393
    const-wide/16 v5, 0x0

    .line 1394
    .local v5, begin:J
    move-wide v7, v9

    .line 1404
    .local v7, end:J
    :goto_0
    move-wide v13, v5

    .local v13, slot:J
    :goto_1
    cmp-long v16, v13, v7

    if-gez v16, :cond_2

    .line 1405
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide v2, v13

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v15

    .line 1406
    .local v15, temp:Ljava/lang/Object;
    sub-long v16, v13, v5

    move-object/from16 v0, p1

    move-object v1, v11

    move-wide/from16 v2, v16

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1404
    const-wide/16 v16, 0x1

    add-long v13, v13, v16

    goto :goto_1

    .line 1396
    .end local v5           #begin:J
    .end local v7           #end:J
    .end local v13           #slot:J
    .end local v15           #temp:Ljava/lang/Object;
    :cond_0
    const/16 v16, 0x0

    aget-object v16, p3, v16

    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v5

    .line 1397
    .restart local v5       #begin:J
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1398
    move-wide v7, v9

    .restart local v7       #end:J
    goto :goto_0

    .line 1400
    .end local v7           #end:J
    :cond_1
    const/16 v16, 0x1

    aget-object v16, p3, v16

    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v7

    .restart local v7       #end:J
    goto :goto_0

    .line 1409
    .restart local v13       #slot:J
    :cond_2
    return-object v11
.end method

.method private static js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 10
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v9, 0x0

    .line 950
    array-length v3, p3

    if-lez v3, :cond_0

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aget-object v4, p3, v9

    if-eq v3, v4, :cond_0

    .line 951
    aget-object v3, p3, v9

    invoke-static {v3, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    .line 953
    .local v2, jsCompareFunction:Lorg/mozilla/javascript/Callable;
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 954
    .local v5, funThis:Lorg/mozilla/javascript/Scriptable;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    .line 955
    .local v1, cmpBuf:[Ljava/lang/Object;
    new-instance v0, Lorg/mozilla/javascript/NativeArray$1;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray$1;-><init>([Ljava/lang/Object;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 1002
    .end local v1           #cmpBuf:[Ljava/lang/Object;
    .end local v2           #jsCompareFunction:Lorg/mozilla/javascript/Callable;
    .end local v5           #funThis:Lorg/mozilla/javascript/Scriptable;
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    :goto_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v3

    long-to-int v7, v3

    .line 1005
    .local v7, length:I
    new-array v8, v7, [Ljava/lang/Object;

    .line 1006
    .local v8, working:[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-eq v6, v7, :cond_1

    .line 1007
    int-to-long v3, v6

    invoke-static {p0, p2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v8, v6

    .line 1006
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 982
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #working:[Ljava/lang/Object;
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/NativeArray$2;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArray$2;-><init>()V

    .restart local v0       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    goto :goto_0

    .line 1010
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #working:[Ljava/lang/Object;
    :cond_1
    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1013
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_2

    .line 1014
    int-to-long v3, v6

    aget-object v9, v8, v6

    invoke-static {p0, p2, v3, v4, v9}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1013
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1017
    :cond_2
    return-object p2
.end method

.method private static js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1177
    const/4 v6, 0x0

    .line 1178
    .local v6, na:Lorg/mozilla/javascript/NativeArray;
    const/4 v5, 0x0

    .line 1179
    .local v5, denseMode:Z
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/NativeArray;

    move v7, v0

    if-eqz v7, :cond_f

    .line 1180
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v6, v0

    .line 1181
    iget-boolean v5, v6, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    move v11, v5

    .end local v5           #denseMode:Z
    .local v11, denseMode:Z
    move-object/from16 v18, v6

    .line 1185
    .end local v6           #na:Lorg/mozilla/javascript/NativeArray;
    .local v18, na:Lorg/mozilla/javascript/NativeArray;
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeArray;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1186
    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    .line 1187
    .local v5, argc:I
    if-nez v5, :cond_0

    .line 1188
    const-string p2, "Array"

    .end local p2
    const/16 p3, 0x0

    invoke-static/range {p0 .. p3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .end local p3
    move-result-object p0

    .end local p0
    move-object/from16 p1, p0

    move/from16 p0, v5

    .line 1294
    .end local v5           #argc:I
    .end local v11           #denseMode:Z
    .end local v18           #na:Lorg/mozilla/javascript/NativeArray;
    .end local p1
    .local p0, argc:I
    :goto_1
    return-object p1

    .line 1189
    .restart local v5       #argc:I
    .restart local v11       #denseMode:Z
    .restart local v18       #na:Lorg/mozilla/javascript/NativeArray;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v16

    .line 1192
    .local v16, length:J
    const/4 v6, 0x0

    aget-object v6, p3, v6

    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v6

    move-wide v0, v6

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->toSliceIndex(DJ)J

    move-result-wide v6

    .line 1193
    .local v6, begin:J
    add-int/lit8 v5, v5, -0x1

    .line 1197
    move-object/from16 v0, p3

    array-length v0, v0

    move v8, v0

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 1198
    sub-long v8, v16, v6

    .local v8, count:J
    move-wide v9, v8

    .line 1211
    .end local v8           #count:J
    .local v9, count:J
    :goto_2
    add-long v12, v6, v9

    .line 1215
    .local v12, end:J
    const-wide/16 v14, 0x0

    cmp-long v8, v9, v14

    if-eqz v8, :cond_9

    .line 1216
    const-wide/16 v14, 0x1

    cmp-long v8, v9, v14

    if-nez v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    const/16 v14, 0x78

    if-ne v8, v14, :cond_6

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    .local p1, result:Ljava/lang/Object;
    move-object/from16 v14, p1

    .line 1257
    .end local p1           #result:Ljava/lang/Object;
    .local v14, result:Ljava/lang/Object;
    :goto_3
    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v8, v19, v9

    .line 1258
    .end local v9           #count:J
    .local v8, delta:J
    if-eqz v11, :cond_b

    add-long v10, v16, v8

    const-wide/32 v19, 0x7fffffff

    cmp-long p1, v10, v19

    if-gez p1, :cond_b

    add-long v10, v16, v8

    move-wide v0, v10

    long-to-int v0, v0

    move/from16 p1, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1261
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    move-wide v0, v12

    long-to-int v0, v0

    move/from16 p1, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2
    int-to-long v10, v5

    add-long/2addr v10, v6

    long-to-int v10, v10

    sub-long v11, v16, v12

    long-to-int v11, v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1263
    .end local v11           #denseMode:Z
    if-lez v5, :cond_1

    .line 1264
    const/16 p0, 0x2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 p1, v0

    move-wide v0, v6

    long-to-int v0, v0

    move/from16 p2, v0

    move-object/from16 v0, p3

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1266
    :cond_1
    const-wide/16 p0, 0x0

    cmp-long p0, v8, p0

    if-gez p0, :cond_2

    .line 1267
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 p0, v0

    add-long p1, v16, v8

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 p1, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 p2, v0

    sget-object p3, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    .end local p3
    invoke-static/range {p0 .. p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1270
    :cond_2
    add-long p0, v16, v8

    move-wide/from16 v0, p0

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    move/from16 p0, v5

    .end local v5           #argc:I
    .local p0, argc:I
    move-object/from16 p1, v14

    .line 1271
    goto/16 :goto_1

    .line 1200
    .end local v8           #delta:J
    .end local v12           #end:J
    .end local v14           #result:Ljava/lang/Object;
    .restart local v5       #argc:I
    .restart local v11       #denseMode:Z
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .restart local p2
    .restart local p3
    :cond_3
    const/4 v8, 0x1

    aget-object v8, p3, v8

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v8

    .line 1201
    .local v8, dcount:D
    const-wide/16 v12, 0x0

    cmpg-double v10, v8, v12

    if-gez v10, :cond_4

    .line 1202
    const-wide/16 v8, 0x0

    .line 1208
    .local v8, count:J
    :goto_4
    add-int/lit8 v5, v5, -0x1

    move-wide v9, v8

    .end local v8           #count:J
    .restart local v9       #count:J
    goto/16 :goto_2

    .line 1203
    .end local v9           #count:J
    .local v8, dcount:D
    :cond_4
    sub-long v12, v16, v6

    long-to-double v12, v12

    cmpl-double v10, v8, v12

    if-lez v10, :cond_5

    .line 1204
    sub-long v8, v16, v6

    .local v8, count:J
    goto :goto_4

    .line 1206
    .local v8, dcount:D
    :cond_5
    double-to-long v8, v8

    .local v8, count:J
    goto :goto_4

    .line 1232
    .end local v8           #count:J
    .restart local v9       #count:J
    .restart local v12       #end:J
    :cond_6
    if-eqz v11, :cond_7

    .line 1233
    sub-long v14, v12, v6

    long-to-int v14, v14

    .line 1234
    .local v14, intLen:I
    new-array v8, v14, [Ljava/lang/Object;

    .line 1235
    .local v8, copy:[Ljava/lang/Object;
    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object v15, v0

    move-wide v0, v6

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v19

    move-object v2, v8

    move/from16 v3, v20

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .local p1, result:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v14, p1

    .line 1237
    .local v14, result:Ljava/lang/Object;
    goto/16 :goto_3

    .line 1238
    .end local v8           #copy:[Ljava/lang/Object;
    .end local v14           #result:Ljava/lang/Object;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    :cond_7
    const-string v8, "Array"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v14

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1240
    .local p1, resultArray:Lorg/mozilla/javascript/Scriptable;
    move-wide v14, v6

    .local v14, last:J
    :goto_5
    cmp-long v8, v14, v12

    if-eqz v8, :cond_8

    .line 1241
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v14

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v8

    .line 1242
    .local v8, temp:Ljava/lang/Object;
    sub-long v19, v14, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1240
    const-wide/16 v19, 0x1

    add-long v14, v14, v19

    goto :goto_5

    .line 1244
    .end local v8           #temp:Ljava/lang/Object;
    :cond_8
    move-object/from16 p1, p1

    .local p1, result:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v14, p1

    .line 1245
    .local v14, result:Ljava/lang/Object;
    goto/16 :goto_3

    .line 1248
    .end local v14           #result:Ljava/lang/Object;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    const/16 v14, 0x78

    if-ne v8, v14, :cond_a

    .line 1250
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .local p1, result:Ljava/lang/Object;
    move-object/from16 v14, p1

    .end local p1           #result:Ljava/lang/Object;
    .restart local v14       #result:Ljava/lang/Object;
    goto/16 :goto_3

    .line 1252
    .end local v14           #result:Ljava/lang/Object;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    :cond_a
    const-string v8, "Array"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v14

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .local p1, result:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v14, p1

    .restart local v14       #result:Ljava/lang/Object;
    goto/16 :goto_3

    .line 1274
    .end local v9           #count:J
    .end local p1           #result:Lorg/mozilla/javascript/Scriptable;
    .local v8, delta:J
    :cond_b
    const-wide/16 v10, 0x0

    cmp-long p1, v8, v10

    if-lez p1, :cond_c

    .line 1275
    const-wide/16 v10, 0x1

    sub-long v10, v16, v10

    .end local v11           #denseMode:Z
    .end local v18           #na:Lorg/mozilla/javascript/NativeArray;
    .local v10, last:J
    :goto_6
    cmp-long p1, v10, v12

    if-ltz p1, :cond_d

    .line 1276
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v10

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    .line 1277
    .local p1, temp:Ljava/lang/Object;
    add-long v18, v10, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1275
    const-wide/16 v18, 0x1

    sub-long v10, v10, v18

    goto :goto_6

    .line 1279
    .end local v10           #last:J
    .end local p1           #temp:Ljava/lang/Object;
    .restart local v11       #denseMode:Z
    .restart local v18       #na:Lorg/mozilla/javascript/NativeArray;
    :cond_c
    const-wide/16 v10, 0x0

    cmp-long p1, v8, v10

    if-gez p1, :cond_d

    .line 1280
    move-wide v10, v12

    .end local v11           #denseMode:Z
    .end local v12           #end:J
    .restart local v10       #last:J
    :goto_7
    cmp-long p1, v10, v16

    if-gez p1, :cond_d

    .line 1281
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v10

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p1

    .line 1282
    .restart local p1       #temp:Ljava/lang/Object;
    add-long v12, v10, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v12

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1280
    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_7

    .line 1287
    .end local v10           #last:J
    .end local v18           #na:Lorg/mozilla/javascript/NativeArray;
    .end local p1           #temp:Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 p1, v0

    sub-int p1, p1, v5

    .line 1288
    .local p1, argoffset:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_8
    if-ge v10, v5, :cond_e

    .line 1289
    int-to-long v11, v10

    add-long/2addr v11, v6

    add-int v13, v10, p1

    aget-object v13, p3, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v11

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1288
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1293
    :cond_e
    add-long v6, v16, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    .end local v6           #begin:J
    move/from16 p0, v5

    .end local v5           #argc:I
    .local p0, argc:I
    move-object/from16 p1, v14

    .line 1294
    goto/16 :goto_1

    .end local v8           #delta:J
    .end local v10           #i:I
    .end local v14           #result:Ljava/lang/Object;
    .end local v16           #length:J
    .local v5, denseMode:Z
    .local v6, na:Lorg/mozilla/javascript/NativeArray;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    :cond_f
    move v11, v5

    .end local v5           #denseMode:Z
    .restart local v11       #denseMode:Z
    move-object/from16 v18, v6

    .end local v6           #na:Lorg/mozilla/javascript/NativeArray;
    .restart local v18       #na:Lorg/mozilla/javascript/NativeArray;
    goto/16 :goto_0
.end method

.method private static js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "cx"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1136
    instance-of v1, p1, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_1

    .line 1137
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v1, v0

    .line 1138
    .local v1, na:Lorg/mozilla/javascript/NativeArray;
    iget-boolean v2, v1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v2, v2

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    iget-object p0, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .end local p0
    const/4 p1, 0x0

    iget-object v2, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .end local p1
    array-length v3, p2

    iget-wide v4, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-int v4, v4

    invoke-static {p0, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    const/4 p0, 0x0

    .local p0, i:I
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_0

    .line 1144
    iget-object p1, v1, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v2, p2, p0

    aput-object v2, p1, p0

    .line 1143
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    iget-wide p0, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    .end local p0           #i:I
    array-length p2, p2

    .end local p2
    int-to-long v2, p2

    add-long/2addr p0, v2

    iput-wide p0, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 1147
    iget-wide p0, v1, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    .line 1171
    .end local v1           #na:Lorg/mozilla/javascript/NativeArray;
    :goto_1
    return-object p0

    .line 1150
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .restart local p2
    :cond_1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v4

    .line 1151
    .local v4, length:J
    array-length v1, p2

    .line 1153
    .local v1, argc:I
    array-length v2, p2

    if-lez v2, :cond_4

    .line 1155
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 1156
    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    .local v2, last:J
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    .line 1157
    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    .line 1158
    .local v6, temp:Ljava/lang/Object;
    int-to-long v7, v1

    add-long/2addr v7, v2

    invoke-static {p0, p1, v7, v8, v6}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1156
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_2

    .line 1163
    .end local v2           #last:J
    .end local v6           #temp:Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 1164
    int-to-long v2, v1

    aget-object v6, p2, v1

    invoke-static {p0, p1, v2, v3, v6}, Lorg/mozilla/javascript/NativeArray;->setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1168
    :cond_3
    array-length p2, p2

    .end local p2
    int-to-long v1, p2

    add-long/2addr v1, v4

    .line 1169
    .end local v4           #length:J
    .local v1, length:J
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeArray;->setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1171
    .local v1, argc:I
    .restart local v4       #length:J
    .restart local p2
    :cond_4
    long-to-double p0, v4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    move-result-object p0

    goto :goto_1
.end method

.method private reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "cx"
    .parameter "id"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 1600
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_1

    const/16 v17, 0x0

    aget-object v17, p5, v17

    move-object/from16 v5, v17

    .line 1601
    .local v5, callbackArg:Ljava/lang/Object;
    :goto_0
    if-eqz v5, :cond_0

    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 1602
    :cond_0
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 1600
    .end local v5           #callbackArg:Ljava/lang/Object;
    :cond_1
    sget-object v17, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v5, v17

    goto :goto_0

    .line 1604
    .restart local v5       #callbackArg:Ljava/lang/Object;
    :cond_2
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v7, v0

    .line 1605
    .local v7, f:Lorg/mozilla/javascript/Function;
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v15

    .line 1606
    .local v15, parent:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v11

    .line 1608
    .local v11, length:J
    const/16 v17, 0x17

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const-wide/16 v17, 0x1

    sub-long v17, v11, v17

    move-wide/from16 v13, v17

    .line 1609
    .local v13, offset:J
    :goto_1
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/16 v17, 0x1

    aget-object v17, p5, v17

    move-object/from16 v16, v17

    .line 1610
    .local v16, value:Ljava/lang/Object;
    :goto_2
    const-wide/16 v8, 0x0

    .local v8, i:J
    :goto_3
    cmp-long v17, v8, v11

    if-gez v17, :cond_7

    .line 1611
    sub-long v17, v8, v13

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    move-object/from16 v0, p4

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;->getRawElem(Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v6

    .line 1612
    .local v6, elem:Ljava/lang/Object;
    sget-object v17, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-object v0, v6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1610
    :goto_4
    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    goto :goto_3

    .line 1608
    .end local v6           #elem:Ljava/lang/Object;
    .end local v8           #i:J
    .end local v13           #offset:J
    .end local v16           #value:Ljava/lang/Object;
    :cond_3
    const-wide/16 v17, 0x0

    move-wide/from16 v13, v17

    goto :goto_1

    .line 1609
    .restart local v13       #offset:J
    :cond_4
    sget-object v17, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-object/from16 v16, v17

    goto :goto_2

    .line 1615
    .restart local v6       #elem:Ljava/lang/Object;
    .restart local v8       #i:J
    .restart local v16       #value:Ljava/lang/Object;
    :cond_5
    sget-object v17, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1617
    move-object/from16 v16, v6

    goto :goto_4

    .line 1619
    :cond_6
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v10, v0

    .line 1620
    .local v10, innerArgs:[Ljava/lang/Object;
    const/16 v17, 0x0

    aput-object v16, v10, v17

    .line 1621
    const/16 v17, 0x1

    aput-object v6, v10, v17

    .line 1622
    const/16 v17, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v10, v17

    .line 1623
    const/16 v17, 0x3

    aput-object p4, v10, v17

    .line 1624
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v15

    move-object v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    goto :goto_4

    .line 1627
    .end local v6           #elem:Ljava/lang/Object;
    .end local v10           #innerArgs:[Ljava/lang/Object;
    :cond_7
    sget-object v17, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1629
    const-string v17, "msg.empty.array.reduce"

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v17

    throw v17

    .line 1631
    :cond_8
    return-object v16
.end method

.method private static setElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;JLjava/lang/Object;)V
    .locals 3
    .parameter "cx"
    .parameter "target"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 748
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 749
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, id:Ljava/lang/String;
    invoke-static {p1, v0, p4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 754
    .end local v0           #id:Ljava/lang/String;
    :goto_0
    return-void

    .line 752
    :cond_0
    long-to-int v1, p2

    invoke-static {p1, v1, p4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setLength(Ljava/lang/Object;)V
    .locals 21
    .parameter "val"

    .prologue
    .line 639
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    .line 640
    .local v3, d:D
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v11

    .line 641
    .local v11, longVal:J
    long-to-double v15, v11

    cmpl-double v15, v15, v3

    if-eqz v15, :cond_0

    .line 642
    const-string v15, "msg.arraylength.bad"

    invoke-static {v15}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 643
    .local v13, msg:Ljava/lang/String;
    const-string v15, "RangeError"

    invoke-static {v15, v13}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v15

    throw v15

    .line 646
    .end local v13           #msg:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    move v15, v0

    if-eqz v15, :cond_3

    .line 647
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    move-wide v15, v0

    cmp-long v15, v11, v15

    if-gez v15, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object v15, v0

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    sget-object v18, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    invoke-static/range {v15 .. v18}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 650
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 689
    :goto_0
    return-void

    .line 652
    :cond_1
    const-wide/32 v15, 0x55555554

    cmp-long v15, v11, v15

    if-gez v15, :cond_2

    long-to-double v15, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3ff8

    mul-double v17, v17, v19

    cmpg-double v15, v15, v17

    if-gez v15, :cond_2

    long-to-int v15, v11

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 656
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    .line 659
    :cond_2
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 662
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    move-wide v15, v0

    cmp-long v15, v11, v15

    if-gez v15, :cond_7

    .line 664
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    move-wide v15, v0

    sub-long/2addr v15, v11

    const-wide/16 v17, 0x1000

    cmp-long v15, v15, v17

    if-lez v15, :cond_6

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v5

    .line 667
    .local v5, e:[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v15, v5

    if-ge v6, v15, :cond_7

    .line 668
    aget-object v8, v5, v6

    .line 669
    .local v8, id:Ljava/lang/Object;
    instance-of v15, v8, Ljava/lang/String;

    if-eqz v15, :cond_5

    .line 671
    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 672
    .local v14, strId:Ljava/lang/String;
    invoke-static {v14}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v9

    .line 673
    .local v9, index:J
    cmp-long v15, v9, v11

    if-ltz v15, :cond_4

    .line 674
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeArray;->delete(Ljava/lang/String;)V

    .line 667
    .end local v8           #id:Ljava/lang/Object;
    .end local v9           #index:J
    .end local v14           #strId:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 676
    .restart local v8       #id:Ljava/lang/Object;
    :cond_5
    check-cast v8, Ljava/lang/Integer;

    .end local v8           #id:Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 677
    .local v9, index:I
    int-to-long v15, v9

    cmp-long v15, v15, v11

    if-ltz v15, :cond_4

    .line 678
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeArray;->delete(I)V

    goto :goto_2

    .line 683
    .end local v5           #e:[Ljava/lang/Object;
    .end local v6           #i:I
    .end local v9           #index:I
    :cond_6
    move-wide v6, v11

    .local v6, i:J
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeArray;->length:J

    move-wide v15, v0

    cmp-long v15, v6, v15

    if-gez v15, :cond_7

    .line 684
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;->deleteElem(Lorg/mozilla/javascript/Scriptable;J)V

    .line 683
    const-wide/16 v15, 0x1

    add-long/2addr v6, v15

    goto :goto_3

    .line 688
    .end local v6           #i:J
    :cond_7
    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeArray;->length:J

    goto/16 :goto_0
.end method

.method private static setLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "target"
    .parameter "length"

    .prologue
    .line 711
    const-string v0, "length"

    long-to-double v1, p2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    invoke-static {p1, v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static setMaximumInitialCapacity(I)V
    .locals 0
    .parameter "maximumInitialCapacity"

    .prologue
    .line 83
    sput p0, Lorg/mozilla/javascript/NativeArray;->maximumInitialCapacity:I

    .line 84
    return-void
.end method

.method private static toArrayIndex(Ljava/lang/String;)J
    .locals 6
    .parameter "id"

    .prologue
    .line 373
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v0

    .line 374
    .local v0, d:D
    cmpl-double v4, v0, v0

    if-nez v4, :cond_0

    .line 375
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v2

    .line 376
    .local v2, index:J
    long-to-double v4, v2

    cmpl-double v4, v4, v0

    if-nez v4, :cond_0

    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 379
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v4, v2

    .line 384
    .end local v2           #index:J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private toIndex(Ljava/lang/Object;)I
    .locals 2
    .parameter "id"

    .prologue
    .line 569
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 570
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 574
    :goto_0
    return v0

    .line 571
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 572
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    .line 574
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static toSliceIndex(DJ)J
    .locals 6
    .parameter "value"
    .parameter "length"

    .prologue
    const-wide/16 v4, 0x0

    .line 1414
    cmpg-double v2, p0, v4

    if-gez v2, :cond_1

    .line 1415
    long-to-double v2, p2

    add-double/2addr v2, p0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 1416
    const-wide/16 v0, 0x0

    .line 1425
    .local v0, result:J
    :goto_0
    return-wide v0

    .line 1418
    .end local v0           #result:J
    :cond_0
    long-to-double v2, p2

    add-double/2addr v2, p0

    double-to-long v0, v2

    .restart local v0       #result:J
    goto :goto_0

    .line 1420
    .end local v0           #result:J
    :cond_1
    long-to-double v2, p2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_2

    .line 1421
    move-wide v0, p2

    .restart local v0       #result:J
    goto :goto_0

    .line 1423
    .end local v0           #result:J
    :cond_2
    double-to-long v0, p0

    .restart local v0       #result:J
    goto :goto_0
.end method

.method private static toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;
    .locals 19
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "toSource"
    .parameter "toLocale"

    .prologue
    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)J

    move-result-wide v10

    .line 766
    .local v10, length:J
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    .local v12, result:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_2

    .line 772
    const/16 v5, 0x5b

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    const-string v5, ", "

    .local v5, separator:Ljava/lang/String;
    move-object v13, v5

    .line 778
    .end local v5           #separator:Ljava/lang/String;
    .local v13, separator:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 779
    .local v5, haslast:Z
    const-wide/16 v6, 0x0

    .line 782
    .local v6, i:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    move-object v8, v0

    if-nez v8, :cond_3

    .line 783
    const/4 v9, 0x1

    .line 784
    .local v9, toplevel:Z
    const/4 v8, 0x0

    .line 785
    .local v8, iterating:Z
    new-instance v14, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v15, 0x1f

    invoke-direct {v14, v15}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    move v14, v9

    .line 794
    .end local v9           #toplevel:Z
    .local v14, toplevel:Z
    :goto_1
    if-nez v8, :cond_e

    .line 795
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    move-object v8, v0

    .end local v8           #iterating:Z
    const/4 v9, 0x0

    move-object v0, v8

    move-object/from16 v1, p2

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 796
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .end local v6           #i:J
    .local v8, i:J
    move v6, v5

    .end local v5           #haslast:Z
    .local v6, haslast:Z
    :goto_2
    cmp-long v5, v8, v10

    if-gez v5, :cond_a

    .line 797
    const-wide/16 v15, 0x0

    cmp-long v5, v8, v15

    if-lez v5, :cond_0

    :try_start_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v8

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeArray;->getElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;J)Ljava/lang/Object;

    move-result-object v5

    .line 799
    .local v5, elem:Ljava/lang/Object;
    if-eqz v5, :cond_1

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v6           #haslast:Z
    if-ne v5, v6, :cond_4

    .line 800
    :cond_1
    const/4 v6, 0x0

    .line 796
    .restart local v6       #haslast:Z
    :goto_3
    const-wide/16 v15, 0x1

    add-long v7, v8, v15

    .end local v8           #i:J
    .local v7, i:J
    move-wide v8, v7

    .end local v7           #i:J
    .restart local v8       #i:J
    goto :goto_2

    .line 775
    .end local v5           #elem:Ljava/lang/Object;
    .end local v6           #haslast:Z
    .end local v8           #i:J
    .end local v13           #separator:Ljava/lang/String;
    .end local v14           #toplevel:Z
    :cond_2
    const-string v5, ","

    .local v5, separator:Ljava/lang/String;
    move-object v13, v5

    .end local v5           #separator:Ljava/lang/String;
    .restart local v13       #separator:Ljava/lang/String;
    goto :goto_0

    .line 787
    .local v5, haslast:Z
    .local v6, i:J
    :cond_3
    const/4 v9, 0x0

    .line 788
    .restart local v9       #toplevel:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v8

    .local v8, iterating:Z
    move v14, v9

    .end local v9           #toplevel:Z
    .restart local v14       #toplevel:Z
    goto :goto_1

    .line 803
    .end local v6           #i:J
    .local v5, elem:Ljava/lang/Object;
    .local v8, i:J
    :cond_4
    const/4 v7, 0x1

    .line 805
    .local v7, haslast:Z
    if-eqz p3, :cond_5

    .line 806
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    .end local v7           #haslast:Z
    .local v6, haslast:Z
    goto :goto_3

    .line 808
    .end local v6           #haslast:Z
    .restart local v7       #haslast:Z
    :cond_5
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 809
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 810
    .local v6, s:Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 811
    const/16 v15, 0x22

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .end local v6           #s:Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    const/16 v6, 0x22

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v6, v7

    .line 818
    .end local v7           #haslast:Z
    .local v6, haslast:Z
    goto :goto_3

    .line 815
    .local v6, s:Ljava/lang/String;
    .restart local v7       #haslast:Z
    :cond_6
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 834
    .end local v5           #elem:Ljava/lang/Object;
    .end local v6           #s:Ljava/lang/String;
    :catchall_0
    move-exception p1

    move-object/from16 p4, p1

    move-wide/from16 p2, v8

    .end local v8           #i:J
    .end local p3
    .local p2, i:J
    move/from16 p1, v7

    .end local v7           #haslast:Z
    .end local p4
    .local p1, haslast:Z
    :goto_5
    if-eqz v14, :cond_7

    .line 835
    const/16 p1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    .end local p1           #haslast:Z
    :cond_7
    throw p4

    .line 819
    .restart local v5       #elem:Ljava/lang/Object;
    .restart local v7       #haslast:Z
    .restart local v8       #i:J
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .local p2, thisObj:Lorg/mozilla/javascript/Scriptable;
    .restart local p3
    .restart local p4
    :cond_8
    if-eqz p4, :cond_9

    .line 823
    :try_start_3
    const-string v6, "toLocaleString"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v5

    .line 825
    .local v5, fun:Lorg/mozilla/javascript/Callable;
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 826
    .local v6, funThis:Lorg/mozilla/javascript/Scriptable;
    sget-object v15, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v15

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 829
    .end local v6           #funThis:Lorg/mozilla/javascript/Scriptable;
    .local v5, elem:Ljava/lang/Object;
    :cond_9
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v7

    .end local v7           #haslast:Z
    .local v6, haslast:Z
    goto/16 :goto_3

    .end local v5           #elem:Ljava/lang/Object;
    :cond_a
    move/from16 p1, v6

    .end local v6           #haslast:Z
    .local p1, haslast:Z
    move-wide v5, v8

    .line 834
    .end local v8           #i:J
    .local v5, i:J
    :goto_6
    if-eqz v14, :cond_b

    .line 835
    const/16 p2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->iterating:Lorg/mozilla/javascript/ObjToIntMap;

    .line 839
    .end local p2           #thisObj:Lorg/mozilla/javascript/Scriptable;
    :cond_b
    if-eqz p3, :cond_c

    .line 841
    if-nez p1, :cond_d

    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-lez p0, :cond_d

    .line 842
    .end local p0
    const-string p0, ", ]"

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_c
    :goto_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 844
    :cond_d
    const/16 p0, 0x5d

    move-object v0, v12

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 834
    .local v5, haslast:Z
    .local v6, i:J
    .restart local p0
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .restart local p2       #thisObj:Lorg/mozilla/javascript/Scriptable;
    :catchall_1
    move-exception p1

    move-object/from16 p4, p1

    move-wide/from16 p2, v6

    .end local v6           #i:J
    .end local p3
    .local p2, i:J
    move/from16 p1, v5

    .end local v5           #haslast:Z
    .local p1, haslast:Z
    goto :goto_5

    .local v6, haslast:Z
    .restart local v8       #i:J
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .local p2, thisObj:Lorg/mozilla/javascript/Scriptable;
    .restart local p3
    :catchall_2
    move-exception p1

    move-object/from16 p4, p1

    move-wide/from16 p2, v8

    .end local v8           #i:J
    .end local p3
    .local p2, i:J
    move/from16 p1, v6

    .end local v6           #haslast:Z
    .local p1, haslast:Z
    goto :goto_5

    .restart local v5       #haslast:Z
    .local v6, i:J
    .local v8, iterating:Z
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .local p2, thisObj:Lorg/mozilla/javascript/Scriptable;
    .restart local p3
    :cond_e
    move/from16 p1, v5

    .end local v5           #haslast:Z
    .local p1, haslast:Z
    move-wide/from16 v17, v6

    .end local v6           #i:J
    .local v17, i:J
    move-wide/from16 v5, v17

    .end local v17           #i:J
    .local v5, i:J
    goto :goto_6
.end method


# virtual methods
.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 7
    .parameter "cx"
    .parameter "id"
    .parameter "desc"

    .prologue
    .line 551
    iget-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 552
    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 553
    .local v2, values:[Ljava/lang/Object;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    .line 554
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 555
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 556
    aget-object v3, v2, v0

    sget-object v4, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 557
    aget-object v3, v2, v0

    invoke-virtual {p0, v0, p0, v3}, Lorg/mozilla/javascript/NativeArray;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0           #i:I
    .end local v2           #values:[Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->toIndex(Ljava/lang/Object;)I

    move-result v1

    .line 562
    .local v1, index:I
    int-to-long v3, v1

    iget-wide v5, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 563
    add-int/lit8 v3, v1, 0x1

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 565
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 566
    return-void
.end method

.method public delete(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 452
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->isSealed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(I)V

    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 240
    sget-object v0, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    .line 246
    .local v2, id:I
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 345
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :pswitch_1
    array-length v0, p5

    if-lez v0, :cond_2

    .line 267
    aget-object v0, p5, v1

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 268
    array-length v0, p5

    sub-int/2addr v0, v3

    new-array v8, v0, [Ljava/lang/Object;

    .line 269
    .local v8, newArgs:[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v0, v8

    if-ge v6, v0, :cond_1

    .line 270
    add-int/lit8 v0, v6, 0x1

    aget-object v0, p5, v0

    aput-object v0, v8, v6

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 271
    :cond_1
    move-object p5, v8

    .line 273
    .end local v6           #i:I
    .end local v8           #newArgs:[Ljava/lang/Object;
    :cond_2
    neg-int v2, v2

    .line 274
    goto :goto_1

    .line 278
    :pswitch_2
    array-length v0, p5

    if-lez v0, :cond_3

    aget-object v0, p5, v1

    instance-of v0, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v0, :cond_3

    move v0, v3

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    .line 281
    :pswitch_3
    if-nez p4, :cond_4

    move v7, v3

    .line 282
    .local v7, inNewExpr:Z
    :goto_4
    if-nez v7, :cond_5

    .line 284
    invoke-virtual {p1, p2, p3, p5}, Lorg/mozilla/javascript/IdFunctionObject;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .end local v7           #inNewExpr:Z
    :cond_4
    move v7, v1

    .line 281
    goto :goto_4

    .line 286
    .restart local v7       #inNewExpr:Z
    :cond_5
    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/NativeArray;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 290
    .end local v7           #inNewExpr:Z
    :pswitch_4
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    invoke-static {p2, p3, p4, v0, v1}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :pswitch_5
    invoke-static {p2, p3, p4, v1, v3}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_6
    invoke-static {p2, p3, p4, v3, v1}, Lorg/mozilla/javascript/NativeArray;->toStringHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :pswitch_7
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_join(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :pswitch_8
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_reverse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 306
    :pswitch_9
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_sort(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 309
    :pswitch_a
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_push(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 312
    :pswitch_b
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_pop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 315
    :pswitch_c
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_shift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 318
    :pswitch_d
    invoke-static {p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_unshift(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 321
    :pswitch_e
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_splice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 324
    :pswitch_f
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_concat(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    .line 327
    :pswitch_10
    invoke-direct {p0, p2, p4, p5}, Lorg/mozilla/javascript/NativeArray;->js_slice(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto/16 :goto_0

    .line 330
    :pswitch_11
    invoke-direct {p0, p2, p4, p5, v1}, Lorg/mozilla/javascript/NativeArray;->indexOfHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 333
    :pswitch_12
    invoke-direct {p0, p2, p4, p5, v3}, Lorg/mozilla/javascript/NativeArray;->indexOfHelper(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 340
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->iterativeMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 343
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->reduceMethod(Lorg/mozilla/javascript/Context;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch -0x18
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 13
    .parameter "ctor"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 159
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "join"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 161
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v9, -0x6

    const-string v10, "reverse"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 163
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x7

    const-string v4, "sort"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 165
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/4 v3, -0x8

    const-string v4, "push"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 167
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0x9

    const-string v10, "pop"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 169
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xa

    const-string v10, "shift"

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 171
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xb

    const-string v4, "unshift"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 173
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xc

    const-string v10, "splice"

    move-object v6, p0

    move-object v7, p1

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 175
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xd

    const-string v4, "concat"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 177
    sget-object v8, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v9, -0xe

    const-string v10, "slice"

    move-object v6, p0

    move-object v7, p1

    move v11, v12

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 179
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0xf

    const-string v4, "indexOf"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 181
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x10

    const-string v4, "lastIndexOf"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 183
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x11

    const-string v4, "every"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 185
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x12

    const-string v4, "filter"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 187
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x13

    const-string v4, "forEach"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 189
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x14

    const-string v4, "map"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 191
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x15

    const-string v4, "some"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 193
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x16

    const-string v4, "reduce"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 195
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x17

    const-string v4, "reduceRight"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 197
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    const/16 v3, -0x18

    const-string v4, "isArray"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeArray;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 199
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 200
    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 125
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->instanceIdInfo(II)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x63

    const/16 v7, 0x70

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1641
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 1642
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1681
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 1684
    :cond_1
    :goto_1
    return v2

    .line 1643
    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1644
    .local v1, c:I
    const/16 v3, 0x6d

    if-ne v1, v3, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_0

    const/16 v2, 0x14

    goto :goto_1

    .line 1645
    :cond_2
    if-ne v1, v7, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    .line 1647
    .end local v1           #c:I
    :pswitch_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1648
    :sswitch_0
    const-string v0, "join"

    const/4 v2, 0x5

    goto :goto_0

    .line 1649
    :sswitch_1
    const-string v0, "some"

    const/16 v2, 0x15

    goto :goto_0

    .line 1650
    :sswitch_2
    const-string v0, "sort"

    const/4 v2, 0x7

    goto :goto_0

    .line 1651
    :sswitch_3
    const-string v0, "push"

    const/16 v2, 0x8

    goto :goto_0

    .line 1653
    :pswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1654
    .restart local v1       #c:I
    const/16 v3, 0x68

    if-ne v1, v3, :cond_3

    const-string v0, "shift"

    const/16 v2, 0xa

    goto :goto_0

    .line 1655
    :cond_3
    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    const-string v0, "slice"

    const/16 v2, 0xe

    goto :goto_0

    .line 1656
    :cond_4
    const/16 v3, 0x76

    if-ne v1, v3, :cond_0

    const-string v0, "every"

    const/16 v2, 0x11

    goto :goto_0

    .line 1658
    .end local v1           #c:I
    :pswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1659
    .restart local v1       #c:I
    if-ne v1, v8, :cond_5

    const-string v0, "concat"

    const/16 v2, 0xd

    goto :goto_0

    .line 1660
    :cond_5
    const/16 v3, 0x66

    if-ne v1, v3, :cond_6

    const-string v0, "filter"

    const/16 v2, 0x12

    goto/16 :goto_0

    .line 1661
    :cond_6
    const/16 v3, 0x73

    if-ne v1, v3, :cond_7

    const-string v0, "splice"

    const/16 v2, 0xc

    goto/16 :goto_0

    .line 1662
    :cond_7
    const/16 v3, 0x72

    if-ne v1, v3, :cond_0

    const-string v0, "reduce"

    const/16 v2, 0x16

    goto/16 :goto_0

    .line 1664
    .end local v1           #c:I
    :pswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 1665
    :sswitch_4
    const-string v0, "forEach"

    const/16 v2, 0x13

    goto/16 :goto_0

    .line 1666
    :sswitch_5
    const-string v0, "indexOf"

    const/16 v2, 0xf

    goto/16 :goto_0

    .line 1667
    :sswitch_6
    const-string v0, "reverse"

    const/4 v2, 0x6

    goto/16 :goto_0

    .line 1668
    :sswitch_7
    const-string v0, "unshift"

    const/16 v2, 0xb

    goto/16 :goto_0

    .line 1670
    :pswitch_6
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1671
    .restart local v1       #c:I
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_8

    const-string v0, "toSource"

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1672
    :cond_8
    const/16 v3, 0x74

    if-ne v1, v3, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1674
    .end local v1           #c:I
    :pswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1675
    .restart local v1       #c:I
    if-ne v1, v8, :cond_9

    const-string v0, "constructor"

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1676
    :cond_9
    const/16 v3, 0x6c

    if-ne v1, v3, :cond_a

    const-string v0, "lastIndexOf"

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 1677
    :cond_a
    const/16 v3, 0x72

    if-ne v1, v3, :cond_0

    const-string v0, "reduceRight"

    const/16 v2, 0x17

    goto/16 :goto_0

    .line 1679
    .end local v1           #c:I
    :pswitch_8
    const-string v0, "toLocaleString"

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 1642
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 1647
    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x72 -> :sswitch_2
        0x73 -> :sswitch_3
    .end sparse-switch

    .line 1664
    :sswitch_data_1
    .sparse-switch
        0x66 -> :sswitch_4
        0x69 -> :sswitch_5
        0x72 -> :sswitch_6
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 352
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    .line 356
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllIds()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 496
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 498
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 499
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "Array"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v1, :cond_0

    .line 518
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 519
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    .line 520
    iget-wide v1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 522
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 464
    invoke-super {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v6

    .line 465
    .local v6, superIds:[Ljava/lang/Object;
    iget-object v9, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-nez v9, :cond_0

    move-object v9, v6

    .line 490
    :goto_0
    return-object v9

    .line 466
    :cond_0
    iget-object v9, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v9

    .line 467
    .local v0, N:I
    iget-wide v1, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 468
    .local v1, currentLength:J
    int-to-long v9, v0

    cmp-long v9, v9, v1

    if-lez v9, :cond_1

    .line 469
    long-to-int v0, v1

    .line 471
    :cond_1
    if-nez v0, :cond_2

    move-object v9, v6

    goto :goto_0

    .line 472
    :cond_2
    array-length v7, v6

    .line 473
    .local v7, superLength:I
    add-int v9, v0, v7

    new-array v4, v9, [Ljava/lang/Object;

    .line 475
    .local v4, ids:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 476
    .local v5, presentCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v0, :cond_4

    .line 478
    iget-object v9, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v9, v9, v3

    sget-object v10, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v9, v10, :cond_3

    .line 479
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    .line 480
    add-int/lit8 v5, v5, 0x1

    .line 476
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 483
    :cond_4
    if-eq v5, v0, :cond_5

    .line 485
    add-int v9, v5, v7

    new-array v8, v9, [Ljava/lang/Object;

    .line 486
    .local v8, tmp:[Ljava/lang/Object;
    invoke-static {v4, v11, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v4, v8

    .line 489
    .end local v8           #tmp:[Ljava/lang/Object;
    :cond_5
    invoke-static {v6, v11, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v4

    .line 490
    goto :goto_0
.end method

.method public getIndexIds()[Ljava/lang/Integer;
    .locals 9

    .prologue
    .line 503
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getIds()[Ljava/lang/Object;

    move-result-object v3

    .line 504
    .local v3, ids:[Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v3

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v4, indices:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/Object;
    array-length v6, v0

    .local v6, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v2, v0, v1

    .line 506
    .local v2, id:Ljava/lang/Object;
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    .line 507
    .local v5, int32Id:I
    if-ltz v5, :cond_0

    int-to-double v7, v5

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 508
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v2           #id:Ljava/lang/Object;
    .end local v5           #int32Id:I
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/Integer;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 134
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "length"

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 141
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 608
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    return-wide v0
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6
    .parameter "cx"
    .parameter "id"

    .prologue
    .line 539
    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 540
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->toIndex(Ljava/lang/Object;)I

    move-result v0

    .line 541
    .local v0, index:I
    if-ltz v0, :cond_0

    int-to-long v2, v0

    iget-wide v4, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 542
    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 543
    .local v1, value:Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/NativeArray;->defaultIndexPropertyDescriptor(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 546
    .end local v0           #index:I
    .end local v1           #value:Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 3
    .parameter "index"
    .parameter "start"

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    .line 366
    :goto_0
    return v0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 365
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/NativeArray;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 366
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 233
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeArray;->ARRAY_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeArray;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 234
    return-void

    .line 209
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 211
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "join"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "reverse"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 214
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "sort"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "push"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_8
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "pop"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_9
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "shift"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_a
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "unshift"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_b
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "splice"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 220
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_c
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "concat"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_d
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "slice"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 222
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_e
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "indexOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 223
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_f
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "lastIndexOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_10
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "every"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_11
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "filter"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_12
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "forEach"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_13
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "map"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_14
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "some"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 229
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_15
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "reduce"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_16
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "reduceRight"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public jsGet_length()J
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 8
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    const-wide/16 v6, 0x1

    .line 421
    if-ne p2, p0, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->isSealed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lorg/mozilla/javascript/NativeArray;->isGetterOrSetter(Ljava/lang/String;IZ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 425
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 426
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 427
    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-eqz v0, :cond_3

    int-to-double v0, p1

    iget-object v2, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/NativeArray;->ensureCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray;->dense:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 433
    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0

    .line 436
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 439
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 440
    if-ne p2, p0, :cond_1

    .line 442
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 444
    int-to-long v0, p1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4
    .parameter "id"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 390
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 391
    if-ne p2, p0, :cond_0

    .line 393
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->toArrayIndex(Ljava/lang/String;)J

    move-result-wide v0

    .line 394
    .local v0, index:J
    iget-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 395
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/mozilla/javascript/NativeArray;->length:J

    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 399
    .end local v0           #index:J
    :cond_0
    return-void
.end method

.method setDenseOnly(Z)V
    .locals 1
    .parameter "denseOnly"

    .prologue
    .line 626
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 628
    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeArray;->denseOnly:Z

    .line 629
    return-void
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/NativeArray;->setLength(Ljava/lang/Object;)V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    goto :goto_0
.end method
