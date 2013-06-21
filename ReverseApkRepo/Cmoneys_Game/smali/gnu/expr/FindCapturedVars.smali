.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpWalker;
.source "FindCapturedVars.java"


# instance fields
.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 335
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 336
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 14
    new-instance v0, Lgnu/expr/FindCapturedVars;

    invoke-direct {v0}, Lgnu/expr/FindCapturedVars;-><init>()V

    .line 15
    .local v0, walker:Lgnu/expr/FindCapturedVars;
    invoke-virtual {v0, p1}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    .line 16
    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    .line 17
    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 6
    .parameter "name"
    .parameter "function"

    .prologue
    const/4 v5, 0x1

    .line 341
    move-object v2, p1

    .line 342
    .local v2, key:Ljava/lang/Object;
    if-eqz p2, :cond_0

    instance-of v3, p1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-nez v3, :cond_4

    .line 345
    const/4 p2, 0x0

    .line 349
    .end local v2           #key:Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v3, :cond_5

    .line 351
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 352
    const/4 v1, 0x0

    .line 356
    .local v1, decl:Lgnu/expr/Declaration;
    :goto_1
    if-nez v1, :cond_3

    .line 358
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v3, p1}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 359
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 360
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 361
    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 363
    :cond_1
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v3}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    const/16 v3, 0x800

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 365
    :cond_2
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 366
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 367
    const/high16 v3, 0x1

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 368
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 369
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_3
    return-object v1

    .line 347
    .end local v1           #decl:Lgnu/expr/Declaration;
    .restart local v2       #key:Ljava/lang/Object;
    :cond_4
    new-instance v2, Lgnu/mapping/KeyPair;

    .end local v2           #key:Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v3, v0

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .local v2, key:Lgnu/mapping/KeyPair;
    goto :goto_0

    .line 355
    .end local v2           #key:Lgnu/mapping/KeyPair;
    :cond_5
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .restart local v1       #decl:Lgnu/expr/Declaration;
    goto :goto_1
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 18
    .parameter "decl"

    .prologue
    .line 215
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v14

    if-nez v14, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v14, v0

    if-eqz v14, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v14

    if-nez v14, :cond_0

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v14, v0

    iget-boolean v14, v14, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v14

    if-nez v14, :cond_0

    .line 224
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    .line 225
    .local v3, curLambda:Lgnu/expr/LambdaExp;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v14

    invoke-virtual {v14}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    .line 241
    .local v6, declLambda:Lgnu/expr/LambdaExp;
    const/4 v10, 0x0

    .line 242
    .local v10, oldParent:Lgnu/expr/LambdaExp;
    const/4 v2, 0x0

    .line 243
    .local v2, chain:Lgnu/expr/LambdaExp;
    :goto_1
    if-eq v3, v6, :cond_7

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 245
    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    .line 246
    .local v4, curParent:Lgnu/expr/LambdaExp;
    if-eq v4, v10, :cond_4

    .line 249
    iget-object v2, v4, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 250
    move-object v10, v4

    .line 252
    :cond_4
    iget-object v5, v3, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    .line 253
    .local v5, curReturn:Lgnu/expr/ApplyExp;
    if-eqz v2, :cond_5

    if-nez v5, :cond_6

    .line 256
    :cond_5
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    goto :goto_0

    .line 259
    :cond_6
    iget-object v3, v5, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 260
    iget-object v2, v2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 261
    goto :goto_1

    .line 262
    .end local v4           #curParent:Lgnu/expr/LambdaExp;
    .end local v5           #curReturn:Lgnu/expr/ApplyExp;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 264
    instance-of v14, v3, Lgnu/expr/ModuleExp;

    if-nez v14, :cond_0

    .line 272
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    .line 274
    .local v13, value:Lgnu/expr/Expression;
    if-eqz v13, :cond_9

    instance-of v14, v13, Lgnu/expr/LambdaExp;

    if-nez v14, :cond_d

    .line 275
    :cond_9
    const/4 v7, 0x0

    .line 287
    .local v7, declValue:Lgnu/expr/LambdaExp;
    :cond_a
    :goto_2
    const/high16 v14, 0x1

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 290
    move-object v12, v3

    .line 292
    .local v12, parent:Lgnu/expr/LambdaExp;
    :goto_3
    if-ne v12, v6, :cond_f

    .line 302
    .end local v12           #parent:Lgnu/expr/LambdaExp;
    :cond_b
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v14, v0

    if-eqz v14, :cond_11

    .line 304
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 305
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_0

    .line 268
    .end local v7           #declValue:Lgnu/expr/LambdaExp;
    .end local v13           #value:Lgnu/expr/Expression;
    :cond_c
    if-ne v3, v6, :cond_8

    goto/16 :goto_0

    .line 278
    .restart local v13       #value:Lgnu/expr/Expression;
    :cond_d
    move-object v0, v13

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v7, v0

    .line 279
    .restart local v7       #declValue:Lgnu/expr/LambdaExp;
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v14

    if-nez v14, :cond_0

    .line 281
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 282
    const/4 v7, 0x0

    goto :goto_2

    .line 283
    :cond_e
    if-ne v7, v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    .line 294
    .restart local v12       #parent:Lgnu/expr/LambdaExp;
    :cond_f
    iget-object v14, v12, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v14, :cond_10

    iget-object v14, v12, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const/16 v15, 0x800

    invoke-virtual {v14, v15}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 297
    const/16 v14, 0x800

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    goto :goto_4

    .line 290
    :cond_10
    invoke-virtual {v12}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v12

    goto :goto_3

    .line 307
    .end local v12           #parent:Lgnu/expr/LambdaExp;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_12

    if-nez v7, :cond_0

    .line 309
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v14

    if-nez v14, :cond_13

    .line 311
    move-object v9, v3

    .line 312
    .local v9, heapLambda:Lgnu/expr/LambdaExp;
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 313
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v12

    .line 314
    .restart local v12       #parent:Lgnu/expr/LambdaExp;
    move-object v11, v12

    .local v11, outer:Lgnu/expr/LambdaExp;
    :goto_5
    if-eq v11, v6, :cond_13

    if-eqz v11, :cond_13

    .line 316
    move-object v9, v11

    .line 317
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_14

    if-ne v7, v11, :cond_14

    .line 331
    .end local v9           #heapLambda:Lgnu/expr/LambdaExp;
    .end local v11           #outer:Lgnu/expr/LambdaExp;
    .end local v12           #parent:Lgnu/expr/LambdaExp;
    :cond_13
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_0

    .line 319
    .restart local v9       #heapLambda:Lgnu/expr/LambdaExp;
    .restart local v11       #outer:Lgnu/expr/LambdaExp;
    .restart local v12       #parent:Lgnu/expr/LambdaExp;
    :cond_14
    iget-object v8, v9, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 320
    .local v8, heapDecl:Lgnu/expr/Declaration;
    if-eqz v8, :cond_15

    const/16 v14, 0x800

    invoke-virtual {v8, v14}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    move-object v14, v0

    const/16 v15, 0x65

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "static "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " references non-static "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 326
    :cond_15
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 327
    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    .line 328
    goto :goto_5
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 3
    .parameter "containing"
    .parameter "decl"

    .prologue
    .line 400
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_1

    .line 402
    iget-object v1, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 403
    .local v1, rexp:Lgnu/expr/ReferenceExp;
    iget-object v0, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 404
    .local v0, orig:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 407
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 415
    .end local v0           #orig:Lgnu/expr/Declaration;
    .end local v1           #rexp:Lgnu/expr/ReferenceExp;
    :goto_0
    return-void

    .line 411
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_0
.end method

