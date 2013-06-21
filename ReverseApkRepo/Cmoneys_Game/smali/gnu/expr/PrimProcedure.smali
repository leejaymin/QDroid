.class public Lgnu/expr/PrimProcedure;
.super Lgnu/mapping/MethodProc;
.source "PrimProcedure.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field member:Ljava/lang/reflect/Member;

.field method:Lgnu/bytecode/Method;

.field mode:C

.field op_code:I

.field retType:Lgnu/bytecode/Type;

.field source:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 702
    const-class v0, Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(ILgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 3
    .parameter "op_code"
    .parameter "classtype"
    .parameter "name"
    .parameter "retType"
    .parameter "argTypes"

    .prologue
    const/16 v2, 0xb8

    const/4 v1, 0x0

    .line 418
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 419
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 420
    if-ne p1, v2, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, p3, v0, p5, p4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 422
    iput-object p4, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 423
    iput-object p5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 424
    if-ne p1, v2, :cond_1

    move v0, v1

    :goto_1
    iput-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 425
    return-void

    :cond_0
    move v0, v1

    .line 420
    goto :goto_0

    .line 424
    :cond_1
    const/16 v0, 0x56

    goto :goto_1
.end method

.method public constructor <init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "opcode"
    .parameter "retType"
    .parameter "argTypes"

    .prologue
    .line 393
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 394
    iput p1, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 395
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 396
    iput-object p3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 397
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 295
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 296
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 297
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 299
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V
    .locals 8
    .parameter "method"
    .parameter "mode"
    .parameter "language"

    .prologue
    const/4 v7, 0x0

    .line 307
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 308
    iput-char p2, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 310
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;->init(Lgnu/bytecode/Method;)V

    .line 314
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 315
    .local v5, pTypes:[Lgnu/bytecode/Type;
    array-length v4, v5

    .line 316
    .local v4, nTypes:I
    const/4 v6, 0x0

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 317
    move v1, v4

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 319
    aget-object v2, v5, v1

    .line 320
    .local v2, javaType:Lgnu/bytecode/Type;
    instance-of v6, v2, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_1

    move-object v0, v2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 323
    :cond_1
    invoke-virtual {p3, v2}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 324
    .local v3, langType:Lgnu/bytecode/Type;
    if-eq v2, v3, :cond_0

    .line 326
    iget-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v6, :cond_2

    .line 328
    new-array v6, v4, [Lgnu/bytecode/Type;

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 329
    iget-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v5, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    :cond_2
    iget-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aput-object v3, v6, v1

    goto :goto_0

    .line 334
    .end local v2           #javaType:Lgnu/bytecode/Type;
    .end local v3           #langType:Lgnu/bytecode/Type;
    :cond_3
    iget-object v6, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    if-nez v6, :cond_4

    .line 335
    iput-object v5, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 336
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 337
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 350
    :cond_5
    :goto_1
    return-void

    .line 338
    :cond_6
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$X"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 339
    sget-object v6, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1

    .line 342
    :cond_7
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {p3, v6}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 347
    iget-object v6, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v6, v7, :cond_5

    .line 348
    sget-object v6, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    iput-object v6, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V
    .locals 1
    .parameter "method"
    .parameter "source"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 388
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 389
    iput-object p2, p0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    .line 390
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V
    .locals 1
    .parameter "method"
    .parameter "language"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "className"
    .parameter "methodName"
    .parameter "numArgs"

    .prologue
    .line 285
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Lgnu/expr/Language;)V
    .locals 1
    .parameter "method"
    .parameter "language"

    .prologue
    .line 290
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 292
    return-void
.end method

.method private compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 25
    .parameter "args"
    .parameter "startArg"
    .parameter "thisType"
    .parameter "comp"

    .prologue
    .line 449
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v21

    .line 450
    .local v21, variable:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->getName()Ljava/lang/String;

    move-result-object v17

    .line 451
    .local v17, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 452
    .local v7, arg_type:Lgnu/bytecode/Type;
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    .line 453
    .local v8, code:Lgnu/bytecode/CodeAttr;
    sget-object v22, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    move/from16 v19, v22

    .line 454
    .local v19, skipArg:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    sub-int v6, v22, v19

    .line 455
    .local v6, arg_count:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 456
    add-int/lit8 v6, v6, -0x1

    .line 457
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v18, v22, p2

    .line 458
    .local v18, nargs:I
    if-eqz p3, :cond_1

    if-eqz v19, :cond_8

    :cond_1
    const/16 v22, 0x1

    move/from16 v14, v22

    .line 464
    .local v14, is_static:Z
    :goto_1
    const/4 v9, 0x0

    .line 465
    .local v9, createVarargsArrayIfNeeded:Z
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_3

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_3

    if-eqz v14, :cond_9

    const/16 v22, 0x0

    :goto_2
    add-int v22, v22, v6

    move/from16 v0, v18

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 469
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    aget-object v22, p1, v22

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v16

    .line 470
    .local v16, lastType:Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v23, v23, v24

    aget-object v15, v22, v23

    .line 471
    .local v15, lastParam:Lgnu/bytecode/Type;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object v0, v15

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    check-cast v15, Lgnu/bytecode/ArrayType;

    .end local v15           #lastParam:Lgnu/bytecode/Type;
    invoke-virtual {v15}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 476
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 477
    const/4 v9, 0x1

    .line 478
    :cond_2
    const/16 v21, 0x0

    .line 481
    .end local v16           #lastType:Lgnu/bytecode/Type;
    :cond_3
    if-eqz v21, :cond_b

    if-eqz v14, :cond_a

    const/16 v22, 0x1

    :goto_3
    sub-int v22, v6, v22

    move/from16 v12, v22

    .line 482
    .local v12, fix_arg_count:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const/16 v22, 0x0

    move-object/from16 v4, v22

    .line 483
    .local v4, argDecl:Lgnu/expr/Declaration;
    :goto_5
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 484
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 485
    :cond_4
    const/4 v13, 0x0

    .line 487
    .local v13, i:I
    :goto_6
    if-eqz v21, :cond_e

    if-ne v13, v12, :cond_e

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v23, v6, v23

    add-int v23, v23, v19

    aget-object v7, v22, v23

    .line 490
    sget-object v22, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_5

    sget-object v22, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v7

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 492
    :cond_5
    add-int v22, p2, v13

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 543
    :cond_6
    return-void

    .line 453
    .end local v4           #argDecl:Lgnu/expr/Declaration;
    .end local v6           #arg_count:I
    .end local v9           #createVarargsArrayIfNeeded:Z
    .end local v12           #fix_arg_count:I
    .end local v13           #i:I
    .end local v14           #is_static:Z
    .end local v18           #nargs:I
    .end local v19           #skipArg:I
    :cond_7
    const/16 v22, 0x0

    move/from16 v19, v22

    goto/16 :goto_0

    .line 458
    .restart local v6       #arg_count:I
    .restart local v18       #nargs:I
    .restart local v19       #skipArg:I
    :cond_8
    const/16 v22, 0x0

    move/from16 v14, v22

    goto/16 :goto_1

    .line 465
    .restart local v9       #createVarargsArrayIfNeeded:Z
    .restart local v14       #is_static:Z
    :cond_9
    const/16 v22, 0x1

    goto/16 :goto_2

    .line 481
    :cond_a
    const/16 v22, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, p2

    move/from16 v12, v22

    goto :goto_4

    .line 482
    .restart local v12       #fix_arg_count:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v22

    move-object/from16 v4, v22

    goto :goto_5

    .line 495
    .restart local v4       #argDecl:Lgnu/expr/Declaration;
    .restart local v13       #i:I
    :cond_d
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, p2

    sub-int v22, v22, v12

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 496
    check-cast v7, Lgnu/bytecode/ArrayType;

    .end local v7           #arg_type:Lgnu/bytecode/Type;
    invoke-virtual {v7}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 497
    .restart local v7       #arg_type:Lgnu/bytecode/Type;
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 499
    :cond_e
    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 501
    if-eqz v9, :cond_13

    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    move/from16 v10, v22

    .line 502
    .local v10, createVarargsNow:Z
    :goto_7
    if-lt v13, v12, :cond_14

    .line 504
    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 505
    sub-int v22, v13, v12

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 512
    :goto_8
    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 513
    if-eqz v10, :cond_19

    sget-object v22, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v5, v22

    .line 514
    .local v5, argTypeForTarget:Lgnu/bytecode/Type;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    if-nez v22, :cond_1a

    add-int/lit8 v22, v13, 0x1

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v22

    move-object/from16 v20, v22

    .line 517
    .local v20, target:Lgnu/expr/Target;
    :goto_a
    add-int v22, p2, v13

    aget-object v22, p1, v22

    add-int v23, p2, v13

    aget-object v23, p1, v23

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 518
    if-eqz v10, :cond_f

    .line 522
    move-object v0, v7

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v10, v0

    .end local v10           #createVarargsNow:Z
    invoke-virtual {v10}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v11

    .line 523
    .local v11, eltype:Lgnu/bytecode/Type;
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 524
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 525
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 526
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 527
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 528
    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 529
    invoke-virtual {v8, v11}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 530
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 531
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 532
    const/16 v22, 0x0

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 533
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 534
    invoke-virtual {v11, v8}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 535
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 536
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 538
    .end local v11           #eltype:Lgnu/bytecode/Type;
    :cond_f
    if-lt v13, v12, :cond_10

    .line 539
    invoke-virtual {v8, v7}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 540
    :cond_10
    if-eqz v4, :cond_12

    if-nez v14, :cond_11

    if-lez v13, :cond_12

    .line 541
    :cond_11
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 485
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 501
    .end local v5           #argTypeForTarget:Lgnu/bytecode/Type;
    .end local v20           #target:Lgnu/expr/Target;
    :cond_13
    const/16 v22, 0x0

    move/from16 v10, v22

    goto/16 :goto_7

    .line 508
    .restart local v10       #createVarargsNow:Z
    :cond_14
    if-eqz v4, :cond_16

    if-nez v14, :cond_15

    if-lez v13, :cond_16

    :cond_15
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v22

    move-object/from16 v7, v22

    :goto_b
    goto/16 :goto_8

    :cond_16
    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    add-int v23, v13, v19

    aget-object v22, v22, v23

    move-object/from16 v7, v22

    goto :goto_b

    :cond_17
    if-nez v13, :cond_18

    move-object/from16 v7, p3

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    sub-int v23, v13, v23

    aget-object v22, v22, v23

    move-object/from16 v7, v22

    goto :goto_b

    :cond_19
    move-object v5, v7

    .line 513
    goto/16 :goto_9

    .line 514
    .restart local v5       #argTypeForTarget:Lgnu/bytecode/Type;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->source:Lgnu/expr/LambdaExp;

    move-object/from16 v22, v0

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v13

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;

    move-result-object v22

    move-object/from16 v20, v22

    goto/16 :goto_a
.end method

.method public static compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V
    .locals 10
    .parameter "comp"
    .parameter "method"
    .parameter "target"
    .parameter "isTailCall"
    .parameter "op_code"
    .parameter "stackType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 603
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 604
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 605
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 606
    invoke-static {p1}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 608
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 675
    :goto_0
    invoke-virtual {p2, p0, p5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 676
    :cond_0
    :goto_1
    return-void

    .line 610
    :cond_1
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-nez v6, :cond_2

    instance-of v6, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v6, :cond_5

    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 614
    :cond_2
    const/4 v2, 0x0

    .line 615
    .local v2, consumerFld:Lgnu/bytecode/Field;
    const/4 v3, 0x0

    .line 616
    .local v3, saveCallContext:Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 617
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_3

    .line 619
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 620
    .local v5, typeCallContext:Lgnu/bytecode/ClassType;
    const-string v6, "consumer"

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    .line 624
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 625
    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v3

    .line 626
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 627
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 628
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 629
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 630
    const-string v6, "gnu.lists.VoidConsumer"

    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    const-string v7, "instance"

    invoke-virtual {v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 632
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 634
    .end local v5           #typeCallContext:Lgnu/bytecode/ClassType;
    :cond_3
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 635
    if-eqz p3, :cond_4

    .line 637
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 638
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "runUntilDone"

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 641
    :cond_4
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_0

    .line 644
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 645
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 646
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 647
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto :goto_1

    .line 653
    .end local v2           #consumerFld:Lgnu/bytecode/Field;
    .end local v3           #saveCallContext:Lgnu/bytecode/Variable;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 654
    sget-object p5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 655
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 656
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 657
    .local v4, saveIndex:Lgnu/bytecode/Variable;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 658
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "startFromContext"

    invoke-virtual {v6, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 660
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 661
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitWithCleanupStart()V

    .line 662
    invoke-virtual {v1, p1, p4}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 663
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitWithCleanupCatch(Lgnu/bytecode/Variable;)V

    .line 664
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 665
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 666
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "cleanupFromContext"

    invoke-virtual {v6, v7, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 668
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitWithCleanupDone()V

    .line 669
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 670
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 671
    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "getFromContext"

    invoke-virtual {v6, v7, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    invoke-virtual {v1, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 673
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 14
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "atypes"
    .parameter "language"

    .prologue
    .line 796
    const/4 v4, 0x0

    .line 797
    .local v4, best:Lgnu/expr/PrimProcedure;
    const/4 v5, -0x1

    .line 798
    .local v5, bestCode:I
    const/4 v6, 0x0

    .line 801
    .local v6, bestIsApply:Z
    if-nez p1, :cond_0

    .line 802
    const/4 p0, 0x0

    .end local p0
    move/from16 p2, v6

    .end local v6           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v5

    .end local v5           #bestCode:I
    .local p1, bestCode:I
    move-object/from16 p3, p0

    move-object p0, v4

    .line 870
    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .end local p3
    .local p0, best:Lgnu/expr/PrimProcedure;
    :goto_0
    return-object p3

    .line 803
    .restart local v4       #best:Lgnu/expr/PrimProcedure;
    .restart local v5       #bestCode:I
    .restart local v6       #bestIsApply:Z
    .local p0, procClass:Lgnu/bytecode/ClassType;
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 804
    .local v8, mangledName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$V"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 805
    .local v9, mangledNameV:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$V$X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 806
    .local v10, mangledNameVX:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$X"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 807
    .local v11, mangledNameX:Ljava/lang/String;
    const/4 v3, 0x1

    .line 808
    .local v3, applyOk:Z
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .local p0, meth:Lgnu/bytecode/Method;
    move-object v12, p0

    .end local p0           #meth:Lgnu/bytecode/Method;
    .local v12, meth:Lgnu/bytecode/Method;
    move p0, v3

    .end local v3           #applyOk:Z
    .local p0, applyOk:Z
    move-object v3, v4

    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .local v3, best:Lgnu/expr/PrimProcedure;
    move v4, v5

    .end local v5           #bestCode:I
    .local v4, bestCode:I
    move v5, v6

    .line 809
    .end local v6           #bestIsApply:Z
    .local v5, bestIsApply:Z
    :goto_1
    if-eqz v12, :cond_9

    .line 811
    :try_start_1
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v6

    .line 812
    .local v6, mods:I
    and-int/lit8 v6, v6, 0x9

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    .line 815
    .end local v6           #mods:I
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    move-object v6, v0

    if-nez v6, :cond_2

    .line 809
    :cond_1
    :goto_2
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v6

    .end local v12           #meth:Lgnu/bytecode/Method;
    .local v6, meth:Lgnu/bytecode/Method;
    move-object v12, v6

    .end local v6           #meth:Lgnu/bytecode/Method;
    .restart local v12       #meth:Lgnu/bytecode/Method;
    goto :goto_1

    .line 818
    :cond_2
    invoke-virtual {v12}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, mname:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 825
    :cond_3
    const/4 v6, 0x0

    .local v6, isApply:Z
    move v7, v6

    .line 834
    .end local v6           #isApply:Z
    .local v7, isApply:Z
    :goto_3
    if-nez v7, :cond_4

    .line 837
    const/4 p0, 0x0

    .line 838
    if-eqz v5, :cond_4

    .line 840
    const/4 v3, 0x0

    .line 841
    const/4 v4, -0x1

    .line 842
    const/4 v5, 0x0

    .line 845
    :cond_4
    new-instance v13, Lgnu/expr/PrimProcedure;

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/Language;)V

    .line 846
    .local v13, prproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v13, p1}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    .line 847
    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v6

    .line 848
    .local v6, code:I
    if-ltz v6, :cond_1

    if-lt v6, v4, :cond_1

    .line 850
    if-le v6, v4, :cond_8

    .line 852
    move-object v3, v13

    .line 863
    .end local v13           #prproc:Lgnu/expr/PrimProcedure;
    :cond_5
    move v4, v6

    .line 864
    move v5, v7

    goto :goto_2

    .line 827
    .end local v7           #isApply:Z
    .local v6, mname:Ljava/lang/String;
    :cond_6
    if-eqz p0, :cond_1

    const-string v7, "apply"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "apply$V"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #mname:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 830
    :cond_7
    const/4 v6, 0x1

    .local v6, isApply:Z
    move v7, v6

    .end local v6           #isApply:Z
    .restart local v7       #isApply:Z
    goto :goto_3

    .line 854
    .local v6, code:I
    .restart local v13       #prproc:Lgnu/expr/PrimProcedure;
    :cond_8
    if-eqz v3, :cond_5

    .line 856
    invoke-static {v3, v13}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v13

    .end local v13           #prproc:Lgnu/expr/PrimProcedure;
    move-object v0, v13

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 857
    if-nez v3, :cond_5

    .line 859
    if-lez v4, :cond_5

    .line 860
    const/4 p0, 0x0

    .end local p0           #applyOk:Z
    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object/from16 p3, p0

    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto/16 :goto_0

    .end local v6           #code:I
    .end local v7           #isApply:Z
    .restart local v3       #best:Lgnu/expr/PrimProcedure;
    .restart local v4       #bestCode:I
    .restart local v5       #bestIsApply:Z
    .local p0, applyOk:Z
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :cond_9
    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .end local v8           #mangledName:Ljava/lang/String;
    .end local v9           #mangledNameV:Ljava/lang/String;
    .end local v10           #mangledNameVX:Ljava/lang/String;
    .end local v11           #mangledNameX:Ljava/lang/String;
    .end local v12           #meth:Lgnu/bytecode/Method;
    .local p0, best:Lgnu/expr/PrimProcedure;
    :goto_4
    move-object/from16 p3, p0

    .line 870
    goto/16 :goto_0

    .line 867
    .local v4, best:Lgnu/expr/PrimProcedure;
    .local v5, bestCode:I
    .local v6, bestIsApply:Z
    .local p0, procClass:Lgnu/bytecode/ClassType;
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :catch_0
    move-exception p0

    move/from16 p2, v6

    .end local v6           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v5

    .end local v5           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v4

    .end local v4           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto :goto_4

    .restart local v3       #best:Lgnu/expr/PrimProcedure;
    .local v4, bestCode:I
    .local v5, bestIsApply:Z
    .restart local v8       #mangledName:Ljava/lang/String;
    .restart local v9       #mangledNameV:Ljava/lang/String;
    .restart local v10       #mangledNameVX:Ljava/lang/String;
    .restart local v11       #mangledNameX:Ljava/lang/String;
    .restart local v12       #meth:Lgnu/bytecode/Method;
    .local p0, applyOk:Z
    .local p1, name:Ljava/lang/String;
    .local p2, decl:Lgnu/expr/Declaration;
    :catch_1
    move-exception p0

    move/from16 p2, v5

    .end local v5           #bestIsApply:Z
    .local p2, bestIsApply:Z
    move p1, v4

    .end local v4           #bestCode:I
    .local p1, bestCode:I
    move-object p0, v3

    .end local v3           #best:Lgnu/expr/PrimProcedure;
    .local p0, best:Lgnu/expr/PrimProcedure;
    goto :goto_4
.end method

.method public static getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 4
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 786
    array-length v2, p3

    .line 787
    .local v2, nargs:I
    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 788
    .local v0, atypes:[Lgnu/bytecode/Type;
    move v1, v2

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-object v3, p3, v1

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_0

    .line 789
    :cond_0
    invoke-static {p0, p1, p2, v0, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v3

    return-object v3
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 9
    .parameter "pproc"
    .parameter "decl"
    .parameter "atypes"
    .parameter "language"

    .prologue
    const/4 v8, 0x0

    .line 725
    instance-of v7, p0, Lgnu/expr/GenericProc;

    if-eqz v7, :cond_3

    .line 727
    move-object v0, p0

    check-cast v0, Lgnu/expr/GenericProc;

    move-object v2, v0

    .line 728
    .local v2, gproc:Lgnu/expr/GenericProc;
    iget-object v4, v2, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 729
    .local v4, methods:[Lgnu/mapping/MethodProc;
    const/4 p0, 0x0

    .line 730
    iget v3, v2, Lgnu/expr/GenericProc;->count:I

    .local v3, i:I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 732
    aget-object v7, v4, v3

    invoke-virtual {v7, p2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v1

    .line 733
    .local v1, applic:I
    if-ltz v1, :cond_0

    .line 735
    if-eqz p0, :cond_1

    move-object v7, v8

    .line 751
    .end local v1           #applic:I
    .end local v2           #gproc:Lgnu/expr/GenericProc;
    .end local v3           #i:I
    .end local v4           #methods:[Lgnu/mapping/MethodProc;
    :goto_1
    return-object v7

    .line 737
    .restart local v1       #applic:I
    .restart local v2       #gproc:Lgnu/expr/GenericProc;
    .restart local v3       #i:I
    .restart local v4       #methods:[Lgnu/mapping/MethodProc;
    :cond_1
    aget-object p0, v4, v3

    .line 738
    goto :goto_0

    .line 739
    .end local v1           #applic:I
    :cond_2
    if-nez p0, :cond_3

    move-object v7, v8

    .line 740
    goto :goto_1

    .line 742
    .end local v2           #gproc:Lgnu/expr/GenericProc;
    .end local v3           #i:I
    .end local v4           #methods:[Lgnu/mapping/MethodProc;
    :cond_3
    instance-of v7, p0, Lgnu/expr/PrimProcedure;

    if-eqz v7, :cond_4

    .line 744
    move-object v0, p0

    check-cast v0, Lgnu/expr/PrimProcedure;

    move-object v6, v0

    .line 745
    .local v6, prproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v6, p2}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v7

    if-ltz v7, :cond_4

    move-object v7, v6

    .line 746
    goto :goto_1

    .line 748
    .end local v6           #prproc:Lgnu/expr/PrimProcedure;
    :cond_4
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    .line 749
    .local v5, pclass:Ljava/lang/Class;
    if-nez v5, :cond_5

    move-object v7, v8

    .line 750
    goto :goto_1

    .line 751
    :cond_5
    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, p2, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v7

    goto :goto_1
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 4
    .parameter "pproc"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 716
    array-length v2, p2

    .line 717
    .local v2, nargs:I
    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 718
    .local v0, atypes:[Lgnu/bytecode/Type;
    move v1, v2

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    aget-object v3, p2, v1

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_0

    .line 719
    :cond_0
    invoke-static {p0, p1, v0, p3}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/bytecode/Type;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v3

    return-object v3
.end method

.method public static getMethodFor(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "pproc"
    .parameter "args"

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/mapping/Procedure;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodFor(Ljava/lang/Class;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;
    .locals 1
    .parameter "procClass"
    .parameter "name"
    .parameter "decl"
    .parameter "args"
    .parameter "language"

    .prologue
    .line 778
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    invoke-static {p0, p1, p2, p3, p4}, Lgnu/expr/PrimProcedure;->getMethodFor(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Declaration;[Lgnu/expr/Expression;Lgnu/expr/Language;)Lgnu/expr/PrimProcedure;

    move-result-object v0

    return-object v0
.end method

.method public static getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 3
    .parameter "pproc"

    .prologue
    .line 758
    instance-of v1, p0, Lgnu/expr/ModuleMethod;

    if-eqz v1, :cond_0

    .line 759
    check-cast p0, Lgnu/expr/ModuleMethod;

    .end local p0
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 764
    .local v0, procClass:Ljava/lang/Class;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v2, Lgnu/expr/PrimProcedure;->systemClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 770
    :goto_1
    return-object v1

    .line 761
    .end local v0           #procClass:Ljava/lang/Class;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #procClass:Ljava/lang/Class;
    goto :goto_0

    .line 767
    .end local p0
    :catch_0
    move-exception v1

    .line 770
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private init(Lgnu/bytecode/Method;)V
    .locals 9
    .parameter "method"

    .prologue
    const/16 v8, 0xb7

    const/4 v7, 0x1

    .line 354
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    .line 355
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v0

    .line 356
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1

    .line 357
    const/16 v5, 0xb8

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    .line 374
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v3

    .line 375
    .local v3, mtypes:[Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    array-length v5, v3

    sub-int v1, v5, v7

    .line 378
    .local v1, len:I
    new-array v4, v1, [Lgnu/bytecode/Type;

    .line 379
    .local v4, types:[Lgnu/bytecode/Type;
    const/4 v5, 0x0

    invoke-static {v3, v7, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    move-object v3, v4

    .line 382
    .end local v1           #len:I
    .end local v4           #types:[Lgnu/bytecode/Type;
    :cond_0
    iput-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    .line 383
    return-void

    .line 360
    .end local v3           #mtypes:[Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 361
    .local v2, mclass:Lgnu/bytecode/ClassType;
    iget-char v5, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v6, 0x50

    if-ne v5, v6, :cond_2

    .line 362
    iput v8, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 365
    :cond_2
    const/16 v5, 0x56

    iput-char v5, p0, Lgnu/expr/PrimProcedure;->mode:C

    .line 366
    const-string v5, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    iput v8, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_4

    .line 369
    const/16 v5, 0xb9

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0

    .line 371
    :cond_4
    const/16 v5, 0xb6

    iput v5, p0, Lgnu/expr/PrimProcedure;->op_code:I

    goto :goto_0
.end method

.method public static makeBuiltinBinary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "opcode"
    .parameter "type"

    .prologue
    .line 410
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 411
    .local v0, args:[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 412
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 413
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;
    .locals 2
    .parameter "opcode"
    .parameter "type"

    .prologue
    .line 402
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 403
    .local v0, args:[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 404
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/PrimProcedure;-><init>(ILgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    return-object v1
.end method

.method public static takesContext(Lgnu/bytecode/Method;)Z
    .locals 2
    .parameter "method"

    .prologue
    .line 62
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 22
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    .line 228
    .local v5, arg_count:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v12

    .line 229
    .local v12, is_constructor:Z
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    move/from16 v17, v19

    .line 233
    .local v17, slink:Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v8

    .line 236
    .local v8, clas:Ljava/lang/Class;
    if-eqz v17, :cond_1

    const/16 v19, 0x1

    :goto_1
    add-int v19, v19, v5

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object v15, v0

    .line 237
    .local v15, paramTypes:[Ljava/lang/Class;
    move v11, v5

    .local v11, i:I
    :goto_2
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_3

    .line 238
    if-eqz v17, :cond_2

    const/16 v19, 0x1

    :goto_3
    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v15, v19
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 277
    .end local v5           #arg_count:I
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :catch_0
    move-exception v19

    move-object/from16 v10, v19

    .line 279
    .local v10, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v19

    throw v19

    .line 229
    .end local v10           #ex:Ljava/lang/reflect/InvocationTargetException;
    .end local v17           #slink:Z
    .restart local v5       #arg_count:I
    :cond_0
    const/16 v19, 0x0

    move/from16 v17, v19

    goto :goto_0

    .line 236
    .restart local v8       #clas:Ljava/lang/Class;
    .restart local v17       #slink:Z
    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    .line 238
    .restart local v11       #i:I
    .restart local v15       #paramTypes:[Ljava/lang/Class;
    :cond_2
    const/16 v19, 0x0

    goto :goto_3

    .line 239
    :cond_3
    if-eqz v17, :cond_4

    .line 240
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassType;->getOuterLinkType()Lgnu/bytecode/ClassType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v15, v19

    .line 241
    :cond_4
    if-eqz v12, :cond_8

    .line 242
    invoke-virtual {v8, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    .line 247
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :cond_5
    :goto_4
    if-eqz v12, :cond_9

    .line 249
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object v6, v0

    .line 250
    .local v6, args:[Ljava/lang/Object;
    if-eqz v17, :cond_6

    .line 252
    move-object v0, v6

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v14, v19, 0x1

    .line 253
    .local v14, nargs:I
    move v0, v14

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 254
    .local v18, xargs:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    sub-int v21, v14, v21

    move-object v0, v6

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v0

    .end local v5           #arg_count:I
    check-cast v5, Lgnu/expr/PairClassType;

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/PairClassType;->staticLink:Ljava/lang/Object;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    .line 256
    move-object/from16 v6, v18

    .line 259
    .end local v14           #nargs:I
    .end local v18           #xargs:[Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object v5, v0

    check-cast v5, Ljava/lang/reflect/Constructor;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 274
    .end local v6           #args:[Ljava/lang/Object;
    .local v16, result:Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v19

    if-nez v19, :cond_7

    .line 275
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 281
    :cond_7
    return-void

    .line 243
    .end local v16           #result:Ljava/lang/Object;
    .restart local v5       #arg_count:I
    .restart local v8       #clas:Ljava/lang/Class;
    .restart local v11       #i:I
    .restart local v15       #paramTypes:[Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    goto :goto_4

    .line 262
    .end local v8           #clas:Ljava/lang/Class;
    .end local v11           #i:I
    .end local v15           #paramTypes:[Ljava/lang/Class;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    sget-object v20, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 265
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v0

    .line 266
    .local v7, arr:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 267
    .local v9, elClass:Ljava/lang/Class;
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 268
    .local v13, n:I
    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v16

    .line 269
    .restart local v16       #result:Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v19

    move-object/from16 v2, v16

    move/from16 v3, v20

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 272
    .end local v7           #arr:Ljava/lang/Object;
    .end local v9           #elClass:Ljava/lang/Class;
    .end local v13           #n:I
    .end local v16           #result:Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->member:Ljava/lang/reflect/Member;

    move-object v5, v0

    .end local v5           #arg_count:I
    check-cast v5, Ljava/lang/reflect/Method;

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .restart local v16       #result:Ljava/lang/Object;
    goto/16 :goto_5
.end method

.method compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "thisType"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 564
    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 565
    .local v6, args:[Lgnu/expr/Expression;
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 566
    .local v7, code:Lgnu/bytecode/CodeAttr;
    iget-object v5, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    .line 567
    .local v5, stackType:Lgnu/bytecode/Type;
    const/4 v9, 0x0

    .line 568
    .local v9, startArg:I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v8, v0

    .line 571
    .local v8, mclass:Lgnu/bytecode/ClassType;
    :goto_0
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0, v8, p3}, Lgnu/expr/ClassExp;->loadSuperStaticLink(Lgnu/expr/Expression;Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;)V

    .line 575
    :cond_0
    const/4 p1, 0x0

    .line 576
    const/4 v9, 0x1

    .line 581
    .end local v8           #mclass:Lgnu/bytecode/ClassType;
    :cond_1
    :goto_1
    invoke-direct {p0, v6, v9, p1, p3}, Lgnu/expr/PrimProcedure;->compileArgs([Lgnu/expr/Expression;ILgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 583
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v0, :cond_4

    .line 585
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    array-length v1, v6

    iget-object v2, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v7, v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPrimop(IILgnu/bytecode/Type;)V

    .line 586
    invoke-virtual {p4, p3, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 593
    :goto_2
    return-void

    .line 570
    :cond_2
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 578
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    const/4 v9, 0x1

    goto :goto_1

    .line 590
    :cond_4
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {p2}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v3

    iget v4, p0, Lgnu/expr/PrimProcedure;->op_code:I

    move-object v0, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v5, 0x0

    .line 547
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 548
    .local v2, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v4, :cond_2

    move-object v3, v5

    .line 549
    .local v3, mclass:Lgnu/bytecode/ClassType;
    :goto_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 550
    .local v1, args:[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 552
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 553
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 555
    :cond_0
    array-length v4, v1

    invoke-static {p0, v4}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, arg_error:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 557
    const/16 v4, 0x65

    invoke-virtual {p2, v4, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 559
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v5

    :goto_1
    invoke-virtual {p0, v4, p1, p2, p3}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 560
    return-void

    .line 548
    .end local v0           #arg_error:Ljava/lang/String;
    .end local v1           #args:[Lgnu/expr/Expression;
    .end local v3           #mclass:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v4, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v4}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .restart local v0       #arg_error:Ljava/lang/String;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .restart local v3       #mclass:Lgnu/bytecode/ClassType;
    :cond_3
    move-object v4, v3

    .line 559
    goto :goto_1
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 875
    invoke-super {p0}, Lgnu/mapping/MethodProc;->getName()Ljava/lang/String;

    move-result-object v0

    .line 876
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 880
    .end local v0           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 878
    .end local v1           #name:Ljava/lang/String;
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v0

    .line 879
    invoke-virtual {p0, v0}, Lgnu/expr/PrimProcedure;->setName(Ljava/lang/String;)V

    move-object v1, v0

    .line 880
    .end local v0           #name:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 680
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    if-nez p1, :cond_1

    .line 683
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 698
    :goto_0
    return-object v3

    .line 683
    :cond_0
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    goto :goto_0

    .line 685
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 687
    :cond_2
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v3

    .line 688
    .local v0, lenTypes:I
    sub-int v3, v0, v4

    if-ge p1, v3, :cond_3

    .line 689
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v3, v3, p1

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v2

    .line 691
    .local v2, varArgs:Z
    if-ge p1, v0, :cond_4

    if-nez v2, :cond_4

    .line 692
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v3, v3, p1

    goto :goto_0

    .line 694
    :cond_4
    iget-object v3, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    sub-int v4, v0, v4

    aget-object v1, v3, v4

    .line 695
    .local v1, restType:Lgnu/bytecode/Type;
    instance-of v3, v1, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_5

    .line 696
    check-cast v1, Lgnu/bytecode/ArrayType;

    .end local v1           #restType:Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_0

    .line 698
    .restart local v1       #restType:Lgnu/bytecode/Type;
    :cond_5
    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerboseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 886
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-nez v2, :cond_1

    .line 888
    const-string v2, "<op "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 889
    iget v2, p0, Lgnu/expr/PrimProcedure;->op_code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 890
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 898
    :goto_0
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 899
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 901
    if-lez v1, :cond_0

    .line 902
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 903
    :cond_0
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 894
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 895
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 896
    iget-object v2, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 905
    .restart local v1       #i:I
    :cond_2
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "argTypes"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 67
    invoke-super {p0, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v0

    .line 68
    .local v0, app:I
    array-length v1, p1

    .line 69
    .local v1, nargs:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    if-lez v1, :cond_0

    sub-int v3, v1, v5

    aget-object v3, p1, v3

    instance-of v3, v3, Lgnu/bytecode/ArrayType;

    if-eqz v3, :cond_0

    .line 75
    new-array v2, v1, [Lgnu/bytecode/Type;

    .line 76
    .local v2, tmp:[Lgnu/bytecode/Type;
    sub-int v3, v1, v5

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    sub-int v4, v1, v5

    sub-int v3, v1, v5

    aget-object v3, p1, v3

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    aput-object v3, v2, v4

    .line 78
    invoke-super {p0, v2}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    .line 80
    .end local v2           #tmp:[Lgnu/bytecode/Type;
    :goto_0
    return v3

    :cond_0
    move v3, v0

    goto :goto_0
.end method

.method public final isConstructor()Z
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->opcode()I

    move-result v0

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecial()Z
    .locals 2

    .prologue
    .line 36
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 119
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 124
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 125
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 130
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 131
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 136
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 137
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p4}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 143
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 144
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {p0, v0, p5}, Lgnu/expr/PrimProcedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 21
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 149
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    .line 150
    .local v10, nargs:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v17

    .line 151
    .local v17, takesVarArgs:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v8

    .line 152
    .local v8, fixArgs:I
    if-ge v10, v8, :cond_0

    .line 153
    const/high16 v19, -0xf

    or-int v19, v19, v8

    .line 222
    :goto_0
    return v19

    .line 154
    :cond_0
    if-nez v17, :cond_1

    if-le v10, v8, :cond_1

    .line 155
    const/high16 v19, -0xe

    or-int v19, v19, v8

    goto :goto_0

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v11, v0

    .line 157
    .local v11, paramCount:I
    const/4 v4, 0x0

    .line 158
    .local v4, elementType:Lgnu/bytecode/Type;
    const/4 v13, 0x0

    .line 159
    .local v13, restArray:[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_2
    const/16 v19, 0x1

    move/from16 v7, v19

    .line 160
    .local v7, extraCount:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v16

    .line 161
    .local v16, takesContext:Z
    new-array v12, v11, [Ljava/lang/Object;

    .line 162
    .local v12, rargs:[Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 163
    add-int/lit8 v11, v11, -0x1

    aput-object p2, v12, v11

    .line 165
    :cond_3
    if-eqz v17, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v11, v20

    aget-object v15, v19, v20

    .line 168
    .local v15, restType:Lgnu/bytecode/Type;
    sget-object v19, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object v0, v15

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    sget-object v19, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v15

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 170
    :cond_4
    const/16 v19, 0x1

    sub-int v19, v11, v19

    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v20

    aput-object v20, v12, v19

    .line 171
    move v10, v8

    .line 172
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 184
    .end local v15           #restType:Lgnu/bytecode/Type;
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/PrimProcedure;->isConstructor()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 185
    const/16 v19, 0x0

    aget-object v6, p1, v19

    .line 199
    :goto_3
    move v9, v7

    .local v9, i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 201
    aget-object v2, p1, v9

    .line 202
    .local v2, arg:Ljava/lang/Object;
    if-ge v9, v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    sub-int v20, v9, v7

    aget-object v19, v19, v20

    move-object/from16 v18, v19

    .line 203
    .local v18, type:Lgnu/bytecode/Type;
    :goto_5
    sget-object v19, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 207
    :try_start_0
    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 214
    :cond_6
    if-ge v9, v8, :cond_d

    .line 215
    sub-int v19, v9, v7

    aput-object v2, v12, v19

    .line 199
    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 159
    .end local v2           #arg:Ljava/lang/Object;
    .end local v7           #extraCount:I
    .end local v9           #i:I
    .end local v12           #rargs:[Ljava/lang/Object;
    .end local v16           #takesContext:Z
    .end local v18           #type:Lgnu/bytecode/Type;
    :cond_8
    const/16 v19, 0x0

    move/from16 v7, v19

    goto :goto_1

    .line 176
    .restart local v7       #extraCount:I
    .restart local v12       #rargs:[Ljava/lang/Object;
    .restart local v15       #restType:Lgnu/bytecode/Type;
    .restart local v16       #takesContext:Z
    :cond_9
    move-object v0, v15

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object v14, v0

    .line 177
    .local v14, restArrayType:Lgnu/bytecode/ArrayType;
    invoke-virtual {v14}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    .line 179
    .local v3, elementClass:Ljava/lang/Class;
    sub-int v19, v10, v8

    move-object v0, v3

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 181
    const/16 v19, 0x1

    sub-int v19, v11, v19

    aput-object v13, v12, v19

    goto :goto_2

    .line 186
    .end local v3           #elementClass:Ljava/lang/Class;
    .end local v14           #restArrayType:Lgnu/bytecode/ArrayType;
    .end local v15           #restType:Lgnu/bytecode/Type;
    :cond_a
    if-eqz v7, :cond_b

    .line 190
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassType;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, extraArg:Ljava/lang/Object;
    goto :goto_3

    .line 192
    .end local v6           #extraArg:Ljava/lang/Object;
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 194
    .local v5, ex:Ljava/lang/ClassCastException;
    const v19, -0xbffff

    goto/16 :goto_0

    .line 198
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #extraArg:Ljava/lang/Object;
    goto :goto_3

    .end local v6           #extraArg:Ljava/lang/Object;
    .restart local v2       #arg:Ljava/lang/Object;
    .restart local v9       #i:I
    :cond_c
    move-object/from16 v18, v4

    .line 202
    goto :goto_5

    .line 209
    .restart local v18       #type:Lgnu/bytecode/Type;
    :catch_1
    move-exception v5

    .line 211
    .restart local v5       #ex:Ljava/lang/ClassCastException;
    const/high16 v19, -0xc

    add-int/lit8 v20, v9, 0x1

    or-int v19, v19, v20

    goto/16 :goto_0

    .line 216
    .end local v5           #ex:Ljava/lang/ClassCastException;
    :cond_d
    if-eqz v13, :cond_7

    .line 217
    sub-int v19, v9, v8

    aput-object v2, v13, v19

    goto :goto_6

    .line 219
    .end local v2           #arg:Ljava/lang/Object;
    .end local v18           #type:Lgnu/bytecode/Type;
    :cond_e
    move-object v0, v6

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 220
    move-object v0, v12

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 222
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->argTypes:[Lgnu/bytecode/Type;

    array-length v0, v1

    .line 110
    .local v0, num:I
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    add-int/lit8 v0, v0, -0x1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    sub-int v1, v0, v1

    add-int/lit16 v1, v1, -0x1000

    :goto_0
    return v1

    :cond_2
    shl-int/lit8 v1, v0, 0xc

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public final opcode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lgnu/expr/PrimProcedure;->op_code:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 921
    const-string v0, "#<primitive procedure "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 924
    return-void
.end method

.method public setReturnType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "retType"

    .prologue
    .line 34
    iput-object p1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    return-void
.end method

.method public takesContext()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-static {v0}, Lgnu/expr/PrimProcedure;->takesContext(Lgnu/bytecode/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takesTarget()Z
    .locals 1

    .prologue
    .line 99
    iget-char v0, p0, Lgnu/expr/PrimProcedure;->mode:C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takesVarArgs()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    if-eqz v1, :cond_3

    .line 47
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    move v1, v3

    .line 52
    :goto_0
    return v1

    .line 49
    :cond_0
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, name:Ljava/lang/String;
    const-string v1, "$V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "$V$X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #name:Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 52
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 913
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/expr/PrimProcedure;->retType:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 914
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 915
    invoke-virtual {p0}, Lgnu/expr/PrimProcedure;->getVerboseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
