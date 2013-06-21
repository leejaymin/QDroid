.class public Lorg/mozilla/javascript/NodeTransformer;
.super Ljava/lang/Object;
.source "NodeTransformer.java"


# instance fields
.field private hasFinally:Z

.field private loopEnds:Lorg/mozilla/javascript/ObjArray;

.field private loops:Lorg/mozilla/javascript/ObjArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "parent"
    .parameter "previous"
    .parameter "current"
    .parameter "toAdd"

    .prologue
    .line 562
    if-nez p1, :cond_1

    .line 563
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 564
    :cond_0
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 569
    :goto_0
    return-object p3

    .line 566
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 567
    :cond_2
    invoke-virtual {p0, p3, p1}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private static replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "parent"
    .parameter "previous"
    .parameter "current"
    .parameter "replacement"

    .prologue
    .line 575
    if-nez p1, :cond_1

    .line 576
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 577
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 585
    :goto_0
    return-object p3

    .line 578
    :cond_1
    iget-object v0, p1, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    if-ne v0, p2, :cond_2

    .line 581
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/Node;->replaceChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 583
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/Node;->replaceChild(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 7
    .parameter "tree"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    .line 80
    new-instance v1, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v1}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    .line 83
    iput-boolean v3, p0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    .line 86
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    .line 88
    .local v5, createScopeObjects:Z
    :goto_0
    if-nez v5, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->flattenSymbolTable(Z)V

    .line 92
    instance-of v1, p1, Lorg/mozilla/javascript/ast/AstRoot;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/AstRoot;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstRoot;->isInStrictMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move v6, v4

    .local v6, inStrictMode:Z
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    .line 94
    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    .line 96
    return-void

    .end local v5           #createScopeObjects:Z
    .end local v6           #inStrictMode:Z
    :cond_1
    move v5, v3

    .line 86
    goto :goto_0

    .restart local v5       #createScopeObjects:Z
    :cond_2
    move v1, v3

    .line 88
    goto :goto_1

    :cond_3
    move v6, v3

    .line 92
    goto :goto_2
.end method

