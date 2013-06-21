.class Lorg/mozilla/javascript/optimizer/Block;
.super Ljava/lang/Object;
.source "Block.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/optimizer/Block$1;,
        Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static debug_blockCount:I


# instance fields
.field private itsBlockID:I

.field private itsEndNodeIndex:I

.field private itsLiveOnEntrySet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

.field private itsLiveOnExitSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

.field private itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

.field private itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsStartNodeIndex:I

.field private itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

.field private itsUseBeforeDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "startNodeIndex"
    .parameter "endNodeIndex"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    .line 89
    iput p2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    .line 90
    return-void
.end method

.method private static assignType([III)Z
    .locals 1
    .parameter "varTypes"
    .parameter "index"
    .parameter "type"

    .prologue
    .line 363
    aget v0, p0, p1

    or-int/2addr v0, p2

    aput v0, p0, p1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;
    .locals 9
    .parameter "statementNodes"

    .prologue
    .line 140
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v7, theTargetBlocks:Ljava/util/Map;,"Ljava/util/Map<Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/optimizer/Block$FatBlock;>;"
    new-instance v6, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v6}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    .line 144
    .local v6, theBlocks:Lorg/mozilla/javascript/ObjArray;
    const/4 v1, 0x0

    .line 146
    .local v1, beginNodeIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    array-length v2, p0

    if-ge v3, v2, :cond_3

    .line 147
    aget-object v2, p0, v3

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 150
    :sswitch_0
    if-eq v3, v1, :cond_0

    .line 151
    const/4 v2, 0x1

    sub-int v2, v3, v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v2

    .line 152
    .local v2, fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x83

    if-ne v4, v5, :cond_1

    .line 154
    aget-object v1, p0, v1

    .end local v1           #beginNodeIndex:I
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_1
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 157
    move v1, v3

    .line 158
    .restart local v1       #beginNodeIndex:I
    goto :goto_1

    .line 165
    .end local v2           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    :sswitch_1
    invoke-static {v1, v3}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-result-object v2

    .line 166
    .restart local v2       #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    aget-object v4, p0, v1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x83

    if-ne v4, v5, :cond_2

    .line 168
    aget-object v1, p0, v1

    .end local v1           #beginNodeIndex:I
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v1, v3, 0x1

    .restart local v1       #beginNodeIndex:I
    goto :goto_1

    .line 177
    .end local v2           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    :cond_3
    array-length v2, p0

    if-eq v1, v2, :cond_5

    .line 178
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/optimizer/Block;->newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    .end local v3           #i:I
    move-result-object v2

    .line 179
    .restart local v2       #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    aget-object v3, p0, v1

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x83

    if-ne v3, v4, :cond_4

    .line 180
    aget-object v1, p0, v1

    .end local v1           #beginNodeIndex:I
    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_4
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 186
    .end local v2           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .local v5, i:I
    :goto_2
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 187
    invoke-virtual {v6, v5}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v4, v0

    .line 189
    .local v4, fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    iget-object v1, v4, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    iget v1, v1, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    aget-object v1, p0, v1

    .line 190
    .local v1, blockEndNode:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    .line 192
    .local v2, blockEndNodeType:I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    if-ge v5, v3, :cond_6

    .line 194
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v6, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    check-cast v3, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    .line 195
    .local v3, fallThruTarget:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    .line 196
    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    .line 200
    .end local v3           #fallThruTarget:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    :cond_6
    const/4 v3, 0x7

    if-eq v2, v3, :cond_7

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 203
    :cond_7
    check-cast v1, Lorg/mozilla/javascript/ast/Jump;

    .end local v1           #blockEndNode:Lorg/mozilla/javascript/Node;
    iget-object v2, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 204
    .local v2, target:Lorg/mozilla/javascript/Node;
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    .line 205
    .local v1, branchTargetBlock:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    const/4 v3, 0x6

    iget-object v8, v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    invoke-virtual {v2, v3, v8}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 207
    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addSuccessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    .line 208
    invoke-virtual {v1, v4}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->addPredecessor(Lorg/mozilla/javascript/optimizer/Block$FatBlock;)V

    .line 186
    .end local v1           #branchTargetBlock:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    .end local v2           #target:Lorg/mozilla/javascript/Node;
    :cond_8
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_2

    .line 212
    .end local v4           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    :cond_9
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p0

    .end local p0
    new-array v3, p0, [Lorg/mozilla/javascript/optimizer/Block;

    .line 214
    .local v3, result:[Lorg/mozilla/javascript/optimizer/Block;
    const/4 p0, 0x0

    .end local v5           #i:I
    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .local v2, i:I
    :goto_3
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p0

    if-ge v2, p0, :cond_a

    .line 215
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    move-object v1, v0

    .line 216
    .local v1, fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    iget-object p0, v1, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    .line 217
    .local p0, b:Lorg/mozilla/javascript/optimizer/Block;
    invoke-virtual {v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getSuccessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    .line 218
    invoke-virtual {v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->getPredecessors()[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v1

    .end local v1           #fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    .line 219
    iput v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    .line 220
    aput-object p0, v3, v2

    .line 214
    add-int/lit8 p0, v2, 0x1

    .end local v2           #i:I
    .local p0, i:I
    move v2, p0

    .end local p0           #i:I
    .restart local v2       #i:I
    goto :goto_3

    .line 223
    :cond_a
    return-object v3

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x83 -> :sswitch_0
    .end sparse-switch
.end method

.method private doReachedUseDataFlow()Z
    .locals 5

    .prologue
    .line 451
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->clear()V

    .line 452
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    if-eqz v1, :cond_0

    .line 453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 454
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->or(Lorg/mozilla/javascript/optimizer/DataFlowBitSet;)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v1, v2, v3, v4}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->df2(Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;Lorg/mozilla/javascript/optimizer/DataFlowBitSet;)Z

    move-result v1

    return v1
.end method

.method private doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z
    .locals 4
    .parameter "fn"
    .parameter "statementNodes"
    .parameter "varTypes"

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, changed:Z
    iget v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    .local v1, i:I
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v1, v3, :cond_1

    .line 575
    aget-object v2, p2, v1

    .line 576
    .local v2, n:Lorg/mozilla/javascript/Node;
    if-eqz v2, :cond_0

    .line 577
    invoke-static {p1, v2, p3}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 574
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    :cond_1
    return v0
.end method

.method private static findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z
    .locals 7
    .parameter "fn"
    .parameter "n"
    .parameter "varTypes"

    .prologue
    const/16 v6, 0x37

    .line 530
    const/4 v3, 0x0

    .line 531
    .local v3, result:Z
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 532
    .local v0, child:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 534
    :goto_0
    if-eqz v0, :cond_0

    .line 535
    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 536
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 541
    :sswitch_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 543
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 544
    .local v1, i:I
    const/4 v5, 0x1

    invoke-static {p2, v1, v5}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result v5

    or-int/2addr v3, v5

    .line 566
    .end local v1           #i:I
    :cond_0
    :goto_1
    return v3

    .line 549
    :sswitch_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 550
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 551
    .restart local v1       #i:I
    const/4 v5, 0x3

    invoke-static {p2, v1, v5}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    .line 553
    .end local v1           #i:I
    :cond_1
    :goto_2
    if-eqz v0, :cond_0

    .line 554
    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findDefPoints(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 555
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_2

    .line 559
    :sswitch_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 560
    .local v2, rValue:Lorg/mozilla/javascript/Node;
    invoke-static {p0, v2, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v4

    .line 561
    .local v4, theType:I
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 562
    .restart local v1       #i:I
    invoke-static {p2, v1, v4}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    move-result v5

    or-int/2addr v3, v5

    .line 563
    goto :goto_1

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x38 -> :sswitch_2
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x8b -> :sswitch_1
    .end sparse-switch
.end method

.method private static findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I
    .locals 7
    .parameter "fn"
    .parameter "n"
    .parameter "varTypes"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 468
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 514
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 515
    .local v0, child:Lorg/mozilla/javascript/Node;
    if-nez v0, :cond_0

    move v4, v5

    .line 523
    .end local v0           #child:Lorg/mozilla/javascript/Node;
    :goto_0
    return v4

    :sswitch_0
    move v4, v6

    .line 470
    goto :goto_0

    :sswitch_1
    move v4, v5

    .line 475
    goto :goto_0

    :sswitch_2
    move v4, v5

    .line 478
    goto :goto_0

    .line 481
    :sswitch_3
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v4

    aget v4, p2, v4

    goto :goto_0

    :sswitch_4
    move v4, v6

    .line 497
    goto :goto_0

    :sswitch_5
    move v4, v5

    .line 501
    goto :goto_0

    .line 507
    :sswitch_6
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 508
    .restart local v0       #child:Lorg/mozilla/javascript/Node;
    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v1

    .line 509
    .local v1, lType:I
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v2

    .line 510
    .local v2, rType:I
    or-int v4, v1, v2

    goto :goto_0

    .line 518
    .end local v1           #lType:I
    .end local v2           #rType:I
    :cond_0
    const/4 v3, 0x0

    .line 519
    .local v3, result:I
    :goto_1
    if-eqz v0, :cond_1

    .line 520
    invoke-static {p0, v0, p2}, Lorg/mozilla/javascript/optimizer/Block;->findExpressionType(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;[I)I

    move-result v4

    or-int/2addr v3, v4

    .line 521
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v4, v3

    .line 523
    goto :goto_0

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xb -> :sswitch_4
        0x12 -> :sswitch_4
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_6
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1c -> :sswitch_4
        0x1d -> :sswitch_4
        0x1e -> :sswitch_1
        0x24 -> :sswitch_2
        0x26 -> :sswitch_1
        0x28 -> :sswitch_0
        0x37 -> :sswitch_3
        0x41 -> :sswitch_5
        0x42 -> :sswitch_5
        0x46 -> :sswitch_1
        0x6a -> :sswitch_4
        0x6b -> :sswitch_4
    .end sparse-switch
.end method

.method private initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 4
    .parameter "fn"
    .parameter "statementNodes"

    .prologue
    .line 431
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarCount()I

    move-result v1

    .line 432
    .local v1, listLength:I
    new-instance v3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;-><init>(I)V

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    .line 433
    new-instance v3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;-><init>(I)V

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    .line 434
    new-instance v3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;-><init>(I)V

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    .line 435
    new-instance v3, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;-><init>(I)V

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnExitSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    .line 436
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Block;->itsStartNodeIndex:I

    .local v0, i:I
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsEndNodeIndex:I

    if-gt v0, v3, :cond_0

    .line 437
    aget-object v2, p2, v0

    .line 438
    .local v2, n:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->not()V

    .line 441
    return-void
.end method

.method private lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V
    .locals 6
    .parameter "fn"
    .parameter "n"

    .prologue
    .line 386
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 415
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 416
    .local v0, child:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 417
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    .line 418
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 390
    .end local v0           #child:Lorg/mozilla/javascript/Node;
    :sswitch_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 391
    .restart local v0       #child:Lorg/mozilla/javascript/Node;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_1

    .line 392
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v3

    .line 393
    .local v3, varIndex:I
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->test(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->set(I)V

    .line 395
    :cond_0
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->set(I)V

    .line 422
    .end local v0           #child:Lorg/mozilla/javascript/Node;
    .end local v3           #varIndex:I
    :cond_1
    :goto_1
    return-void

    .line 401
    :sswitch_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 402
    .local v1, lhs:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 403
    .local v2, rhs:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->lookForVariableAccess(Lorg/mozilla/javascript/optimizer/OptFunctionNode;Lorg/mozilla/javascript/Node;)V

    .line 404
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->set(I)V

    goto :goto_1

    .line 409
    .end local v1           #lhs:Lorg/mozilla/javascript/Node;
    .end local v2           #rhs:Lorg/mozilla/javascript/Node;
    :sswitch_2
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v3

    .line 410
    .restart local v3       #varIndex:I
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsNotDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->test(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 411
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Block;->itsUseBeforeDefSet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->set(I)V

    goto :goto_1

    .line 386
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x38 -> :sswitch_1
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
    .end sparse-switch
.end method

.method private markAnyTypeVariables([I)V
    .locals 2
    .parameter "varTypes"

    .prologue
    .line 368
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Block;->itsLiveOnEntrySet:Lorg/mozilla/javascript/optimizer/DataFlowBitSet;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/DataFlowBitSet;->test(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/optimizer/Block;->assignType([III)Z

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_1
    return-void
.end method

.method private static newFatBlock(II)Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    .locals 2
    .parameter "startNodeIndex"
    .parameter "endNodeIndex"

    .prologue
    .line 228
    new-instance v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Block$FatBlock;-><init>(Lorg/mozilla/javascript/optimizer/Block$1;)V

    .line 229
    .local v0, fb:Lorg/mozilla/javascript/optimizer/Block$FatBlock;
    new-instance v1, Lorg/mozilla/javascript/optimizer/Block;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;-><init>(II)V

    iput-object v1, v0, Lorg/mozilla/javascript/optimizer/Block$FatBlock;->realBlock:Lorg/mozilla/javascript/optimizer/Block;

    .line 230
    return-object v0
.end method

.method private printLiveOnEntrySet(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 0
    .parameter "fn"

    .prologue
    .line 598
    return-void
.end method

.method private static reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .locals 10
    .parameter "fn"
    .parameter "statementNodes"
    .parameter "theBlocks"
    .parameter "varTypes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p2

    if-ge v1, v7, :cond_0

    .line 278
    aget-object v7, p2, v1

    invoke-direct {v7, p0, p1}, Lorg/mozilla/javascript/optimizer/Block;->initLiveOnEntrySets(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    array-length v7, p2

    new-array v6, v7, [Z

    .line 286
    .local v6, visit:[Z
    array-length v7, p2

    new-array v0, v7, [Z

    .line 287
    .local v0, doneOnce:[Z
    array-length v7, p2

    sub-int v5, v7, v8

    .line 288
    .local v5, vIndex:I
    const/4 v3, 0x0

    .line 289
    .local v3, needRescan:Z
    aput-boolean v8, v6, v5

    .line 291
    :goto_1
    aget-boolean v7, v6, v5

    if-nez v7, :cond_1

    aget-boolean v7, v0, v5

    if-nez v7, :cond_3

    .line 292
    :cond_1
    aput-boolean v8, v0, v5

    .line 293
    aput-boolean v9, v6, v5

    .line 294
    aget-object v7, p2, v5

    invoke-direct {v7}, Lorg/mozilla/javascript/optimizer/Block;->doReachedUseDataFlow()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    aget-object v7, p2, v5

    iget-object v4, v7, Lorg/mozilla/javascript/optimizer/Block;->itsPredecessors:[Lorg/mozilla/javascript/optimizer/Block;

    .line 296
    .local v4, pred:[Lorg/mozilla/javascript/optimizer/Block;
    if-eqz v4, :cond_3

    .line 297
    const/4 v1, 0x0

    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_3

    .line 298
    aget-object v7, v4, v1

    iget v2, v7, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    .line 299
    .local v2, index:I
    aput-boolean v8, v6, v2

    .line 300
    if-le v2, v5, :cond_2

    move v7, v8

    :goto_3
    or-int/2addr v3, v7

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v7, v9

    .line 300
    goto :goto_3

    .line 305
    .end local v2           #index:I
    .end local v4           #pred:[Lorg/mozilla/javascript/optimizer/Block;
    :cond_3
    if-nez v5, :cond_4

    .line 306
    if-eqz v3, :cond_5

    .line 307
    array-length v7, p2

    sub-int v5, v7, v8

    .line 308
    const/4 v3, 0x0

    goto :goto_1

    .line 314
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 322
    :cond_5
    aget-object v7, p2, v9

    invoke-direct {v7, p3}, Lorg/mozilla/javascript/optimizer/Block;->markAnyTypeVariables([I)V

    .line 323
    return-void
.end method

.method static runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V
    .locals 7
    .parameter "fn"
    .parameter "statementNodes"

    .prologue
    .line 94
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v1

    .line 95
    .local v1, paramCount:I
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamAndVarCount()I

    move-result v3

    .line 96
    .local v3, varCount:I
    new-array v4, v3, [I

    .line 98
    .local v4, varTypes:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 99
    const/4 v5, 0x3

    aput v5, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    move v0, v1

    :goto_1
    if-eq v0, v3, :cond_1

    .line 104
    const/4 v5, 0x0

    aput v5, v4, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Block;->buildBlocks([Lorg/mozilla/javascript/Node;)[Lorg/mozilla/javascript/optimizer/Block;

    move-result-object v2

    .line 115
    .local v2, theBlocks:[Lorg/mozilla/javascript/optimizer/Block;
    invoke-static {p0, p1, v2, v4}, Lorg/mozilla/javascript/optimizer/Block;->reachingDefDataFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    .line 116
    invoke-static {p0, p1, v2, v4}, Lorg/mozilla/javascript/optimizer/Block;->typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V

    .line 129
    move v0, v1

    :goto_2
    if-eq v0, v3, :cond_3

    .line 130
    aget v5, v4, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 131
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setIsNumberVar(I)V

    .line 129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :cond_3
    return-void
.end method

.method private static toString([Lorg/mozilla/javascript/optimizer/Block;[Lorg/mozilla/javascript/Node;)Ljava/lang/String;
    .locals 1
    .parameter "blockList"
    .parameter "statementNodes"

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method private static typeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[Lorg/mozilla/javascript/optimizer/Block;[I)V
    .locals 10
    .parameter "fn"
    .parameter "statementNodes"
    .parameter "theBlocks"
    .parameter "varTypes"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 327
    array-length v7, p2

    new-array v6, v7, [Z

    .line 328
    .local v6, visit:[Z
    array-length v7, p2

    new-array v0, v7, [Z

    .line 329
    .local v0, doneOnce:[Z
    const/4 v5, 0x0

    .line 330
    .local v5, vIndex:I
    const/4 v3, 0x0

    .line 331
    .local v3, needRescan:Z
    aput-boolean v8, v6, v5

    .line 333
    :goto_0
    aget-boolean v7, v6, v5

    if-nez v7, :cond_0

    aget-boolean v7, v0, v5

    if-nez v7, :cond_2

    .line 334
    :cond_0
    aput-boolean v8, v0, v5

    .line 335
    aput-boolean v9, v6, v5

    .line 336
    aget-object v7, p2, v5

    invoke-direct {v7, p0, p1, p3}, Lorg/mozilla/javascript/optimizer/Block;->doTypeFlow(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 338
    aget-object v7, p2, v5

    iget-object v4, v7, Lorg/mozilla/javascript/optimizer/Block;->itsSuccessors:[Lorg/mozilla/javascript/optimizer/Block;

    .line 339
    .local v4, succ:[Lorg/mozilla/javascript/optimizer/Block;
    if-eqz v4, :cond_2

    .line 340
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_2

    .line 341
    aget-object v7, v4, v1

    iget v2, v7, Lorg/mozilla/javascript/optimizer/Block;->itsBlockID:I

    .line 342
    .local v2, index:I
    aput-boolean v8, v6, v2

    .line 343
    if-ge v2, v5, :cond_1

    move v7, v8

    :goto_2
    or-int/2addr v3, v7

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v7, v9

    .line 343
    goto :goto_2

    .line 348
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v4           #succ:[Lorg/mozilla/javascript/optimizer/Block;
    :cond_2
    array-length v7, p2

    sub-int/2addr v7, v8

    if-ne v5, v7, :cond_3

    .line 349
    if-eqz v3, :cond_4

    .line 350
    const/4 v5, 0x0

    .line 351
    const/4 v3, 0x0

    goto :goto_0

    .line 357
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    :cond_4
    return-void
.end method
