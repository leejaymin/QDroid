.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lgnu/mapping/Table2D;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    const/16 v2, 0x14

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 78
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 79
    new-array v0, v2, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 43
    iput-object p1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 44
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    .line 45
    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "literal"
    .parameter "ignore"
    .parameter "code"

    .prologue
    .line 516
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    .line 518
    if-nez p2, :cond_0

    .line 519
    iget-object v0, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 520
    :cond_0
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 522
    :cond_1
    iget v0, p1, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lgnu/expr/Literal;->flags:I

    .line 523
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public emit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v0, init:Lgnu/expr/Literal;
    :goto_0
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 61
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    :goto_1
    if-eqz v0, :cond_1

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 68
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_1

    .line 74
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lgnu/expr/LitTable;->literalsCount:I

    .line 76
    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .locals 22
    .parameter "literal"
    .parameter "ignore"

    .prologue
    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 528
    .local v7, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 530
    if-nez p2, :cond_0

    .line 531
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 535
    if-nez p2, :cond_0

    .line 536
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_3

    .line 540
    if-nez p2, :cond_0

    .line 541
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 543
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 545
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v12, v0

    .line 546
    .local v12, len:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ArrayType;

    invoke-virtual {v5}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 547
    .local v9, elementType:Lgnu/bytecode/Type;
    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 548
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 550
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_0

    .line 552
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v19, v0

    aget-object v8, v19, v10

    check-cast v8, Lgnu/expr/Literal;

    .line 553
    .local v8, el:Lgnu/expr/Literal;
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 550
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 555
    :cond_4
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 556
    invoke-virtual {v7, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 557
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 558
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    goto :goto_2

    .line 561
    .end local v8           #el:Lgnu/expr/Literal;
    .end local v9           #elementType:Lgnu/bytecode/Type;
    .end local v10           #i:I
    .end local v12           #len:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 563
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ArrayType;

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 564
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 566
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 568
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    .line 569
    .local v5, clas:Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 571
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, cname:Ljava/lang/String;
    const-string v19, "int"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 573
    const-string v6, "integer"

    .line 574
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "java.lang."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 577
    invoke-static {v6}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v19

    const-string v20, "TYPE"

    invoke-virtual/range {v19 .. v20}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 581
    .end local v5           #clas:Ljava/lang/Class;
    .end local v6           #cname:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 580
    .restart local v5       #clas:Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v19, v0

    invoke-static {v5}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    .end local v5           #clas:Ljava/lang/Class;
    check-cast v5, Lgnu/bytecode/ObjectType;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    goto :goto_3

    .line 583
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v19

    if-nez v19, :cond_b

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 590
    sget-object v19, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v20, "valueOf"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 591
    .local v14, meth:Lgnu/bytecode/Method;
    if-nez v14, :cond_a

    .line 592
    sget-object v19, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v20, "make"

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 593
    :cond_a
    invoke-virtual {v7, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 594
    sget-object v19, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 599
    .end local v14           #meth:Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/bytecode/ClassType;

    .line 600
    .local v17, type:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/Literal;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_14

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 601
    .local v18, useDefaultInit:Z
    :goto_4
    const/4 v15, 0x0

    .line 602
    .local v15, method:Lgnu/bytecode/Method;
    const/4 v13, 0x0

    .line 603
    .local v13, makeStatic:Z
    if-nez v18, :cond_e

    .line 606
    const-string v19, "valueOf"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 607
    if-nez v15, :cond_c

    .line 608
    const-string v19, "make"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 610
    :cond_c
    if-eqz v15, :cond_15

    .line 611
    const/4 v13, 0x1

    .line 614
    :cond_d
    :goto_5
    if-nez v15, :cond_e

    .line 615
    const/16 v18, 0x1

    .line 617
    :cond_e
    if-eqz v18, :cond_f

    .line 619
    const-string v19, "set"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    .line 622
    :cond_f
    if-nez v15, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_10

    .line 623
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "no method to construct "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 624
    :cond_10
    if-eqz v13, :cond_16

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 627
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 643
    :goto_6
    if-eqz v13, :cond_18

    const/16 v19, 0x0

    move-object/from16 v16, v19

    .line 645
    .local v16, resolveMethod:Lgnu/bytecode/Method;
    :goto_7
    if-eqz v16, :cond_11

    .line 647
    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 648
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 650
    :cond_11
    if-eqz p2, :cond_19

    if-eqz v18, :cond_12

    if-nez v15, :cond_19

    :cond_12
    const/16 v19, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 651
    if-eqz v18, :cond_0

    if-eqz v15, :cond_0

    .line 653
    if-nez p2, :cond_13

    .line 654
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 655
    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 656
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_0

    .line 600
    .end local v13           #makeStatic:Z
    .end local v15           #method:Lgnu/bytecode/Method;
    .end local v16           #resolveMethod:Lgnu/bytecode/Method;
    .end local v18           #useDefaultInit:Z
    :cond_14
    const/16 v19, 0x0

    move/from16 v18, v19

    goto/16 :goto_4

    .line 612
    .restart local v13       #makeStatic:Z
    .restart local v15       #method:Lgnu/bytecode/Method;
    .restart local v18       #useDefaultInit:Z
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_d

    .line 613
    const-string v19, "<init>"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v15

    goto/16 :goto_5

    .line 629
    :cond_16
    if-eqz v18, :cond_17

    .line 631
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 632
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 633
    const-string v19, "<init>"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    .line 634
    .local v11, init0:Lgnu/bytecode/Method;
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_6

    .line 638
    .end local v11           #init0:Lgnu/bytecode/Method;
    :cond_17
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 639
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 640
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 641
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_6

    .line 643
    :cond_18
    const-string v19, "readResolve"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v19

    move-object/from16 v16, v19

    goto/16 :goto_7

    .line 650
    .restart local v16       #resolveMethod:Lgnu/bytecode/Method;
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .locals 19
    .parameter "value"

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    sget-object v15, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    .line 341
    :goto_0
    return-object v15

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/expr/Literal;

    .line 285
    .local v10, literal:Lgnu/expr/Literal;
    if-eqz v10, :cond_1

    move-object v15, v10

    .line 286
    goto :goto_0

    .line 287
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    move-object v15, v0

    iget-boolean v15, v15, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v15, :cond_2

    .line 288
    new-instance v15, Lgnu/expr/Literal;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 290
    .local v13, valueClass:Ljava/lang/Class;
    invoke-static {v13}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v14

    .line 292
    .local v14, valueType:Lgnu/bytecode/Type;
    sget-object v15, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    monitor-enter v15

    .line 294
    :try_start_0
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lgnu/expr/Literal;

    move-object v10, v0

    .line 295
    if-eqz v10, :cond_3

    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_7

    :cond_3
    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 299
    const/16 v11, 0x19

    .line 300
    .local v11, needed_mod:I
    move-object v6, v13

    .line 301
    .local v6, fldClass:Ljava/lang/Class;
    move-object v0, v14

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v7, v0

    .line 302
    .local v7, fldType:Lgnu/bytecode/ClassType;
    :goto_1
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_7

    .line 305
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v17

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v5

    .line 307
    .local v5, fld:Lgnu/bytecode/Field;
    :goto_2
    if-eqz v5, :cond_6

    .line 309
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getModifiers()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    and-int v16, v16, v11

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_4

    .line 313
    :try_start_1
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v12

    .line 314
    .local v12, rfld:Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 315
    .local v9, litValue:Ljava/lang/Object;
    if-eqz v9, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    if-nez v16, :cond_5

    .line 307
    .end local v9           #litValue:Ljava/lang/Object;
    .end local v12           #rfld:Ljava/lang/reflect/Field;
    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_2

    .line 318
    .restart local v9       #litValue:Ljava/lang/Object;
    .restart local v12       #rfld:Ljava/lang/reflect/Field;
    :cond_5
    :try_start_3
    new-instance v8, Lgnu/expr/Literal;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 319
    .local v8, lit:Lgnu/expr/Literal;
    sget-object v16, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 320
    move-object/from16 v0, p1

    move-object v1, v9

    if-ne v0, v1, :cond_4

    .line 321
    move-object v10, v8

    goto :goto_3

    .line 323
    .end local v8           #lit:Lgnu/expr/Literal;
    .end local v9           #litValue:Ljava/lang/Object;
    .end local v12           #rfld:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 325
    .local v4, ex:Ljava/lang/Throwable;
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "caught "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " getting static field "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 335
    .end local v4           #ex:Ljava/lang/Throwable;
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v16

    .line 329
    .restart local v5       #fld:Lgnu/bytecode/Field;
    .restart local v6       #fldClass:Ljava/lang/Class;
    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    .restart local v11       #needed_mod:I
    :cond_6
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 330
    if-nez v6, :cond_8

    .line 335
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :cond_7
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    if-eqz v10, :cond_9

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v15, v10

    .line 341
    goto/16 :goto_0

    .line 332
    .restart local v5       #fld:Lgnu/bytecode/Field;
    .restart local v6       #fldClass:Ljava/lang/Class;
    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    .restart local v11       #needed_mod:I
    :cond_8
    :try_start_6
    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v7

    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    check-cast v7, Lgnu/bytecode/ClassType;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v7       #fldType:Lgnu/bytecode/ClassType;
    goto/16 :goto_1

    .line 340
    .end local v5           #fld:Lgnu/bytecode/Field;
    .end local v6           #fldClass:Ljava/lang/Class;
    .end local v7           #fldType:Lgnu/bytecode/ClassType;
    .end local v11           #needed_mod:I
    :cond_9
    new-instance v10, Lgnu/expr/Literal;

    .end local v10           #literal:Lgnu/expr/Literal;
    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    .restart local v10       #literal:Lgnu/expr/Literal;
    goto :goto_4
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .locals 36
    .parameter "type"
    .parameter "name"
    .parameter "literal"
    .parameter "isStatic"

    .prologue
    .line 347
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object v6, v0

    .line 348
    .local v6, argTypes:[Lgnu/bytecode/Type;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v25

    .line 349
    .local v25, method:Lgnu/bytecode/Method;
    array-length v5, v6

    .line 350
    .local v5, argLength:I
    const/4 v14, 0x0

    .line 351
    .local v14, best:Lgnu/bytecode/Method;
    const-wide/16 v15, 0x0

    .line 352
    .local v15, bestArrayArgs:J
    const/4 v4, 0x0

    .line 353
    .local v4, ambiguous:Z
    const/4 v13, 0x0

    .line 355
    .end local p0
    .local v13, bParameters:[Lgnu/bytecode/Type;
    :goto_0
    if-eqz v25, :cond_10

    .line 357
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1

    .line 355
    :cond_0
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v25

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v26

    .line 360
    .local v26, mstatic:Z
    move/from16 v0, p4

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 363
    const-wide/16 v10, 0x0

    .line 364
    .local v10, arrayArgs:J
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v24

    .line 365
    .local v24, mParameters:[Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .local v20, iarg:I
    const/16 v21, 0x0

    .line 368
    .local v21, iparam:I
    :goto_2
    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 370
    if-eqz v14, :cond_2

    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-eqz v32, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-nez v32, :cond_3

    .line 372
    :cond_2
    move-object/from16 v14, v25

    .line 373
    move-object/from16 v13, v24

    .line 374
    move-wide v15, v10

    goto :goto_1

    .line 376
    :cond_3
    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-nez v32, :cond_0

    .line 381
    const/16 v27, 0x0

    .line 383
    .local v27, not1:Z
    const/16 v28, 0x0

    .line 384
    .local v28, not2:Z
    move/from16 v23, v5

    .local v23, j:I
    :cond_4
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_5

    .line 386
    aget-object v32, v13, v23

    aget-object v33, v24, v23

    invoke-virtual/range {v32 .. v33}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v17

    .line 387
    .local v17, c:I
    const/16 v32, 0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    .line 389
    const/16 v28, 0x1

    .line 390
    if-eqz v27, :cond_7

    .line 400
    .end local v17           #c:I
    :cond_5
    :goto_3
    if-eqz v27, :cond_6

    .line 402
    move-object/from16 v14, v25

    .line 403
    move-object/from16 v13, v24

    .line 405
    :cond_6
    if-eqz v27, :cond_8

    if-eqz v28, :cond_8

    const/16 v32, 0x1

    move/from16 v4, v32

    .line 406
    :goto_4
    goto :goto_1

    .line 393
    .restart local v17       #c:I
    :cond_7
    const/16 v32, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-eq v0, v1, :cond_4

    .line 395
    const/16 v27, 0x1

    .line 396
    if-eqz v28, :cond_4

    goto :goto_3

    .line 405
    .end local v17           #c:I
    :cond_8
    const/16 v32, 0x0

    move/from16 v4, v32

    goto :goto_4

    .line 409
    .end local v23           #j:I
    .end local v27           #not1:Z
    .end local v28           #not2:Z
    :cond_9
    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 411
    aget-object v3, v6, v20

    .line 412
    .local v3, aType:Lgnu/bytecode/Type;
    aget-object v29, v24, v21

    .line 413
    .local v29, pType:Lgnu/bytecode/Type;
    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 366
    .end local v29           #pType:Lgnu/bytecode/Type;
    :goto_5
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 415
    .restart local v29       #pType:Lgnu/bytecode/Type;
    :cond_a
    move-object/from16 v0, v29

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    const/16 v32, 0x40

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_0

    sget-object v32, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v3

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_b

    sget-object v32, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    move-object v0, v3

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 418
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object p0, v32, v20

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 419
    .local v18, count:I
    if-gez v18, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "gnu.math.IntNum"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 420
    const/high16 v32, -0x8000

    sub-int v18, v18, v32

    .line 421
    :cond_c
    check-cast v29, Lgnu/bytecode/ArrayType;

    .end local v29           #pType:Lgnu/bytecode/Type;
    invoke-virtual/range {v29 .. v29}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    .line 422
    .local v19, elementType:Lgnu/bytecode/Type;
    if-ltz v18, :cond_0

    add-int v32, v20, v18

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 426
    move/from16 v23, v18

    .restart local v23       #j:I
    :cond_d
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_f

    .line 428
    add-int v32, v20, v23

    add-int/lit8 v32, v32, 0x1

    aget-object v30, v6, v32

    .line 429
    .local v30, t:Lgnu/bytecode/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/PrimType;

    move/from16 v32, v0

    if-eqz v32, :cond_e

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_d

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v32

    if-nez v32, :cond_d

    goto/16 :goto_1

    .line 434
    .end local v30           #t:Lgnu/bytecode/Type;
    :cond_f
    add-int v20, v20, v18

    .line 435
    const/16 v32, 0x1

    shl-int v32, v32, v21

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    or-long v10, v10, v32

    goto/16 :goto_5

    .line 444
    .end local v3           #aType:Lgnu/bytecode/Type;
    .end local v10           #arrayArgs:J
    .end local v18           #count:I
    .end local v19           #elementType:Lgnu/bytecode/Type;
    .end local v20           #iarg:I
    .end local v21           #iparam:I
    .end local v23           #j:I
    .end local v24           #mParameters:[Lgnu/bytecode/Type;
    .end local v26           #mstatic:Z
    :cond_10
    if-eqz v4, :cond_11

    .line 445
    const/16 v32, 0x0

    .line 497
    :goto_6
    return-object v32

    .line 446
    :cond_11
    const-wide/16 v32, 0x0

    cmp-long v32, v15, v32

    if-eqz v32, :cond_12

    .line 448
    move-object v0, v13

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 449
    .local v8, args:[Ljava/lang/Object;
    move-object v0, v13

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v31, v0

    .line 450
    .local v31, types:[Lgnu/bytecode/Type;
    const/16 v20, 0x0

    .restart local v20       #iarg:I
    const/16 v21, 0x0

    .line 453
    .restart local v21       #iparam:I
    :goto_7
    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_13

    .line 494
    move-object v0, v8

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 495
    move-object/from16 v0, v31

    move-object/from16 v1, p3

    iput-object v0, v1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .end local v8           #args:[Ljava/lang/Object;
    .end local v20           #iarg:I
    .end local v21           #iparam:I
    .end local v31           #types:[Lgnu/bytecode/Type;
    :cond_12
    move-object/from16 v32, v14

    .line 497
    goto :goto_6

    .line 455
    .restart local v8       #args:[Ljava/lang/Object;
    .restart local v20       #iarg:I
    .restart local v21       #iparam:I
    .restart local v31       #types:[Lgnu/bytecode/Type;
    :cond_13
    aget-object v29, v13, v21

    .line 456
    .restart local v29       #pType:Lgnu/bytecode/Type;
    const/16 v32, 0x1

    shl-int v32, v32, v21

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    and-long v32, v32, v15

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-nez v32, :cond_14

    .line 458
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    aput-object v32, v8, v21

    .line 459
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v32, v0

    aget-object v32, v32, v20

    aput-object v32, v31, v21

    .line 451
    :goto_8
    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 463
    :cond_14
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object/from16 v32, v0

    aget-object p0, v32, v20

    check-cast p0, Ljava/lang/Number;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 464
    .restart local v18       #count:I
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v32

    const-string v33, "gnu.math.IntNum"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 465
    .local v22, isIntNum:Z
    if-eqz v22, :cond_15

    .line 466
    const/high16 v32, -0x8000

    sub-int v18, v18, v32

    .line 467
    :cond_15
    move-object/from16 v0, v29

    check-cast v0, Lgnu/bytecode/ArrayType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v19

    .line 468
    .restart local v19       #elementType:Lgnu/bytecode/Type;
    aput-object v29, v31, v21

    .line 469
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v32

    aput-object v32, v8, v21

    .line 471
    move-object/from16 v0, p3

    iget-object v0, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    move-object v7, v0

    .line 472
    .local v7, argValues:[Ljava/lang/Object;
    if-eqz v22, :cond_16

    .line 477
    aget-object p0, v8, v21

    check-cast p0, [I

    move-object/from16 v0, p0

    check-cast v0, [I

    move-object v9, v0

    .line 478
    .local v9, arr:[I
    move/from16 v23, v18

    .restart local v23       #j:I
    :goto_9
    if-lez v23, :cond_17

    .line 479
    sub-int v32, v18, v23

    add-int v33, v20, v23

    aget-object p0, v7, v33

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v33

    aput v33, v9, v32

    .line 478
    add-int/lit8 v23, v23, -0x1

    goto :goto_9

    .line 484
    .end local v9           #arr:[I
    .end local v23           #j:I
    :cond_16
    move/from16 v23, v18

    .restart local v23       #j:I
    :goto_a
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_17

    .line 485
    aget-object v32, v8, v21

    add-int/lit8 v33, v20, 0x1

    add-int v33, v33, v23

    aget-object v33, v7, v33

    move-object/from16 v0, v32

    move/from16 v1, v23

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_a

    .line 487
    :cond_17
    new-instance v12, Lgnu/expr/Literal;

    aget-object v32, v8, v21

    move-object v0, v12

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 488
    .local v12, arrayLiteral:Lgnu/expr/Literal;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/bytecode/ObjectType;

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 489
    aget-object p0, v8, v21

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v12

    iput-object v0, v1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 490
    :cond_18
    aput-object v12, v8, v21

    .line 491
    add-int v20, v20, v18

    goto/16 :goto_8
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 5
    .parameter "value"
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 84
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    iget-object v3, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 87
    .local v1, newValues:[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 88
    .local v0, newTypes:[Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 91
    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 93
    .end local v0           #newTypes:[Lgnu/bytecode/Type;
    .end local v1           #newValues:[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p1, v2, v3

    .line 94
    iget-object v2, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v3, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p2, v2, v3

    .line 95
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 96
    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .locals 7
    .parameter "literal"
    .parameter "code"

    .prologue
    .line 502
    iget-object v0, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 503
    .local v0, argTypes:[Lgnu/bytecode/Type;
    array-length v2, v0

    .line 504
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 506
    iget-object v4, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 507
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Literal;

    if-eqz v4, :cond_0

    .line 508
    check-cast v3, Lgnu/expr/Literal;

    .end local v3           #value:Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 504
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .restart local v3       #value:Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    new-instance v5, Lgnu/expr/StackTarget;

    aget-object v6, v0, v1

    invoke-direct {v5, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_1

    .line 512
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "cannot handle call to write(int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-string v0, "cannot handle call to write(byte[]) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "cannot handle call to write(byte[],int,int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .parameter "v"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 134
    return-void
.end method

.method public writeByte(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 144
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "cannot handle call to writeBytes(String) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public writeChar(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/Character;

    int-to-char v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 139
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 179
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 169
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .parameter "v"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 164
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 154
    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .parameter "v"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 159
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 10
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v4

    .line 193
    .local v4, lit:Lgnu/expr/Literal;
    iget v7, v4, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v7, v7, 0x3

    if-eqz v7, :cond_2

    .line 197
    iget-object v7, v4, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v7, :cond_0

    if-eqz p1, :cond_0

    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_0

    .line 199
    invoke-virtual {v4, p0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 200
    :cond_0
    iget v7, v4, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_1

    .line 201
    iget v7, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v4, Lgnu/expr/Literal;->flags:I

    .line 277
    .end local p1
    :cond_1
    :goto_0
    iget-object v7, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v4, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 278
    return-void

    .line 205
    .restart local p1
    :cond_2
    iget v7, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Lgnu/expr/Literal;->flags:I

    .line 206
    iget v6, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 207
    .local v6, oldStack:I
    instance-of v7, p1, Lgnu/lists/FString;

    if-eqz v7, :cond_4

    move-object v0, p1

    check-cast v0, Lgnu/lists/FString;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/FString;->size()I

    move-result v7

    const v8, 0xffff

    if-ge v7, v8, :cond_4

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v7, v8}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 261
    .end local p1
    :cond_3
    :goto_1
    iget v7, p0, Lgnu/expr/LitTable;->stackPointer:I

    sub-int v5, v7, v6

    .line 262
    .local v5, nargs:I
    if-nez v5, :cond_11

    .line 264
    sget-object v7, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v7, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 265
    sget-object v7, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v7, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 275
    :goto_2
    iget v7, v4, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Lgnu/expr/Literal;->flags:I

    goto :goto_0

    .line 212
    .end local v5           #nargs:I
    .restart local p1
    :cond_4
    instance-of v7, p1, Ljava/io/Externalizable;

    if-eqz v7, :cond_5

    .line 214
    check-cast p1, Ljava/io/Externalizable;

    .end local p1
    invoke-interface {p1, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_1

    .line 216
    .restart local p1
    :cond_5
    instance-of v7, p1, [Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 218
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 219
    .local v1, arr:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 221
    aget-object v7, v1, v3

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 224
    .end local v1           #arr:[Ljava/lang/Object;
    .end local v3           #i:I
    .restart local p1
    :cond_6
    if-eqz p1, :cond_3

    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_3

    iget-object v7, v4, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v7, v7, Lgnu/bytecode/ArrayType;

    if-nez v7, :cond_3

    .line 229
    instance-of v7, p1, Ljava/math/BigInteger;

    if-eqz v7, :cond_7

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_7
    instance-of v7, p1, Ljava/math/BigDecimal;

    if-eqz v7, :cond_8

    .line 235
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    move-object v2, v0

    .line 237
    .local v2, dec:Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->writeInt(I)V

    goto :goto_1

    .line 243
    .end local v2           #dec:Ljava/math/BigDecimal;
    :cond_8
    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_9

    .line 244
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 245
    :cond_9
    instance-of v7, p1, Ljava/lang/Short;

    if-eqz v7, :cond_a

    .line 246
    sget-object v7, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 247
    :cond_a
    instance-of v7, p1, Ljava/lang/Byte;

    if-eqz v7, :cond_b

    .line 248
    sget-object v7, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 249
    :cond_b
    instance-of v7, p1, Ljava/lang/Long;

    if-eqz v7, :cond_c

    .line 250
    sget-object v7, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 251
    :cond_c
    instance-of v7, p1, Ljava/lang/Double;

    if-eqz v7, :cond_d

    .line 252
    sget-object v7, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 253
    :cond_d
    instance-of v7, p1, Ljava/lang/Float;

    if-eqz v7, :cond_e

    .line 254
    sget-object v7, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 255
    :cond_e
    instance-of v7, p1, Ljava/lang/Character;

    if-eqz v7, :cond_f

    .line 256
    sget-object v7, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 257
    :cond_f
    instance-of v7, p1, Ljava/lang/Class;

    if-eqz v7, :cond_10

    .line 258
    sget-object v7, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v7}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_1

    .line 260
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not implement Externalizable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    .end local p1
    .restart local v5       #nargs:I
    :cond_11
    new-array v7, v5, [Ljava/lang/Object;

    iput-object v7, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 270
    new-array v7, v5, [Lgnu/bytecode/Type;

    iput-object v7, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 271
    iget-object v7, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget-object v8, v4, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    invoke-static {v7, v6, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget-object v7, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget-object v8, v4, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v7, v6, v8, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iput v6, p0, Lgnu/expr/LitTable;->stackPointer:I

    goto/16 :goto_2
.end method

.method public writeShort(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/Short;

    int-to-short v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 149
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 174
    return-void
.end method