.method private transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V
    .locals 50
    .parameter "tree"
    .parameter "parent"
    .parameter "scope"
    .parameter "createScopeObjects"
    .parameter "inStrictMode"

    .prologue
    .line 104
    const/4 v10, 0x0

    .line 107
    .local v10, node:Lorg/mozilla/javascript/Node;
    :goto_0
    const/16 v42, 0x0

    .line 108
    .local v42, previous:Lorg/mozilla/javascript/Node;
    if-nez v10, :cond_0

    .line 109
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 114
    :goto_1
    if-nez v10, :cond_1

    .line 439
    return-void

    .line 111
    :cond_0
    move-object/from16 v42, v10

    .line 112
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v47

    .line 119
    .local v47, type:I
    if-eqz p4, :cond_5

    const/16 v5, 0x81

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_2

    const/16 v5, 0x84

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_2

    const/16 v5, 0x9d

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_5

    :cond_2
    instance-of v5, v10, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v5, :cond_5

    .line 124
    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object/from16 v38, v0

    .line 125
    .local v38, newScope:Lorg/mozilla/javascript/ast/Scope;
    invoke-virtual/range {v38 .. v38}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 128
    new-instance v33, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x9d

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_3

    const/16 v5, 0x9e

    :goto_2
    move-object/from16 v0, v33

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 130
    .local v33, let:Lorg/mozilla/javascript/Node;
    new-instance v24, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x99

    move-object/from16 v0, v24

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 131
    .local v24, innerLet:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 132
    invoke-virtual/range {v38 .. v38}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 133
    .local v36, name:Ljava/lang/String;
    const/16 v5, 0x27

    move v0, v5

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_3

    .line 128
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #innerLet:Lorg/mozilla/javascript/Node;
    .end local v33           #let:Lorg/mozilla/javascript/Node;
    .end local v36           #name:Ljava/lang/String;
    :cond_3
    const/16 v5, 0x99

    goto :goto_2

    .line 135
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #innerLet:Lorg/mozilla/javascript/Node;
    .restart local v33       #let:Lorg/mozilla/javascript/Node;
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->setSymbolTable(Ljava/util/Map;)V

    .line 136
    move-object/from16 v40, v10

    .line 137
    .local v40, oldNode:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 138
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v47

    .line 139
    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 143
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #innerLet:Lorg/mozilla/javascript/Node;
    .end local v33           #let:Lorg/mozilla/javascript/Node;
    .end local v38           #newScope:Lorg/mozilla/javascript/ast/Scope;
    .end local v40           #oldNode:Lorg/mozilla/javascript/Node;
    :cond_5
    sparse-switch v47, :sswitch_data_0

    .line 435
    :cond_6
    :goto_4
    instance-of v5, v10, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v5, :cond_2b

    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v11, v0

    :goto_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    goto/16 :goto_0

    .line 148
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object v11, v0

    iget-object v6, v11, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 154
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v32

    .line 156
    .local v32, leave:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v32 .. v32}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    .line 157
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 159
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 165
    .end local v32           #leave:Lorg/mozilla/javascript/Node;
    :sswitch_2
    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object/from16 v29, v0

    .line 166
    .local v29, jump:Lorg/mozilla/javascript/ast/Jump;
    invoke-virtual/range {v29 .. v29}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v19

    .line 167
    .local v19, finallytarget:Lorg/mozilla/javascript/Node;
    if-eqz v19, :cond_6

    .line 168
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    goto :goto_4

    .line 177
    .end local v19           #finallytarget:Lorg/mozilla/javascript/Node;
    .end local v29           #jump:Lorg/mozilla/javascript/ast/Jump;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v10, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loopEnds:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    goto/16 :goto_4

    .line 184
    :sswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    move-object v5, v0

    invoke-virtual {v5, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->addResumptionPoint(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_4

    .line 189
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 191
    .local v25, isGenerator:Z
    :goto_6
    if-eqz v25, :cond_8

    .line 192
    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-virtual {v10, v5, v6}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 201
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/NodeTransformer;->hasFinally:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 203
    const/16 v49, 0x0

    .line 204
    .local v49, unwindBlock:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v21, v5, v6

    .local v21, i:I
    :goto_7
    if-ltz v21, :cond_e

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/mozilla/javascript/Node;

    .line 206
    .local v34, n:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v18

    .line 207
    .local v18, elemtype:I
    const/16 v5, 0x51

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_9

    const/16 v5, 0x7b

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_b

    .line 209
    :cond_9
    const/16 v5, 0x51

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 210
    new-instance v27, Lorg/mozilla/javascript/ast/Jump;

    const/16 v5, 0x87

    move-object/from16 v0, v27

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 211
    .local v27, jsrnode:Lorg/mozilla/javascript/ast/Jump;
    check-cast v34, Lorg/mozilla/javascript/ast/Jump;

    .end local v34           #n:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v28

    .line 212
    .local v28, jsrtarget:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 213
    move-object/from16 v48, v27

    .line 217
    .end local v27           #jsrnode:Lorg/mozilla/javascript/ast/Jump;
    .end local v28           #jsrtarget:Lorg/mozilla/javascript/Node;
    .local v48, unwind:Lorg/mozilla/javascript/Node;
    :goto_8
    if-nez v49, :cond_a

    .line 218
    new-instance v49, Lorg/mozilla/javascript/Node;

    .end local v49           #unwindBlock:Lorg/mozilla/javascript/Node;
    const/16 v5, 0x81

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v6

    move-object/from16 v0, v49

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(II)V

    .line 221
    .restart local v49       #unwindBlock:Lorg/mozilla/javascript/Node;
    :cond_a
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 204
    .end local v48           #unwind:Lorg/mozilla/javascript/Node;
    :cond_b
    add-int/lit8 v21, v21, -0x1

    goto :goto_7

    .line 189
    .end local v18           #elemtype:I
    .end local v21           #i:I
    .end local v25           #isGenerator:Z
    .end local v49           #unwindBlock:Lorg/mozilla/javascript/Node;
    :cond_c
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_6

    .line 215
    .restart local v18       #elemtype:I
    .restart local v21       #i:I
    .restart local v25       #isGenerator:Z
    .restart local v34       #n:Lorg/mozilla/javascript/Node;
    .restart local v49       #unwindBlock:Lorg/mozilla/javascript/Node;
    :cond_d
    new-instance v48, Lorg/mozilla/javascript/Node;

    const/4 v5, 0x3

    move-object/from16 v0, v48

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .restart local v48       #unwind:Lorg/mozilla/javascript/Node;
    goto :goto_8

    .line 224
    .end local v18           #elemtype:I
    .end local v34           #n:Lorg/mozilla/javascript/Node;
    .end local v48           #unwind:Lorg/mozilla/javascript/Node;
    :cond_e
    if-eqz v49, :cond_6

    .line 225
    move-object/from16 v45, v10

    .line 226
    .local v45, returnNode:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v45 .. v45}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v44

    .line 227
    .local v44, returnExpr:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v39

    .line 228
    .end local v10           #node:Lorg/mozilla/javascript/Node;
    .local v39, node:Lorg/mozilla/javascript/Node;
    if-eqz v44, :cond_f

    if-eqz v25, :cond_10

    .line 229
    :cond_f
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v10, v39

    .end local v39           #node:Lorg/mozilla/javascript/Node;
    .restart local v10       #node:Lorg/mozilla/javascript/Node;
    goto/16 :goto_0

    .line 231
    .end local v10           #node:Lorg/mozilla/javascript/Node;
    .restart local v39       #node:Lorg/mozilla/javascript/Node;
    :cond_10
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x86

    move-object v0, v7

    move v1, v5

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 232
    .local v7, store:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v49

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 233
    new-instance v45, Lorg/mozilla/javascript/Node;

    .end local v45           #returnNode:Lorg/mozilla/javascript/Node;
    const/16 v5, 0x40

    move-object/from16 v0, v45

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 234
    .restart local v45       #returnNode:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 236
    invoke-direct/range {v5 .. v10}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/Scope;ZZ)V

    move-object/from16 v10, v39

    .line 241
    .end local v39           #node:Lorg/mozilla/javascript/Node;
    .restart local v10       #node:Lorg/mozilla/javascript/Node;
    goto/16 :goto_0

    .line 249
    .end local v7           #store:Lorg/mozilla/javascript/Node;
    .end local v21           #i:I
    .end local v25           #isGenerator:Z
    .end local v44           #returnExpr:Lorg/mozilla/javascript/Node;
    .end local v45           #returnNode:Lorg/mozilla/javascript/Node;
    .end local v49           #unwindBlock:Lorg/mozilla/javascript/Node;
    :sswitch_6
    move-object v0, v10

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object/from16 v29, v0

    .line 250
    .restart local v29       #jump:Lorg/mozilla/javascript/ast/Jump;
    invoke-virtual/range {v29 .. v29}, Lorg/mozilla/javascript/ast/Jump;->getJumpStatement()Lorg/mozilla/javascript/ast/Jump;

    move-result-object v30

    .line 251
    .local v30, jumpStatement:Lorg/mozilla/javascript/ast/Jump;
    if-nez v30, :cond_11

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 253
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v21

    .line 254
    .restart local v21       #i:I
    :cond_12
    :goto_9
    if-nez v21, :cond_13

    .line 258
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 260
    :cond_13
    add-int/lit8 v21, v21, -0x1

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NodeTransformer;->loops:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/mozilla/javascript/Node;

    .line 262
    .restart local v34       #n:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 280
    const/16 v5, 0x78

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 281
    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 285
    :goto_a
    const/4 v5, 0x5

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_4

    .line 266
    :cond_14
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v18

    .line 267
    .restart local v18       #elemtype:I
    const/16 v5, 0x7b

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_15

    .line 268
    new-instance v32, Lorg/mozilla/javascript/Node;

    const/4 v5, 0x3

    move-object/from16 v0, v32

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 269
    .restart local v32       #leave:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v42

    .line 271
    goto :goto_9

    .end local v32           #leave:Lorg/mozilla/javascript/Node;
    :cond_15
    const/16 v5, 0x51

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_12

    .line 272
    move-object/from16 v0, v34

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object/from16 v46, v0

    .line 273
    .local v46, tryNode:Lorg/mozilla/javascript/ast/Jump;
    new-instance v26, Lorg/mozilla/javascript/ast/Jump;

    const/16 v5, 0x87

    move-object/from16 v0, v26

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 274
    .local v26, jsrFinally:Lorg/mozilla/javascript/ast/Jump;
    invoke-virtual/range {v46 .. v46}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 275
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->addBeforeCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v42

    goto/16 :goto_9

    .line 283
    .end local v18           #elemtype:I
    .end local v26           #jsrFinally:Lorg/mozilla/javascript/ast/Jump;
    .end local v46           #tryNode:Lorg/mozilla/javascript/ast/Jump;
    :cond_16
    invoke-virtual/range {v30 .. v30}, Lorg/mozilla/javascript/ast/Jump;->getContinue()Lorg/mozilla/javascript/Node;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    goto :goto_a

    .line 291
    .end local v21           #i:I
    .end local v29           #jump:Lorg/mozilla/javascript/ast/Jump;
    .end local v30           #jumpStatement:Lorg/mozilla/javascript/ast/Jump;
    .end local v34           #n:Lorg/mozilla/javascript/Node;
    :sswitch_7
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/NodeTransformer;->visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto/16 :goto_4

    .line 295
    :sswitch_8
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/NodeTransformer;->visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V

    goto/16 :goto_4

    .line 300
    :sswitch_9
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v14

    .line 301
    .local v14, child:Lorg/mozilla/javascript/Node;
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x99

    if-ne v5, v6, :cond_19

    .line 304
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_17

    move-object/from16 v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    const/4 v5, 0x1

    move v15, v5

    .line 306
    .local v15, createWith:Z
    :goto_b
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, v42

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NodeTransformer;->visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 307
    goto/16 :goto_4

    .line 304
    .end local v15           #createWith:Z
    :cond_18
    const/4 v5, 0x0

    move v15, v5

    goto :goto_b

    .line 316
    .end local v14           #child:Lorg/mozilla/javascript/Node;
    :cond_19
    :sswitch_a
    new-instance v43, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x81

    move-object/from16 v0, v43

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 317
    .local v43, result:Lorg/mozilla/javascript/Node;
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v16

    .local v16, cursor:Lorg/mozilla/javascript/Node;
    :cond_1a
    :goto_c
    if-eqz v16, :cond_1e

    .line 320
    move-object/from16 v34, v16

    .line 321
    .restart local v34       #n:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v16

    .line 322
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_1d

    .line 323
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 325
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v23

    .line 326
    .local v23, init:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 327
    const/16 v5, 0x31

    move-object/from16 v0, v34

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 328
    new-instance v35, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x9a

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_1c

    const/16 v5, 0x9b

    :goto_d
    move-object/from16 v0, v35

    move v1, v5

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .end local v34           #n:Lorg/mozilla/javascript/Node;
    .local v35, n:Lorg/mozilla/javascript/Node;
    move-object/from16 v34, v35

    .line 338
    .end local v23           #init:Lorg/mozilla/javascript/Node;
    .end local v35           #n:Lorg/mozilla/javascript/Node;
    .restart local v34       #n:Lorg/mozilla/javascript/Node;
    :cond_1b
    new-instance v41, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x85

    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v6

    move-object/from16 v0, v41

    move v1, v5

    move-object/from16 v2, v34

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 339
    .local v41, pop:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_c

    .line 328
    .end local v41           #pop:Lorg/mozilla/javascript/Node;
    .restart local v23       #init:Lorg/mozilla/javascript/Node;
    :cond_1c
    const/16 v5, 0x8

    goto :goto_d

    .line 335
    .end local v23           #init:Lorg/mozilla/javascript/Node;
    :cond_1d
    invoke-virtual/range {v34 .. v34}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x9e

    if-eq v5, v6, :cond_1b

    .line 336
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 341
    .end local v34           #n:Lorg/mozilla/javascript/Node;
    :cond_1e
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 342
    goto/16 :goto_4

    .line 346
    .end local v16           #cursor:Lorg/mozilla/javascript/Node;
    .end local v43           #result:Lorg/mozilla/javascript/Node;
    :sswitch_b
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v17

    .line 347
    .local v17, defining:Lorg/mozilla/javascript/ast/Scope;
    if-eqz v17, :cond_6

    .line 348
    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto/16 :goto_4

    .line 359
    .end local v17           #defining:Lorg/mozilla/javascript/ast/Scope;
    :sswitch_c
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v14

    .line 360
    .restart local v14       #child:Lorg/mozilla/javascript/Node;
    const/4 v5, 0x7

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_21

    .line 361
    :goto_e
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_1f

    .line 362
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v14

    goto :goto_e

    .line 364
    :cond_1f
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_20

    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_21

    .line 367
    :cond_20
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v20

    .line 368
    .local v20, first:Lorg/mozilla/javascript/Node;
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v31

    .line 369
    .local v31, last:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_22

    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "undefined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 371
    move-object/from16 v14, v31

    .line 377
    .end local v20           #first:Lorg/mozilla/javascript/Node;
    .end local v31           #last:Lorg/mozilla/javascript/Node;
    :cond_21
    :goto_f
    invoke-virtual {v14}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_6

    .line 378
    const/16 v5, 0x22

    invoke-virtual {v14, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_4

    .line 372
    .restart local v20       #first:Lorg/mozilla/javascript/Node;
    .restart local v31       #last:Lorg/mozilla/javascript/Node;
    :cond_22
    invoke-virtual/range {v31 .. v31}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_21

    invoke-virtual/range {v31 .. v31}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "undefined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 374
    move-object/from16 v14, v20

    goto :goto_f

    .line 383
    .end local v14           #child:Lorg/mozilla/javascript/Node;
    .end local v20           #first:Lorg/mozilla/javascript/Node;
    .end local v31           #last:Lorg/mozilla/javascript/Node;
    :sswitch_d
    if-eqz p5, :cond_23

    .line 384
    const/16 v5, 0x49

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 392
    :cond_23
    :sswitch_e
    if-nez p4, :cond_6

    .line 396
    const/16 v5, 0x27

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_25

    .line 397
    move-object/from16 v37, v10

    .line 407
    .local v37, nameSource:Lorg/mozilla/javascript/Node;
    :cond_24
    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v5

    if-nez v5, :cond_6

    .line 410
    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v36

    .line 411
    .restart local v36       #name:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v17

    .line 412
    .restart local v17       #defining:Lorg/mozilla/javascript/ast/Scope;
    if-eqz v17, :cond_6

    .line 413
    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 414
    const/16 v5, 0x27

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_26

    .line 415
    const/16 v5, 0x37

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_4

    .line 399
    .end local v17           #defining:Lorg/mozilla/javascript/ast/Scope;
    .end local v36           #name:Ljava/lang/String;
    .end local v37           #nameSource:Lorg/mozilla/javascript/Node;
    :cond_25
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v37

    .line 400
    .restart local v37       #nameSource:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v37 .. v37}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/16 v6, 0x31

    if-eq v5, v6, :cond_24

    .line 401
    const/16 v5, 0x1f

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_6

    .line 404
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 416
    .restart local v17       #defining:Lorg/mozilla/javascript/ast/Scope;
    .restart local v36       #name:Ljava/lang/String;
    :cond_26
    const/16 v5, 0x8

    move/from16 v0, v47

    move v1, v5

    if-eq v0, v1, :cond_27

    const/16 v5, 0x49

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_28

    .line 418
    :cond_27
    const/16 v5, 0x38

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 419
    const/16 v5, 0x29

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_4

    .line 420
    :cond_28
    const/16 v5, 0x9b

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_29

    .line 421
    const/16 v5, 0x9c

    invoke-virtual {v10, v5}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 422
    const/16 v5, 0x29

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    goto/16 :goto_4

    .line 423
    :cond_29
    const/16 v5, 0x1f

    move/from16 v0, v47

    move v1, v5

    if-ne v0, v1, :cond_2a

    .line 425
    new-instance v34, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x2c

    move-object/from16 v0, v34

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 426
    .restart local v34       #n:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move-object v2, v10

    move-object/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 427
    goto/16 :goto_4

    .line 428
    .end local v34           #n:Lorg/mozilla/javascript/Node;
    :cond_2a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .end local v17           #defining:Lorg/mozilla/javascript/ast/Scope;
    .end local v36           #name:Ljava/lang/String;
    .end local v37           #nameSource:Lorg/mozilla/javascript/Node;
    :cond_2b
    move-object/from16 v11, p3

    .line 435
    goto/16 :goto_5

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x7 -> :sswitch_c
        0x8 -> :sswitch_d
        0x1e -> :sswitch_8
        0x1f -> :sswitch_e
        0x20 -> :sswitch_c
        0x26 -> :sswitch_7
        0x27 -> :sswitch_e
        0x48 -> :sswitch_4
        0x51 -> :sswitch_2
        0x72 -> :sswitch_0
        0x78 -> :sswitch_6
        0x79 -> :sswitch_6
        0x7a -> :sswitch_a
        0x7b -> :sswitch_1
        0x82 -> :sswitch_0
        0x83 -> :sswitch_3
        0x84 -> :sswitch_0
        0x89 -> :sswitch_b
        0x99 -> :sswitch_9
        0x9a -> :sswitch_a
        0x9b -> :sswitch_e
        0x9e -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public final transform(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 3
    .parameter "tree"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NodeTransformer;->transformCompilationUnit(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    .line 73
    .local v0, fn:Lorg/mozilla/javascript/ast/FunctionNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #fn:Lorg/mozilla/javascript/ast/FunctionNode;
    :cond_0
    return-void
.end method

.method protected visitCall(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0
    .parameter "node"
    .parameter "tree"

    .prologue
    .line 445
    return-void
.end method

.method protected visitLet(ZLorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 24
    .parameter "createWith"
    .parameter "parent"
    .parameter "previous"
    .parameter "scopeNode"

    .prologue
    .line 450
    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v19

    .line 451
    .local v19, vars:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 452
    .local v4, body:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 453
    move-object/from16 v0, p4

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 454
    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x9e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 457
    .local v11, isExpression:Z
    :goto_0
    if-eqz p1, :cond_8

    .line 458
    new-instance v15, Lorg/mozilla/javascript/Node;

    if-eqz v11, :cond_1

    const/16 v20, 0x9f

    :goto_1
    move-object v0, v15

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 459
    .local v15, result:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v15

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 460
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x42

    move-object v0, v14

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 462
    .local v14, objectLiteral:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v18

    .local v18, v:Lorg/mozilla/javascript/Node;
    move-object v5, v4

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .local v5, body:Lorg/mozilla/javascript/Node;
    :goto_2
    if-eqz v18, :cond_7

    .line 463
    move-object/from16 v7, v18

    .line 464
    .local v7, current:Lorg/mozilla/javascript/Node;
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x9e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 466
    const/16 v20, 0x16

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 468
    .local v8, destructuringNames:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 469
    .local v6, c:Lorg/mozilla/javascript/Node;
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x99

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v20

    throw v20

    .line 454
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .end local v6           #c:Lorg/mozilla/javascript/Node;
    .end local v7           #current:Lorg/mozilla/javascript/Node;
    .end local v8           #destructuringNames:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v11           #isExpression:Z
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14           #objectLiteral:Lorg/mozilla/javascript/Node;
    .end local v15           #result:Lorg/mozilla/javascript/Node;
    .end local v18           #v:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    :cond_0
    const/16 v20, 0x0

    move/from16 v11, v20

    goto :goto_0

    .line 458
    .restart local v11       #isExpression:Z
    :cond_1
    const/16 v20, 0x81

    goto :goto_1

    .line 471
    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local v6       #c:Lorg/mozilla/javascript/Node;
    .restart local v7       #current:Lorg/mozilla/javascript/Node;
    .restart local v8       #destructuringNames:Ljava/util/List;,"Ljava/util/List<*>;"
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v14       #objectLiteral:Lorg/mozilla/javascript/Node;
    .restart local v15       #result:Lorg/mozilla/javascript/Node;
    .restart local v18       #v:Lorg/mozilla/javascript/Node;
    :cond_2
    if-eqz v11, :cond_3

    .line 472
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x59

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v21

    move-object v0, v4

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 480
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    :goto_3
    if-eqz v8, :cond_4

    .line 481
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v20

    move v0, v9

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 483
    new-instance v20, Lorg/mozilla/javascript/Node;

    const/16 v21, 0x7e

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 482
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 474
    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .end local v9           #i:I
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    :cond_3
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x81

    new-instance v21, Lorg/mozilla/javascript/Node;

    const/16 v22, 0x85

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object v0, v4

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto :goto_3

    .line 487
    :cond_4
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 489
    .end local v6           #c:Lorg/mozilla/javascript/Node;
    .end local v8           #destructuringNames:Ljava/util/List;,"Ljava/util/List<*>;"
    :goto_5
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x27

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v20

    throw v20

    .line 490
    :cond_5
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 492
    .local v10, init:Lorg/mozilla/javascript/Node;
    if-nez v10, :cond_6

    .line 493
    new-instance v10, Lorg/mozilla/javascript/Node;

    .end local v10           #init:Lorg/mozilla/javascript/Node;
    const/16 v20, 0x7e

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v21

    move-object v0, v10

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 495
    .restart local v10       #init:Lorg/mozilla/javascript/Node;
    :cond_6
    invoke-virtual {v14, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 462
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v18

    move-object v5, v4

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_2

    .line 497
    .end local v7           #current:Lorg/mozilla/javascript/Node;
    .end local v10           #init:Lorg/mozilla/javascript/Node;
    :cond_7
    const/16 v20, 0xc

    invoke-virtual {v12}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object v0, v14

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 498
    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x2

    move-object v0, v13

    move/from16 v1, v20

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 499
    .local v13, newVars:Lorg/mozilla/javascript/Node;
    invoke-virtual {v15, v13}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 500
    new-instance v20, Lorg/mozilla/javascript/Node;

    const/16 v21, 0x7b

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 501
    new-instance v20, Lorg/mozilla/javascript/Node;

    const/16 v21, 0x3

    invoke-direct/range {v20 .. v21}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v4, v5

    .line 556
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14           #objectLiteral:Lorg/mozilla/javascript/Node;
    .end local p4
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    :goto_6
    return-object v15

    .line 503
    .end local v13           #newVars:Lorg/mozilla/javascript/Node;
    .end local v15           #result:Lorg/mozilla/javascript/Node;
    .end local v18           #v:Lorg/mozilla/javascript/Node;
    .restart local p4
    :cond_8
    new-instance v15, Lorg/mozilla/javascript/Node;

    if-eqz v11, :cond_9

    const/16 v20, 0x59

    :goto_7
    move-object v0, v15

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 504
    .restart local v15       #result:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v15

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NodeTransformer;->replaceCurrent(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 505
    new-instance v13, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x59

    move-object v0, v13

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 506
    .restart local v13       #newVars:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v18

    .restart local v18       #v:Lorg/mozilla/javascript/Node;
    move-object v5, v4

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    :goto_8
    if-eqz v18, :cond_e

    .line 507
    move-object/from16 v7, v18

    .line 508
    .restart local v7       #current:Lorg/mozilla/javascript/Node;
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x9e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 510
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 511
    .restart local v6       #c:Lorg/mozilla/javascript/Node;
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x99

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v20

    throw v20

    .line 503
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .end local v6           #c:Lorg/mozilla/javascript/Node;
    .end local v7           #current:Lorg/mozilla/javascript/Node;
    .end local v13           #newVars:Lorg/mozilla/javascript/Node;
    .end local v15           #result:Lorg/mozilla/javascript/Node;
    .end local v18           #v:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    :cond_9
    const/16 v20, 0x81

    goto :goto_7

    .line 513
    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local v6       #c:Lorg/mozilla/javascript/Node;
    .restart local v7       #current:Lorg/mozilla/javascript/Node;
    .restart local v13       #newVars:Lorg/mozilla/javascript/Node;
    .restart local v15       #result:Lorg/mozilla/javascript/Node;
    .restart local v18       #v:Lorg/mozilla/javascript/Node;
    :cond_a
    if-eqz v11, :cond_b

    .line 514
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x59

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v21

    move-object v0, v4

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 521
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    :goto_9
    check-cast v7, Lorg/mozilla/javascript/ast/Scope;

    .end local v7           #current:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v5, v0

    invoke-static {v7, v5}, Lorg/mozilla/javascript/ast/Scope;->joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V

    .line 523
    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 525
    .end local v6           #c:Lorg/mozilla/javascript/Node;
    .restart local v7       #current:Lorg/mozilla/javascript/Node;
    :goto_a
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v20

    const/16 v21, 0x27

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v20

    throw v20

    .line 516
    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local v6       #c:Lorg/mozilla/javascript/Node;
    :cond_b
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v20, 0x81

    new-instance v21, Lorg/mozilla/javascript/Node;

    const/16 v22, 0x85

    invoke-virtual {v6}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object v0, v4

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto :goto_9

    .line 526
    .end local v6           #c:Lorg/mozilla/javascript/Node;
    :cond_c
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v17

    .line 527
    .local v17, stringNode:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 528
    invoke-virtual {v7}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 529
    .restart local v10       #init:Lorg/mozilla/javascript/Node;
    if-nez v10, :cond_d

    .line 530
    new-instance v10, Lorg/mozilla/javascript/Node;

    .end local v10           #init:Lorg/mozilla/javascript/Node;
    const/16 v20, 0x7e

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Lorg/mozilla/javascript/Node;->newNumber(D)Lorg/mozilla/javascript/Node;

    move-result-object v21

    move-object v0, v10

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 532
    .restart local v10       #init:Lorg/mozilla/javascript/Node;
    :cond_d
    new-instance v20, Lorg/mozilla/javascript/Node;

    const/16 v21, 0x38

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 506
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v18

    move-object v5, v4

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_8

    .line 534
    .end local v7           #current:Lorg/mozilla/javascript/Node;
    .end local v10           #init:Lorg/mozilla/javascript/Node;
    .end local v17           #stringNode:Lorg/mozilla/javascript/Node;
    :cond_e
    if-eqz v11, :cond_f

    .line 535
    invoke-virtual {v15, v13}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 536
    const/16 v20, 0x59

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 537
    move-object v0, v15

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 538
    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 539
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/ast/Scope;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 540
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v16

    .line 541
    .local v16, scopeParent:Lorg/mozilla/javascript/ast/Scope;
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v6, v0

    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v4, v0

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 542
    check-cast p4, Lorg/mozilla/javascript/ast/Scope;

    .end local p4
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    move-object v4, v5

    .line 543
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_6

    .line 545
    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .end local v16           #scopeParent:Lorg/mozilla/javascript/ast/Scope;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local p4
    :cond_f
    new-instance v20, Lorg/mozilla/javascript/Node;

    const/16 v21, 0x85

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 546
    const/16 v20, 0x81

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 547
    move-object v0, v15

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 548
    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 549
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/ast/Scope;

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 550
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v16

    .line 551
    .restart local v16       #scopeParent:Lorg/mozilla/javascript/ast/Scope;
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v6, v0

    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v4, v0

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 552
    check-cast p4, Lorg/mozilla/javascript/ast/Scope;

    .end local p4
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .end local v16           #scopeParent:Lorg/mozilla/javascript/ast/Scope;
    :cond_10
    move-object v4, v5

    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_6

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local v7       #current:Lorg/mozilla/javascript/Node;
    .restart local p4
    :cond_11
    move-object v4, v5

    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_a

    .end local v4           #body:Lorg/mozilla/javascript/Node;
    .end local v13           #newVars:Lorg/mozilla/javascript/Node;
    .restart local v5       #body:Lorg/mozilla/javascript/Node;
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v14       #objectLiteral:Lorg/mozilla/javascript/Node;
    :cond_12
    move-object v4, v5

    .end local v5           #body:Lorg/mozilla/javascript/Node;
    .restart local v4       #body:Lorg/mozilla/javascript/Node;
    goto/16 :goto_5
.end method

.method protected visitNew(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0
    .parameter "node"
    .parameter "tree"

    .prologue
    .line 442
    return-void
.end method
