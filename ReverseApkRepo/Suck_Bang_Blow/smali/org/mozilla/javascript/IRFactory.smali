.class public final Lorg/mozilla/javascript/IRFactory;
.super Lorg/mozilla/javascript/Parser;
.source "IRFactory.java"


# static fields
.field private static final ALWAYS_FALSE_BOOLEAN:I = -0x1

.field private static final ALWAYS_TRUE_BOOLEAN:I = 0x1

.field private static final LOOP_DO_WHILE:I = 0x0

.field private static final LOOP_FOR:I = 0x2

.field private static final LOOP_WHILE:I = 0x1


# instance fields
.field private decompiler:Lorg/mozilla/javascript/Decompiler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/mozilla/javascript/Parser;-><init>()V

    .line 68
    new-instance v0, Lorg/mozilla/javascript/Decompiler;

    invoke-direct {v0}, Lorg/mozilla/javascript/Decompiler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1
    .parameter "env"

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V
    .locals 1
    .parameter "env"
    .parameter "errorReporter"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 68
    new-instance v0, Lorg/mozilla/javascript/Decompiler;

    invoke-direct {v0}, Lorg/mozilla/javascript/Decompiler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    .line 80
    return-void
.end method

.method private addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "switchBlock"
    .parameter "caseExpression"
    .parameter "statements"

    .prologue
    .line 1194
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x81

    if-eq v3, v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1195
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    .line 1196
    .local v2, switchNode:Lorg/mozilla/javascript/ast/Jump;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Jump;->getType()I

    move-result v3

    const/16 v4, 0x72

    if-eq v3, v4, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1198
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1199
    .local v1, gotoTarget:Lorg/mozilla/javascript/Node;
    if-eqz p2, :cond_2

    .line 1200
    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    const/16 v3, 0x73

    invoke-direct {v0, v3, p2}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1201
    .local v0, caseNode:Lorg/mozilla/javascript/ast/Jump;
    iput-object v1, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1202
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1206
    .end local v0           #caseNode:Lorg/mozilla/javascript/ast/Jump;
    :goto_0
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1207
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1208
    return-void

    .line 1204
    :cond_2
    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ast/Jump;->setDefault(Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 25
    .parameter "node"
    .parameter "arrayName"

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x53

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 268
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLineno()I

    move-result v20

    .line 269
    .local v20, lineno:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getResult()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    .line 271
    .local v14, expr:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLoops()Ljava/util/List;

    move-result-object v21

    .line 272
    .local v21, loops:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    .line 275
    .local v23, numLoops:I
    move/from16 v0, v23

    new-array v0, v0, [Lorg/mozilla/javascript/Node;

    move-object/from16 v19, v0

    .line 276
    .local v19, iterators:[Lorg/mozilla/javascript/Node;
    move/from16 v0, v23

    new-array v0, v0, [Lorg/mozilla/javascript/Node;

    move-object/from16 v18, v0

    .line 278
    .local v18, iteratedObjs:[Lorg/mozilla/javascript/Node;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 279
    move-object/from16 v0, v21

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 280
    .local v12, acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const-string v6, " "

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x77

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 282
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->isForEach()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const-string v6, "each "

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 285
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 287
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v17

    .line 288
    .local v17, iter:Lorg/mozilla/javascript/ast/AstNode;
    const/16 v22, 0x0

    .line 289
    .local v22, name:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_1

    .line 290
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/AstNode;->getString()Ljava/lang/String;

    move-result-object v22

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 303
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v16

    .line 306
    .local v16, init:Lorg/mozilla/javascript/Node;
    const/16 v5, 0x99

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->defineSymbol(ILjava/lang/String;Z)V

    .line 307
    aput-object v16, v19, v15

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 310
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    aput-object v5, v18, v15

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 278
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 294
    .end local v16           #init:Lorg/mozilla/javascript/Node;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v22

    .line 296
    const/16 v5, 0x57

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v22

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->defineSymbol(ILjava/lang/String;Z)V

    .line 297
    const/16 v5, 0x59

    const/16 v6, 0x5a

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, v17

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    goto :goto_1

    .line 315
    .end local v12           #acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    .end local v17           #iter:Lorg/mozilla/javascript/ast/AstNode;
    .end local v22           #name:Ljava/lang/String;
    :cond_2
    const/16 v5, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "push"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v13

    .line 320
    .local v13, call:Lorg/mozilla/javascript/Node;
    new-instance v10, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x85

    move-object v0, v10

    move v1, v5

    move-object v2, v13

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 322
    .local v10, body:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const-string v6, " "

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getFilter()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v10

    move-object v3, v6

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 331
    :cond_3
    const/16 v24, 0x0

    .line 333
    .local v24, pushed:I
    const/4 v5, 0x1

    sub-int v15, v23, v5

    :goto_2
    if-ltz v15, :cond_4

    .line 334
    :try_start_0
    move-object/from16 v0, v21

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;

    .line 335
    .restart local v12       #acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    const/4 v5, 0x0

    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->getLineno()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createLoopNode(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v7

    .line 337
    .local v7, loop:Lorg/mozilla/javascript/ast/Scope;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 338
    add-int/lit8 v24, v24, 0x1

    .line 339
    const/16 v6, 0x99

    aget-object v8, v19, v15

    aget-object v9, v18, v15

    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;->isForEach()Z

    move-result v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 333
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 347
    .end local v7           #loop:Lorg/mozilla/javascript/ast/Scope;
    .end local v12           #acl:Lorg/mozilla/javascript/ast/ArrayComprehensionLoop;
    :cond_4
    const/4 v15, 0x0

    :goto_3
    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    .line 347
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catchall_0
    move-exception v5

    const/4 v15, 0x0

    :goto_4
    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 348
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    .line 347
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_5
    throw v5

    .line 352
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    move-object v5, v0

    const/16 v6, 0x54

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 356
    invoke-virtual {v13, v14}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 357
    return-object v10
.end method

.method private closeSwitch(Lorg/mozilla/javascript/Node;)V
    .locals 5
    .parameter "switchBlock"

    .prologue
    .line 1212
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x81

    if-eq v3, v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1213
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Jump;

    .line 1214
    .local v2, switchNode:Lorg/mozilla/javascript/ast/Jump;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Jump;->getType()I

    move-result v3

    const/16 v4, 0x72

    if-eq v3, v4, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1216
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1219
    .local v1, switchBreakTarget:Lorg/mozilla/javascript/Node;
    iput-object v1, v2, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1221
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Jump;->getDefault()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1222
    .local v0, defaultTarget:Lorg/mozilla/javascript/Node;
    if-nez v0, :cond_2

    .line 1223
    move-object v0, v1

    .line 1226
    :cond_2
    const/4 v3, 0x5

    invoke-direct {p0, v3, v0}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lorg/mozilla/javascript/Node;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1228
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1229
    return-void
.end method

.method private createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 11
    .parameter "assignType"
    .parameter "left"
    .parameter "right"

    .prologue
    const/16 v10, 0x8a

    .line 2014
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2015
    .local v7, ref:Lorg/mozilla/javascript/Node;
    if-nez v7, :cond_3

    .line 2016
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    const/16 v10, 0x41

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v9

    const/16 v10, 0x42

    if-ne v9, v10, :cond_2

    .line 2019
    :cond_0
    const/16 v9, 0x5a

    if-eq p1, v9, :cond_1

    .line 2020
    const-string v9, "msg.bad.destruct.op"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->reportError(Ljava/lang/String;)V

    move-object v9, p3

    .line 2073
    :goto_0
    return-object v9

    .line 2023
    :cond_1
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p2, p3}, Lorg/mozilla/javascript/IRFactory;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    goto :goto_0

    .line 2025
    :cond_2
    const-string v9, "msg.bad.assign.left"

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->reportError(Ljava/lang/String;)V

    move-object v9, p3

    .line 2026
    goto :goto_0

    .line 2028
    :cond_3
    move-object p2, v7

    .line 2031
    packed-switch p1, :pswitch_data_0

    .line 2045
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9

    .line 2033
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/javascript/IRFactory;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    goto :goto_0

    .line 2034
    :pswitch_1
    const/16 v0, 0x9

    .line 2048
    .local v0, assignOp:I
    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    .line 2049
    .local v3, nodeType:I
    sparse-switch v3, :sswitch_data_0

    .line 2077
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9

    .line 2035
    .end local v0           #assignOp:I
    .end local v3           #nodeType:I
    :pswitch_2
    const/16 v0, 0xa

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2036
    .end local v0           #assignOp:I
    :pswitch_3
    const/16 v0, 0xb

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2037
    .end local v0           #assignOp:I
    :pswitch_4
    const/16 v0, 0x12

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2038
    .end local v0           #assignOp:I
    :pswitch_5
    const/16 v0, 0x13

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2039
    .end local v0           #assignOp:I
    :pswitch_6
    const/16 v0, 0x14

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2040
    .end local v0           #assignOp:I
    :pswitch_7
    const/16 v0, 0x15

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2041
    .end local v0           #assignOp:I
    :pswitch_8
    const/16 v0, 0x16

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2042
    .end local v0           #assignOp:I
    :pswitch_9
    const/16 v0, 0x17

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2043
    .end local v0           #assignOp:I
    :pswitch_a
    const/16 v0, 0x18

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2044
    .end local v0           #assignOp:I
    :pswitch_b
    const/16 v0, 0x19

    .restart local v0       #assignOp:I
    goto :goto_1

    .line 2051
    .restart local v3       #nodeType:I
    :sswitch_0
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-direct {v5, v0, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2052
    .local v5, op:Lorg/mozilla/javascript/Node;
    const/16 v9, 0x31

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 2053
    .local v2, lvalueLeft:Lorg/mozilla/javascript/Node;
    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v2, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2057
    .end local v2           #lvalueLeft:Lorg/mozilla/javascript/Node;
    .end local v5           #op:Lorg/mozilla/javascript/Node;
    :sswitch_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 2058
    .local v4, obj:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 2060
    .local v1, id:Lorg/mozilla/javascript/Node;
    const/16 v9, 0x21

    if-ne v3, v9, :cond_4

    const/16 v9, 0x8b

    move v8, v9

    .line 2064
    .local v8, type:I
    :goto_2
    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v10}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2065
    .local v6, opLeft:Lorg/mozilla/javascript/Node;
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-direct {v5, v0, v6, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2066
    .restart local v5       #op:Lorg/mozilla/javascript/Node;
    new-instance v9, Lorg/mozilla/javascript/Node;

    invoke-direct {v9, v8, v4, v1, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2060
    .end local v5           #op:Lorg/mozilla/javascript/Node;
    .end local v6           #opLeft:Lorg/mozilla/javascript/Node;
    .end local v8           #type:I
    :cond_4
    const/16 v9, 0x8c

    move v8, v9

    goto :goto_2

    .line 2069
    .end local v1           #id:Lorg/mozilla/javascript/Node;
    .end local v4           #obj:Lorg/mozilla/javascript/Node;
    :sswitch_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 2070
    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/IRFactory;->checkMutableReference(Lorg/mozilla/javascript/Node;)V

    .line 2071
    new-instance v6, Lorg/mozilla/javascript/Node;

    invoke-direct {v6, v10}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2072
    .restart local v6       #opLeft:Lorg/mozilla/javascript/Node;
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-direct {v5, v0, v6, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 2073
    .restart local v5       #op:Lorg/mozilla/javascript/Node;
    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x8e

    invoke-direct {v9, v10, v7, v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 2031
    :pswitch_data_0
    .packed-switch 0x5a
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
    .end packed-switch

    .line 2049
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method private createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 11
    .parameter "nodeType"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1884
    sparse-switch p1, :sswitch_data_0

    .line 2009
    :cond_0
    new-instance v7, Lorg/mozilla/javascript/Node;

    invoke-direct {v7, p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    :goto_0
    return-object v7

    .line 1888
    :sswitch_0
    iget v7, p2, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x29

    if-ne v7, v8, :cond_2

    .line 1890
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x29

    if-ne v7, v8, :cond_1

    .line 1891
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1897
    .local v6, s2:Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    .line 1898
    .local v5, s1:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    move-object v7, p2

    .line 1899
    goto :goto_0

    .line 1892
    .end local v5           #s1:Ljava/lang/String;
    .end local v6           #s2:Ljava/lang/String;
    :cond_1
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 1893
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    const/16 v9, 0xa

    invoke-static {v7, v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #s2:Ljava/lang/String;
    goto :goto_1

    .line 1900
    .end local v6           #s2:Ljava/lang/String;
    :cond_2
    iget v7, p2, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 1901
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_3

    .line 1902
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {p2, v7, v8}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v7, p2

    .line 1903
    goto :goto_0

    .line 1904
    :cond_3
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x29

    if-ne v7, v8, :cond_0

    .line 1906
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    const/16 v9, 0xa

    invoke-static {v7, v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v5

    .line 1907
    .restart local v5       #s1:Ljava/lang/String;
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1908
    .restart local v6       #s2:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lorg/mozilla/javascript/Node;->setString(Ljava/lang/String;)V

    move-object v7, p3

    .line 1909
    goto :goto_0

    .line 1919
    .end local v5           #s1:Ljava/lang/String;
    .end local v6           #s2:Ljava/lang/String;
    :sswitch_1
    iget v7, p2, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_5

    .line 1920
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    .line 1921
    .local v0, ld:D
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_4

    .line 1923
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    sub-double v7, v0, v7

    invoke-virtual {p2, v7, v8}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v7, p2

    .line 1924
    goto :goto_0

    .line 1925
    :cond_4
    const-wide/16 v7, 0x0

    cmpl-double v7, v0, v7

    if-nez v7, :cond_0

    .line 1927
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x1d

    invoke-direct {v7, v8, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 1929
    .end local v0           #ld:D
    :cond_5
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 1930
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    .line 1933
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x1c

    invoke-direct {v7, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 1940
    :sswitch_2
    iget v7, p2, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_7

    .line 1941
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    .line 1942
    .restart local v0       #ld:D
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_6

    .line 1944
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    mul-double/2addr v7, v0

    invoke-virtual {p2, v7, v8}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v7, p2

    .line 1945
    goto/16 :goto_0

    .line 1946
    :cond_6
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v0, v7

    if-nez v7, :cond_0

    .line 1948
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x1c

    invoke-direct {v7, v8, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 1950
    .end local v0           #ld:D
    :cond_7
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 1951
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_0

    .line 1954
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x1c

    invoke-direct {v7, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 1962
    :sswitch_3
    iget v7, p3, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 1963
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v3

    .line 1964
    .local v3, rd:D
    iget v7, p2, Lorg/mozilla/javascript/Node;->type:I

    const/16 v8, 0x28

    if-ne v7, v8, :cond_8

    .line 1966
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v7

    div-double/2addr v7, v3

    invoke-virtual {p2, v7, v8}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v7, p2

    .line 1967
    goto/16 :goto_0

    .line 1968
    :cond_8
    const-wide/high16 v7, 0x3ff0

    cmpl-double v7, v3, v7

    if-nez v7, :cond_0

    .line 1971
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x1c

    invoke-direct {v7, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 1981
    .end local v3           #rd:D
    :sswitch_4
    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v2

    .line 1982
    .local v2, leftStatus:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_9

    move-object v7, p2

    .line 1984
    goto/16 :goto_0

    .line 1985
    :cond_9
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    move-object v7, p3

    .line 1987
    goto/16 :goto_0

    .line 1997
    .end local v2           #leftStatus:I
    :sswitch_5
    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v2

    .line 1998
    .restart local v2       #leftStatus:I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    move-object v7, p2

    .line 2000
    goto/16 :goto_0

    .line 2001
    :cond_a
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    move-object v7, p3

    .line 2003
    goto/16 :goto_0

    .line 1884
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x68 -> :sswitch_5
        0x69 -> :sswitch_4
    .end sparse-switch
.end method

.method private createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "nodeType"
    .parameter "child"

    .prologue
    const-string v5, "eval"

    .line 1763
    const/4 v2, 0x0

    .line 1764
    .local v2, type:I
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_3

    .line 1765
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, name:Ljava/lang/String;
    const-string v3, "eval"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1767
    const/4 v2, 0x1

    .line 1777
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-direct {v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1778
    .local v1, node:Lorg/mozilla/javascript/Node;
    if-eqz v2, :cond_1

    .line 1780
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->setRequiresActivation()V

    .line 1781
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1783
    :cond_1
    return-object v1

    .line 1768
    .end local v1           #node:Lorg/mozilla/javascript/Node;
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    const-string v3, "With"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    const/4 v2, 0x2

    goto :goto_0

    .line 1771
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    .line 1772
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1773
    .restart local v0       #name:Ljava/lang/String;
    const-string v3, "eval"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1774
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private createCatch(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "varName"
    .parameter "catchCond"
    .parameter "stmts"
    .parameter "lineno"

    .prologue
    .line 1249
    if-nez p2, :cond_0

    .line 1250
    new-instance p2, Lorg/mozilla/javascript/Node;

    .end local p2
    const/16 v0, 0x80

    invoke-direct {p2, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1252
    .restart local p2
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x7c

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)V

    return-object v0
.end method

.method private createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "cond"
    .parameter "ifTrue"
    .parameter "ifFalse"

    .prologue
    .line 1681
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 1682
    .local v0, condStatus:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v1, p2

    .line 1687
    :goto_0
    return-object v1

    .line 1684
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p3

    .line 1685
    goto :goto_0

    .line 1687
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x66

    invoke-direct {v1, v2, p1, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0
.end method

.method private createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "target"
    .parameter "namespace"
    .parameter "elem"
    .parameter "memberTypeFlags"

    .prologue
    .line 1842
    if-nez p2, :cond_1

    if-nez p4, :cond_1

    .line 1845
    if-nez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1846
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x24

    invoke-direct {v0, v1, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1848
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private createExprStatementNoReturn(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "expr"
    .parameter "lineno"

    .prologue
    .line 1232
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x85

    invoke-direct {v0, v1, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v0
.end method

.method private createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 8
    .parameter "loop"
    .parameter "init"
    .parameter "test"
    .parameter "incr"
    .parameter "body"

    .prologue
    const/16 v1, 0x99

    const/4 v2, 0x2

    .line 1310
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1314
    invoke-static {p1}, Lorg/mozilla/javascript/ast/Scope;->splitScope(Lorg/mozilla/javascript/ast/Scope;)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v7

    .line 1315
    .local v7, let:Lorg/mozilla/javascript/ast/Scope;
    invoke-virtual {v7, v1}, Lorg/mozilla/javascript/ast/Scope;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1316
    invoke-virtual {v7, p2}, Lorg/mozilla/javascript/ast/Scope;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1317
    new-instance v5, Lorg/mozilla/javascript/Node;

    const/16 v0, 0x80

    invoke-direct {v5, v0}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/mozilla/javascript/ast/Scope;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object v0, v7

    .line 1321
    .end local v7           #let:Lorg/mozilla/javascript/ast/Scope;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/Node;
    .locals 22
    .parameter "declType"
    .parameter "loop"
    .parameter "lhs"
    .parameter "obj"
    .parameter "body"
    .parameter "isForEach"

    .prologue
    .line 1381
    const/4 v12, -0x1

    .line 1382
    .local v12, destructuring:I
    const/4 v13, 0x0

    .line 1384
    .local v13, destructuringLen:I
    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v21

    .line 1385
    .local v21, type:I
    const/16 v4, 0x7a

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_0

    const/16 v4, 0x99

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 1386
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v17

    .line 1387
    .local v17, kid:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v18

    .line 1388
    .local v18, kidType:I
    const/16 v4, 0x41

    move/from16 v0, v18

    move v1, v4

    if-eq v0, v1, :cond_1

    const/16 v4, 0x42

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_7

    .line 1390
    :cond_1
    move/from16 v12, v18

    move/from16 v21, v18

    .line 1391
    move-object/from16 v20, v17

    .line 1392
    .local v20, lvalue:Lorg/mozilla/javascript/Node;
    const/4 v13, 0x0

    .line 1393
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move v4, v0

    if-eqz v4, :cond_2

    .line 1394
    check-cast v17, Lorg/mozilla/javascript/ast/ArrayLiteral;

    .end local v17           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v13

    .line 1415
    .end local v18           #kidType:I
    :cond_2
    :goto_0
    new-instance v19, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x8d

    move-object/from16 v0, v19

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1416
    .local v19, localBlock:Lorg/mozilla/javascript/Node;
    if-eqz p6, :cond_c

    const/16 v4, 0x3b

    move/from16 v16, v4

    .line 1420
    .local v16, initType:I
    :goto_1
    new-instance v15, Lorg/mozilla/javascript/Node;

    move-object v0, v15

    move/from16 v1, v16

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1421
    .local v15, init:Lorg/mozilla/javascript/Node;
    const/4 v4, 0x3

    move-object v0, v15

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1422
    new-instance v8, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x3d

    invoke-direct {v8, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1423
    .local v8, cond:Lorg/mozilla/javascript/Node;
    const/4 v4, 0x3

    move-object v0, v8

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1424
    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x3e

    invoke-direct {v14, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1425
    .local v14, id:Lorg/mozilla/javascript/Node;
    const/4 v4, 0x3

    move-object v0, v14

    move v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1427
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x81

    invoke-direct {v7, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1429
    .local v7, newBody:Lorg/mozilla/javascript/Node;
    const/4 v4, -0x1

    if-eq v12, v4, :cond_e

    .line 1430
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v20

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    .line 1431
    .local v11, assign:Lorg/mozilla/javascript/Node;
    if-nez p6, :cond_4

    const/16 v4, 0x42

    if-eq v12, v4, :cond_3

    const/4 v4, 0x2

    if-eq v13, v4, :cond_4

    .line 1436
    :cond_3
    const-string v4, "msg.bad.for.in.destruct"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->reportError(Ljava/lang/String;)V

    .line 1441
    :cond_4
    :goto_2
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x85

    invoke-direct {v4, v5, v11}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1442
    move-object v0, v7

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1444
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 1445
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1446
    const/16 v4, 0x7a

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_5

    const/16 v4, 0x99

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_6

    .line 1447
    :cond_5
    invoke-virtual/range {p2 .. p3}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1448
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v4, v19

    .line 1450
    .end local v7           #newBody:Lorg/mozilla/javascript/Node;
    .end local v8           #cond:Lorg/mozilla/javascript/Node;
    .end local v11           #assign:Lorg/mozilla/javascript/Node;
    .end local v14           #id:Lorg/mozilla/javascript/Node;
    .end local v15           #init:Lorg/mozilla/javascript/Node;
    .end local v16           #initType:I
    .end local v19           #localBlock:Lorg/mozilla/javascript/Node;
    .end local v20           #lvalue:Lorg/mozilla/javascript/Node;
    :goto_3
    return-object v4

    .line 1395
    .restart local v17       #kid:Lorg/mozilla/javascript/Node;
    .restart local v18       #kidType:I
    :cond_7
    const/16 v4, 0x27

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 1396
    const/16 v4, 0x27

    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v20

    .restart local v20       #lvalue:Lorg/mozilla/javascript/Node;
    goto/16 :goto_0

    .line 1398
    .end local v20           #lvalue:Lorg/mozilla/javascript/Node;
    :cond_8
    const-string v4, "msg.bad.for.in.lhs"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->reportError(Ljava/lang/String;)V

    .line 1399
    const/4 v4, 0x0

    goto :goto_3

    .line 1401
    .end local v17           #kid:Lorg/mozilla/javascript/Node;
    .end local v18           #kidType:I
    :cond_9
    const/16 v4, 0x41

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_a

    const/16 v4, 0x42

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_b

    .line 1402
    :cond_a
    move/from16 v12, v21

    .line 1403
    move-object/from16 v20, p3

    .line 1404
    .restart local v20       #lvalue:Lorg/mozilla/javascript/Node;
    const/4 v13, 0x0

    .line 1405
    move-object/from16 v0, p3

    instance-of v0, v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move v4, v0

    if-eqz v4, :cond_2

    .line 1406
    move-object/from16 v0, p3

    check-cast v0, Lorg/mozilla/javascript/ast/ArrayLiteral;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v13

    goto/16 :goto_0

    .line 1408
    .end local v20           #lvalue:Lorg/mozilla/javascript/Node;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v20

    .line 1409
    .restart local v20       #lvalue:Lorg/mozilla/javascript/Node;
    if-nez v20, :cond_2

    .line 1410
    const-string v4, "msg.bad.for.in.lhs"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->reportError(Ljava/lang/String;)V

    .line 1411
    const/4 v4, 0x0

    goto :goto_3

    .line 1416
    .restart local v19       #localBlock:Lorg/mozilla/javascript/Node;
    :cond_c
    const/4 v4, -0x1

    if-eq v12, v4, :cond_d

    const/16 v4, 0x3c

    move/from16 v16, v4

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x3a

    move/from16 v16, v4

    goto/16 :goto_1

    .line 1439
    .restart local v7       #newBody:Lorg/mozilla/javascript/Node;
    .restart local v8       #cond:Lorg/mozilla/javascript/Node;
    .restart local v14       #id:Lorg/mozilla/javascript/Node;
    .restart local v15       #init:Lorg/mozilla/javascript/Node;
    .restart local v16       #initType:I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->simpleAssignment(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v11

    .restart local v11       #assign:Lorg/mozilla/javascript/Node;
    goto/16 :goto_2
.end method

.method private createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 7
    .parameter "cond"
    .parameter "ifTrue"
    .parameter "ifFalse"
    .parameter "lineno"

    .prologue
    const/16 v6, 0x81

    .line 1648
    invoke-static {p1}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 1649
    .local v1, condStatus:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    move-object v5, p2

    .line 1677
    :goto_0
    return-object v5

    .line 1651
    :cond_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 1652
    if-eqz p3, :cond_1

    move-object v5, p3

    .line 1653
    goto :goto_0

    .line 1656
    :cond_1
    new-instance v5, Lorg/mozilla/javascript/Node;

    invoke-direct {v5, v6, p4}, Lorg/mozilla/javascript/Node;-><init>(II)V

    goto :goto_0

    .line 1659
    :cond_2
    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-direct {v4, v6, p4}, Lorg/mozilla/javascript/Node;-><init>(II)V

    .line 1660
    .local v4, result:Lorg/mozilla/javascript/Node;
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1661
    .local v3, ifNotTarget:Lorg/mozilla/javascript/Node;
    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    const/4 v5, 0x7

    invoke-direct {v0, v5, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1662
    .local v0, IFNE:Lorg/mozilla/javascript/ast/Jump;
    iput-object v3, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1664
    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1665
    invoke-virtual {v4, p2}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1667
    if-eqz p3, :cond_3

    .line 1668
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1669
    .local v2, endTarget:Lorg/mozilla/javascript/Node;
    const/4 v5, 0x5

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1670
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1671
    invoke-virtual {v4, p3}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1672
    invoke-virtual {v4, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .end local v2           #endTarget:Lorg/mozilla/javascript/Node;
    :goto_1
    move-object v5, v4

    .line 1677
    goto :goto_0

    .line 1674
    :cond_3
    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_1
.end method

.method private createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "nodeType"
    .parameter "post"
    .parameter "child"

    .prologue
    .line 1788
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/IRFactory;->makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object p3

    .line 1789
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 1791
    .local v0, childType:I
    sparse-switch v0, :sswitch_data_0

    .line 1808
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1796
    :sswitch_0
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1797
    .local v2, n:Lorg/mozilla/javascript/Node;
    const/4 v1, 0x0

    .line 1798
    .local v1, incrDecrMask:I
    const/16 v3, 0x6b

    if-ne p1, v3, :cond_0

    .line 1799
    or-int/lit8 v1, v1, 0x1

    .line 1801
    :cond_0
    if-eqz p2, :cond_1

    .line 1802
    or-int/lit8 v1, v1, 0x2

    .line 1804
    :cond_1
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1805
    return-object v2

    .line 1791
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x24 -> :sswitch_0
        0x27 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 15
    .parameter "loop"
    .parameter "loopType"
    .parameter "body"
    .parameter "cond"
    .parameter "init"
    .parameter "incr"

    .prologue
    .line 1327
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1328
    .local v4, bodyTarget:Lorg/mozilla/javascript/Node;
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 1329
    .local v6, condTarget:Lorg/mozilla/javascript/Node;
    const/4 v12, 0x2

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    const/16 v13, 0x80

    if-ne v12, v13, :cond_0

    .line 1330
    new-instance p4, Lorg/mozilla/javascript/Node;

    .end local p4
    const/16 v12, 0x2d

    move-object/from16 v0, p4

    move v1, v12

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1332
    .restart local p4
    :cond_0
    new-instance v3, Lorg/mozilla/javascript/ast/Jump;

    const/4 v12, 0x6

    move-object v0, v3

    move v1, v12

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1333
    .local v3, IFEQ:Lorg/mozilla/javascript/ast/Jump;
    iput-object v4, v3, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1334
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 1336
    .local v5, breakTarget:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1337
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1338
    const/4 v12, 0x1

    move/from16 v0, p2

    move v1, v12

    if-eq v0, v1, :cond_1

    const/4 v12, 0x2

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_2

    .line 1340
    :cond_1
    new-instance v12, Lorg/mozilla/javascript/Node;

    const/16 v13, 0x80

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/Jump;->getLineno()I

    move-result v14

    invoke-direct {v12, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(II)V

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1342
    :cond_2
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1343
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1344
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1346
    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1347
    move-object v7, v6

    .line 1349
    .local v7, continueTarget:Lorg/mozilla/javascript/Node;
    const/4 v12, 0x1

    move/from16 v0, p2

    move v1, v12

    if-eq v0, v1, :cond_3

    const/4 v12, 0x2

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_7

    .line 1351
    :cond_3
    const/4 v12, 0x5

    invoke-direct {p0, v12, v6}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v12

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1353
    const/4 v12, 0x2

    move/from16 v0, p2

    move v1, v12

    if-ne v0, v1, :cond_7

    .line 1354
    invoke-virtual/range {p5 .. p5}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v11

    .line 1355
    .local v11, initType:I
    const/16 v12, 0x80

    if-eq v11, v12, :cond_5

    .line 1356
    const/16 v12, 0x7a

    if-eq v11, v12, :cond_4

    const/16 v12, 0x99

    if-eq v11, v12, :cond_4

    .line 1357
    new-instance v10, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x85

    move-object v0, v10

    move v1, v12

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .end local p5
    .local v10, init:Lorg/mozilla/javascript/Node;
    move-object/from16 p5, v10

    .line 1359
    .end local v10           #init:Lorg/mozilla/javascript/Node;
    .restart local p5
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 1361
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v9

    .line 1362
    .local v9, incrTarget:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p1

    move-object v1, v9

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ast/Jump;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1363
    invoke-virtual/range {p6 .. p6}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v12

    const/16 v13, 0x80

    if-eq v12, v13, :cond_6

    .line 1364
    new-instance v8, Lorg/mozilla/javascript/Node;

    const/16 v12, 0x85

    move-object v0, v8

    move v1, v12

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1365
    .end local p6
    .local v8, incr:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ast/Jump;->addChildAfter(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    move-object/from16 p6, v8

    .line 1367
    .end local v8           #incr:Lorg/mozilla/javascript/Node;
    .restart local p6
    :cond_6
    move-object v7, v9

    .line 1371
    .end local v9           #incrTarget:Lorg/mozilla/javascript/Node;
    .end local v11           #initType:I
    :cond_7
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setContinue(Lorg/mozilla/javascript/Node;)V

    .line 1372
    return-object p1
.end method

.method private createLoopNode(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/ast/Scope;
    .locals 2
    .parameter "loopLabel"
    .parameter "lineno"

    .prologue
    .line 1301
    const/16 v1, 0x84

    invoke-virtual {p0, v1, p2}, Lorg/mozilla/javascript/IRFactory;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 1302
    .local v0, result:Lorg/mozilla/javascript/ast/Scope;
    if-eqz p1, :cond_0

    .line 1303
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/Jump;->setLoop(Lorg/mozilla/javascript/ast/Jump;)V

    .line 1305
    :cond_0
    return-object v0
.end method

.method private createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "target"
    .parameter "namespace"
    .parameter "elem"
    .parameter "memberTypeFlags"

    .prologue
    .line 1854
    const/4 v0, 0x0

    .line 1855
    .local v0, nsNode:Lorg/mozilla/javascript/Node;
    if-eqz p2, :cond_0

    .line 1857
    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1858
    new-instance v0, Lorg/mozilla/javascript/Node;

    .end local v0           #nsNode:Lorg/mozilla/javascript/Node;
    const/16 v2, 0x2a

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1864
    .restart local v0       #nsNode:Lorg/mozilla/javascript/Node;
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    .line 1865
    if-nez p2, :cond_3

    .line 1866
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x4f

    invoke-direct {v1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1877
    .local v1, ref:Lorg/mozilla/javascript/Node;
    :goto_1
    if-eqz p4, :cond_1

    .line 1878
    const/16 v2, 0x10

    invoke-virtual {v1, v2, p4}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1880
    :cond_1
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x43

    invoke-direct {v2, v3, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    return-object v2

    .line 1860
    .end local v1           #ref:Lorg/mozilla/javascript/Node;
    :cond_2
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 1868
    :cond_3
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x50

    invoke-direct {v1, v2, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .restart local v1       #ref:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 1871
    .end local v1           #ref:Lorg/mozilla/javascript/Node;
    :cond_4
    if-nez p2, :cond_5

    .line 1872
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x4d

    invoke-direct {v1, v2, p1, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .restart local v1       #ref:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 1874
    .end local v1           #ref:Lorg/mozilla/javascript/Node;
    :cond_5
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, p1, v0, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .restart local v1       #ref:Lorg/mozilla/javascript/Node;
    goto :goto_1
.end method

.method private createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;
    .locals 5
    .parameter "target"
    .parameter "namespace"
    .parameter "name"
    .parameter "memberTypeFlags"

    .prologue
    const/16 v4, 0x21

    .line 1814
    if-nez p2, :cond_2

    if-nez p4, :cond_2

    .line 1815
    if-nez p1, :cond_0

    .line 1816
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1828
    :goto_0
    return-object v2

    .line 1818
    :cond_0
    invoke-virtual {p0, p3, v4}, Lorg/mozilla/javascript/IRFactory;->checkActivationName(Ljava/lang/String;I)V

    .line 1819
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isSpecialProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1820
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x47

    invoke-direct {v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1821
    .local v1, ref:Lorg/mozilla/javascript/Node;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, p3}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1822
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x43

    invoke-direct {v2, v3, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1824
    .end local v1           #ref:Lorg/mozilla/javascript/Node;
    :cond_1
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {v2, v4, p1, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 1826
    :cond_2
    invoke-static {p3}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1827
    .local v0, elem:Lorg/mozilla/javascript/Node;
    or-int/lit8 p4, p4, 0x1

    .line 1828
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/mozilla/javascript/IRFactory;->createMemberRefGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0
.end method

.method private createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;
    .locals 1
    .parameter "string"

    .prologue
    .line 1236
    invoke-static {p1}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method private createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 27
    .parameter "tryBlock"
    .parameter "catchBlocks"
    .parameter "finallyBlock"
    .parameter "lineno"

    .prologue
    .line 1471
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v25

    const/16 v26, 0x81

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v25

    if-eqz v25, :cond_1

    :cond_0
    const/16 v25, 0x1

    move/from16 v20, v25

    .line 1476
    .local v20, hasFinally:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v25

    const/16 v26, 0x81

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v25

    if-nez v25, :cond_2

    if-nez v20, :cond_2

    move-object/from16 v25, p1

    .line 1633
    :goto_1
    return-object v25

    .line 1471
    .end local v20           #hasFinally:Z
    :cond_1
    const/16 v25, 0x0

    move/from16 v20, v25

    goto :goto_0

    .line 1482
    .restart local v20       #hasFinally:Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->hasChildren()Z

    move-result v18

    .line 1485
    .local v18, hasCatch:Z
    if-nez v20, :cond_3

    if-nez v18, :cond_3

    move-object/from16 v25, p1

    .line 1487
    goto :goto_1

    .line 1490
    :cond_3
    new-instance v17, Lorg/mozilla/javascript/Node;

    const/16 v25, 0x8d

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1491
    .local v17, handlerBlock:Lorg/mozilla/javascript/Node;
    new-instance v22, Lorg/mozilla/javascript/ast/Jump;

    const/16 v25, 0x51

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, p1

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/ast/Jump;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 1492
    .local v22, pn:Lorg/mozilla/javascript/ast/Jump;
    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ast/Jump;->putProp(ILjava/lang/Object;)V

    .line 1494
    if-eqz v18, :cond_7

    .line 1496
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v13

    .line 1497
    .local v13, endCatch:Lorg/mozilla/javascript/Node;
    const/16 v25, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1500
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v9

    .line 1501
    .local v9, catchTarget:Lorg/mozilla/javascript/Node;
    move-object v0, v9

    move-object/from16 v1, v22

    iput-object v0, v1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 1503
    move-object/from16 v0, v22

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1553
    new-instance v7, Lorg/mozilla/javascript/Node;

    const/16 v25, 0x8d

    move-object v0, v7

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1556
    .local v7, catchScopeBlock:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 1557
    .local v10, cb:Lorg/mozilla/javascript/Node;
    const/16 v19, 0x0

    .line 1558
    .local v19, hasDefault:Z
    const/16 v24, 0x0

    .line 1559
    .local v24, scopeIndex:I
    :goto_2
    if-eqz v10, :cond_5

    .line 1560
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v5

    .line 1562
    .local v5, catchLineNo:I
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v21

    .line 1563
    .local v21, name:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v11

    .line 1564
    .local v11, cond:Lorg/mozilla/javascript/Node;
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 1565
    .local v8, catchStatement:Lorg/mozilla/javascript/Node;
    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1566
    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1567
    invoke-virtual {v10, v8}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1573
    new-instance v25, Lorg/mozilla/javascript/Node;

    const/16 v26, 0x3

    invoke-direct/range {v25 .. v26}, Lorg/mozilla/javascript/Node;-><init>(I)V

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1574
    const/16 v25, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1578
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v25

    const/16 v26, 0x80

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 1579
    move-object v12, v8

    .line 1580
    .local v12, condStmt:Lorg/mozilla/javascript/Node;
    const/16 v19, 0x1

    .line 1588
    :goto_3
    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v25, 0x39

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v26

    move-object v0, v6

    move/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1590
    .local v6, catchScope:Lorg/mozilla/javascript/Node;
    const/16 v25, 0x3

    move-object v0, v6

    move/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1591
    const/16 v25, 0xe

    move-object v0, v6

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1592
    invoke-virtual {v7, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1595
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/IRFactory;->createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v12

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1600
    invoke-virtual {v10}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 1601
    add-int/lit8 v24, v24, 0x1

    .line 1602
    goto/16 :goto_2

    .line 1582
    .end local v6           #catchScope:Lorg/mozilla/javascript/Node;
    .end local v12           #condStmt:Lorg/mozilla/javascript/Node;
    :cond_4
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v8

    move-object/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v12

    .restart local v12       #condStmt:Lorg/mozilla/javascript/Node;
    goto :goto_3

    .line 1603
    .end local v5           #catchLineNo:I
    .end local v8           #catchStatement:Lorg/mozilla/javascript/Node;
    .end local v11           #cond:Lorg/mozilla/javascript/Node;
    .end local v12           #condStmt:Lorg/mozilla/javascript/Node;
    .end local v21           #name:Lorg/mozilla/javascript/Node;
    :cond_5
    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1604
    if-nez v19, :cond_6

    .line 1606
    new-instance v23, Lorg/mozilla/javascript/Node;

    const/16 v25, 0x33

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 1607
    .local v23, rethrow:Lorg/mozilla/javascript/Node;
    const/16 v25, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1608
    invoke-virtual/range {v22 .. v23}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1611
    .end local v23           #rethrow:Lorg/mozilla/javascript/Node;
    :cond_6
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1614
    .end local v7           #catchScopeBlock:Lorg/mozilla/javascript/Node;
    .end local v9           #catchTarget:Lorg/mozilla/javascript/Node;
    .end local v10           #cb:Lorg/mozilla/javascript/Node;
    .end local v13           #endCatch:Lorg/mozilla/javascript/Node;
    .end local v19           #hasDefault:Z
    .end local v24           #scopeIndex:I
    :cond_7
    if-eqz v20, :cond_8

    .line 1615
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v16

    .line 1616
    .local v16, finallyTarget:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->setFinally(Lorg/mozilla/javascript/Node;)V

    .line 1619
    const/16 v25, 0x87

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1622
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 1623
    .local v15, finallyEnd:Lorg/mozilla/javascript/Node;
    const/16 v25, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1625
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1626
    new-instance v14, Lorg/mozilla/javascript/Node;

    const/16 v25, 0x7d

    move-object v0, v14

    move/from16 v1, v25

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1627
    .local v14, fBlock:Lorg/mozilla/javascript/Node;
    const/16 v25, 0x3

    move-object v0, v14

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 1628
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1630
    move-object/from16 v0, v22

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Jump;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1632
    .end local v14           #fBlock:Lorg/mozilla/javascript/Node;
    .end local v15           #finallyEnd:Lorg/mozilla/javascript/Node;
    .end local v16           #finallyTarget:Lorg/mozilla/javascript/Node;
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    move-object/from16 v25, v17

    .line 1633
    goto/16 :goto_1
.end method

.method private createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 11
    .parameter "nodeType"
    .parameter "child"

    .prologue
    const/16 v10, 0x28

    const/16 v8, 0x27

    const/16 v9, 0x2d

    .line 1692
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 1693
    .local v0, childType:I
    packed-switch p1, :pswitch_data_0

    .line 1759
    :cond_0
    :pswitch_0
    new-instance v8, Lorg/mozilla/javascript/Node;

    invoke-direct {v8, p1, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    :goto_0
    return-object v8

    .line 1696
    :pswitch_1
    if-ne v0, v8, :cond_1

    .line 1699
    const/16 v8, 0x31

    invoke-virtual {p2, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1700
    move-object v1, p2

    .line 1701
    .local v1, left:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1702
    .local v4, right:Lorg/mozilla/javascript/Node;
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, p1, v1, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .end local v1           #left:Lorg/mozilla/javascript/Node;
    .end local v4           #right:Lorg/mozilla/javascript/Node;
    .local v2, n:Lorg/mozilla/javascript/Node;
    :goto_1
    move-object v8, v2

    .line 1720
    goto :goto_0

    .line 1703
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    :cond_1
    const/16 v8, 0x21

    if-eq v0, v8, :cond_2

    const/16 v8, 0x24

    if-ne v0, v8, :cond_3

    .line 1706
    :cond_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1707
    .restart local v1       #left:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1708
    .restart local v4       #right:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1709
    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1710
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, p1, v1, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 1711
    .restart local v2       #n:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .end local v1           #left:Lorg/mozilla/javascript/Node;
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    .end local v4           #right:Lorg/mozilla/javascript/Node;
    :cond_3
    const/16 v8, 0x43

    if-ne v0, v8, :cond_4

    .line 1712
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1713
    .local v3, ref:Lorg/mozilla/javascript/Node;
    invoke-virtual {p2, v3}, Lorg/mozilla/javascript/Node;->removeChild(Lorg/mozilla/javascript/Node;)V

    .line 1714
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v8, 0x45

    invoke-direct {v2, v8, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1715
    .restart local v2       #n:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .end local v2           #n:Lorg/mozilla/javascript/Node;
    .end local v3           #ref:Lorg/mozilla/javascript/Node;
    :cond_4
    const/16 v8, 0x26

    if-ne v0, v8, :cond_5

    .line 1716
    new-instance v2, Lorg/mozilla/javascript/Node;

    new-instance v8, Lorg/mozilla/javascript/Node;

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v2, p1, v8, p2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .restart local v2       #n:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 1718
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    :cond_5
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-direct {v2, v9}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .restart local v2       #n:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 1723
    .end local v2           #n:Lorg/mozilla/javascript/Node;
    :pswitch_2
    if-ne v0, v8, :cond_0

    .line 1724
    const/16 v8, 0x89

    invoke-virtual {p2, v8}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v8, p2

    .line 1725
    goto :goto_0

    .line 1729
    :pswitch_3
    if-ne v0, v10, :cond_0

    .line 1730
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v7

    .line 1731
    .local v7, value:I
    xor-int/lit8 v8, v7, -0x1

    int-to-double v8, v8

    invoke-virtual {p2, v8, v9}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v8, p2

    .line 1732
    goto :goto_0

    .line 1736
    .end local v7           #value:I
    :pswitch_4
    if-ne v0, v10, :cond_0

    .line 1737
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual {p2, v8, v9}, Lorg/mozilla/javascript/Node;->setDouble(D)V

    move-object v8, p2

    .line 1738
    goto/16 :goto_0

    .line 1742
    :pswitch_5
    invoke-static {p2}, Lorg/mozilla/javascript/IRFactory;->isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I

    move-result v5

    .line 1743
    .local v5, status:I
    if-eqz v5, :cond_0

    .line 1745
    const/4 v8, 0x1

    if-ne v5, v8, :cond_7

    .line 1746
    const/16 v6, 0x2c

    .line 1750
    .local v6, type:I
    :goto_2
    if-eq v0, v9, :cond_6

    const/16 v8, 0x2c

    if-ne v0, v8, :cond_8

    .line 1751
    :cond_6
    invoke-virtual {p2, v6}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    move-object v8, p2

    .line 1752
    goto/16 :goto_0

    .line 1748
    .end local v6           #type:I
    :cond_7
    const/16 v6, 0x2d

    .restart local v6       #type:I
    goto :goto_2

    .line 1754
    :cond_8
    new-instance v8, Lorg/mozilla/javascript/Node;

    invoke-direct {v8, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    goto/16 :goto_0

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createUseLocal(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "localBlock"

    .prologue
    .line 2081
    const/16 v1, 0x8d

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2082
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 2083
    .local v0, result:Lorg/mozilla/javascript/Node;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 2084
    return-object v0
.end method

.method private createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "obj"
    .parameter "body"
    .parameter "lineno"

    .prologue
    .line 1637
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->setRequiresActivation()V

    .line 1638
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x81

    invoke-direct {v1, v2, p3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    .line 1639
    .local v1, result:Lorg/mozilla/javascript/Node;
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1640
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x7b

    invoke-direct {v0, v2, p2, p3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 1641
    .local v0, bodyNode:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/Node;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 1642
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1643
    return-object v1
.end method

.method private getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;
    .locals 5
    .parameter "id"

    .prologue
    .line 766
    instance-of v4, p1, Lorg/mozilla/javascript/ast/Name;

    if-eqz v4, :cond_0

    .line 767
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 769
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 781
    .end local v3           #s:Ljava/lang/String;
    .local v0, key:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 770
    .end local v0           #key:Ljava/lang/Object;
    .restart local p1
    :cond_0
    instance-of v4, p1, Lorg/mozilla/javascript/ast/StringLiteral;

    if-eqz v4, :cond_1

    .line 771
    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 772
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    .line 773
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    .restart local v0       #key:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #key:Ljava/lang/Object;
    .end local v3           #s:Ljava/lang/String;
    .restart local p1
    :cond_1
    instance-of v4, p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    if-eqz v4, :cond_2

    .line 775
    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v1

    .line 776
    .local v1, n:D
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    .line 777
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getIndexObject(D)Ljava/lang/Object;

    move-result-object v0

    .line 778
    .restart local v0       #key:Ljava/lang/Object;
    goto :goto_0

    .line 779
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #n:D
    .restart local p1
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method private initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    .locals 11
    .parameter "fnNode"
    .parameter "functionIndex"
    .parameter "statements"
    .parameter "functionType"

    .prologue
    .line 1258
    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/ast/FunctionNode;->setFunctionType(I)V

    .line 1259
    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/ast/FunctionNode;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1261
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionCount()I

    move-result v0

    .line 1262
    .local v0, functionCount:I
    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->setRequiresActivation()V

    .line 1267
    :cond_0
    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    .line 1268
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 1269
    .local v2, name:Lorg/mozilla/javascript/ast/Name;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1275
    new-instance v4, Lorg/mozilla/javascript/Node;

    const/16 v5, 0x85

    new-instance v6, Lorg/mozilla/javascript/Node;

    const/16 v7, 0x8

    const/16 v8, 0x31

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x3f

    invoke-direct {v9, v10}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-direct {v6, v7, v8, v9}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    invoke-direct {v4, v5, v6}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    .line 1280
    .local v4, setFn:Lorg/mozilla/javascript/Node;
    invoke-virtual {p3, v4}, Lorg/mozilla/javascript/Node;->addChildrenToFront(Lorg/mozilla/javascript/Node;)V

    .line 1285
    .end local v2           #name:Lorg/mozilla/javascript/ast/Name;
    .end local v4           #setFn:Lorg/mozilla/javascript/Node;
    :cond_1
    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1286
    .local v1, lastStmt:Lorg/mozilla/javascript/Node;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 1287
    :cond_2
    new-instance v5, Lorg/mozilla/javascript/Node;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    invoke-virtual {p3, v5}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1290
    :cond_3
    const/16 v5, 0x6d

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/mozilla/javascript/Node;->newString(ILjava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1291
    .local v3, result:Lorg/mozilla/javascript/Node;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, p2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 1292
    return-object v3
.end method

.method private static isAlwaysDefinedBoolean(Lorg/mozilla/javascript/Node;)I
    .locals 6
    .parameter "node"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2111
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2126
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_1
    move v2, v4

    .line 2114
    goto :goto_0

    :pswitch_2
    move v2, v5

    .line 2116
    goto :goto_0

    .line 2118
    :pswitch_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v0

    .line 2119
    .local v0, num:D
    cmpl-double v2, v0, v0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 2120
    goto :goto_0

    :cond_0
    move v2, v4

    .line 2122
    goto :goto_0

    .line 2111
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private makeJump(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/ast/Jump;
    .locals 1
    .parameter "type"
    .parameter "target"

    .prologue
    .line 2088
    new-instance v0, Lorg/mozilla/javascript/ast/Jump;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/ast/Jump;-><init>(I)V

    .line 2089
    .local v0, n:Lorg/mozilla/javascript/ast/Jump;
    iput-object p2, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    .line 2090
    return-object v0
.end method

.method private makeReference(Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 2094
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 2095
    .local v0, type:I
    sparse-switch v0, :sswitch_data_0

    .line 2106
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :sswitch_0
    move-object v1, p1

    .line 2100
    goto :goto_0

    .line 2102
    :sswitch_1
    const/16 v1, 0x46

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->setType(I)Lorg/mozilla/javascript/Node;

    .line 2103
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v2, 0x43

    invoke-direct {v1, v2, p1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 2095
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_1
        0x27 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;
    .locals 9
    .parameter "node"

    .prologue
    .line 242
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayComprehension;->getLineno()I

    move-result v3

    .line 243
    .local v3, lineno:I
    const/16 v6, 0x9d

    invoke-virtual {p0, v6, v3}, Lorg/mozilla/javascript/IRFactory;->createScopeNode(II)Lorg/mozilla/javascript/ast/Scope;

    move-result-object v5

    .line 244
    .local v5, scopeNode:Lorg/mozilla/javascript/ast/Scope;
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ast/ScriptNode;->getNextTempName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, arrayName:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 247
    const/16 v6, 0x99

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v0, v7}, Lorg/mozilla/javascript/IRFactory;->defineSymbol(ILjava/lang/String;Z)V

    .line 248
    new-instance v1, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x81

    invoke-direct {v1, v6, v3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    .line 249
    .local v1, block:Lorg/mozilla/javascript/Node;
    const/16 v6, 0x1e

    const-string v7, "Array"

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 250
    .local v4, newArray:Lorg/mozilla/javascript/Node;
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x85

    const/16 v7, 0x5a

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {p0, v7, v8, v4}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    invoke-direct {v2, v6, v7, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 255
    .local v2, init:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 256
    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/IRFactory;->arrayCompTransformHelper(Lorg/mozilla/javascript/ast/ArrayComprehension;Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 257
    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/ast/Scope;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 258
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ast/Scope;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    return-object v5

    .end local v1           #block:Lorg/mozilla/javascript/Node;
    .end local v2           #init:Lorg/mozilla/javascript/Node;
    .end local v4           #newArray:Lorg/mozilla/javascript/Node;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    throw v6
.end method

.method private transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;
    .locals 8
    .parameter "node"

    .prologue
    .line 361
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->isDestructuring()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 390
    .end local p0
    :goto_0
    return-object v6

    .line 364
    .restart local p0
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x53

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 365
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v2

    .line 366
    .local v2, elems:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x41

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 367
    .local v0, array:Lorg/mozilla/javascript/Node;
    const/4 v4, 0x0

    .line 368
    .local v4, skipIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 369
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .line 370
    .local v1, elem:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v6

    const/16 v7, 0x80

    if-eq v6, v7, :cond_2

    .line 371
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 378
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_1

    .line 379
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x59

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 368
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 373
    :cond_2
    if-nez v4, :cond_3

    .line 374
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #skipIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .restart local v4       #skipIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 381
    .end local v1           #elem:Lorg/mozilla/javascript/ast/AstNode;
    :cond_4
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x54

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 382
    const/16 v6, 0x15

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getDestructuringLength()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 384
    if-eqz v4, :cond_6

    .line 385
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 386
    .local v5, skips:[I
    const/4 v3, 0x0

    .end local p0
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 387
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 388
    :cond_5
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .end local v5           #skips:[I
    :cond_6
    move-object v6, v0

    .line 390
    goto/16 :goto_0
.end method

.method private transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 394
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Assignment;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->removeParens(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 395
    .local v0, left:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v1, 0x0

    .line 396
    .local v1, target:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->isDestructuring(Lorg/mozilla/javascript/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 398
    move-object v1, v0

    .line 402
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Assignment;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 403
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Assignment;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Assignment;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    return-object v2

    .line 400
    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "node"

    .prologue
    .line 409
    instance-of v4, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v4, :cond_0

    .line 410
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Scope;

    move-object v4, v0

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 413
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, kids:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    .line 415
    .local v2, kid:Lorg/mozilla/javascript/Node;
    check-cast v2, Lorg/mozilla/javascript/ast/AstNode;

    .end local v2           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 423
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #kids:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    :catchall_0
    move-exception v4

    instance-of v5, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v5, :cond_1

    .line 424
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    :cond_1
    throw v4

    .line 417
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #kids:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/Node;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->removeChildren()V

    .line 418
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Node;

    .line 419
    .restart local v2       #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ast/AstNode;->addChildToBack(Lorg/mozilla/javascript/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 423
    .end local v2           #kid:Lorg/mozilla/javascript/Node;
    :cond_3
    instance-of v4, p1, Lorg/mozilla/javascript/ast/Scope;

    if-eqz v4, :cond_4

    .line 424
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    :cond_4
    return-object p1
.end method

.method private transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 430
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 431
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/BreakStatement;->getBreakLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/BreakStatement;->getBreakLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 435
    return-object p1
.end method

.method private transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;
    .locals 5
    .parameter "node"

    .prologue
    .line 439
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTestExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 440
    .local v2, test:Lorg/mozilla/javascript/Node;
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 441
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getTrueExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 442
    .local v1, ifTrue:Lorg/mozilla/javascript/Node;
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 443
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ConditionalExpression;->getFalseExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 444
    .local v0, ifFalse:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v2, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createCondExpr(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    return-object v3
.end method

.method private transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 449
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->getLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ContinueStatement;->getLabel()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 453
    return-object p1
.end method

.method private transformDefaultXmlNamepace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 1180
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1181
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v2, " xml"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 1182
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v2, " namespace"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 1183
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1184
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1185
    .local v0, child:Lorg/mozilla/javascript/Node;
    const/16 v1, 0x4a

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    return-object v1
.end method

.method private transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;
    .locals 7
    .parameter "loop"

    .prologue
    .line 457
    const/16 v0, 0x84

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/DoLoop;->setType(I)Lorg/mozilla/javascript/Node;

    .line 458
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 460
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 461
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 462
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/DoLoop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 463
    .local v3, body:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 464
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 465
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 466
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/DoLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 467
    .local v4, cond:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 468
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 469
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    return-object v0

    .end local v3           #body:Lorg/mozilla/javascript/Node;
    .end local v4           #cond:Lorg/mozilla/javascript/Node;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    throw v0
.end method

.method private transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 479
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 480
    .local v1, target:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 481
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 482
    .local v0, element:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 483
    new-instance v2, Lorg/mozilla/javascript/Node;

    const/16 v3, 0x24

    invoke-direct {v2, v3, v1, v0}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    return-object v2
.end method

.method private transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 487
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 488
    .local v0, expr:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 489
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getType()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ExpressionStatement;->getLineno()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v1
.end method

.method private transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;
    .locals 10
    .parameter "loop"

    .prologue
    .line 493
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x77

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 494
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v3, "each "

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 498
    const/16 v1, 0x84

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/ForInLoop;->setType(I)Lorg/mozilla/javascript/Node;

    .line 499
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 501
    const/4 v2, -0x1

    .line 502
    .local v2, declType:I
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIterator()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    .line 503
    .local v8, iter:Lorg/mozilla/javascript/ast/AstNode;
    instance-of v1, v8, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v1, :cond_1

    .line 504
    move-object v0, v8

    check-cast v0, Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-object v9, v0

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getType()I

    move-result v2

    .line 506
    :cond_1
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 507
    .local v4, lhs:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 508
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getIteratedObject()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 509
    .local v5, obj:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x58

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 510
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x55

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 511
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 512
    .local v6, body:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x56

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 513
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForInLoop;->isForEach()Z

    move-result v7

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/IRFactory;->createForIn(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Z)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 516
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    return-object v1

    .end local v4           #lhs:Lorg/mozilla/javascript/Node;
    .end local v5           #obj:Lorg/mozilla/javascript/Node;
    .end local v6           #body:Lorg/mozilla/javascript/Node;
    .end local v8           #iter:Lorg/mozilla/javascript/ast/AstNode;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    throw v1
.end method

.method private transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;
    .locals 7
    .parameter "loop"

    .prologue
    .line 521
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 522
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 523
    const/16 v0, 0x84

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/ForLoop;->setType(I)Lorg/mozilla/javascript/Node;

    .line 526
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 527
    .local v6, savedScope:Lorg/mozilla/javascript/ast/Scope;
    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 529
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 530
    .local v2, init:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 531
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 532
    .local v3, test:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 533
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getIncrement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 534
    .local v4, incr:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 535
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 536
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ForLoop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 537
    .local v5, body:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    move-object v0, p0

    move-object v1, p1

    .line 538
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/IRFactory;->createFor(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 540
    iput-object v6, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    return-object v0

    .end local v2           #init:Lorg/mozilla/javascript/Node;
    .end local v3           #test:Lorg/mozilla/javascript/Node;
    .end local v4           #incr:Lorg/mozilla/javascript/Node;
    .end local v5           #body:Lorg/mozilla/javascript/Node;
    :catchall_0
    move-exception v0

    iput-object v6, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    throw v0
.end method

.method private transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 14
    .parameter "fn"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 545
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    .line 546
    .local v2, functionType:I
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v10, v2}, Lorg/mozilla/javascript/Decompiler;->markFunctionStart(I)I

    move-result v8

    .line 547
    .local v8, start:I
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 548
    .local v5, mexpr:Lorg/mozilla/javascript/Node;
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v10, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I

    move-result v3

    .line 550
    .local v3, index:I
    new-instance v7, Lorg/mozilla/javascript/Parser$PerFunctionVariables;

    invoke-direct {v7, p0, p1}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;-><init>(Lorg/mozilla/javascript/Parser;Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 554
    .local v7, savedVars:Lorg/mozilla/javascript/Parser$PerFunctionVariables;
    const/16 v10, 0x17

    :try_start_0
    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->getProp(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 555
    .local v1, destructuring:Lorg/mozilla/javascript/Node;
    const/16 v10, 0x17

    invoke-virtual {p1, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->removeProp(I)V

    .line 557
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    move-result v4

    .line 558
    .local v4, lineno:I
    iget v10, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    .line 559
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 561
    .local v0, body:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v10

    if-nez v10, :cond_0

    .line 562
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x56

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 564
    :cond_0
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v10, v8}, Lorg/mozilla/javascript/Decompiler;->markFunctionEnd(I)I

    move-result v10

    invoke-virtual {p1, v8, v10}, Lorg/mozilla/javascript/ast/FunctionNode;->setEncodedSourceBounds(II)V

    .line 566
    if-eq v2, v13, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v10

    if-nez v10, :cond_1

    .line 569
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 572
    :cond_1
    if-eqz v1, :cond_2

    .line 573
    new-instance v10, Lorg/mozilla/javascript/Node;

    const/16 v11, 0x85

    invoke-direct {v10, v11, v1, v4}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0, v10}, Lorg/mozilla/javascript/Node;->addChildToFront(Lorg/mozilla/javascript/Node;)V

    .line 577
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v9

    .line 578
    .local v9, syntheticType:I
    invoke-direct {p0, p1, v3, v0, v9}, Lorg/mozilla/javascript/IRFactory;->initFunction(Lorg/mozilla/javascript/ast/FunctionNode;ILorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 579
    .local v6, pn:Lorg/mozilla/javascript/Node;
    if-eqz v5, :cond_3

    .line 580
    const/16 v10, 0x5a

    invoke-direct {p0, v10, v5, v6}, Lorg/mozilla/javascript/IRFactory;->createAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 581
    if-eq v9, v13, :cond_3

    .line 582
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getLineno()I

    move-result v10

    invoke-direct {p0, v6, v10}, Lorg/mozilla/javascript/IRFactory;->createExprStatementNoReturn(Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 588
    :cond_3
    iget v10, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    sub-int/2addr v10, v12

    iput v10, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    .line 589
    invoke-virtual {v7}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    return-object v6

    .line 588
    .end local v0           #body:Lorg/mozilla/javascript/Node;
    .end local v1           #destructuring:Lorg/mozilla/javascript/Node;
    .end local v4           #lineno:I
    .end local v6           #pn:Lorg/mozilla/javascript/Node;
    .end local v9           #syntheticType:I
    :catchall_0
    move-exception v10

    iget v11, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    sub-int/2addr v11, v12

    iput v11, p0, Lorg/mozilla/javascript/IRFactory;->nestingOfFunction:I

    .line 589
    invoke-virtual {v7}, Lorg/mozilla/javascript/Parser$PerFunctionVariables;->restore()V

    throw v10
.end method

.method private transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "node"

    .prologue
    .line 594
    const/16 v4, 0x26

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 595
    .local v2, call:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getLineno()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 596
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 597
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionCall;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 598
    .local v1, args:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 599
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 600
    .local v0, arg:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 601
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 602
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 598
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    .end local v0           #arg:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 606
    return-object v2
.end method

.method private transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;
    .locals 7
    .parameter "n"

    .prologue
    const/16 v6, 0x56

    const/16 v5, 0x55

    .line 610
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 611
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x57

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 612
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 613
    .local v0, cond:Lorg/mozilla/javascript/Node;
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 614
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 615
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getThenPart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 616
    .local v2, ifTrue:Lorg/mozilla/javascript/Node;
    const/4 v1, 0x0

    .line 617
    .local v1, ifFalse:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 619
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x71

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 620
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v5}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 621
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getElsePart()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 623
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v6}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 624
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/IfStatement;->getLineno()I

    move-result v3

    invoke-direct {p0, v0, v2, v1, v3}, Lorg/mozilla/javascript/IRFactory;->createIf(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    return-object v3
.end method

.method private transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 628
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 629
    .local v0, left:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 630
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 631
    .local v1, right:Lorg/mozilla/javascript/Node;
    instance-of v2, p1, Lorg/mozilla/javascript/ast/XmlDotQuery;

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 634
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/InfixExpression;->getType()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    return-object v2
.end method

.method private transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;
    .locals 8
    .parameter "ls"

    .prologue
    .line 638
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getLabels()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Label;

    .line 639
    .local v4, lb:Lorg/mozilla/javascript/ast/Label;
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Label;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 640
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v7, 0x67

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    goto :goto_0

    .line 642
    .end local v4           #lb:Lorg/mozilla/javascript/ast/Label;
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getFirstLabel()Lorg/mozilla/javascript/ast/Label;

    move-result-object v3

    .line 643
    .local v3, label:Lorg/mozilla/javascript/ast/Label;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LabeledStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 647
    .local v5, statement:Lorg/mozilla/javascript/Node;
    invoke-static {}, Lorg/mozilla/javascript/Node;->newTarget()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 648
    .local v1, breakTarget:Lorg/mozilla/javascript/Node;
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v6, 0x81

    invoke-direct {v0, v6, v3, v5, v1}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    .line 649
    .local v0, block:Lorg/mozilla/javascript/Node;
    iput-object v1, v3, Lorg/mozilla/javascript/ast/Label;->target:Lorg/mozilla/javascript/Node;

    .line 651
    return-object v0
.end method

.method private transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 655
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 657
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x99

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 658
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 659
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getVariables()Lorg/mozilla/javascript/ast/VariableDeclaration;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 660
    .local v1, vars:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 661
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/LetNode;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 662
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getType()I

    move-result v2

    const/16 v3, 0x9e

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 663
    .local v0, letExpr:Z
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 664
    if-eqz v0, :cond_2

    .line 665
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 669
    :goto_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/LetNode;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/ast/LetNode;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 670
    if-nez v0, :cond_0

    .line 671
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    return-object p1

    .line 662
    .end local v0           #letExpr:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 667
    .restart local v0       #letExpr:Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 676
    .end local v0           #letExpr:Z
    .end local v1           #vars:Lorg/mozilla/javascript/Node;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    throw v2
.end method

.method private transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 681
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 682
    return-object p1
.end method

.method private transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 686
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 687
    return-object p1
.end method

.method private transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "node"

    .prologue
    const/16 v5, 0x1e

    .line 691
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 692
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lorg/mozilla/javascript/IRFactory;->createCallOrNew(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 693
    .local v3, nx:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getLineno()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->setLineno(I)V

    .line 694
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 695
    .local v1, args:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 696
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 697
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 698
    .local v0, arg:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 699
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 700
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 696
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v0           #arg:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 704
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 705
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NewExpression;->getInitializer()Lorg/mozilla/javascript/ast/ObjectLiteral;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 707
    :cond_2
    return-object v3
.end method

.method private transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 711
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    .line 712
    return-object p1
.end method

.method private transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;
    .locals 14
    .parameter "node"

    .prologue
    const/16 v13, 0x98

    const/16 v12, 0x97

    const/16 v11, 0x42

    .line 716
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->isDestructuring()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, p1

    .line 761
    :goto_0
    return-object v9

    .line 722
    :cond_0
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x55

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 723
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v0

    .line 724
    .local v0, elems:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ObjectProperty;>;"
    new-instance v4, Lorg/mozilla/javascript/Node;

    invoke-direct {v4, v11}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 726
    .local v4, object:Lorg/mozilla/javascript/Node;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 727
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 759
    .local v6, properties:[Ljava/lang/Object;
    :cond_1
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x56

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 760
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v6}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    move-object v9, v4

    .line 761
    goto :goto_0

    .line 729
    .end local v6           #properties:[Ljava/lang/Object;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .local v8, size:I
    const/4 v1, 0x0

    .line 730
    .local v1, i:I
    new-array v6, v8, [Ljava/lang/Object;

    .line 731
    .restart local v6       #properties:[Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 732
    .local v5, prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetter()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 733
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 738
    :cond_3
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/mozilla/javascript/IRFactory;->getPropKey(Lorg/mozilla/javascript/Node;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v1

    .line 742
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetter()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetter()Z

    move-result v9

    if-nez v9, :cond_4

    .line 743
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 746
    :cond_4
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 747
    .local v7, right:Lorg/mozilla/javascript/Node;
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isGetter()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 748
    invoke-direct {p0, v12, v7}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 752
    :cond_5
    :goto_3
    invoke-virtual {v4, v7}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 754
    if-ge v2, v8, :cond_6

    .line 755
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x59

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_6
    move v1, v2

    .line 757
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 734
    .end local v7           #right:Lorg/mozilla/javascript/Node;
    :cond_7
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetter()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 735
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v13}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_2

    .line 749
    .end local v1           #i:I
    .restart local v2       #i:I
    .restart local v7       #right:Lorg/mozilla/javascript/Node;
    :cond_8
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ObjectProperty;->isSetter()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 750
    invoke-direct {p0, v13, v7}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    goto :goto_3
.end method

.method private transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "node"

    .prologue
    const/16 v5, 0x57

    .line 785
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .line 786
    .local v1, expr:Lorg/mozilla/javascript/ast/AstNode;
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 787
    const/4 v0, 0x1

    .line 788
    .local v0, count:I
    :goto_0
    instance-of v4, v1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v4, :cond_0

    .line 789
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 790
    add-int/lit8 v0, v0, 0x1

    .line 791
    check-cast v1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    .end local v1           #expr:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ParenthesizedExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    .restart local v1       #expr:Lorg/mozilla/javascript/ast/AstNode;
    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 794
    .local v3, result:Lorg/mozilla/javascript/Node;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 795
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x58

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 797
    :cond_1
    const/16 v4, 0x13

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lorg/mozilla/javascript/Node;->putProp(ILjava/lang/Object;)V

    .line 798
    return-object v3
.end method

.method private transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 802
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 803
    .local v1, target:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 804
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 805
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 806
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object v2

    return-object v2
.end method

.method private transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 810
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getFlags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addRegexp(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V

    .line 812
    return-object p1
.end method

.method private transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x4

    .line 816
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v3, 0x19

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/ast/ReturnStatement;->getProp(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v3, " "

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 821
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getReturnValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 822
    .local v0, rv:Lorg/mozilla/javascript/ast/AstNode;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    .line 823
    .local v1, value:Lorg/mozilla/javascript/Node;
    :goto_1
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 824
    if-nez v0, :cond_2

    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getLineno()I

    move-result v3

    invoke-direct {v2, v4, v3}, Lorg/mozilla/javascript/Node;-><init>(II)V

    :goto_2
    return-object v2

    .line 819
    .end local v0           #rv:Lorg/mozilla/javascript/ast/AstNode;
    .end local v1           #value:Lorg/mozilla/javascript/Node;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_0

    .line 822
    .restart local v0       #rv:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 824
    .restart local v1       #value:Lorg/mozilla/javascript/Node;
    :cond_2
    new-instance v2, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ReturnStatement;->getLineno()I

    move-result v3

    invoke-direct {v2, v4, v1, v3}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    goto :goto_2
.end method

.method private transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "node"

    .prologue
    .line 830
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 831
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 832
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->currentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 833
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v4, 0x81

    invoke-direct {v0, v4}, Lorg/mozilla/javascript/Node;-><init>(I)V

    .line 834
    .local v0, body:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Node;

    .line 835
    .local v3, kid:Lorg/mozilla/javascript/Node;
    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    .end local v3           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->removeChildren()V

    .line 838
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 839
    .local v1, children:Lorg/mozilla/javascript/Node;
    if-eqz v1, :cond_2

    .line 840
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->addChildrenToBack(Lorg/mozilla/javascript/Node;)V

    .line 842
    :cond_2
    return-object p1
.end method

.method private transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 846
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Node;->newString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method private transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;
    .locals 12
    .parameter "node"

    .prologue
    .line 890
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x72

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 891
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x57

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 892
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v9

    .line 893
    .local v9, switchExpr:Lorg/mozilla/javascript/Node;
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x58

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 894
    invoke-virtual {p1, v9}, Lorg/mozilla/javascript/ast/SwitchStatement;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 896
    new-instance v0, Lorg/mozilla/javascript/Node;

    const/16 v10, 0x81

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getLineno()I

    move-result v11

    invoke-direct {v0, v10, p1, v11}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 897
    .local v0, block:Lorg/mozilla/javascript/Node;
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x55

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 899
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/SwitchStatement;->getCases()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ast/SwitchCase;

    .line 900
    .local v7, sc:Lorg/mozilla/javascript/ast/SwitchCase;
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/SwitchCase;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    .line 901
    .local v3, expr:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v2, 0x0

    .line 903
    .local v2, caseExpr:Lorg/mozilla/javascript/Node;
    if-eqz v3, :cond_0

    .line 904
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x73

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 905
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 909
    :goto_1
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x67

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 911
    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/SwitchCase;->getStatements()Ljava/util/List;

    move-result-object v8

    .line 912
    .local v8, stmts:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    new-instance v1, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    .line 913
    .local v1, body:Lorg/mozilla/javascript/Node;
    if-eqz v8, :cond_1

    .line 914
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/ast/AstNode;

    .line 915
    .local v6, kid:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 907
    .end local v1           #body:Lorg/mozilla/javascript/Node;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #kid:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #stmts:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    :cond_0
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x74

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_1

    .line 918
    .restart local v1       #body:Lorg/mozilla/javascript/Node;
    .restart local v8       #stmts:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lorg/mozilla/javascript/IRFactory;->addSwitchCase(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 920
    .end local v1           #body:Lorg/mozilla/javascript/Node;
    .end local v2           #caseExpr:Lorg/mozilla/javascript/Node;
    .end local v3           #expr:Lorg/mozilla/javascript/ast/AstNode;
    .end local v7           #sc:Lorg/mozilla/javascript/ast/SwitchCase;
    .end local v8           #stmts:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    :cond_2
    iget-object v10, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v11, 0x56

    invoke-virtual {v10, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 921
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/IRFactory;->closeSwitch(Lorg/mozilla/javascript/Node;)V

    .line 922
    return-object v0
.end method

.method private transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    const/16 v3, 0x32

    .line 926
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 927
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 928
    .local v0, value:Lorg/mozilla/javascript/Node;
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 929
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ThrowStatement;->getLineno()I

    move-result v2

    invoke-direct {v1, v3, v0, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    return-object v1
.end method

.method private transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;
    .locals 13
    .parameter "node"

    .prologue
    const/16 v12, 0x56

    const/16 v11, 0x55

    .line 933
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x51

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 934
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 935
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getTryBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 936
    .local v7, tryBlock:Lorg/mozilla/javascript/Node;
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 938
    new-instance v1, Lorg/mozilla/javascript/ast/Block;

    invoke-direct {v1}, Lorg/mozilla/javascript/ast/Block;-><init>()V

    .line 939
    .local v1, catchBlocks:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getCatchClauses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/CatchClause;

    .line 940
    .local v3, cc:Lorg/mozilla/javascript/ast/CatchClause;
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x7c

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 941
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x57

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 943
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/CatchClause;->getVarName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v9

    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 944
    .local v8, varName:Ljava/lang/String;
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 946
    const/4 v2, 0x0

    .line 947
    .local v2, catchCond:Lorg/mozilla/javascript/Node;
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/CatchClause;->getCatchCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 948
    .local v4, ccc:Lorg/mozilla/javascript/ast/AstNode;
    if-eqz v4, :cond_0

    .line 949
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const-string v10, " "

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 950
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x70

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 951
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 955
    :goto_1
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x58

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 956
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 958
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/CatchClause;->getBody()Lorg/mozilla/javascript/ast/Block;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 959
    .local v0, body:Lorg/mozilla/javascript/Node;
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 961
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/CatchClause;->getLineno()I

    move-result v9

    invoke-direct {p0, v8, v2, v0, v9}, Lorg/mozilla/javascript/IRFactory;->createCatch(Ljava/lang/String;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_0

    .line 953
    .end local v0           #body:Lorg/mozilla/javascript/Node;
    :cond_0
    new-instance v2, Lorg/mozilla/javascript/ast/EmptyExpression;

    .end local v2           #catchCond:Lorg/mozilla/javascript/Node;
    invoke-direct {v2}, Lorg/mozilla/javascript/ast/EmptyExpression;-><init>()V

    .restart local v2       #catchCond:Lorg/mozilla/javascript/Node;
    goto :goto_1

    .line 964
    .end local v2           #catchCond:Lorg/mozilla/javascript/Node;
    .end local v3           #cc:Lorg/mozilla/javascript/ast/CatchClause;
    .end local v4           #ccc:Lorg/mozilla/javascript/ast/AstNode;
    .end local v8           #varName:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 965
    .local v5, finallyBlock:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 966
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v10, 0x7d

    invoke-virtual {v9, v10}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 967
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v11}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 968
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getFinallyBlock()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 969
    iget-object v9, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v9, v12}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 971
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/TryStatement;->getLineno()I

    move-result v9

    invoke-direct {p0, v7, v1, v5, v9}, Lorg/mozilla/javascript/IRFactory;->createTryCatchFinally(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v9

    return-object v9
.end method

.method private transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 976
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getType()I

    move-result v1

    .line 977
    .local v1, type:I
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_0

    .line 978
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDefaultXmlNamepace(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 990
    :goto_0
    return-object v2

    .line 980
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPrefix()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 981
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 983
    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->getOperand()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 984
    .local v0, child:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 985
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 987
    :cond_2
    const/16 v2, 0x6a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_4

    .line 988
    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/UnaryExpression;->isPostfix()Z

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lorg/mozilla/javascript/IRFactory;->createIncDec(IZLorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0

    .line 990
    :cond_4
    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_0
.end method

.method private transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 13
    .parameter "node"

    .prologue
    .line 1008
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getVariables()Ljava/util/List;

    move-result-object v10

    .line 1009
    .local v10, vars:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/VariableInitializer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .local v7, size:I
    const/4 v1, 0x0

    .line 1010
    .local v1, i:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mozilla/javascript/ast/VariableInitializer;

    .line 1011
    .local v9, var:Lorg/mozilla/javascript/ast/VariableInitializer;
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableInitializer;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v8

    .line 1012
    .local v8, target:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableInitializer;->getInitializer()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    .line 1014
    .local v4, init:Lorg/mozilla/javascript/ast/AstNode;
    const/4 v5, 0x0

    .line 1015
    .local v5, left:Lorg/mozilla/javascript/Node;
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1016
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 1017
    move-object v5, v8

    .line 1022
    :goto_1
    const/4 v6, 0x0

    .line 1023
    .local v6, right:Lorg/mozilla/javascript/Node;
    if-eqz v4, :cond_0

    .line 1024
    iget-object v11, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v12, 0x5a

    invoke-virtual {v11, v12}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1025
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v6

    .line 1028
    :cond_0
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/VariableInitializer;->isDestructuring()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1029
    if-nez v6, :cond_3

    .line 1030
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1042
    :goto_2
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ge v1, v11, :cond_1

    .line 1043
    iget-object v11, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v12, 0x59

    invoke-virtual {v11, v12}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    :cond_1
    move v1, v2

    .line 1045
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1019
    .end local v6           #right:Lorg/mozilla/javascript/Node;
    :cond_2
    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v5

    goto :goto_1

    .line 1032
    .restart local v6       #right:Lorg/mozilla/javascript/Node;
    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getType()I

    move-result v11

    invoke-virtual {p0, v11, v5, v6}, Lorg/mozilla/javascript/IRFactory;->createDestructuringAssignment(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1034
    .local v0, d:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 1037
    .end local v0           #d:Lorg/mozilla/javascript/Node;
    :cond_4
    if-eqz v6, :cond_5

    .line 1038
    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1040
    :cond_5
    invoke-virtual {p1, v5}, Lorg/mozilla/javascript/ast/VariableDeclaration;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 1046
    .end local v4           #init:Lorg/mozilla/javascript/ast/AstNode;
    .end local v5           #left:Lorg/mozilla/javascript/Node;
    .end local v6           #right:Lorg/mozilla/javascript/Node;
    .end local v8           #target:Lorg/mozilla/javascript/ast/AstNode;
    .end local v9           #var:Lorg/mozilla/javascript/ast/VariableInitializer;
    :cond_6
    return-object p1
.end method

.method private transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 994
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 995
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariableInitializers(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    .line 999
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/VariableDeclaration;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    .line 1000
    .local v0, parent:Lorg/mozilla/javascript/ast/AstNode;
    instance-of v1, v0, Lorg/mozilla/javascript/ast/Loop;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/mozilla/javascript/ast/LetNode;

    if-nez v1, :cond_0

    .line 1002
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 1004
    :cond_0
    return-object p1
.end method

.method private transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;
    .locals 7
    .parameter "loop"

    .prologue
    .line 1050
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1051
    const/16 v0, 0x84

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/ast/WhileLoop;->setType(I)Lorg/mozilla/javascript/Node;

    .line 1052
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->pushScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 1054
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1055
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WhileLoop;->getCondition()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1056
    .local v4, cond:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1057
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 1058
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WhileLoop;->getBody()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1059
    .local v3, body:Lorg/mozilla/javascript/Node;
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 1060
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IRFactory;->createLoop(Lorg/mozilla/javascript/ast/Jump;ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1062
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    return-object v0

    .end local v3           #body:Lorg/mozilla/javascript/Node;
    .end local v4           #cond:Lorg/mozilla/javascript/Node;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory;->popScope()V

    throw v0
.end method

.method private transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    .line 1067
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1068
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x57

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1069
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1070
    .local v0, expr:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1071
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x55

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 1072
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getStatement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1073
    .local v1, stmt:Lorg/mozilla/javascript/Node;
    iget-object v2, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v3, 0x56

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 1074
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/WithStatement;->getLineno()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;->createWith(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v2

    return-object v2
.end method

.method private transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;
    .locals 15
    .parameter "node"

    .prologue
    .line 1090
    new-instance v9, Lorg/mozilla/javascript/Node;

    const/16 v13, 0x1e

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->getLineno()I

    move-result v14

    invoke-direct {v9, v13, v14}, Lorg/mozilla/javascript/Node;-><init>(II)V

    .line 1091
    .local v9, pnXML:Lorg/mozilla/javascript/Node;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/ast/XmlLiteral;->getFragments()Ljava/util/List;

    move-result-object v5

    .line 1093
    .local v5, frags:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/XmlFragment;>;"
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/XmlString;

    .line 1094
    .local v3, first:Lorg/mozilla/javascript/ast/XmlString;
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "<>"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1095
    .local v1, anon:Z
    if-eqz v1, :cond_0

    const-string v13, "XMLList"

    :goto_0
    invoke-virtual {p0, v13}, Lorg/mozilla/javascript/IRFactory;->createName(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1097
    const/4 v8, 0x0

    .line 1098
    .local v8, pn:Lorg/mozilla/javascript/Node;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/XmlFragment;

    .line 1099
    .local v4, frag:Lorg/mozilla/javascript/ast/XmlFragment;
    instance-of v13, v4, Lorg/mozilla/javascript/ast/XmlString;

    if-eqz v13, :cond_2

    .line 1100
    check-cast v4, Lorg/mozilla/javascript/ast/XmlString;

    .end local v4           #frag:Lorg/mozilla/javascript/ast/XmlFragment;
    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/XmlString;->getXml()Ljava/lang/String;

    move-result-object v12

    .line 1101
    .local v12, xml:Ljava/lang/String;
    iget-object v13, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v13, v12}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 1102
    if-nez v8, :cond_1

    .line 1103
    invoke-direct {p0, v12}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    goto :goto_1

    .line 1095
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #pn:Lorg/mozilla/javascript/Node;
    .end local v12           #xml:Ljava/lang/String;
    :cond_0
    const-string v13, "XML"

    goto :goto_0

    .line 1105
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #pn:Lorg/mozilla/javascript/Node;
    .restart local v12       #xml:Ljava/lang/String;
    :cond_1
    const/16 v13, 0x15

    invoke-direct {p0, v12}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {p0, v13, v8, v14}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    goto :goto_1

    .line 1108
    .end local v12           #xml:Ljava/lang/String;
    .restart local v4       #frag:Lorg/mozilla/javascript/ast/XmlFragment;
    :cond_2
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/ast/XmlExpression;

    move-object v11, v0

    .line 1109
    .local v11, xexpr:Lorg/mozilla/javascript/ast/XmlExpression;
    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/XmlExpression;->isXmlAttribute()Z

    move-result v7

    .line 1111
    .local v7, isXmlAttr:Z
    iget-object v13, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v14, 0x55

    invoke-virtual {v13, v14}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1112
    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    instance-of v13, v13, Lorg/mozilla/javascript/ast/EmptyExpression;

    if-eqz v13, :cond_3

    .line 1113
    const-string v13, ""

    invoke-direct {p0, v13}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1117
    .local v2, expr:Lorg/mozilla/javascript/Node;
    :goto_2
    iget-object v13, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v14, 0x56

    invoke-virtual {v13, v14}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1118
    if-eqz v7, :cond_4

    .line 1120
    const/16 v13, 0x4b

    invoke-direct {p0, v13, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1121
    const/16 v13, 0x15

    const-string v14, "\""

    invoke-direct {p0, v14}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {p0, v13, v14, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v10

    .line 1124
    .local v10, prepend:Lorg/mozilla/javascript/Node;
    const/16 v13, 0x15

    const-string v14, "\""

    invoke-direct {p0, v14}, Lorg/mozilla/javascript/IRFactory;->createString(Ljava/lang/String;)Lorg/mozilla/javascript/Node;

    move-result-object v14

    invoke-direct {p0, v13, v10, v14}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .line 1130
    .end local v10           #prepend:Lorg/mozilla/javascript/Node;
    :goto_3
    const/16 v13, 0x15

    invoke-direct {p0, v13, v8, v2}, Lorg/mozilla/javascript/IRFactory;->createBinary(ILorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v8

    goto :goto_1

    .line 1115
    .end local v2           #expr:Lorg/mozilla/javascript/Node;
    :cond_3
    invoke-virtual {v11}, Lorg/mozilla/javascript/ast/XmlExpression;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    .restart local v2       #expr:Lorg/mozilla/javascript/Node;
    goto :goto_2

    .line 1128
    :cond_4
    const/16 v13, 0x4c

    invoke-direct {p0, v13, v2}, Lorg/mozilla/javascript/IRFactory;->createUnary(ILorg/mozilla/javascript/Node;)Lorg/mozilla/javascript/Node;

    move-result-object v2

    goto :goto_3

    .line 1134
    .end local v2           #expr:Lorg/mozilla/javascript/Node;
    .end local v4           #frag:Lorg/mozilla/javascript/ast/XmlFragment;
    .end local v7           #isXmlAttr:Z
    .end local v11           #xexpr:Lorg/mozilla/javascript/ast/XmlExpression;
    :cond_5
    invoke-virtual {v9, v8}, Lorg/mozilla/javascript/Node;->addChildToBack(Lorg/mozilla/javascript/Node;)V

    .line 1135
    return-object v9
.end method

.method private transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;
    .locals 5
    .parameter "node"

    .prologue
    const/16 v4, 0x8f

    .line 1139
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getMemberRef()Lorg/mozilla/javascript/ast/XmlRef;

    move-result-object v2

    .line 1140
    .local v2, ref:Lorg/mozilla/javascript/ast/XmlRef;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 1141
    .local v1, pn:Lorg/mozilla/javascript/Node;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    move v0, v3

    .line 1142
    .local v0, flags:I
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlMemberGet;->getType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1143
    or-int/lit8 v0, v0, 0x4

    .line 1144
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1148
    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object v3

    return-object v3

    .line 1141
    .end local v0           #flags:I
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1146
    .restart local v0       #flags:I
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    goto :goto_1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;
    .locals 6
    .parameter "pn"
    .parameter "node"
    .parameter "memberTypeFlags"

    .prologue
    .line 1159
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_0

    .line 1160
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x93

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1161
    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlRef;->getNamespace()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    .line 1162
    .local v2, namespace:Lorg/mozilla/javascript/ast/Name;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1163
    .local v3, ns:Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 1164
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 1165
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x90

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1167
    :cond_1
    instance-of v4, p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    if-eqz v4, :cond_3

    .line 1168
    check-cast p2, Lorg/mozilla/javascript/ast/XmlPropRef;

    .end local p2
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlPropRef;->getPropName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1169
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v4, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0, p1, v3, v1, p3}, Lorg/mozilla/javascript/IRFactory;->createPropertyGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/Node;

    move-result-object v4

    .line 1175
    .end local v1           #name:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 1162
    .end local v3           #ns:Ljava/lang/String;
    .restart local p2
    :cond_2
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_0

    .line 1172
    .restart local v3       #ns:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x53

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1173
    check-cast p2, Lorg/mozilla/javascript/ast/XmlElemRef;

    .end local p2
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/XmlElemRef;->getExpression()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1174
    .local v0, expr:Lorg/mozilla/javascript/Node;
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1175
    invoke-direct {p0, p1, v3, v0, p3}, Lorg/mozilla/javascript/IRFactory;->createElementGet(Lorg/mozilla/javascript/Node;Ljava/lang/String;Lorg/mozilla/javascript/Node;I)Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_1
.end method

.method private transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;
    .locals 2
    .parameter "node"

    .prologue
    .line 1153
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/XmlRef;->isAttributeAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    move v0, v1

    .line 1155
    .local v0, memberTypeFlags:I
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/ast/XmlRef;I)Lorg/mozilla/javascript/Node;

    move-result-object v1

    return-object v1

    .line 1153
    .end local v0           #memberTypeFlags:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;
    .locals 4
    .parameter "node"

    .prologue
    const/16 v3, 0x48

    .line 1078
    iget-object v1, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 1079
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 1080
    .local v0, kid:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v0, :cond_1

    .line 1081
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getLineno()I

    move-result v2

    invoke-direct {v1, v3, v0, v2}, Lorg/mozilla/javascript/Node;-><init>(ILorg/mozilla/javascript/Node;I)V

    .line 1083
    :goto_1
    return-object v1

    .line 1079
    .end local v0           #kid:Lorg/mozilla/javascript/Node;
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getValue()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1083
    .restart local v0       #kid:Lorg/mozilla/javascript/Node;
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/Node;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Yield;->getLineno()I

    move-result v2

    invoke-direct {v1, v3, v2}, Lorg/mozilla/javascript/Node;-><init>(II)V

    goto :goto_1
.end method


# virtual methods
.method decompile(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 2158
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/Token;->typeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 2186
    .end local p1
    :goto_0
    :sswitch_0
    return-void

    .line 2160
    .restart local p1
    :sswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)V

    goto :goto_0

    .line 2163
    .restart local p1
    :sswitch_2
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)V

    goto :goto_0

    .line 2166
    .restart local p1
    :sswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/StringLiteral;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addString(Ljava/lang/String;)V

    goto :goto_0

    .line 2169
    .restart local p1
    :sswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    goto :goto_0

    .line 2172
    .restart local p1
    :sswitch_5
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/NumberLiteral;->getNumber()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Decompiler;->addNumber(D)V

    goto :goto_0

    .line 2175
    .restart local p1
    :sswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompilePropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)V

    goto :goto_0

    .line 2180
    .restart local p1
    :sswitch_7
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->decompileElementGet(Lorg/mozilla/javascript/ast/ElementGet;)V

    goto :goto_0

    .line 2158
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_6
        0x24 -> :sswitch_7
        0x27 -> :sswitch_4
        0x28 -> :sswitch_5
        0x29 -> :sswitch_3
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method decompileArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)V
    .locals 6
    .parameter "node"

    .prologue
    .line 2190
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x53

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2191
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ArrayLiteral;->getElements()Ljava/util/List;

    move-result-object v1

    .line 2192
    .local v1, elems:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2193
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2194
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    .line 2195
    .local v0, elem:Lorg/mozilla/javascript/ast/AstNode;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2196
    const/4 v4, 0x1

    sub-int v4, v3, v4

    if-ge v2, v4, :cond_0

    .line 2197
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x59

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2193
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2200
    .end local v0           #elem:Lorg/mozilla/javascript/ast/AstNode;
    :cond_1
    iget-object v4, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2201
    return-void
.end method

.method decompileElementGet(Lorg/mozilla/javascript/ast/ElementGet;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 2233
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2234
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2235
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ElementGet;->getElement()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2236
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2237
    return-void
.end method

.method decompileFunctionHeader(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;
    .locals 5
    .parameter "fn"

    .prologue
    .line 2136
    const/4 v1, 0x0

    .line 2137
    .local v1, mexpr:Lorg/mozilla/javascript/Node;
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2138
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addName(Ljava/lang/String;)V

    .line 2142
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x57

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2143
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getParams()Ljava/util/List;

    move-result-object v2

    .line 2144
    .local v2, params:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2145
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ast/AstNode;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2146
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 2147
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x59

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2139
    .end local v0           #i:I
    .end local v2           #params:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2140
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getMemberExprNode()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    .line 2150
    .restart local v0       #i:I
    .restart local v2       #params:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2151
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->isExpressionClosure()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2152
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v4, 0x55

    invoke-virtual {v3, v4}, Lorg/mozilla/javascript/Decompiler;->addEOL(I)V

    .line 2154
    :cond_4
    return-object v1
.end method

.method decompileObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 2205
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x55

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2206
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ObjectLiteral;->getElements()Ljava/util/List;

    move-result-object v3

    .line 2207
    .local v3, props:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/ObjectProperty;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2208
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 2209
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/ObjectProperty;

    .line 2210
    .local v2, prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v6, 0x1a

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ast/ObjectProperty;->getProp(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2212
    .local v0, destructuringShorthand:Z
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->getLeft()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2213
    if-nez v0, :cond_0

    .line 2214
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x67

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2215
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ObjectProperty;->getRight()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2217
    :cond_0
    const/4 v5, 0x1

    sub-int v5, v4, v5

    if-ge v1, v5, :cond_1

    .line 2218
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2208
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2221
    .end local v0           #destructuringShorthand:Z
    .end local v2           #prop:Lorg/mozilla/javascript/ast/ObjectProperty;
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v6, 0x56

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2222
    return-void
.end method

.method decompilePropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 2226
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getTarget()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2227
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 2228
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/PropertyGet;->getProperty()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IRFactory;->decompile(Lorg/mozilla/javascript/ast/AstNode;)V

    .line 2229
    return-void
.end method

.method isDestructuring(Lorg/mozilla/javascript/Node;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 2131
    instance-of v0, p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/ast/DestructuringForm;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/ast/DestructuringForm;->isDestructuring()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 3
    .parameter "node"

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstNode;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 184
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    if-eqz v0, :cond_1

    .line 185
    check-cast p1, Lorg/mozilla/javascript/ast/ExpressionStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformExprStmt(Lorg/mozilla/javascript/ast/ExpressionStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 116
    .restart local p1
    :sswitch_0
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayComprehension;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayComp(Lorg/mozilla/javascript/ast/ArrayComprehension;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 118
    .restart local p1
    :sswitch_1
    check-cast p1, Lorg/mozilla/javascript/ast/ArrayLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformArrayLiteral(Lorg/mozilla/javascript/ast/ArrayLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 120
    .restart local p1
    :sswitch_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBlock(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 122
    :sswitch_3
    check-cast p1, Lorg/mozilla/javascript/ast/BreakStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformBreak(Lorg/mozilla/javascript/ast/BreakStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 124
    .restart local p1
    :sswitch_4
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionCall;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunctionCall(Lorg/mozilla/javascript/ast/FunctionCall;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 126
    .restart local p1
    :sswitch_5
    check-cast p1, Lorg/mozilla/javascript/ast/ContinueStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformContinue(Lorg/mozilla/javascript/ast/ContinueStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 128
    .restart local p1
    :sswitch_6
    check-cast p1, Lorg/mozilla/javascript/ast/DoLoop;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformDoLoop(Lorg/mozilla/javascript/ast/DoLoop;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .restart local p1
    :sswitch_7
    move-object v0, p1

    .line 130
    goto :goto_0

    .line 132
    :sswitch_8
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ForInLoop;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lorg/mozilla/javascript/ast/ForInLoop;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForInLoop(Lorg/mozilla/javascript/ast/ForInLoop;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 135
    .restart local p1
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/ast/ForLoop;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformForLoop(Lorg/mozilla/javascript/ast/ForLoop;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 138
    .restart local p1
    :sswitch_9
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformFunction(Lorg/mozilla/javascript/ast/FunctionNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 140
    .restart local p1
    :sswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/ElementGet;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformElementGet(Lorg/mozilla/javascript/ast/ElementGet;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 142
    .restart local p1
    :sswitch_b
    check-cast p1, Lorg/mozilla/javascript/ast/PropertyGet;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformPropertyGet(Lorg/mozilla/javascript/ast/PropertyGet;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 144
    .restart local p1
    :sswitch_c
    check-cast p1, Lorg/mozilla/javascript/ast/ConditionalExpression;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformCondExpr(Lorg/mozilla/javascript/ast/ConditionalExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 146
    .restart local p1
    :sswitch_d
    check-cast p1, Lorg/mozilla/javascript/ast/IfStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformIf(Lorg/mozilla/javascript/ast/IfStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 153
    .restart local p1
    :sswitch_e
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLiteral(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 156
    :sswitch_f
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformName(Lorg/mozilla/javascript/ast/Name;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 158
    .restart local p1
    :sswitch_10
    check-cast p1, Lorg/mozilla/javascript/ast/NumberLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNumber(Lorg/mozilla/javascript/ast/NumberLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 160
    .restart local p1
    :sswitch_11
    check-cast p1, Lorg/mozilla/javascript/ast/NewExpression;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformNewExpr(Lorg/mozilla/javascript/ast/NewExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto :goto_0

    .line 162
    .restart local p1
    :sswitch_12
    check-cast p1, Lorg/mozilla/javascript/ast/ObjectLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformObjectLiteral(Lorg/mozilla/javascript/ast/ObjectLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    .restart local p1
    :sswitch_13
    check-cast p1, Lorg/mozilla/javascript/ast/RegExpLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    .restart local p1
    :sswitch_14
    check-cast p1, Lorg/mozilla/javascript/ast/ReturnStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformReturn(Lorg/mozilla/javascript/ast/ReturnStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    .restart local p1
    :sswitch_15
    check-cast p1, Lorg/mozilla/javascript/ast/ScriptNode;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformScript(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    .restart local p1
    :sswitch_16
    check-cast p1, Lorg/mozilla/javascript/ast/StringLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformString(Lorg/mozilla/javascript/ast/StringLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    .restart local p1
    :sswitch_17
    check-cast p1, Lorg/mozilla/javascript/ast/SwitchStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformSwitch(Lorg/mozilla/javascript/ast/SwitchStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 174
    .restart local p1
    :sswitch_18
    check-cast p1, Lorg/mozilla/javascript/ast/ThrowStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformThrow(Lorg/mozilla/javascript/ast/ThrowStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    .restart local p1
    :sswitch_19
    check-cast p1, Lorg/mozilla/javascript/ast/TryStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformTry(Lorg/mozilla/javascript/ast/TryStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    .restart local p1
    :sswitch_1a
    check-cast p1, Lorg/mozilla/javascript/ast/WhileLoop;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWhileLoop(Lorg/mozilla/javascript/ast/WhileLoop;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 180
    .restart local p1
    :sswitch_1b
    check-cast p1, Lorg/mozilla/javascript/ast/WithStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformWith(Lorg/mozilla/javascript/ast/WithStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 182
    .restart local p1
    :sswitch_1c
    check-cast p1, Lorg/mozilla/javascript/ast/Yield;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformYield(Lorg/mozilla/javascript/ast/Yield;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 187
    .restart local p1
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/ast/Assignment;

    if-eqz v0, :cond_2

    .line 188
    check-cast p1, Lorg/mozilla/javascript/ast/Assignment;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformAssignment(Lorg/mozilla/javascript/ast/Assignment;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    .restart local p1
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    if-eqz v0, :cond_3

    .line 191
    check-cast p1, Lorg/mozilla/javascript/ast/UnaryExpression;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformUnary(Lorg/mozilla/javascript/ast/UnaryExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    .restart local p1
    :cond_3
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    if-eqz v0, :cond_4

    .line 194
    check-cast p1, Lorg/mozilla/javascript/ast/XmlMemberGet;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlMemberGet(Lorg/mozilla/javascript/ast/XmlMemberGet;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    .restart local p1
    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/ast/InfixExpression;

    if-eqz v0, :cond_5

    .line 197
    check-cast p1, Lorg/mozilla/javascript/ast/InfixExpression;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformInfix(Lorg/mozilla/javascript/ast/InfixExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    .restart local p1
    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    if-eqz v0, :cond_6

    .line 200
    check-cast p1, Lorg/mozilla/javascript/ast/VariableDeclaration;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformVariables(Lorg/mozilla/javascript/ast/VariableDeclaration;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 202
    .restart local p1
    :cond_6
    instance-of v0, p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    if-eqz v0, :cond_7

    .line 203
    check-cast p1, Lorg/mozilla/javascript/ast/ParenthesizedExpression;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformParenExpr(Lorg/mozilla/javascript/ast/ParenthesizedExpression;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    .restart local p1
    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    if-eqz v0, :cond_8

    .line 206
    check-cast p1, Lorg/mozilla/javascript/ast/LabeledStatement;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLabeledStatement(Lorg/mozilla/javascript/ast/LabeledStatement;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    .restart local p1
    :cond_8
    instance-of v0, p1, Lorg/mozilla/javascript/ast/LetNode;

    if-eqz v0, :cond_9

    .line 209
    check-cast p1, Lorg/mozilla/javascript/ast/LetNode;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformLetNode(Lorg/mozilla/javascript/ast/LetNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    .restart local p1
    :cond_9
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlRef;

    if-eqz v0, :cond_a

    .line 212
    check-cast p1, Lorg/mozilla/javascript/ast/XmlRef;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlRef(Lorg/mozilla/javascript/ast/XmlRef;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    .restart local p1
    :cond_a
    instance-of v0, p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    if-eqz v0, :cond_b

    .line 215
    check-cast p1, Lorg/mozilla/javascript/ast/XmlLiteral;

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transformXmlLiteral(Lorg/mozilla/javascript/ast/XmlLiteral;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    goto/16 :goto_0

    .line 217
    .restart local p1
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_14
        0x1e -> :sswitch_11
        0x21 -> :sswitch_b
        0x24 -> :sswitch_a
        0x26 -> :sswitch_4
        0x27 -> :sswitch_f
        0x28 -> :sswitch_10
        0x29 -> :sswitch_16
        0x2a -> :sswitch_e
        0x2b -> :sswitch_e
        0x2c -> :sswitch_e
        0x2d -> :sswitch_e
        0x30 -> :sswitch_13
        0x32 -> :sswitch_18
        0x41 -> :sswitch_1
        0x42 -> :sswitch_12
        0x48 -> :sswitch_1c
        0x51 -> :sswitch_19
        0x66 -> :sswitch_c
        0x6d -> :sswitch_9
        0x70 -> :sswitch_d
        0x72 -> :sswitch_17
        0x75 -> :sswitch_1a
        0x76 -> :sswitch_6
        0x77 -> :sswitch_8
        0x78 -> :sswitch_3
        0x79 -> :sswitch_5
        0x7b -> :sswitch_1b
        0x80 -> :sswitch_7
        0x81 -> :sswitch_2
        0x88 -> :sswitch_15
        0x9d -> :sswitch_0
        0xa0 -> :sswitch_e
    .end sparse-switch
.end method

.method public transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;
    .locals 4
    .parameter "root"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory;->currentScriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 88
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/AstRoot;->isInStrictMode()Z

    move-result v3

    iput-boolean v3, p0, Lorg/mozilla/javascript/IRFactory;->inUseStrictDirective:Z

    .line 89
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v2

    .line 95
    .local v2, sourceStartOffset:I
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IRFactory;->transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ast/ScriptNode;

    .line 97
    .local v0, script:Lorg/mozilla/javascript/ast/ScriptNode;
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v1

    .line 98
    .local v1, sourceEndOffset:I
    invoke-virtual {v0, v2, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSourceBounds(II)V

    .line 101
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isGeneratingSource()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Decompiler;->getEncodedSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->setEncodedSource(Ljava/lang/String;)V

    .line 105
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/javascript/IRFactory;->decompiler:Lorg/mozilla/javascript/Decompiler;

    .line 106
    return-object v0
.end method
