.class public Lkawa/lang/Lambda;
.super Lkawa/lang/Syntax;
.source "Lambda.java"


# static fields
.field public static final nameKeyword:Lgnu/expr/Keyword;


# instance fields
.field public defaultDefault:Lgnu/expr/Expression;

.field public keyKeyword:Ljava/lang/Object;

.field public optionalKeyword:Ljava/lang/Object;

.field public restKeyword:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 22
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    return-void
.end method

.method private static addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V
    .locals 0
    .parameter "decl"
    .parameter "templateScope"
    .parameter "lexp"
    .parameter "tr"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {p3, p0, p1}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object p0

    .line 358
    :cond_0
    invoke-virtual {p2, p0}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 359
    if-eqz p1, :cond_1

    .line 360
    iput-object p1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 361
    :cond_1
    return-void
.end method


# virtual methods
.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 636
    const-string v0, "#<builtin lambda>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 40
    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_0

    .line 41
    const-string v1, "missing formals in lambda"

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v7

    .line 43
    .local v7, old_errors:I
    new-instance v2, Lgnu/expr/LambdaExp;

    invoke-direct {v2}, Lgnu/expr/LambdaExp;-><init>()V

    .line 44
    .local v2, lexp:Lgnu/expr/LambdaExp;
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v8, v0

    .line 45
    .local v8, pair:Lgnu/lists/Pair;
    invoke-static {v2, v8}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 47
    invoke-virtual {p2}, Lkawa/lang/Translator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->getErrorCount()I

    move-result v1

    if-le v1, v7, :cond_1

    .line 48
    new-instance v1, Lgnu/expr/ErrorExp;

    const-string v3, "bad lambda expression"

    invoke-direct {v1, v3}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 49
    goto :goto_0
.end method

