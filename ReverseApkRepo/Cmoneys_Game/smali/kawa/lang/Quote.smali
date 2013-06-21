.class public Lkawa/lang/Quote;
.super Lkawa/lang/Syntax;
.source "Quote.java"


# static fields
.field private static final CYCLE:Ljava/lang/Object; = null

.field protected static final QUOTE_DEPTH:I = -0x1

.field private static final WORKING:Ljava/lang/Object;

.field public static final plainQuote:Lkawa/lang/Quote;

.field public static final quasiQuote:Lkawa/lang/Quote;

.field static final quoteType:Lgnu/bytecode/ClassType;

.field static final vectorAppendType:Lgnu/bytecode/ClassType;


# instance fields
.field protected isQuasi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quote"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    .line 21
    new-instance v0, Lkawa/lang/Quote;

    const-string v1, "quasiquote"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/lang/Quote;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/lang/Quote;->quasiQuote:Lkawa/lang/Quote;

    .line 288
    new-instance v0, Ljava/lang/String;

    const-string v1, "(working)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    .line 289
    new-instance v0, Ljava/lang/String;

    const-string v1, "(cycle)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    .line 480
    const-string v0, "kawa.standard.vector_append"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->vectorAppendType:Lgnu/bytecode/ClassType;

    .line 482
    const-string v0, "kawa.lang.Quote"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "isQuasi"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 26
    iput-boolean p2, p0, Lkawa/lang/Quote;->isQuasi:Z

    .line 27
    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "args"

    .prologue
    const/4 v12, 0x1

    .line 440
    array-length v3, p0

    .line 441
    .local v3, count:I
    if-nez v3, :cond_1

    .line 442
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 477
    :cond_0
    return-object v11

    .line 443
    :cond_1
    sub-int v11, v3, v12

    aget-object v9, p0, v11

    .line 444
    .local v9, result:Ljava/lang/Object;
    sub-int v4, v3, v12

    .local v4, i:I
    move-object v11, v9

    .end local v9           #result:Ljava/lang/Object;
    :cond_2
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_0

    .line 446
    aget-object v6, p0, v4

    .line 447
    .local v6, list:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 448
    .local v2, copy:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 449
    .local v5, last:Lgnu/lists/Pair;
    const/4 v10, 0x0

    .local v10, syntax:Lkawa/lang/SyntaxForm;
    move-object v9, v2

    .line 452
    .end local v2           #copy:Ljava/lang/Object;
    :goto_1
    instance-of v12, v6, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_3

    .line 454
    move-object v0, v6

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v10, v0

    .line 455
    iget-object v6, v10, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    goto :goto_1

    .line 457
    :cond_3
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v12, :cond_4

    .line 471
    if-eqz v5, :cond_2

    .line 473
    invoke-virtual {v5, v11}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .local v9, result:Lgnu/lists/Pair;
    move-object v11, v9

    .line 474
    goto :goto_0

    .line 459
    .end local v9           #result:Lgnu/lists/Pair;
    :cond_4
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 460
    .local v7, list_pair:Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 461
    .local v1, car:Ljava/lang/Object;
    if-eqz v10, :cond_5

    instance-of v12, v1, Lkawa/lang/SyntaxForm;

    if-nez v12, :cond_5

    .line 462
    iget-object v12, v10, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-static {v1, v12}, Lkawa/lang/SyntaxForm;->make(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Lkawa/lang/SyntaxForm;

    move-result-object v1

    .line 463
    .end local v1           #car:Ljava/lang/Object;
    :cond_5
    new-instance v8, Lgnu/lists/Pair;

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    .local v8, new_pair:Lgnu/lists/Pair;
    if-nez v5, :cond_6

    .line 465
    move-object v2, v8

    .local v2, copy:Lgnu/lists/Pair;
    move-object v12, v2

    .line 468
    .end local v2           #copy:Lgnu/lists/Pair;
    :goto_2
    move-object v5, v8

    .line 469
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v12

    .line 470
    goto :goto_1

    .line 467
    :cond_6
    invoke-virtual {v5, v8}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    move-object v12, v9

    goto :goto_2
.end method

.method public static consX$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 434
    invoke-static {p0}, Lgnu/lists/LList;->consX([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 2
    .parameter "args"

    .prologue
    .line 413
    const-string v0, "kawa.lib.vectors"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "$make$vector$"

    invoke-static {v0, v1, p0}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    return-object v0
.end method

.method public static makeSymbol(Lgnu/mapping/Namespace;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 3
    .parameter "ns"
    .parameter "local"

    .prologue
    .line 78
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 79
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    return-object v2

    .line 85
    .end local v1           #name:Ljava/lang/String;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public static quote(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"

    .prologue
    .line 56
    sget-object v1, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v2, -0x1

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-virtual {v1, p0, v2, v0}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 49
    sget-object v0, Lkawa/lang/Quote;->plainQuote:Lkawa/lang/Quote;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1, p1}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "val"
    .parameter "tr"

    .prologue
    .line 61
    instance-of v0, p1, Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/expr/Expression;

    .end local p1
    move-object v0, p1

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 23
    .parameter "template"
    .parameter "depth"
    .parameter "syntax"
    .parameter "seen"
    .parameter "tr"

    .prologue
    .line 304
    move-object/from16 v0, p4

    check-cast v0, Ljava/util/IdentityHashMap;

    move-object v14, v0

    .line 305
    .local v14, map:Ljava/util/IdentityHashMap;
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 306
    .local v17, old:Ljava/lang/Object;
    sget-object v4, Lkawa/lang/Quote;->WORKING:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v4

    if-ne v0, v1, :cond_0

    .line 308
    sget-object v4, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    .line 408
    .end local p2
    :goto_0
    return-object v4

    .line 311
    .restart local p2
    :cond_0
    sget-object v4, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v4

    if-ne v0, v1, :cond_1

    move-object/from16 v4, v17

    .line 313
    goto :goto_0

    .line 315
    :cond_1
    if-eqz v17, :cond_2

    move-object/from16 v4, v17

    .line 316
    goto :goto_0

    .line 319
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v4, v0

    if-eqz v4, :cond_4

    .line 320
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    .local v20, result:Ljava/lang/Object;
    move-object/from16 v4, v20

    .line 404
    .end local v20           #result:Ljava/lang/Object;
    .end local p2
    :goto_1
    move-object/from16 v0, p1

    move-object v1, v4

    if-eq v0, v1, :cond_3

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lang/Quote;->CYCLE:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    .line 405
    const/16 v5, 0x65

    const-string v6, "cycle in non-literal data"

    move-object/from16 v0, p5

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 406
    :cond_3
    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    .restart local p2
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v4, v0

    if-eqz v4, :cond_5

    .line 323
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 p3, v0

    .line 324
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v5, v0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20       #result:Ljava/lang/Object;
    move-object/from16 v4, v20

    goto :goto_1

    .line 326
    .end local v20           #result:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/FVector;

    move v4, v0

    if-eqz v4, :cond_14

    .line 328
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/FVector;

    move-object/from16 v22, v0

    .line 329
    .local v22, vector:Lgnu/lists/FVector;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/FVector;->size()I

    move-result v16

    .line 330
    .local v16, n:I
    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 336
    .local v12, buffer:[Ljava/lang/Object;
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 337
    .local v21, state:[B
    const/4 v15, 0x0

    .line 338
    .local v15, max_state:B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 340
    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 341
    .local v5, element:Ljava/lang/Object;
    move/from16 v6, p2

    .line 343
    .local v6, element_depth:I
    instance-of v4, v5, Lgnu/lists/Pair;

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, p2

    move v1, v4

    if-le v0, v1, :cond_9

    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    .local v18, pair:Lgnu/lists/Pair;
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    const-string v7, "unquote-splicing"

    move-object/from16 v0, p5

    move-object v1, v4

    move-object/from16 v2, p3

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_9

    .line 349
    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/lists/Pair;

    .local v19, pair_cdr:Lgnu/lists/Pair;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .end local v5           #element:Ljava/lang/Object;
    if-eq v4, v5, :cond_7

    .line 351
    .end local v19           #pair_cdr:Lgnu/lists/Pair;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid used of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in quasiquote template"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto/16 :goto_0

    .line 353
    .restart local v19       #pair_cdr:Lgnu/lists/Pair;
    :cond_7
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v12, v13

    .line 354
    const/4 v4, 0x3

    aput-byte v4, v21, v13

    .line 366
    .end local v18           #pair:Lgnu/lists/Pair;
    .end local v19           #pair_cdr:Lgnu/lists/Pair;
    :goto_3
    aget-byte v4, v21, v13

    if-le v4, v15, :cond_8

    .line 367
    aget-byte v15, v21, v13

    .line 338
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .restart local v5       #element:Ljava/lang/Object;
    :cond_9
    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 358
    invoke-virtual/range {v4 .. v9}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v12, v13

    .line 359
    aget-object v4, v12, v13

    if-ne v4, v5, :cond_a

    .line 360
    const/4 v4, 0x0

    aput-byte v4, v21, v13

    goto :goto_3

    .line 361
    :cond_a
    aget-object v4, v12, v13

    instance-of v4, v4, Lgnu/expr/Expression;

    if-eqz v4, :cond_b

    .line 362
    const/4 v4, 0x2

    aput-byte v4, v21, v13

    goto :goto_3

    .line 364
    :cond_b
    const/4 v4, 0x1

    aput-byte v4, v21, v13

    goto :goto_3

    .line 369
    .end local v5           #element:Ljava/lang/Object;
    .end local v6           #element_depth:I
    :cond_c
    if-nez v15, :cond_d

    .line 370
    move-object/from16 v20, v22

    .end local p2
    :goto_4
    move-object/from16 v4, v20

    .line 400
    goto/16 :goto_1

    .line 371
    .restart local p2
    :cond_d
    const/4 v4, 0x1

    if-ne v15, v4, :cond_e

    .line 372
    new-instance v20, Lgnu/lists/FVector;

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-direct {v0, v1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    .local v20, result:Lgnu/lists/FVector;
    goto :goto_4

    .line 375
    .end local v20           #result:Lgnu/lists/FVector;
    :cond_e
    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v11, v0

    .line 376
    .local v11, args:[Lgnu/expr/Expression;
    const/4 v13, 0x0

    .end local p2
    :goto_5
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    .line 378
    aget-byte v4, v21, v13

    const/4 v5, 0x3

    if-ne v4, v5, :cond_f

    .line 379
    aget-object p2, v12, v13

    check-cast p2, Lgnu/expr/Expression;

    aput-object p2, v11, v13

    .line 376
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 380
    :cond_f
    const/4 v4, 0x3

    if-ge v15, v4, :cond_10

    .line 381
    aget-object v4, v12, v13

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 382
    :cond_10
    aget-byte v4, v21, v13

    const/4 v5, 0x2

    if-ge v4, v5, :cond_11

    .line 384
    const/4 v4, 0x1

    new-array v10, v4, [Ljava/lang/Object;

    .line 385
    .local v10, arg1:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v12, v13

    aput-object v5, v10, v4

    .line 386
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v10}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 390
    .end local v10           #arg1:[Ljava/lang/Object;
    :cond_11
    const/4 v4, 0x1

    new-array v10, v4, [Lgnu/expr/Expression;

    .line 391
    .local v10, arg1:[Lgnu/expr/Expression;
    const/4 v4, 0x0

    aget-object p2, v12, v13

    check-cast p2, Lgnu/expr/Expression;

    aput-object p2, v10, v4

    .line 392
    invoke-static {v10}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v11, v13

    goto :goto_6

    .line 395
    .end local v10           #arg1:[Lgnu/expr/Expression;
    :cond_12
    const/4 v4, 0x3

    if-ge v15, v4, :cond_13

    .line 396
    invoke-static {v11}, Lkawa/lang/Quote;->makeInvokeMakeVector([Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v20

    .local v20, result:Lgnu/expr/ApplyExp;
    goto :goto_4

    .line 398
    .end local v20           #result:Lgnu/expr/ApplyExp;
    :cond_13
    sget-object v4, Lkawa/lang/Quote;->vectorAppendType:Lgnu/bytecode/ClassType;

    const-string v5, "apply"

    invoke-static {v4, v5, v11}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v20

    .restart local v20       #result:Lgnu/expr/ApplyExp;
    goto :goto_4

    .line 402
    .end local v11           #args:[Lgnu/expr/Expression;
    .end local v12           #buffer:[Ljava/lang/Object;
    .end local v13           #i:I
    .end local v15           #max_state:B
    .end local v16           #n:I
    .end local v20           #result:Lgnu/expr/ApplyExp;
    .end local v21           #state:[B
    .end local v22           #vector:Lgnu/lists/FVector;
    .restart local p2
    :cond_14
    move-object/from16 v20, p1

    .local v20, result:Ljava/lang/Object;
    move-object/from16 v4, v20

    goto/16 :goto_1
.end method

.method protected expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;
    .locals 6
    .parameter "template"
    .parameter "depth"
    .parameter "tr"

    .prologue
    .line 38
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 42
    .local v4, seen:Ljava/util/IdentityHashMap;
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected expandColonForms()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method expand_pair(Lgnu/lists/Pair;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 40
    .parameter "list"
    .parameter "depth"
    .parameter "syntax"
    .parameter "seen"
    .parameter "tr"

    .prologue
    .line 92
    move-object/from16 v27, p1

    .line 100
    .local v27, pair:Lgnu/lists/Pair;
    :goto_0
    move-object/from16 v32, v27

    .line 106
    .local v32, rest:Lgnu/lists/Pair;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Quote;->expandColonForms()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_4

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lgnu/lists/Pair;

    .local v25, p1:Lgnu/lists/Pair;
    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lgnu/lists/Pair;

    .local v26, p2:Lgnu/lists/Pair;
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_4

    invoke-virtual/range {v26 .. v26}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_4

    .line 114
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v30

    .line 115
    .local v30, part1:Lgnu/expr/Expression;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v31

    .line 116
    .local v31, part2:Lgnu/expr/Expression;
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v22

    .line 117
    .local v22, ns:Lgnu/mapping/Namespace;
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v37

    .line 119
    .local v37, sym:Lgnu/mapping/Symbol;
    if-eqz v37, :cond_0

    .line 120
    move-object/from16 v15, v37

    .local v15, cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .local v6, rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 244
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .end local v22           #ns:Lgnu/mapping/Namespace;
    .end local v25           #p1:Lgnu/lists/Pair;
    .end local v26           #p2:Lgnu/lists/Pair;
    .end local v30           #part1:Lgnu/expr/Expression;
    .end local v31           #part2:Lgnu/expr/Expression;
    .end local v32           #rest:Lgnu/lists/Pair;
    .end local v37           #sym:Lgnu/mapping/Symbol;
    .end local p3
    :goto_1
    move-object/from16 v0, p1

    move-object v1, v6

    if-ne v0, v1, :cond_18

    move-object/from16 v5, p3

    .line 285
    :goto_2
    return-object v5

    .line 121
    .restart local v22       #ns:Lgnu/mapping/Namespace;
    .restart local v25       #p1:Lgnu/lists/Pair;
    .restart local v26       #p2:Lgnu/lists/Pair;
    .restart local v30       #part1:Lgnu/expr/Expression;
    .restart local v31       #part2:Lgnu/expr/Expression;
    .restart local v32       #rest:Lgnu/lists/Pair;
    .restart local v37       #sym:Lgnu/mapping/Symbol;
    .restart local p3
    :cond_0
    if-eqz v22, :cond_1

    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 122
    new-instance v15, Lgnu/expr/ApplyExp;

    sget-object v5, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v6, "makeSymbol"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    invoke-static/range {v22 .. v22}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v31, v6, v7

    invoke-direct {v15, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .local v15, cdr:Lgnu/expr/ApplyExp;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto :goto_1

    .line 125
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/expr/ApplyExp;
    :cond_1
    move-object/from16 v0, v30

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v5, v0

    if-eqz v5, :cond_2

    .line 127
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v30, Lgnu/expr/ReferenceExp;

    .end local v30           #part1:Lgnu/expr/Expression;
    invoke-virtual/range {v30 .. v30}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v31, Lgnu/expr/QuoteExp;

    .end local v31           #part2:Lgnu/expr/Expression;
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    .local v15, cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto :goto_1

    .line 128
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .restart local v30       #part1:Lgnu/expr/Expression;
    .restart local v31       #part2:Lgnu/expr/Expression;
    :cond_2
    invoke-static/range {v30 .. v31}, Lgnu/kawa/functions/GetNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v16

    .local v16, combinedName:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 129
    invoke-virtual/range {p5 .. p5}, Lkawa/lang/Translator;->getGlobalEnvironment()Lgnu/mapping/Environment;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    .restart local v15       #cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    goto/16 :goto_1

    .line 132
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    :cond_3
    move-object/from16 v0, p5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 133
    .local v34, save:Ljava/lang/Object;
    const/16 v5, 0x65

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not a valid prefix"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 134
    move-object/from16 v0, p5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 135
    move-object/from16 v15, v37

    .restart local v15       #cdr:Lgnu/mapping/Symbol;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 137
    goto/16 :goto_1

    .line 139
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/mapping/Symbol;
    .end local v16           #combinedName:Ljava/lang/String;
    .end local v22           #ns:Lgnu/mapping/Namespace;
    .end local v25           #p1:Lgnu/lists/Pair;
    .end local v26           #p2:Lgnu/lists/Pair;
    .end local v30           #part1:Lgnu/expr/Expression;
    .end local v31           #part2:Lgnu/expr/Expression;
    .end local v34           #save:Ljava/lang/Object;
    .end local v37           #sym:Lgnu/mapping/Symbol;
    :cond_4
    if-gez p2, :cond_6

    .line 161
    :cond_5
    :goto_3
    const/4 v5, 0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_13

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_13

    .line 163
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 164
    .local v17, form:Ljava/lang/Object;
    move-object/from16 v36, p3

    .line 165
    .local v36, subsyntax:Lkawa/lang/SyntaxForm;
    :goto_4
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_b

    .line 167
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v36, v0

    .line 168
    move-object/from16 v0, v36

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v17, v0

    goto :goto_4

    .line 142
    .end local v17           #form:Ljava/lang/Object;
    .end local v36           #subsyntax:Lkawa/lang/SyntaxForm;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "quasiquote"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 144
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "unquote"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 146
    add-int/lit8 p2, p2, -0x1

    .line 148
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_8

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lgnu/lists/Pair;

    .local v28, pair_cdr:Lgnu/lists/Pair;
    invoke-virtual/range {v28 .. v28}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_9

    .line 150
    .end local v28           #pair_cdr:Lgnu/lists/Pair;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid used of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in quasiquote template"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 152
    .restart local v28       #pair_cdr:Lgnu/lists/Pair;
    :cond_9
    if-nez p2, :cond_5

    .line 154
    move-object/from16 v0, p5

    move-object/from16 v1, v28

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v15

    .local v15, cdr:Lgnu/expr/Expression;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 155
    goto/16 :goto_1

    .line 158
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/expr/Expression;
    .end local v28           #pair_cdr:Lgnu/lists/Pair;
    :cond_a
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "unquote-splicing"

    move-object/from16 v0, p5

    move-object v1, v5

    move-object/from16 v2, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid used of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in quasiquote template"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 170
    .restart local v17       #form:Ljava/lang/Object;
    .restart local v36       #subsyntax:Lkawa/lang/SyntaxForm;
    :cond_b
    const/16 v35, -0x1

    .line 171
    .local v35, splicing:I
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_c

    .line 173
    move-object/from16 v0, v17

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    .line 174
    .local v23, op:Ljava/lang/Object;
    const-string v5, "unquote"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 175
    const/16 v35, 0x0

    .line 179
    .end local v23           #op:Ljava/lang/Object;
    :cond_c
    :goto_5
    if-ltz v35, :cond_13

    .line 181
    check-cast v17, Lgnu/lists/Pair;

    .end local v17           #form:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    .line 182
    .restart local v17       #form:Ljava/lang/Object;
    new-instance v39, Ljava/util/Vector;

    invoke-direct/range {v39 .. v39}, Ljava/util/Vector;-><init>()V

    .line 183
    .local v39, vec:Ljava/util/Vector;
    const/4 v15, 0x0

    .line 188
    .local v15, cdr:Ljava/lang/Object;
    :goto_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_d

    .line 190
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v36, v0

    .line 191
    move-object/from16 v0, v36

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 193
    :cond_d
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_10

    .line 203
    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v19, v5, 0x1

    .line 204
    .local v19, nargs:I
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .line 205
    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_e

    .line 207
    move/from16 v0, v19

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v13, v0

    .line 208
    .local v13, args:[Lgnu/expr/Expression;
    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 209
    const/4 v5, 0x1

    sub-int v5, v19, v5

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 210
    if-nez v35, :cond_12

    const-string v5, "consX"

    move-object/from16 v18, v5

    .line 211
    .local v18, method:Ljava/lang/String;
    :goto_7
    sget-object v5, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v15

    .line 213
    .end local v13           #args:[Lgnu/expr/Expression;
    .end local v15           #cdr:Ljava/lang/Object;
    .end local v18           #method:Ljava/lang/String;
    :cond_e
    move-object/from16 v6, v27

    .end local v32           #rest:Lgnu/lists/Pair;
    .local v6, rest:Lgnu/lists/Pair;
    move-object/from16 p3, v15

    .line 214
    goto/16 :goto_1

    .line 176
    .end local v6           #rest:Lgnu/lists/Pair;
    .end local v19           #nargs:I
    .end local v39           #vec:Ljava/util/Vector;
    .restart local v23       #op:Ljava/lang/Object;
    .restart local v32       #rest:Lgnu/lists/Pair;
    :cond_f
    const-string v5, "unquote-splicing"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 177
    const/16 v35, 0x1

    goto/16 :goto_5

    .line 195
    .end local v23           #op:Ljava/lang/Object;
    .restart local v15       #cdr:Ljava/lang/Object;
    .restart local v39       #vec:Ljava/util/Vector;
    :cond_10
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_11

    .line 197
    move-object/from16 v0, v17

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v18, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 198
    check-cast v17, Lgnu/lists/Pair;

    .end local v17           #form:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    .restart local v17       #form:Ljava/lang/Object;
    goto/16 :goto_6

    .line 201
    :cond_11
    const-string v5, "improper list argument to unquote"

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_2

    .line 210
    .restart local v13       #args:[Lgnu/expr/Expression;
    .restart local v19       #nargs:I
    :cond_12
    const-string v5, "append"

    move-object/from16 v18, v5

    goto :goto_7

    .line 217
    .end local v13           #args:[Lgnu/expr/Expression;
    .end local v15           #cdr:Ljava/lang/Object;
    .end local v17           #form:Ljava/lang/Object;
    .end local v19           #nargs:I
    .end local v35           #splicing:I
    .end local v36           #subsyntax:Lkawa/lang/SyntaxForm;
    .end local v39           #vec:Ljava/util/Vector;
    :cond_13
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v14

    .line 218
    .local v14, car:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-ne v14, v5, :cond_15

    .line 220
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    .line 221
    .local v6, rest:Ljava/lang/Object;
    instance-of v5, v6, Lgnu/lists/Pair;

    .end local v32           #rest:Lgnu/lists/Pair;
    if-eqz v5, :cond_14

    .line 223
    move-object v0, v6

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v27, v0

    .line 224
    goto/16 :goto_0

    :cond_14
    move-object/from16 v5, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 226
    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #cdr:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 227
    goto/16 :goto_1

    .line 229
    .end local v6           #rest:Ljava/lang/Object;
    .end local v15           #cdr:Ljava/lang/Object;
    .restart local v32       #rest:Lgnu/lists/Pair;
    :cond_15
    invoke-virtual/range {v27 .. v27}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v7, p0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/SyntaxForm;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v15

    .line 230
    .restart local v15       #cdr:Ljava/lang/Object;
    instance-of v5, v14, Lgnu/expr/Expression;

    if-nez v5, :cond_16

    instance-of v5, v15, Lgnu/expr/Expression;

    if-eqz v5, :cond_17

    .line 232
    :cond_16
    const/4 v5, 0x2

    new-array v13, v5, [Lgnu/expr/Expression;

    .line 233
    .restart local v13       #args:[Lgnu/expr/Expression;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 234
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 235
    sget-object v5, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v6, "make"

    invoke-static {v5, v6, v13}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v15

    .local v15, cdr:Lgnu/expr/ApplyExp;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 236
    goto/16 :goto_1

    .line 238
    .end local v6           #rest:Ljava/lang/Object;
    .end local v13           #args:[Lgnu/expr/Expression;
    .local v15, cdr:Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, v27

    move-object v1, v14

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v15

    .local v15, cdr:Lgnu/lists/Pair;
    move-object/from16 v6, v32

    .restart local v6       #rest:Ljava/lang/Object;
    move-object/from16 p3, v15

    .line 239
    goto/16 :goto_1

    .line 246
    .end local v6           #rest:Ljava/lang/Object;
    .end local v14           #car:Ljava/lang/Object;
    .end local v15           #cdr:Lgnu/lists/Pair;
    .end local v32           #rest:Lgnu/lists/Pair;
    .end local p3
    :cond_18
    move-object/from16 v24, p1

    .line 247
    .local v24, p:Lgnu/lists/Pair;
    const/16 v5, 0x14

    move v0, v5

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v29, v0

    .line 248
    .local v29, pairs:[Lgnu/lists/Pair;
    const/16 v20, 0x0

    .line 251
    .local v20, npairs:I
    :goto_8
    move-object/from16 v0, v29

    array-length v0, v0

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-lt v0, v1, :cond_19

    .line 253
    mul-int/lit8 v5, v20, 0x2

    move v0, v5

    new-array v0, v0, [Lgnu/lists/Pair;

    move-object/from16 v38, v0

    .line 254
    .local v38, tmp:[Lgnu/lists/Pair;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    move v1, v5

    move-object/from16 v2, v38

    move v3, v7

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    move-object/from16 v29, v38

    .line 257
    .end local v38           #tmp:[Lgnu/lists/Pair;
    :cond_19
    add-int/lit8 v21, v20, 0x1

    .end local v20           #npairs:I
    .local v21, npairs:I
    aput-object v24, v29, v20

    .line 258
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v6, :cond_1a

    .line 262
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/Expression;

    move v5, v0

    if-eqz v5, :cond_1b

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v33, v5

    .local v33, result:Ljava/lang/Object;
    :goto_9
    move/from16 v20, v21

    .line 263
    .end local v21           #npairs:I
    .end local v33           #result:Ljava/lang/Object;
    .restart local v20       #npairs:I
    :goto_a
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1c

    .line 265
    aget-object v24, v29, v20

    .line 266
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v33

    .local v33, result:Lgnu/lists/Pair;
    goto :goto_a

    .line 260
    .end local v20           #npairs:I
    .end local v33           #result:Lgnu/lists/Pair;
    .restart local v21       #npairs:I
    :cond_1a
    invoke-virtual/range {v24 .. v24}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    .end local v24           #p:Lgnu/lists/Pair;
    check-cast v24, Lgnu/lists/Pair;

    .restart local v24       #p:Lgnu/lists/Pair;
    move/from16 v20, v21

    .end local v21           #npairs:I
    .restart local v20       #npairs:I
    goto :goto_8

    .end local v20           #npairs:I
    .restart local v21       #npairs:I
    :cond_1b
    move-object/from16 v33, p3

    .line 262
    goto :goto_9

    .line 269
    .end local v21           #npairs:I
    .restart local v20       #npairs:I
    :cond_1c
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/Expression;

    move v5, v0

    if-eqz v5, :cond_1e

    .line 271
    const/4 v5, 0x2

    new-array v13, v5, [Lgnu/expr/Expression;

    .line 272
    .restart local v13       #args:[Lgnu/expr/Expression;
    const/4 v5, 0x1

    check-cast p3, Lgnu/expr/Expression;

    aput-object p3, v13, v5

    .line 273
    const/4 v5, 0x1

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_1d

    .line 276
    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 277
    sget-object v5, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v6, "make"

    invoke-static {v5, v6, v13}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    goto/16 :goto_2

    .line 281
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Quote;->leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v13, v5

    .line 282
    sget-object v5, Lkawa/lang/Quote;->quoteType:Lgnu/bytecode/ClassType;

    const-string v6, "append"

    invoke-static {v5, v6, v13}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    goto/16 :goto_2

    .end local v13           #args:[Lgnu/expr/Expression;
    :cond_1e
    move-object/from16 v5, v33

    .line 285
    goto/16 :goto_2
.end method

.method protected leaf(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "val"
    .parameter "tr"

    .prologue
    .line 66
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 425
    instance-of v2, p1, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_1

    .line 427
    .end local v1           #pair:Lgnu/lists/Pair;
    :cond_0
    const-string v2, "wrong number of arguments to quote"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 428
    :goto_0
    return-object v2

    .restart local v1       #pair:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Lkawa/lang/Quote;->isQuasi:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v2, v3, p2}, Lkawa/lang/Quote;->expand(Ljava/lang/Object;ILkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lkawa/lang/Quote;->coerceExpression(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method
