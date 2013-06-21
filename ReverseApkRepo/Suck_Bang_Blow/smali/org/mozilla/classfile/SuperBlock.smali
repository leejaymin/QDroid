.class final Lorg/mozilla/classfile/SuperBlock;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field private end:I

.field private index:I

.field private isInQueue:Z

.field private isInitialized:Z

.field private locals:[I

.field private stack:[I

.field private start:I


# direct methods
.method constructor <init>(III[I)V
    .locals 3
    .parameter "index"
    .parameter "start"
    .parameter "end"
    .parameter "initialLocals"

    .prologue
    const/4 v2, 0x0

    .line 4788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4789
    iput p1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    .line 4790
    iput p2, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 4791
    iput p3, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    .line 4792
    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 4793
    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v1, p4

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4794
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 4795
    iput-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 4796
    iput-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 4797
    return-void
.end method

.method private mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 5
    .parameter "current"
    .parameter "incoming"
    .parameter "size"
    .parameter "pool"

    .prologue
    .line 4886
    const/4 v0, 0x0

    .line 4887
    .local v0, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 4888
    aget v1, p1, v2

    .line 4890
    .local v1, currentType:I
    aget v3, p1, v2

    aget v4, p2, v2

    invoke-static {v3, v4, p4}, Lorg/mozilla/classfile/TypeInfo;->merge(IILorg/mozilla/classfile/ConstantPool;)I

    move-result v3

    aput v3, p1, v2

    .line 4891
    aget v3, p1, v2

    if-eq v1, v3, :cond_0

    .line 4892
    const/4 v0, 0x1

    .line 4887
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4895
    .end local v1           #currentType:I
    :cond_1
    return v0
.end method


# virtual methods
.method getEnd()I
    .locals 1

    .prologue
    .line 4903
    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    return v0
.end method

.method getIndex()I
    .locals 1

    .prologue
    .line 4800
    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    return v0
.end method

.method getLocals()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4804
    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 4805
    .local v0, copy:[I
    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4806
    return-object v0
.end method

.method getStack()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4844
    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 4845
    .local v0, copy:[I
    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4846
    return-object v0
.end method

.method getStart()I
    .locals 1

    .prologue
    .line 4899
    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    return v0
.end method

.method getTrimmedLocals()[I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 4819
    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v5, v5

    sub-int v3, v5, v7

    .line 4821
    .local v3, last:I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    sub-int v6, v3, v7

    aget v5, v5, v6

    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4823
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4825
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 4827
    move v4, v3

    .line 4828
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 4829
    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v5, v5, v1

    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4830
    add-int/lit8 v4, v4, -0x1

    .line 4828
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4833
    :cond_2
    new-array v0, v4, [I

    .line 4834
    .local v0, copy:[I
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 4835
    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v5, v5, v2

    aput v5, v0, v1

    .line 4836
    iget-object v5, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    aget v5, v5, v2

    invoke-static {v5}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4837
    add-int/lit8 v2, v2, 0x1

    .line 4834
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4840
    :cond_4
    return-object v0
.end method

.method isInQueue()Z
    .locals 1

    .prologue
    .line 4920
    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 4912
    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    return v0
.end method

.method merge([II[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 5
    .parameter "locals"
    .parameter "localsTop"
    .parameter "stack"
    .parameter "stackTop"
    .parameter "pool"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4851
    iget-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    if-nez v2, :cond_0

    .line 4852
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    invoke-static {p1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4853
    new-array v2, p4, [I

    iput-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 4854
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-static {p3, v3, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4855
    iput-boolean v4, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    move v2, v4

    .line 4863
    :goto_0
    return v2

    .line 4857
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    array-length v2, v2

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    array-length v2, v2

    if-ne v2, p4, :cond_3

    .line 4859
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    invoke-direct {p0, v2, p1, p2, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v0

    .line 4861
    .local v0, localsChanged:Z
    iget-object v2, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    invoke-direct {p0, v2, p3, p4, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    move-result v1

    .line 4863
    .local v1, stackChanged:Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 4872
    .end local v0           #localsChanged:Z
    .end local v1           #stackChanged:Z
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad merge attempt"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method setInQueue(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 4924
    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 4925
    return-void
.end method

.method setInitialized(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 4916
    iput-boolean p1, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 4917
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
