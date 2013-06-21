.class Lorg/mozilla/javascript/optimizer/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final AnyType:I = 0x3

.field static final NoType:I = 0x0

.field static final NumberType:I = 0x1


# instance fields
.field private inDirectCallFunction:Z

.field private parameterUsedInNumberContext:Z

.field theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V
    .locals 3
    .parameter "node"
    .parameter "statements"

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    .line 491
    .local v1, type:I
    const/16 v2, 0x81

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x84

    if-eq v1, v2, :cond_0

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    .line 496
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 497
    .local v0, child:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 498
    invoke-static {v0, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    .line 499
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 502
    .end local v0           #child:Lorg/mozilla/javascript/Node;
    :cond_1
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 504
    :cond_2
    return-void
.end method

.method private convertParameter(Lorg/mozilla/javascript/Node;)Z
    .locals 3
    .parameter "n"

    .prologue
    .line 139
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 141
    .local v0, varIndex:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->removeProp(I)V

    .line 143
    const/4 v1, 0x1

    .line 146
    .end local v0           #varIndex:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private markDCPNumberContext(Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "n"

    .prologue
    .line 129
    iget-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 131
    .local v0, varIndex:I
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    .line 135
    .end local v0           #varIndex:I
    :cond_0
    return-void
.end method

.method private optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 5
    .parameter "theFunction"

    .prologue
    .line 66
    iget-object v3, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v3

    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    .line 69
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 71
    new-instance v1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    .line 72
    .local v1, statementsArray:Lorg/mozilla/javascript/ObjArray;
    iget-object v3, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-static {v3, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->buildStatementList_r(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ObjArray;)V

    .line 73
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    new-array v2, v3, [Lorg/mozilla/javascript/Node;

    .line 74
    .local v2, theStatementNodes:[Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    .line 76
    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/Block;->runFlowAnalyzes(Lorg/mozilla/javascript/optimizer/OptFunctionNode;[Lorg/mozilla/javascript/Node;)V

    .line 78
    iget-object v3, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 88
    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_2
    iget-boolean v3, p0, Lorg/mozilla/javascript/optimizer/Optimizer;->parameterUsedInNumberContext:Z

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->setParameterNumberContext(Z)V

    goto :goto_0
.end method

.method private rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 4
    .parameter "n"
    .parameter "child"

    .prologue
    .line 471
    :goto_0
    if-eqz p2, :cond_2

    .line 472
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 473
    .local v0, nextChild:Lorg/mozilla/javascript/Node;
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v2

    .line 474
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 475
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 477
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x95

    invoke-direct {v1, v3, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 478
    .local v1, nuChild:Lorg/mozilla/javascript/Node;
    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 484
    .end local v1           #nuChild:Lorg/mozilla/javascript/Node;
    :cond_0
    :goto_1
    move-object p2, v0

    .line 485
    goto :goto_0

    .line 481
    .restart local v1       #nuChild:Lorg/mozilla/javascript/Node;
    :cond_1
    invoke-virtual {p1, v1, v0}, Lorg/mozilla/javascript/Node;->addChildBefore(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_1

    .line 486
    .end local v0           #nextChild:Lorg/mozilla/javascript/Node;
    .end local v1           #nuChild:Lorg/mozilla/javascript/Node;
    .end local v2           #type:I
    :cond_2
    return-void
.end method

.method private rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I
    .locals 19
    .parameter "n"
    .parameter "desired"

    .prologue
    .line 151
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 462
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 463
    const/16 v17, 0x0

    :goto_0
    return v17

    .line 153
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 154
    .local v6, child:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v15

    .line 155
    .local v15, type:I
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 156
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 157
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 160
    .end local v6           #child:Lorg/mozilla/javascript/Node;
    .end local v15           #type:I
    :sswitch_1
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 161
    const/16 v17, 0x1

    goto :goto_0

    .line 165
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 166
    .local v16, varIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 170
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 171
    const/16 v17, 0x1

    goto :goto_0

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 174
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 175
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 177
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 182
    .end local v16           #varIndex:I
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 184
    .restart local v6       #child:Lorg/mozilla/javascript/Node;
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v17

    const/16 v18, 0x37

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 185
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 188
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 189
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 190
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 192
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 194
    :cond_4
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v17

    const/16 v18, 0x24

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 195
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v17

    goto/16 :goto_0

    .line 197
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 200
    .end local v6           #child:Lorg/mozilla/javascript/Node;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 201
    .local v8, lChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 202
    .local v10, rChild:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v11

    .line 203
    .local v11, rType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->getVarIndex(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 204
    .restart local v16       #varIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->inDirectCallFunction:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isParameter(I)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 207
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 208
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 209
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 210
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 212
    :cond_6
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 213
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v17, v11

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Optimizer;->theFunction:Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isNumberVar(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 219
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 220
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 221
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x96

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 224
    :cond_9
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 225
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 226
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 229
    :cond_a
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 230
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 231
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 232
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x95

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 236
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 243
    .end local v8           #lChild:Lorg/mozilla/javascript/Node;
    .end local v10           #rChild:Lorg/mozilla/javascript/Node;
    .end local v11           #rType:I
    .end local v16           #varIndex:I
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 244
    .restart local v8       #lChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 245
    .restart local v10       #rChild:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v9

    .line 246
    .local v9, lType:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v11

    .line 247
    .restart local v11       #rType:I
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 248
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 250
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 251
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 252
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 253
    :cond_c
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 254
    const/16 v17, 0x8

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 278
    :cond_d
    :goto_1
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 257
    :cond_e
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 258
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 259
    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    .line 263
    :cond_f
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 264
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 265
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    .line 268
    :cond_10
    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    .line 272
    :cond_11
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 273
    const/16 v17, 0x8

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_1

    .line 282
    .end local v8           #lChild:Lorg/mozilla/javascript/Node;
    .end local v9           #lType:I
    .end local v10           #rChild:Lorg/mozilla/javascript/Node;
    .end local v11           #rType:I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 283
    .restart local v8       #lChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 284
    .restart local v10       #rChild:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v9

    .line 285
    .restart local v9       #lType:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v11

    .line 288
    .restart local v11       #rType:I
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 289
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 290
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 293
    :cond_12
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 294
    const/16 v17, 0x8

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 322
    :cond_13
    :goto_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 299
    :cond_14
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 300
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 301
    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    .line 305
    :cond_15
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 306
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 307
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 308
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 311
    :cond_16
    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    .line 315
    :cond_17
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 316
    const/16 v17, 0x8

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    goto :goto_2

    .line 334
    .end local v8           #lChild:Lorg/mozilla/javascript/Node;
    .end local v9           #lType:I
    .end local v10           #rChild:Lorg/mozilla/javascript/Node;
    .end local v11           #rType:I
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 335
    .restart local v8       #lChild:Lorg/mozilla/javascript/Node;
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 336
    .restart local v10       #rChild:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v9

    .line 337
    .restart local v9       #lType:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v11

    .line 338
    .restart local v11       #rType:I
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 339
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 340
    const/16 v17, 0x1

    move v0, v9

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 341
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 342
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 343
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 346
    :cond_18
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 347
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 348
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x96

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 350
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 352
    :cond_19
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 356
    :cond_1a
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    .line 357
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 358
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 359
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x96

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 361
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 363
    :cond_1b
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 366
    :cond_1c
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_1d

    .line 367
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 368
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x96

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 371
    :cond_1d
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_1e

    .line 372
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 373
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x96

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 376
    :cond_1e
    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 377
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 383
    .end local v8           #lChild:Lorg/mozilla/javascript/Node;
    .end local v9           #lType:I
    .end local v10           #rChild:Lorg/mozilla/javascript/Node;
    .end local v11           #rType:I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 384
    .local v3, arrayBase:Lorg/mozilla/javascript/Node;
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 385
    .local v4, arrayIndex:Lorg/mozilla/javascript/Node;
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v12

    .line 386
    .local v12, rValue:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    .line 387
    .local v5, baseType:I
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f

    .line 388
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_1f

    .line 389
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 390
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x95

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 394
    :cond_1f
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v7

    .line 395
    .local v7, indexType:I
    const/16 v17, 0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_20

    .line 396
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_20

    .line 400
    const/16 v17, 0x8

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 403
    :cond_20
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v13

    .line 404
    .local v13, rValueType:I
    const/16 v17, 0x1

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    .line 405
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_21

    .line 406
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 407
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x95

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 411
    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 414
    .end local v3           #arrayBase:Lorg/mozilla/javascript/Node;
    .end local v4           #arrayIndex:Lorg/mozilla/javascript/Node;
    .end local v5           #baseType:I
    .end local v7           #indexType:I
    .end local v12           #rValue:Lorg/mozilla/javascript/Node;
    .end local v13           #rValueType:I
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 415
    .restart local v3       #arrayBase:Lorg/mozilla/javascript/Node;
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 416
    .restart local v4       #arrayIndex:Lorg/mozilla/javascript/Node;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v5

    .line 417
    .restart local v5       #baseType:I
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_22

    .line 418
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_22

    .line 419
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 420
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v18, 0x95

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 424
    :cond_22
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v7

    .line 425
    .restart local v7       #indexType:I
    const/16 v17, 0x1

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 426
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->convertParameter(Lorg/mozilla/javascript/Node;)Z

    move-result v17

    if-nez v17, :cond_23

    .line 430
    const/16 v17, 0x8

    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 433
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 437
    .end local v3           #arrayBase:Lorg/mozilla/javascript/Node;
    .end local v4           #arrayIndex:Lorg/mozilla/javascript/Node;
    .end local v5           #baseType:I
    .end local v7           #indexType:I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 439
    .restart local v6       #child:Lorg/mozilla/javascript/Node;
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 440
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 442
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    .line 444
    .local v14, target:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    if-eqz v14, :cond_25

    .line 449
    :goto_3
    if-eqz v6, :cond_26

    .line 450
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteForNumberVariables(Lorg/mozilla/javascript/Node;I)I

    move-result v15

    .line 451
    .restart local v15       #type:I
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_24

    .line 452
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Optimizer;->markDCPNumberContext(Lorg/mozilla/javascript/Node;)V

    .line 454
    :cond_24
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 455
    goto :goto_3

    .line 457
    .end local v15           #type:I
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Optimizer;->rewriteAsObjectChildren(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 459
    :cond_26
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_7
        0x13 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x24 -> :sswitch_9
        0x25 -> :sswitch_8
        0x26 -> :sswitch_a
        0x28 -> :sswitch_1
        0x37 -> :sswitch_2
        0x38 -> :sswitch_4
        0x6a -> :sswitch_3
        0x6b -> :sswitch_3
        0x85 -> :sswitch_0
        0x8c -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3
    .parameter "scriptOrFn"

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v1

    .line 58
    .local v1, functionCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-eq v2, v1, :cond_0

    .line 59
    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v0

    .line 60
    .local v0, f:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimizeFunction(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0           #f:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    :cond_0
    return-void
.end method