.method public rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 2
    .parameter "lexp"
    .parameter "formals"
    .parameter "body"
    .parameter "tr"
    .parameter "templateScopeRest"

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2, p4, p5}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 62
    instance-of v1, p3, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_0

    .line 63
    move-object v0, p3

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/expr/LambdaExp;->setFile(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object p3

    .line 65
    invoke-virtual {p0, p1, p3, p4}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 66
    return-void
.end method

.method public rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 26
    .parameter "lexp"
    .parameter "body"
    .parameter "tr"

    .prologue
    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, accessFlagName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 367
    .local v6, allocationFlagName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 368
    .local v3, accessFlag:I
    const/4 v5, 0x0

    .line 369
    .local v5, allocationFlag:I
    const/16 v19, 0x0

    .line 372
    .local v19, syntax:Lkawa/lang/SyntaxForm;
    :goto_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 374
    move-object/from16 v0, p2

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v0

    .line 375
    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 p2, v0

    goto :goto_0

    .line 377
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 524
    :cond_1
    :goto_1
    or-int/2addr v3, v5

    .line 525
    if-eqz v3, :cond_2

    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 527
    :cond_2
    if-eqz v19, :cond_3

    .line 528
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lkawa/lang/SyntaxForm;->fromDatumIfNeeded(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;

    move-result-object p2

    .line 529
    .end local p2
    :cond_3
    return-object p2

    .line 379
    .restart local p2
    :cond_4
    move-object/from16 v0, p2

    check-cast v0, Lgnu/lists/Pair;

    move-object v13, v0

    .line 380
    .local v13, pair1:Lgnu/lists/Pair;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 381
    .local v8, attrName:Ljava/lang/Object;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    .line 382
    .local v14, pair1_cdr:Ljava/lang/Object;
    :goto_2
    move-object v0, v14

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 384
    move-object v0, v14

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v0

    .line 385
    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v14, v0

    goto :goto_2

    .line 387
    :cond_5
    move-object v0, v14

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 389
    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .line 392
    .local v15, pair2:Lgnu/lists/Pair;
    const-string v23, "::"

    move-object/from16 v0, p3

    move-object v1, v8

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 393
    const/4 v8, 0x0

    .line 396
    .end local v8           #attrName:Ljava/lang/Object;
    :cond_6
    if-nez v8, :cond_a

    .line 398
    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    .line 399
    .local v7, attrExpr:Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v23

    if-eqz v23, :cond_9

    const-string v23, "*init*"

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 400
    const/16 v23, 0x65

    const-string v24, "explicit return type for \'*init*\' method"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 522
    .end local v7           #attrExpr:Lgnu/expr/Expression;
    :cond_7
    :goto_3
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 523
    goto/16 :goto_0

    .line 394
    .restart local v8       #attrName:Ljava/lang/Object;
    :cond_8
    move-object v0, v8

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v23, v0

    if-nez v23, :cond_6

    goto/16 :goto_1

    .line 403
    .end local v8           #attrName:Ljava/lang/Object;
    .restart local v7       #attrExpr:Lgnu/expr/Expression;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v17

    .line 404
    .local v17, rtype:Lgnu/bytecode/Type;
    if-eqz v17, :cond_7

    .line 405
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    goto :goto_3

    .line 408
    .end local v7           #attrExpr:Lgnu/expr/Expression;
    .end local v17           #rtype:Lgnu/bytecode/Type;
    :cond_a
    sget-object v23, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object v0, v8

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 410
    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    .line 411
    .restart local v7       #attrExpr:Lgnu/expr/Expression;
    move-object v0, v7

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    check-cast v7, Lgnu/expr/QuoteExp;

    .end local v7           #attrExpr:Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, attrValue:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    move/from16 v23, v0

    if-nez v23, :cond_c

    move-object v0, v9

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v23, v0

    if-nez v23, :cond_c

    .line 420
    .end local v9           #attrValue:Ljava/lang/Object;
    :cond_b
    const/16 v23, 0x65

    const-string v24, "access: value not a constant symbol or string"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 421
    .restart local v9       #attrValue:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    if-nez v23, :cond_d

    .line 422
    const/16 v23, 0x65

    const-string v24, "access: not allowed for anonymous function"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_3

    .line 425
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 426
    .local v22, value:Ljava/lang/String;
    const-string v23, "private"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 427
    const/high16 v3, 0x100

    .line 436
    :goto_4
    if-eqz v4, :cond_e

    if-eqz v22, :cond_e

    .line 438
    const/16 v23, 0x65

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "duplicate access specifiers - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 442
    :cond_e
    move-object/from16 v4, v22

    goto/16 :goto_3

    .line 428
    :cond_f
    const-string v23, "protected"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 429
    const/high16 v3, 0x200

    goto :goto_4

    .line 430
    :cond_10
    const-string v23, "public"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 431
    const/high16 v3, 0x400

    goto :goto_4

    .line 432
    :cond_11
    const-string v23, "package"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 433
    const/high16 v3, 0x800

    goto :goto_4

    .line 435
    :cond_12
    const/16 v23, 0x65

    const-string v24, "unknown access specifier"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_4

    .line 445
    .end local v9           #attrValue:Ljava/lang/Object;
    .end local v22           #value:Ljava/lang/String;
    :cond_13
    sget-object v23, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object v0, v8

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 447
    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    .line 448
    .restart local v7       #attrExpr:Lgnu/expr/Expression;
    move-object v0, v7

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    check-cast v7, Lgnu/expr/QuoteExp;

    .end local v7           #attrExpr:Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #attrValue:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lgnu/mapping/SimpleSymbol;

    move/from16 v23, v0

    if-nez v23, :cond_15

    move-object v0, v9

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 457
    .end local v9           #attrValue:Ljava/lang/Object;
    :cond_14
    const/16 v23, 0x65

    const-string v24, "allocation: value not a constant symbol or string"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_3

    .line 458
    .restart local v9       #attrValue:Ljava/lang/Object;
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v23, v0

    if-nez v23, :cond_16

    .line 459
    const/16 v23, 0x65

    const-string v24, "allocation: not allowed for anonymous function"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_3

    .line 462
    :cond_16
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 463
    .restart local v22       #value:Ljava/lang/String;
    const-string v23, "class"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_17

    const-string v23, "static"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 464
    :cond_17
    const/16 v5, 0x800

    .line 469
    :goto_5
    if-eqz v6, :cond_18

    if-eqz v22, :cond_18

    .line 471
    const/16 v23, 0x65

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "duplicate allocation specifiers - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " and "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 475
    :cond_18
    move-object/from16 v6, v22

    goto/16 :goto_3

    .line 465
    :cond_19
    const-string v23, "instance"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 466
    const/16 v5, 0x1000

    goto :goto_5

    .line 468
    :cond_1a
    const/16 v23, 0x65

    const-string v24, "unknown allocation specifier"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 478
    .end local v9           #attrValue:Ljava/lang/Object;
    .end local v22           #value:Ljava/lang/String;
    :cond_1b
    sget-object v23, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    move-object v0, v8

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 480
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 481
    .restart local v9       #attrValue:Ljava/lang/Object;
    invoke-static {v9}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v10

    .line 482
    .local v10, count:I
    if-gez v10, :cond_1c

    .line 483
    const/16 v23, 0x65

    const-string v24, "throws: not followed by a list"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_3

    .line 486
    :cond_1c
    new-array v11, v10, [Lgnu/expr/ReferenceExp;

    .line 487
    .local v11, exps:[Lgnu/expr/ReferenceExp;
    move-object/from16 v20, v19

    .line 488
    .local v20, syntaxLocal:Lkawa/lang/SyntaxForm;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    if-ge v12, v10, :cond_1f

    .line 490
    :goto_7
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 492
    move-object v0, v9

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 493
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v9, v0

    goto :goto_7

    .line 495
    :cond_1d
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v16, v0

    .line 496
    .local v16, pair3:Lgnu/lists/Pair;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v21

    .line 497
    .local v21, throwsExpr:Lgnu/expr/Expression;
    move-object/from16 v0, v21

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 499
    check-cast v21, Lgnu/expr/ReferenceExp;

    .end local v21           #throwsExpr:Lgnu/expr/Expression;
    aput-object v21, v11, v12

    .line 507
    :goto_8
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    .line 488
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 503
    .restart local v21       #throwsExpr:Lgnu/expr/Expression;
    :cond_1e
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 504
    .local v18, savePos:Ljava/lang/Object;
    const/16 v23, 0x65

    const-string v24, "throws not followed by a classname"

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 505
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_8

    .line 509
    .end local v16           #pair3:Lgnu/lists/Pair;
    .end local v18           #savePos:Ljava/lang/Object;
    .end local v21           #throwsExpr:Lgnu/expr/Expression;
    :cond_1f
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setExceptions([Lgnu/expr/ReferenceExp;)V

    goto/16 :goto_3

    .line 512
    .end local v9           #attrValue:Ljava/lang/Object;
    .end local v10           #count:I
    .end local v11           #exps:[Lgnu/expr/ReferenceExp;
    .end local v12           #i:I
    .end local v20           #syntaxLocal:Lkawa/lang/SyntaxForm;
    :cond_20
    sget-object v23, Lkawa/lang/Lambda;->nameKeyword:Lgnu/expr/Keyword;

    move-object v0, v8

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_21

    .line 514
    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v7

    .line 515
    .restart local v7       #attrExpr:Lgnu/expr/Expression;
    move-object v0, v7

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 516
    check-cast v7, Lgnu/expr/QuoteExp;

    .end local v7           #attrExpr:Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 520
    :cond_21
    const/16 v23, 0x77

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "unknown procedure property "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method public rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 22
    .parameter "lexp"
    .parameter "body"
    .parameter "tr"

    .prologue
    .line 551
    const/4 v11, 0x0

    .line 554
    .local v11, numRenamedAlias:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v19

    const/high16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 557
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 558
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 559
    const/4 v15, 0x0

    .line 560
    .local v15, prev:Lgnu/expr/Declaration;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/16 v19, 0x0

    move/from16 v8, v19

    .line 561
    .local v8, key_args:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    const/16 v19, 0x0

    move/from16 v12, v19

    .line 563
    .local v12, opt_args:I
    :goto_1
    const/4 v5, 0x0

    .line 564
    .local v5, arg_i:I
    const/4 v13, 0x0

    .line 565
    .local v13, opt_i:I
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    .local v6, cur:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v6, :cond_6

    .line 567
    invoke-virtual {v6}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 569
    invoke-static {v6}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v14

    .line 570
    .local v14, param:Lgnu/expr/Declaration;
    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 571
    move-object/from16 v0, p1

    move-object v1, v14

    iput-object v0, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 572
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    .line 573
    add-int/lit8 v11, v11, 0x1

    .line 574
    move-object v6, v14

    .line 576
    .end local v14           #param:Lgnu/expr/Declaration;
    :cond_1
    move-object v15, v6

    .line 578
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    add-int v19, v19, v12

    move v0, v5

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v19, v0

    if-gez v19, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v19, v0

    add-int v19, v19, v12

    move v0, v5

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 583
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v20

    aput-object v20, v19, v13

    .line 584
    add-int/lit8 v13, v13, 0x1

    .line 586
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 588
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 565
    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    goto :goto_2

    .line 560
    .end local v5           #arg_i:I
    .end local v6           #cur:Lgnu/expr/Declaration;
    .end local v8           #key_args:I
    .end local v12           #opt_args:I
    .end local v13           #opt_i:I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v8, v19

    goto/16 :goto_0

    .line 561
    .restart local v8       #key_args:I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v19, v19, v8

    move/from16 v12, v19

    goto/16 :goto_1

    .line 591
    .restart local v5       #arg_i:I
    .restart local v6       #cur:Lgnu/expr/Declaration;
    .restart local v12       #opt_args:I
    .restart local v13       #opt_i:I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    const/16 v20, 0x800

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v19

    if-nez v19, :cond_7

    .line 595
    const/16 v19, 0x0

    new-instance v20, Lgnu/expr/Declaration;

    sget-object v21, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 598
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v17, v0

    .line 599
    .local v17, saveLambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 600
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 601
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curLambda:Lgnu/expr/LambdaExp;

    .line 605
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/BeginExp;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgnu/expr/BeginExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v7

    .local v7, exps:[Lgnu/expr/Expression;
    array-length v9, v7

    .local v9, len:I
    const/16 v19, 0x1

    move v0, v9

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    const/16 v19, 0x0

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-nez v19, :cond_8

    const/16 v19, 0x0

    aget-object v19, v7, v19

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v18

    .local v18, val:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/bytecode/Type;

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 612
    .end local v18           #val:Ljava/lang/Object;
    :cond_8
    const/16 v19, 0x0

    aget-object v16, v7, v19

    .line 613
    .local v16, rexp:Lgnu/expr/Expression;
    add-int/lit8 v9, v9, -0x1

    .line 614
    const/16 v19, 0x1

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 615
    const/16 v19, 0x1

    aget-object v19, v7, v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 622
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/Convert;->setCoercedReturnValue(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 626
    .end local v7           #exps:[Lgnu/expr/Expression;
    .end local v9           #len:I
    .end local v16           #rexp:Lgnu/expr/Expression;
    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 627
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 628
    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 629
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->countDecls()I

    .line 630
    move-object/from16 v0, p3

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_9

    .line 631
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 632
    :cond_9
    return-void

    .line 618
    .restart local v7       #exps:[Lgnu/expr/Expression;
    .restart local v9       #len:I
    .restart local v16       #rexp:Lgnu/expr/Expression;
    :cond_a
    new-array v10, v9, [Lgnu/expr/Expression;

    .line 619
    .local v10, new_body:[Lgnu/expr/Expression;
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v19

    move-object v2, v10

    move/from16 v3, v20

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    invoke-static {v10}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_3

    .line 625
    .end local v7           #exps:[Lgnu/expr/Expression;
    .end local v9           #len:I
    .end local v10           #new_body:[Lgnu/expr/Expression;
    .end local v16           #rexp:Lgnu/expr/Expression;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_4
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 33
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v0

    .line 34
    .local v0, exp:Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V
    .locals 27
    .parameter "lexp"
    .parameter "formals"
    .parameter "tr"
    .parameter "templateScopeRest"

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v23

    if-nez v23, :cond_0

    .line 73
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, filename:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v10

    .line 75
    .local v10, line:I
    if-eqz v7, :cond_0

    if-lez v10, :cond_0

    .line 76
    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LambdaExp;->setSourceLocation(Ljava/lang/String;I)V

    .line 79
    .end local v7           #filename:Ljava/lang/String;
    .end local v10           #line:I
    :cond_0
    move-object/from16 v4, p2

    .line 80
    .local v4, bindings:Ljava/lang/Object;
    const/4 v13, -0x1

    .line 81
    .local v13, opt_args:I
    const/16 v18, -0x1

    .line 82
    .local v18, rest_args:I
    const/4 v8, -0x1

    .line 86
    .local v8, key_args:I
    :goto_0
    move-object v0, v4

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 88
    move-object v0, v4

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 90
    .local v20, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v4, v0

    .line 92
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    move-object v0, v4

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 151
    move-object v0, v4

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 153
    if-gez v13, :cond_2

    if-gez v8, :cond_2

    if-ltz v18, :cond_13

    .line 155
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "dotted rest-arg after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", or "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 351
    :cond_3
    :goto_1
    return-void

    .line 94
    :cond_4
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v16, v0

    .line 96
    .local v16, pair:Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 97
    .local v17, pair_car:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 98
    check-cast v17, Lkawa/lang/SyntaxForm;

    .end local v17           #pair_car:Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 99
    .restart local v17       #pair_car:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 101
    if-ltz v13, :cond_6

    .line 103
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 106
    :cond_6
    if-gez v18, :cond_7

    if-ltz v8, :cond_8

    .line 108
    :cond_7
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " or "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 111
    :cond_8
    const/4 v13, 0x0

    .line 149
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 84
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 113
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 115
    if-ltz v18, :cond_a

    .line 117
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 121
    :cond_a
    if-ltz v8, :cond_b

    .line 123
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 127
    :cond_b
    const/16 v18, 0x0

    goto :goto_2

    .line 129
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 131
    if-ltz v8, :cond_d

    .line 133
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in parameter list"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 137
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 139
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    const-string v24, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 140
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #pair:Lgnu/lists/Pair;
    check-cast v16, Lgnu/lists/Pair;

    .restart local v16       #pair:Lgnu/lists/Pair;
    goto/16 :goto_2

    .line 141
    :cond_f
    if-ltz v8, :cond_10

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 143
    :cond_10
    if-ltz v18, :cond_11

    .line 144
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 145
    :cond_11
    if-ltz v13, :cond_12

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 148
    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->min_args:I

    goto/16 :goto_2

    .line 159
    .end local v16           #pair:Lgnu/lists/Pair;
    .end local v17           #pair_car:Ljava/lang/Object;
    :cond_13
    const/16 v18, 0x1

    .line 166
    :cond_14
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_16

    .line 168
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "multiple "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " parameters"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 161
    :cond_15
    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v4

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    .line 163
    const-string v23, "misformed formals in lambda"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 171
    :cond_16
    if-gez v13, :cond_17

    .line 172
    const/4 v13, 0x0

    .line 173
    :cond_17
    if-gez v18, :cond_18

    .line 174
    const/16 v18, 0x0

    .line 175
    :cond_18
    if-gez v8, :cond_19

    .line 176
    const/4 v8, 0x0

    .line 177
    :cond_19
    if-lez v18, :cond_1e

    .line 178
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    .line 181
    :goto_3
    add-int v23, v13, v8

    if-lez v23, :cond_1a

    .line 182
    add-int v23, v13, v8

    move/from16 v0, v23

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 183
    :cond_1a
    if-lez v8, :cond_1b

    .line 184
    move v0, v8

    new-array v0, v0, [Lgnu/expr/Keyword;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    .line 186
    :cond_1b
    move-object/from16 v4, p2

    .line 187
    const/4 v13, 0x0

    .line 188
    const/4 v8, 0x0

    .line 189
    const/4 v11, 0x0

    .local v11, mode:Ljava/lang/Object;
    move-object/from16 v23, v11

    .line 192
    .end local v11           #mode:Ljava/lang/Object;
    :goto_4
    move-object v0, v4

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    .line 194
    move-object v0, v4

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 195
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v4, v0

    .line 198
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 p4, v0

    .line 200
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_1c
    move-object/from16 v21, p4

    .line 201
    .local v21, templateScope:Lkawa/lang/TemplateScope;
    move-object v0, v4

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_1f

    .line 338
    move-object v0, v4

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 340
    move-object v0, v4

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 341
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v4, v0

    .line 342
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 p4, v0

    .line 344
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_1d
    move-object v0, v4

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 346
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 347
    .local v5, decl:Lgnu/expr/Declaration;
    sget-object v23, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 348
    const/16 v23, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 349
    move-object v0, v5

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    goto/16 :goto_1

    .line 180
    .end local v5           #decl:Lgnu/expr/Declaration;
    .end local v21           #templateScope:Lkawa/lang/TemplateScope;
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v23, v0

    add-int v23, v23, v13

    mul-int/lit8 v24, v8, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lgnu/expr/LambdaExp;->max_args:I

    goto/16 :goto_3

    .line 203
    .restart local v21       #templateScope:Lkawa/lang/TemplateScope;
    :cond_1f
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v16, v0

    .line 204
    .restart local v16       #pair:Lgnu/lists/Pair;
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 205
    .restart local v17       #pair_car:Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_20

    .line 207
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 208
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 209
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v21, v0

    .line 211
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 214
    :cond_21
    move-object/from16 v11, v17

    .restart local v11       #mode:Ljava/lang/Object;
    move-object/from16 v23, v11

    .line 190
    .end local v11           #mode:Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_4

    .line 217
    :cond_22
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 218
    .local v19, savePos:Ljava/lang/Object;
    const/4 v12, 0x0

    .line 219
    .local v12, name:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->defaultDefault:Lgnu/expr/Expression;

    move-object v6, v0

    .line 220
    .local v6, defaultValue:Lgnu/expr/Expression;
    const/16 v22, 0x0

    .line 222
    .local v22, typeSpecPair:Lgnu/lists/Pair;
    const-string v24, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 224
    const-string v23, "\'::\' must follow parameter name"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 227
    :cond_23
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 228
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-eqz v24, :cond_25

    .line 230
    move-object/from16 v12, v17

    .line 231
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_37

    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/lists/Pair;

    .local v15, p:Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    const-string v25, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_37

    .line 234
    invoke-virtual/range {v16 .. v16}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_24

    .line 236
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 240
    :cond_24
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #p:Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 241
    .restart local v15       #p:Lgnu/lists/Pair;
    move-object/from16 v22, v15

    .line 242
    move-object/from16 v16, v15

    move-object/from16 v24, v6

    .line 314
    .end local v6           #defaultValue:Lgnu/expr/Expression;
    .end local v12           #name:Ljava/lang/Object;
    .end local v15           #p:Lgnu/lists/Pair;
    :goto_6
    if-nez v12, :cond_2f

    .line 316
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parameter is neither name nor (name :: type) nor (name default): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 245
    .restart local v6       #defaultValue:Lgnu/expr/Expression;
    .restart local v12       #name:Ljava/lang/Object;
    :cond_25
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_37

    .line 247
    move-object/from16 v0, v17

    check-cast v0, Lgnu/lists/Pair;

    move-object v15, v0

    .line 248
    .restart local v15       #p:Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v17

    .line 249
    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_26

    .line 251
    move-object/from16 v0, v17

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v20, v0

    .line 252
    .restart local v20       #sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 253
    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v21, v0

    .line 255
    .end local v20           #sf:Lkawa/lang/SyntaxForm;
    :cond_26
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 256
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-eqz v24, :cond_37

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_37

    .line 259
    move-object/from16 v12, v17

    .line 260
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #p:Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 261
    .restart local v15       #p:Lgnu/lists/Pair;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    const-string v25, "::"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 263
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-nez v24, :cond_27

    .line 265
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\'::\' not followed by a type specifier (for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 269
    :cond_27
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #p:Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 270
    .restart local v15       #p:Lgnu/lists/Pair;
    move-object/from16 v22, v15

    .line 271
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_2a

    .line 272
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #p:Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 282
    .restart local v15       #p:Lgnu/lists/Pair;
    :cond_28
    :goto_7
    if-eqz v15, :cond_29

    if-eqz v23, :cond_29

    .line 284
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 285
    .local v6, defaultValue:Ljava/lang/Object;
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_2c

    .line 286
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #p:Lgnu/lists/Pair;
    check-cast v15, Lgnu/lists/Pair;

    .line 296
    .end local v6           #defaultValue:Ljava/lang/Object;
    .restart local v15       #p:Lgnu/lists/Pair;
    :cond_29
    :goto_8
    if-eqz v15, :cond_36

    .line 298
    if-eqz v22, :cond_2e

    .line 300
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "duplicate type specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x27

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 273
    .local v6, defaultValue:Lgnu/expr/Expression;
    :cond_2a
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 274
    const/4 v15, 0x0

    goto :goto_7

    .line 277
    :cond_2b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "improper list in specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 287
    .local v6, defaultValue:Ljava/lang/Object;
    :cond_2c
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2d

    .line 288
    const/4 v15, 0x0

    goto :goto_8

    .line 291
    :cond_2d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "improper list in specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\')"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 304
    .end local v6           #defaultValue:Ljava/lang/Object;
    :cond_2e
    move-object/from16 v22, v15

    .line 305
    invoke-virtual {v15}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_36

    .line 307
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "junk at end of specifier for parameter \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x27

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " after type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 319
    .end local v12           #name:Ljava/lang/Object;
    .end local v15           #p:Lgnu/lists/Pair;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_31

    .line 320
    :cond_30
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v25, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13           #opt_args:I
    .local v14, opt_args:I
    new-instance v26, Lgnu/expr/LangExp;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    aput-object v26, v25, v13

    move v13, v14

    .line 321
    .end local v14           #opt_args:I
    .restart local v13       #opt_args:I
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_32

    .line 322
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v24, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8           #key_args:I
    .local v9, key_args:I
    move-object v0, v12

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v25, v0

    if-eqz v25, :cond_34

    move-object v0, v12

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v14, v0

    invoke-virtual {v14}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v25

    :goto_9
    invoke-static/range {v25 .. v25}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v25

    aput-object v25, v24, v8

    move v8, v9

    .line 325
    .end local v9           #key_args:I
    .restart local v8       #key_args:I
    :cond_32
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v12}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 326
    .restart local v5       #decl:Lgnu/expr/Declaration;
    invoke-static {v5, v4}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 327
    if-eqz v22, :cond_35

    .line 329
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v24

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 330
    const/16 v24, 0x2000

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 334
    :cond_33
    :goto_a
    const/16 v24, 0x0

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 335
    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lkawa/lang/Lambda;->addParam(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;Lgnu/expr/LambdaExp;Lkawa/lang/Translator;)V

    .line 336
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 322
    .end local v5           #decl:Lgnu/expr/Declaration;
    .end local v8           #key_args:I
    .restart local v9       #key_args:I
    :cond_34
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_9

    .line 332
    .end local v9           #key_args:I
    .restart local v5       #decl:Lgnu/expr/Declaration;
    .restart local v8       #key_args:I
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_33

    .line 333
    sget-object v24, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_a

    .end local v5           #decl:Lgnu/expr/Declaration;
    .restart local v12       #name:Ljava/lang/Object;
    .restart local v15       #p:Lgnu/lists/Pair;
    :cond_36
    move-object/from16 v24, v6

    goto/16 :goto_6

    .end local v12           #name:Ljava/lang/Object;
    .end local v15           #p:Lgnu/lists/Pair;
    .local v6, defaultValue:Lgnu/expr/Expression;
    :cond_37
    move-object/from16 v24, v6

    goto/16 :goto_6
.end method

.method public setKeywords(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "optional"
    .parameter "rest"
    .parameter "key"

    .prologue
    .line 26
    iput-object p1, p0, Lkawa/lang/Lambda;->optionalKeyword:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lkawa/lang/Lambda;->restKeyword:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lkawa/lang/Lambda;->keyKeyword:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public skipAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 4
    .parameter "lexp"
    .parameter "body"
    .parameter "tr"

    .prologue
    .line 534
    :goto_0
    instance-of v3, p2, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 536
    move-object v0, p2

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 537
    .local v2, pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 546
    .end local v2           #pair:Lgnu/lists/Pair;
    :cond_0
    :goto_1
    return-object p2

    .line 539
    .restart local v2       #pair:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 540
    .local v1, attrName:Ljava/lang/Object;
    const-string v3, "::"

    invoke-virtual {p3, v1, v3}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    const/4 v1, 0x0

    .line 544
    .end local v1           #attrName:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/lists/Pair;

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 545
    goto :goto_0

    .line 542
    .restart local v1       #attrName:Ljava/lang/Object;
    :cond_3
    instance-of v3, v1, Lgnu/expr/Keyword;

    if-nez v3, :cond_2

    goto :goto_1
.end method