.method protected walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 13
    .parameter "exp"

    .prologue
    const/16 v12, 0x1000

    .line 21
    const/4 v7, 0x0

    .line 31
    .local v7, skipFunc:Z
    iget-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/ReferenceExp;

    if-eqz v10, :cond_3

    sget v10, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_3

    .line 34
    iget-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v10, Lgnu/expr/ReferenceExp;

    iget-object v10, v10, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v10}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 36
    .local v3, decl:Lgnu/expr/Declaration;
    if-eqz v3, :cond_0

    iget-object v10, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v3, v12}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 40
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    .line 41
    .local v9, value:Lgnu/expr/Expression;
    instance-of v10, v9, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_0

    .line 43
    move-object v0, v9

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v5, v0

    .line 44
    .local v5, lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v10

    if-nez v10, :cond_0

    .line 45
    const/4 v7, 0x1

    .line 80
    .end local v3           #decl:Lgnu/expr/Declaration;
    .end local v5           #lexp:Lgnu/expr/LambdaExp;
    .end local v9           #value:Lgnu/expr/Expression;
    :cond_0
    if-nez v7, :cond_1

    .line 81
    iget-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v10, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v10

    iput-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 82
    :cond_1
    iget-object v10, p0, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    if-nez v10, :cond_2

    .line 83
    iget-object v10, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p0, v10}, Lgnu/expr/FindCapturedVars;->walkExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v10

    iput-object v10, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 84
    :cond_2
    return-object p1

    .line 51
    :cond_3
    iget-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 53
    iget-object v10, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v10, Lgnu/expr/QuoteExp;

    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 54
    .local v8, val:Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 55
    .local v1, arg0:Lgnu/expr/Expression;
    instance-of v10, v8, Lgnu/expr/PrimProcedure;

    if-eqz v10, :cond_0

    instance-of v10, v1, Lgnu/expr/ReferenceExp;

    if-eqz v10, :cond_0

    .line 57
    move-object v0, v8

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v6, v0

    .line 58
    .local v6, pproc:Lgnu/expr/PrimProcedure;
    check-cast v1, Lgnu/expr/ReferenceExp;

    .end local v1           #arg0:Lgnu/expr/Expression;
    iget-object v10, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v10}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 60
    .restart local v3       #decl:Lgnu/expr/Declaration;
    if-eqz v3, :cond_0

    iget-object v10, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_0

    invoke-virtual {v3, v12}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 63
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    .line 64
    .restart local v9       #value:Lgnu/expr/Expression;
    instance-of v10, v9, Lgnu/expr/ClassExp;

    if-eqz v10, :cond_0

    .line 66
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 67
    .local v2, args:[Lgnu/expr/Expression;
    move-object v0, v9

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v5, v0

    .line 68
    .restart local v5       #lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v10

    if-nez v10, :cond_0

    .line 70
    iget-object v10, v3, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    iput-object v10, p1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 71
    iput-object p1, v3, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .line 72
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    array-length v10, v2

    if-ge v4, v10, :cond_2

    .line 73
    aget-object v10, v2, v4

    invoke-virtual {v10, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;

    move-result-object v1

    .line 114
    .local v1, ret:Lgnu/expr/Expression;
    iget-boolean v2, p1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v2, :cond_2

    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    iget-object v2, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v2, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 126
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v3, 0x77

    const-string v4, "simple class requiring lexical link - use define-class instead"

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 130
    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_1

    .line 131
    iget-object v2, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v3, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 133
    :cond_1
    return-object v1

    .line 117
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v0, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_0

    .line 122
    const-string v2, "*init*"

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 120
    :cond_3
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0
.end method

.method public walkDefaultArgs(Lgnu/expr/LambdaExp;)V
    .locals 3
    .parameter "exp"

    .prologue
    .line 89
    iget-object v1, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkDefaultArgs(Lgnu/expr/LambdaExp;)V

    .line 100
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 101
    .local v0, param:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const/4 v1, 0x1

    const/16 v2, 0x200

    invoke-virtual {p1, v1, v2}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_1
.end method

.method protected walkFluidLetExp(Lgnu/expr/FluidLetExp;)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"

    .prologue
    .line 155
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v1, :cond_1

    .line 157
    iget-object v2, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v2, :cond_0

    .line 159
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 160
    .local v0, bind:Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 161
    iput-object v0, v1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 155
    .end local v0           #bind:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method protected walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"

    .prologue
    .line 169
    iget-object v10, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/BeginExp;

    if-eqz v10, :cond_3

    .line 179
    iget-object v5, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 180
    .local v5, inits:[Lgnu/expr/Expression;
    array-length v6, v5

    .line 181
    .local v6, len:I
    iget-object v10, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v10, Lgnu/expr/BeginExp;

    iget-object v3, v10, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 182
    .local v3, exps:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 183
    .local v4, init_index:I
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 184
    .local v2, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 185
    .local v1, begin_index:I
    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_3

    if-ge v4, v6, :cond_3

    .line 188
    aget-object v9, v3, v1

    .line 189
    .local v9, st:Lgnu/expr/Expression;
    instance-of v10, v9, Lgnu/expr/SetExp;

    if-eqz v10, :cond_2

    .line 191
    move-object v0, v9

    check-cast v0, Lgnu/expr/SetExp;

    move-object v8, v0

    .line 192
    .local v8, set:Lgnu/expr/SetExp;
    iget-object v10, v8, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-ne v10, v2, :cond_2

    aget-object v10, v5, v4

    sget-object v11, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_2

    invoke-virtual {v8}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 196
    iget-object v7, v8, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 197
    .local v7, new_value:Lgnu/expr/Expression;
    instance-of v10, v7, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_0

    instance-of v10, v7, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v10

    if-ne v10, v7, :cond_1

    .line 201
    aput-object v7, v5, v4

    .line 202
    sget-object v10, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v10, v3, v1

    .line 204
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 205
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 186
    .end local v7           #new_value:Lgnu/expr/Expression;
    .end local v8           #set:Lgnu/expr/SetExp;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1           #begin_index:I
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v3           #exps:[Lgnu/expr/Expression;
    .end local v4           #init_index:I
    .end local v5           #inits:[Lgnu/expr/Expression;
    .end local v6           #len:I
    .end local v9           #st:Lgnu/expr/Expression;
    :cond_3
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;

    move-result-object v10

    return-object v10
.end method

.method protected walkModuleExp(Lgnu/expr/ModuleExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 138
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 139
    .local v1, saveModule:Lgnu/expr/ModuleExp;
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 140
    .local v0, saveDecls:Ljava/util/Hashtable;
    iput-object p1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 144
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 148
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 149
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    return-object v2

    .line 148
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 149
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    throw v2
.end method

.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"

    .prologue
    .line 376
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 377
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 379
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 381
    invoke-virtual {p1, v0}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 383
    :cond_0
    const/high16 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 385
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const-string v3, "warn-undefined-variable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 389
    .local v1, resolved:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 390
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v3, 0x77

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no declaration seen for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 394
    .end local v1           #resolved:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 395
    return-object p1
.end method

.method protected walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 432
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 433
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 436
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 438
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 442
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 444
    :cond_2
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method protected walkThisExp(Lgnu/expr/ThisExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 419
    invoke-virtual {p1}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    move-object v0, p1

    .line 427
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method
