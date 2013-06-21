.class public Lkawa/standard/object;
.super Lkawa/lang/Syntax;
.source "object.java"


# static fields
.field public static final accessKeyword:Lgnu/expr/Keyword;

.field public static final allocationKeyword:Lgnu/expr/Keyword;

.field public static final classNameKeyword:Lgnu/expr/Keyword;

.field static final coloncolon:Lgnu/mapping/Symbol;

.field static final initKeyword:Lgnu/expr/Keyword;

.field static final init_formKeyword:Lgnu/expr/Keyword;

.field static final init_keywordKeyword:Lgnu/expr/Keyword;

.field static final init_valueKeyword:Lgnu/expr/Keyword;

.field static final initformKeyword:Lgnu/expr/Keyword;

.field public static final interfaceKeyword:Lgnu/expr/Keyword;

.field public static final objectSyntax:Lkawa/standard/object;

.field public static final throwsKeyword:Lgnu/expr/Keyword;

.field static final typeKeyword:Lgnu/expr/Keyword;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lkawa/standard/object;

    sget-object v1, Lkawa/standard/Scheme;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/object;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    .line 15
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    const-string v1, "object"

    invoke-virtual {v0, v1}, Lkawa/standard/object;->setName(Ljava/lang/String;)V

    .line 18
    const-string v0, "access"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    .line 19
    const-string v0, "class-name"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    .line 20
    const-string v0, "interface"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    .line 21
    const-string v0, "throws"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->throwsKeyword:Lgnu/expr/Keyword;

    .line 22
    const-string v0, "type"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    .line 23
    const-string v0, "allocation"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    .line 24
    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    .line 25
    const-string v0, "initform"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    .line 26
    const-string v0, "init-form"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    .line 27
    const-string v0, "init-value"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    .line 28
    const-string v0, "init-keyword"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    .line 30
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0
    .parameter "lambda"

    .prologue
    .line 33
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 34
    iput-object p1, p0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    .line 35
    return-void
.end method

.method static accessString(I)Ljava/lang/String;
    .locals 1
    .parameter "accessFlag"

    .prologue
    .line 638
    const/high16 v0, 0x100

    if-ne p0, v0, :cond_0

    .line 639
    const-string v0, "private"

    .line 646
    :goto_0
    return-object v0

    .line 640
    :cond_0
    const/high16 v0, 0x200

    if-ne p0, v0, :cond_1

    .line 641
    const-string v0, "protected"

    goto :goto_0

    .line 642
    :cond_1
    const/high16 v0, 0x400

    if-ne p0, v0, :cond_2

    .line 643
    const-string v0, "public"

    goto :goto_0

    .line 644
    :cond_2
    const/high16 v0, 0x800

    if-ne p0, v0, :cond_3

    .line 645
    const-string v0, "package"

    goto :goto_0

    .line 646
    :cond_3
    const-string v0, "<internal error>"

    goto :goto_0
.end method

.method static matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)I
    .locals 1
    .parameter "value"
    .parameter "tr"

    .prologue
    .line 624
    const-string v0, "private"

    invoke-static {p0, v0, p1}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const/high16 v0, 0x100

    .line 633
    :goto_0
    return v0

    .line 626
    :cond_0
    const-string v0, "protected"

    invoke-static {p0, v0, p1}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    const/high16 v0, 0x200

    goto :goto_0

    .line 628
    :cond_1
    const-string v0, "public"

    invoke-static {p0, v0, p1}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    const/high16 v0, 0x400

    goto :goto_0

    .line 630
    :cond_2
    const-string v0, "package"

    invoke-static {p0, v0, p1}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    const/high16 v0, 0x800

    goto :goto_0

    .line 633
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z
    .locals 6
    .parameter "exp"
    .parameter "tag"
    .parameter "tr"

    .prologue
    const/4 v5, 0x0

    .line 607
    instance-of v3, p0, Lgnu/expr/Keyword;

    if-eqz v3, :cond_1

    .line 608
    check-cast p0, Lgnu/expr/Keyword;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, value:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    .end local v2           #value:Ljava/lang/String;
    :goto_1
    return v3

    .line 609
    .restart local p0
    :cond_1
    instance-of v3, p0, Lgnu/lists/FString;

    if-eqz v3, :cond_2

    .line 610
    check-cast p0, Lgnu/lists/FString;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/FString;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0

    .line 611
    .end local v2           #value:Ljava/lang/String;
    .restart local p0
    :cond_2
    instance-of v3, p0, Lgnu/lists/Pair;

    if-eqz v3, :cond_3

    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "quote"

    invoke-virtual {p2, v3, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pair:Lgnu/lists/Pair;
    check-cast v1, Lgnu/lists/Pair;

    .restart local v1       #pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/SimpleSymbol;

    if-eqz v3, :cond_3

    .line 616
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0

    .end local v1           #pair:Lgnu/lists/Pair;
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    move v3, v5

    .line 618
    goto :goto_1

    .end local p0
    .restart local v2       #value:Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 619
    goto :goto_1
.end method

.method private static rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    .locals 11
    .parameter "d"
    .parameter "oexp"
    .parameter "initPair"
    .parameter "tr"
    .parameter "initSyntax"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 557
    instance-of v7, p0, Lgnu/expr/Declaration;

    if-eqz v7, :cond_1

    move-object v0, p0

    check-cast v0, Lgnu/expr/Declaration;

    move-object v7, v0

    const/16 v8, 0x800

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v7

    move v4, v7

    .line 560
    .local v4, isStatic:Z
    :goto_0
    if-eqz v4, :cond_3

    iget-object v7, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v2, v7

    .line 561
    .local v2, initMethod:Lgnu/expr/LambdaExp;
    :goto_1
    if-nez v2, :cond_0

    .line 563
    new-instance v2, Lgnu/expr/LambdaExp;

    .end local v2           #initMethod:Lgnu/expr/LambdaExp;
    new-instance v7, Lgnu/expr/BeginExp;

    invoke-direct {v7}, Lgnu/expr/BeginExp;-><init>()V

    invoke-direct {v2, v7}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 564
    .restart local v2       #initMethod:Lgnu/expr/LambdaExp;
    invoke-virtual {v2, v9}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 565
    if-eqz v4, :cond_4

    .line 567
    const-string v7, "$clinit$"

    invoke-virtual {v2, v7}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 568
    iput-object v2, p1, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    .line 578
    :goto_2
    iget-object v7, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v7, v2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 579
    iput-object v2, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 581
    :cond_0
    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 582
    iget-object v5, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 583
    .local v5, saveLambda:Lgnu/expr/LambdaExp;
    iput-object v2, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 584
    invoke-virtual {p3, p2, p4}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v3

    .line 585
    .local v3, initValue:Lgnu/expr/Expression;
    instance-of v7, p0, Lgnu/expr/Declaration;

    if-eqz v7, :cond_5

    .line 587
    move-object v0, p0

    check-cast v0, Lgnu/expr/Declaration;

    move-object v1, v0

    .line 588
    .local v1, decl:Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/SetExp;

    invoke-direct {v6, v1, v3}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 589
    .local v6, sexp:Lgnu/expr/SetExp;
    invoke-virtual {v6, v1}, Lgnu/expr/SetExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 590
    invoke-virtual {v1, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 591
    move-object v3, v6

    .line 595
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v6           #sexp:Lgnu/expr/SetExp;
    :goto_3
    iget-object p0, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .end local p0
    check-cast p0, Lgnu/expr/BeginExp;

    invoke-virtual {p0, v3}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 596
    iput-object v5, p3, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 597
    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 598
    return-void

    .line 557
    .end local v2           #initMethod:Lgnu/expr/LambdaExp;
    .end local v3           #initValue:Lgnu/expr/Expression;
    .end local v4           #isStatic:Z
    .end local v5           #saveLambda:Lgnu/expr/LambdaExp;
    .restart local p0
    :cond_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v7, :cond_2

    move v4, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    move v4, v7

    goto :goto_0

    .line 560
    .restart local v4       #isStatic:Z
    :cond_3
    iget-object v7, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v2, v7

    goto :goto_1

    .line 572
    .restart local v2       #initMethod:Lgnu/expr/LambdaExp;
    :cond_4
    const-string v7, "$finit$"

    invoke-virtual {v2, v7}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 573
    iput-object v2, p1, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    .line 576
    new-instance v7, Lgnu/expr/Declaration;

    sget-object v8, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    invoke-direct {v7, v8}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v7}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_2

    .line 594
    .restart local v3       #initValue:Lgnu/expr/Expression;
    .restart local v5       #saveLambda:Lgnu/expr/LambdaExp;
    :cond_5
    new-instance v7, Lgnu/expr/QuoteExp;

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v7}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    goto :goto_3
.end method


# virtual methods
.method public rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V
    .locals 47
    .parameter "saved"
    .parameter "tr"

    .prologue
    .line 338
    const/4 v5, 0x0

    aget-object v35, p1, v5

    check-cast v35, Lgnu/expr/ClassExp;

    .line 339
    .local v35, oexp:Lgnu/expr/ClassExp;
    const/4 v5, 0x1

    aget-object v16, p1, v5

    .line 340
    .local v16, components:Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v25, p1, v5

    check-cast v25, Ljava/util/Vector;

    .line 341
    .local v25, inits:Ljava/util/Vector;
    const/4 v5, 0x3

    aget-object v31, p1, v5

    check-cast v31, Lgnu/expr/LambdaExp;

    .line 342
    .local v31, method_list:Lgnu/expr/LambdaExp;
    const/4 v5, 0x4

    aget-object v42, p1, v5

    .line 343
    .local v42, superlist:Ljava/lang/Object;
    const/4 v5, 0x5

    aget-object v13, p1, v5

    .line 344
    .local v13, classNamePair:Ljava/lang/Object;
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 346
    invoke-static/range {v42 .. v42}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v33

    .line 347
    .local v33, num_supers:I
    if-gez v33, :cond_0

    .line 349
    const/16 v5, 0x65

    const-string v6, "object superclass specification not a list"

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 350
    const/16 v33, 0x0

    .line 352
    :cond_0
    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v44, v0

    .line 353
    .local v44, supers:[Lgnu/expr/Expression;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_2

    .line 355
    :goto_1
    move-object/from16 v0, v42

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_1

    .line 358
    check-cast v42, Lkawa/lang/SyntaxForm;

    .end local v42           #superlist:Ljava/lang/Object;
    move-object/from16 v0, v42

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v42, v0

    .restart local v42       #superlist:Ljava/lang/Object;
    goto :goto_1

    .line 360
    :cond_1
    move-object/from16 v0, v42

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v43, v0

    .line 361
    .local v43, superpair:Lgnu/lists/Pair;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v44, v19

    .line 362
    invoke-virtual/range {v43 .. v43}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v42

    .line 353
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 365
    .end local v43           #superpair:Lgnu/lists/Pair;
    :cond_2
    if-eqz v13, :cond_3

    .line 367
    check-cast v13, Lgnu/lists/Pair;

    .end local v13           #classNamePair:Ljava/lang/Object;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v12

    .line 368
    .local v12, classNameExp:Lgnu/expr/Expression;
    invoke-virtual {v12}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v15

    .line 370
    .local v15, classNameVal:Ljava/lang/Object;
    instance-of v5, v15, Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .local v14, classNameSpecifier:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 372
    move-object v0, v14

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/ClassExp;->classNameSpecifier:Ljava/lang/String;

    .line 376
    .end local v12           #classNameExp:Lgnu/expr/Expression;
    .end local v14           #classNameSpecifier:Ljava/lang/String;
    .end local v15           #classNameVal:Ljava/lang/Object;
    :cond_3
    :goto_2
    move-object/from16 v0, v44

    move-object/from16 v1, v35

    iput-object v0, v1, Lgnu/expr/ClassExp;->supers:[Lgnu/expr/Expression;

    .line 378
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 382
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v28

    .line 383
    .local v28, len:I
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 385
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    .line 386
    .local v20, init:Ljava/lang/Object;
    if-eqz v20, :cond_4

    .line 387
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v20, Lgnu/lists/Pair;

    .end local v20           #init:Ljava/lang/Object;
    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v35

    move-object/from16 v2, v20

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V

    .line 383
    :cond_4
    add-int/lit8 v19, v19, 0x2

    goto :goto_3

    .line 374
    .end local v28           #len:I
    .restart local v12       #classNameExp:Lgnu/expr/Expression;
    .restart local v15       #classNameVal:Ljava/lang/Object;
    :cond_5
    const/16 v5, 0x65

    const-string v6, "class-name specifier must be a non-empty string literal"

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_2

    .line 390
    .end local v12           #classNameExp:Lgnu/expr/Expression;
    .end local v15           #classNameVal:Ljava/lang/Object;
    .restart local v28       #len:I
    :cond_6
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 393
    move-object/from16 v6, v31

    .line 394
    .local v6, meth:Lgnu/expr/LambdaExp;
    const/16 v23, 0x0

    .line 395
    .local v23, init_index:I
    const/16 v17, 0x0

    .line 396
    .local v17, componentsSyntax:Lkawa/lang/SyntaxForm;
    move-object/from16 v34, v16

    .end local v19           #i:I
    .local v34, obj:Ljava/lang/Object;
    :goto_4
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v34

    move-object v1, v5

    if-eq v0, v1, :cond_22

    .line 398
    :goto_5
    move-object/from16 v0, v34

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_7

    .line 400
    move-object/from16 v0, v34

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v17, v0

    .line 401
    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v34, v0

    goto :goto_5

    .line 403
    :cond_7
    move-object/from16 v0, v34

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v36, v0

    .line 404
    .local v36, pair:Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .line 405
    .local v40, savedPos1:Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v37

    .line 406
    .local v37, pair_car:Ljava/lang/Object;
    move-object/from16 v30, v17

    .line 407
    .local v30, memberSyntax:Lkawa/lang/SyntaxForm;
    :goto_6
    move-object/from16 v0, v37

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_8

    .line 409
    move-object/from16 v0, v37

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    .line 410
    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v37, v0

    goto :goto_6

    .line 414
    :cond_8
    :try_start_0
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v34

    .line 415
    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_9

    move-object/from16 v0, v34

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_9

    .line 419
    move-object/from16 v0, v34

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v34

    .line 540
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_4

    .line 422
    :cond_9
    :try_start_1
    move-object/from16 v0, v37

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v36, v0

    .line 423
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v37

    .line 424
    move-object/from16 v29, v30

    .line 425
    .local v29, memberCarSyntax:Lkawa/lang/SyntaxForm;
    :goto_7
    move-object/from16 v0, v37

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v5, v0

    if-eqz v5, :cond_a

    .line 427
    move-object/from16 v0, v37

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v29, v0

    .line 428
    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v37, v0

    goto :goto_7

    .line 430
    :cond_a
    move-object/from16 v0, v37

    instance-of v0, v0, Ljava/lang/String;

    move v5, v0

    if-nez v5, :cond_b

    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move v5, v0

    if-nez v5, :cond_b

    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_1b

    .line 433
    :cond_b
    const/16 v45, 0x0

    .line 434
    .local v45, type:Ljava/lang/Object;
    const/16 v32, 0x0

    .line 435
    .local v32, nKeywords:I
    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v5, v0

    if-eqz v5, :cond_c

    move-object/from16 v11, v36

    .line 436
    .local v11, args:Ljava/lang/Object;
    :goto_8
    const/16 v21, 0x0

    .line 437
    .local v21, initPair:Lgnu/lists/Pair;
    const/16 v22, 0x0

    .local v22, initSyntax:Lkawa/lang/SyntaxForm;
    move-object/from16 v5, v45

    .line 438
    .end local v45           #type:Ljava/lang/Object;
    :goto_9
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v11, v7, :cond_17

    .line 440
    :goto_a
    instance-of v7, v11, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_d

    .line 442
    move-object v0, v11

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    .line 443
    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v11, v0

    goto :goto_a

    .line 435
    .end local v11           #args:Ljava/lang/Object;
    .end local v21           #initPair:Lgnu/lists/Pair;
    .end local v22           #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v45       #type:Ljava/lang/Object;
    :cond_c
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    goto :goto_8

    .line 445
    .end local v45           #type:Ljava/lang/Object;
    .restart local v11       #args:Ljava/lang/Object;
    .restart local v21       #initPair:Lgnu/lists/Pair;
    .restart local v22       #initSyntax:Lkawa/lang/SyntaxForm;
    :cond_d
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v36, v0

    .line 446
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v27

    .line 447
    .local v27, key:Ljava/lang/Object;
    :goto_b
    move-object/from16 v0, v27

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v7, v0

    if-eqz v7, :cond_e

    .line 448
    check-cast v27, Lkawa/lang/SyntaxForm;

    .end local v27           #key:Ljava/lang/Object;
    move-object/from16 v0, v27

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v27, v0

    .restart local v27       #key:Ljava/lang/Object;
    goto :goto_b

    .line 449
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 450
    .local v41, savedPos2:Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 451
    sget-object v7, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v27

    move-object v1, v7

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/Keyword;

    move v7, v0

    if-eqz v7, :cond_14

    :cond_f
    instance-of v7, v11, Lgnu/lists/Pair;

    if-eqz v7, :cond_14

    .line 454
    add-int/lit8 v32, v32, 0x1

    .line 455
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v36, v0

    .line 456
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v46

    .line 457
    .local v46, value:Ljava/lang/Object;
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 458
    sget-object v7, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object/from16 v0, v27

    move-object v1, v7

    if-eq v0, v1, :cond_10

    sget-object v7, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v27

    move-object v1, v7

    if-ne v0, v1, :cond_12

    .line 459
    :cond_10
    move-object/from16 v45, v46

    .restart local v45       #type:Ljava/lang/Object;
    move-object/from16 v5, v45

    .line 494
    .end local v45           #type:Ljava/lang/Object;
    .end local v46           #value:Ljava/lang/Object;
    :cond_11
    :goto_c
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 540
    .end local v11           #args:Ljava/lang/Object;
    .end local v21           #initPair:Lgnu/lists/Pair;
    .end local v22           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v27           #key:Ljava/lang/Object;
    .end local v29           #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .end local v32           #nKeywords:I
    .end local v41           #savedPos2:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    :goto_d
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v5

    .line 460
    .restart local v11       #args:Ljava/lang/Object;
    .restart local v21       #initPair:Lgnu/lists/Pair;
    .restart local v22       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v27       #key:Ljava/lang/Object;
    .restart local v29       #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .restart local v32       #nKeywords:I
    .restart local v41       #savedPos2:Ljava/lang/Object;
    .restart local v46       #value:Ljava/lang/Object;
    :cond_12
    :try_start_2
    sget-object v7, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v27

    move-object v1, v7

    if-eq v0, v1, :cond_13

    sget-object v7, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v27

    move-object v1, v7

    if-eq v0, v1, :cond_13

    sget-object v7, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v27

    move-object v1, v7

    if-eq v0, v1, :cond_13

    sget-object v7, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v27

    move-object v1, v7

    if-ne v0, v1, :cond_11

    .line 465
    :cond_13
    move-object/from16 v21, v36

    .line 466
    move-object/from16 v22, v30

    goto :goto_c

    .line 473
    .end local v46           #value:Ljava/lang/Object;
    :cond_14
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v7, :cond_15

    if-nez v21, :cond_15

    .line 476
    move-object/from16 v21, v36

    .line 477
    move-object/from16 v22, v30

    goto :goto_c

    .line 479
    :cond_15
    instance-of v7, v11, Lgnu/lists/Pair;

    if-eqz v7, :cond_16

    if-nez v32, :cond_16

    if-nez v21, :cond_16

    if-nez v5, :cond_16

    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v7, :cond_16

    .line 484
    move-object/from16 v45, v27

    .line 485
    .restart local v45       #type:Ljava/lang/Object;
    move-object/from16 v21, v36

    .line 486
    move-object/from16 v22, v30

    .line 487
    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    move-object/from16 v5, v45

    goto :goto_c

    .line 491
    .end local v45           #type:Ljava/lang/Object;
    :cond_16
    const/4 v11, 0x0

    .line 496
    .end local v11           #args:Ljava/lang/Object;
    .end local v27           #key:Ljava/lang/Object;
    .end local v41           #savedPos2:Ljava/lang/Object;
    :cond_17
    if-eqz v21, :cond_18

    .line 498
    add-int/lit8 v24, v23, 0x1

    .end local v23           #init_index:I
    .local v24, init_index:I
    :try_start_3
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    .line 499
    .local v18, d:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/expr/Declaration;

    move v5, v0

    if-eqz v5, :cond_19

    move-object/from16 v0, v18

    check-cast v0, Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    const/16 v5, 0x800

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    move/from16 v26, v5

    .line 502
    .local v26, isStatic:Z
    :goto_e
    add-int/lit8 v23, v24, 0x1

    .end local v24           #init_index:I
    .restart local v23       #init_index:I
    :try_start_4
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    .line 503
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lkawa/standard/object;->rewriteInit(Ljava/lang/Object;Lgnu/expr/ClassExp;Lgnu/lists/Pair;Lkawa/lang/Translator;Lkawa/lang/SyntaxForm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 540
    .end local v18           #d:Ljava/lang/Object;
    .end local v21           #initPair:Lgnu/lists/Pair;
    .end local v22           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v26           #isStatic:Z
    .end local v32           #nKeywords:I
    :cond_18
    :goto_f
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 499
    .end local v23           #init_index:I
    .restart local v18       #d:Ljava/lang/Object;
    .restart local v21       #initPair:Lgnu/lists/Pair;
    .restart local v22       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v24       #init_index:I
    .restart local v32       #nKeywords:I
    :cond_19
    :try_start_5
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_1a

    const/4 v5, 0x1

    move/from16 v26, v5

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_e

    .line 506
    .end local v18           #d:Ljava/lang/Object;
    .end local v21           #initPair:Lgnu/lists/Pair;
    .end local v22           #initSyntax:Lkawa/lang/SyntaxForm;
    .end local v24           #init_index:I
    .end local v32           #nKeywords:I
    .restart local v23       #init_index:I
    :cond_1b
    :try_start_6
    move-object/from16 v0, v37

    instance-of v0, v0, Lgnu/lists/Pair;

    move v5, v0

    if-eqz v5, :cond_21

    .line 508
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v39

    .line 513
    .local v39, save_scope:Lgnu/expr/ScopeExp;
    if-eqz v30, :cond_1c

    .line 514
    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 515
    :cond_1c
    const-string v5, "*init*"

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 517
    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v6, v5}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 518
    invoke-virtual/range {v35 .. v35}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 519
    const/16 v5, 0x65

    const-string v7, "\'*init*\' methods only supported for simple classes"

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 521
    :cond_1d
    move-object v0, v6

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 522
    move-object/from16 v0, p2

    iget-object v0, v0, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v38, v0

    .line 523
    .local v38, saveLambda:Lgnu/expr/LambdaExp;
    move-object v0, v6

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/object;->lambda:Lkawa/lang/Lambda;

    move-object v5, v0

    move-object/from16 v0, v37

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {v36 .. v36}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    if-eqz v29, :cond_20

    if-eqz v30, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v9, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v10, v0

    if-eq v9, v10, :cond_20

    :cond_1e
    move-object/from16 v0, v29

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object v9, v0

    move-object v10, v9

    :goto_10
    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v10}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 530
    move-object/from16 v0, v38

    move-object/from16 v1, p2

    iput-object v0, v1, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 531
    if-eqz v30, :cond_1f

    .line 532
    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 533
    :cond_1f
    iget-object v6, v6, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 534
    goto/16 :goto_f

    .line 524
    :cond_20
    const/4 v9, 0x0

    move-object v10, v9

    goto :goto_10

    .line 536
    .end local v38           #saveLambda:Lgnu/expr/LambdaExp;
    .end local v39           #save_scope:Lgnu/expr/ScopeExp;
    :cond_21
    const-string v5, "invalid field/method definition"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_f

    .line 546
    .end local v29           #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .end local v30           #memberSyntax:Lkawa/lang/SyntaxForm;
    .end local v36           #pair:Lgnu/lists/Pair;
    .end local v37           #pair_car:Ljava/lang/Object;
    .end local v40           #savedPos1:Ljava/lang/Object;
    :cond_22
    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    if-eqz v5, :cond_23

    .line 547
    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    move-object/from16 v0, v35

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 548
    :cond_23
    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    if-eqz v5, :cond_24

    .line 549
    move-object/from16 v0, v35

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object v5, v0

    move-object/from16 v0, v35

    move-object v1, v5

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 550
    :cond_24
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 551
    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 552
    return-void

    .line 540
    .end local v23           #init_index:I
    .restart local v21       #initPair:Lgnu/lists/Pair;
    .restart local v22       #initSyntax:Lkawa/lang/SyntaxForm;
    .restart local v24       #init_index:I
    .restart local v29       #memberCarSyntax:Lkawa/lang/SyntaxForm;
    .restart local v30       #memberSyntax:Lkawa/lang/SyntaxForm;
    .restart local v32       #nKeywords:I
    .restart local v36       #pair:Lgnu/lists/Pair;
    .restart local v37       #pair_car:Ljava/lang/Object;
    .restart local v40       #savedPos1:Ljava/lang/Object;
    :catchall_1
    move-exception v5

    move/from16 v23, v24

    .end local v24           #init_index:I
    .restart local v23       #init_index:I
    goto/16 :goto_d
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 39
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 40
    const-string v3, "missing superclass specification in object"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 53
    :goto_0
    return-object v3

    .line 41
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 42
    .local v1, pair:Lgnu/lists/Pair;
    new-instance v0, Lgnu/expr/ObjectExp;

    invoke-direct {v0}, Lgnu/expr/ObjectExp;-><init>()V

    .line 43
    .local v0, oexp:Lgnu/expr/ObjectExp;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/FString;

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 47
    const-string v3, "missing superclass specification after object class name"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pair:Lgnu/lists/Pair;
    check-cast v1, Lgnu/lists/Pair;

    .line 50
    .restart local v1       #pair:Lgnu/lists/Pair;
    :cond_2
    invoke-virtual {p0, v1, v0, p2}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, saved:[Ljava/lang/Object;
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p0, v2, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    :cond_3
    move-object v3, v0

    .line 53
    goto :goto_0
.end method

.method public scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;
    .locals 37
    .parameter "pair"
    .parameter "oexp"
    .parameter "tr"

    .prologue
    .line 61
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 62
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v29

    .line 63
    .local v29, superlist:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 64
    .local v8, components:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 65
    .local v7, classNamePair:Ljava/lang/Object;
    const/16 v17, 0x0

    .line 66
    .local v17, method_list:Lgnu/expr/LambdaExp;
    const/4 v15, 0x0

    .line 67
    .local v15, last_method:Lgnu/expr/LambdaExp;
    const/4 v6, 0x0

    .line 69
    .local v6, classAccessFlag:I
    new-instance v11, Ljava/util/Vector;

    const/16 v33, 0x14

    move-object v0, v11

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 70
    .local v11, inits:Ljava/util/Vector;
    move-object/from16 v22, v8

    .local v22, obj:Ljava/lang/Object;
    move-object/from16 v33, v7

    .end local v7           #classNamePair:Ljava/lang/Object;
    .end local p0
    :goto_0
    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_36

    .line 74
    :goto_1
    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_0

    .line 75
    check-cast v22, Lkawa/lang/SyntaxForm;

    .end local v22           #obj:Ljava/lang/Object;
    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v22, v0

    .restart local v22       #obj:Ljava/lang/Object;
    goto :goto_1

    .line 76
    :cond_0
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-nez v34, :cond_1

    .line 78
    const/16 v33, 0x65

    const-string v34, "object member not a list"

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 79
    const/16 v33, 0x0

    .line 333
    :goto_2
    return-object v33

    .line 81
    :cond_1
    move-object/from16 v0, v22

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 82
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    .line 83
    .local v23, pair_car:Ljava/lang/Object;
    :goto_3
    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_2

    .line 84
    check-cast v23, Lkawa/lang/SyntaxForm;

    .end local v23           #pair_car:Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v23, v0

    .restart local v23       #pair_car:Ljava/lang/Object;
    goto :goto_3

    .line 85
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 87
    .local v25, savedPos1:Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 89
    :goto_4
    move-object/from16 v0, v22

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_3

    .line 90
    check-cast v22, Lkawa/lang/SyntaxForm;

    .end local v22           #obj:Ljava/lang/Object;
    move-object/from16 v0, v22

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v22, v0

    .restart local v22       #obj:Ljava/lang/Object;
    goto :goto_4

    .line 91
    :cond_3
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 93
    sget-object v34, Lkawa/standard/object;->interfaceKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 95
    move-object/from16 v0, v22

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v23, v0

    .end local v23           #pair_car:Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v31

    .line 96
    .local v31, val:Ljava/lang/Object;
    sget-object v34, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 97
    const v34, 0x8000

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setFlag(I)V

    .line 100
    :goto_5
    check-cast v22, Lgnu/lists/Pair;

    .end local v22           #obj:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    .line 101
    .restart local v22       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 99
    :cond_4
    const/16 v34, 0x4000

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->setFlag(I)V

    goto :goto_5

    .line 104
    .end local v31           #val:Ljava/lang/Object;
    .restart local v23       #pair_car:Ljava/lang/Object;
    :cond_5
    sget-object v34, Lkawa/standard/object;->classNameKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 106
    if-eqz v33, :cond_6

    .line 107
    const/16 v33, 0x65

    const-string v34, "duplicate class-name specifiers"

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 108
    :cond_6
    move-object/from16 v7, v22

    .line 109
    .restart local v7       #classNamePair:Ljava/lang/Object;
    check-cast v22, Lgnu/lists/Pair;

    .end local v22           #obj:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    .line 110
    .restart local v22       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v33, v7

    .line 111
    goto/16 :goto_0

    .line 113
    .end local v7           #classNamePair:Ljava/lang/Object;
    :cond_7
    sget-object v34, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 115
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v34, v0

    if-nez v34, :cond_9

    .line 116
    const/16 v34, 0x65

    const-string v35, "access specifier for anonymous class"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 125
    .end local v23           #pair_car:Ljava/lang/Object;
    :cond_8
    :goto_6
    check-cast v22, Lgnu/lists/Pair;

    .end local v22           #obj:Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    .line 126
    .restart local v22       #obj:Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 117
    .restart local v23       #pair_car:Ljava/lang/Object;
    :cond_9
    if-eqz v6, :cond_a

    .line 118
    const/16 v34, 0x65

    const-string v35, "duplicate access specifiers"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_6

    .line 121
    :cond_a
    move-object/from16 v0, v22

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v23, v0

    .end local v23           #pair_car:Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)I

    move-result v6

    .line 122
    const/high16 v34, 0x300

    and-int v34, v34, v6

    if-eqz v34, :cond_8

    .line 123
    const/16 v34, 0x65

    const-string v35, "invalid class access specifier"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_6

    .line 131
    .restart local v23       #pair_car:Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-nez v34, :cond_c

    .line 133
    const/16 v33, 0x65

    const-string v34, "object member not a list"

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 134
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 136
    :cond_c
    move-object/from16 v0, v23

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 137
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v23

    .line 138
    :goto_7
    move-object/from16 v0, v23

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_d

    .line 139
    check-cast v23, Lkawa/lang/SyntaxForm;

    .end local v23           #pair_car:Ljava/lang/Object;
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v23, v0

    .restart local v23       #pair_car:Ljava/lang/Object;
    goto :goto_7

    .line 140
    :cond_d
    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v34, v0

    if-nez v34, :cond_e

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v34, v0

    if-nez v34, :cond_e

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_32

    .line 143
    :cond_e
    const/16 v30, 0x0

    .line 144
    .local v30, typePair:Lgnu/lists/Pair;
    move-object/from16 v28, v23

    .line 147
    .local v28, sname:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 148
    .local v4, allocationFlag:I
    const/4 v3, 0x0

    .line 149
    .local v3, accessFlag:I
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_f

    .line 151
    const/4 v9, 0x0

    .line 152
    .local v9, decl:Lgnu/expr/Declaration;
    move-object/from16 v5, p1

    .line 162
    :goto_8
    const/16 v20, 0x0

    .line 163
    .local v20, nKeywords:I
    const/16 v27, 0x0

    .line 164
    .local v27, seenInit:Z
    const/4 v10, 0x0

    .local v10, initPair:Lgnu/lists/Pair;
    move-object/from16 v34, v5

    .line 165
    :goto_9
    sget-object v35, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_26

    move-object/from16 p0, v34

    .line 167
    :goto_a
    move-object/from16 v0, p0

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 168
    check-cast p0, Lkawa/lang/SyntaxForm;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v5, v0

    .local v5, args:Ljava/lang/Object;
    move-object/from16 p0, v5

    goto :goto_a

    .line 156
    .end local v5           #args:Ljava/lang/Object;
    .end local v9           #decl:Lgnu/expr/Declaration;
    .end local v10           #initPair:Lgnu/lists/Pair;
    .end local v20           #nKeywords:I
    .end local v27           #seenInit:Z
    :cond_f
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 157
    .restart local v9       #decl:Lgnu/expr/Declaration;
    const/16 v34, 0x0

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 158
    const/high16 v34, 0x10

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 159
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #args:Ljava/lang/Object;
    goto :goto_8

    .line 169
    .end local v5           #args:Ljava/lang/Object;
    .restart local v10       #initPair:Lgnu/lists/Pair;
    .restart local v20       #nKeywords:I
    .restart local v27       #seenInit:Z
    :cond_10
    move-object/from16 v0, p0

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 170
    move-object/from16 v14, p1

    .line 171
    .local v14, keyPair:Lgnu/lists/Pair;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 172
    .local v13, key:Ljava/lang/Object;
    :goto_b
    move-object v0, v13

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 173
    check-cast v13, Lkawa/lang/SyntaxForm;

    .end local v13           #key:Ljava/lang/Object;
    iget-object v13, v13, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local v13       #key:Ljava/lang/Object;
    goto :goto_b

    .line 174
    :cond_11
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 175
    .local v26, savedPos2:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 176
    .restart local v5       #args:Ljava/lang/Object;
    sget-object v34, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_12

    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-eqz v34, :cond_23

    :cond_12
    move-object v0, v5

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-eqz v34, :cond_23

    .line 179
    add-int/lit8 v20, v20, 0x1

    .line 180
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    .line 181
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v32

    .line 182
    .local v32, value:Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 183
    sget-object v34, Lkawa/standard/object;->coloncolon:Lgnu/mapping/Symbol;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_13

    sget-object v34, Lkawa/standard/object;->typeKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_15

    .line 184
    :cond_13
    move-object/from16 v30, p1

    .line 256
    .end local v32           #value:Ljava/lang/Object;
    :cond_14
    :goto_c
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v34, v5

    .line 257
    goto/16 :goto_9

    .line 185
    .restart local v32       #value:Ljava/lang/Object;
    :cond_15
    sget-object v34, Lkawa/standard/object;->allocationKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1a

    .line 187
    if-eqz v4, :cond_16

    .line 188
    const/16 v34, 0x65

    const-string v35, "duplicate allocation: specification"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 189
    :cond_16
    const-string v34, "class"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v34

    if-nez v34, :cond_17

    const-string v34, "static"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 191
    :cond_17
    const/16 v4, 0x800

    goto :goto_c

    .line 192
    :cond_18
    const-string v34, "instance"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lkawa/standard/object;->matches(Ljava/lang/Object;Ljava/lang/String;Lkawa/lang/Translator;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 193
    const/16 v4, 0x1000

    goto :goto_c

    .line 195
    :cond_19
    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "unknown allocation kind \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_c

    .line 197
    :cond_1a
    sget-object v34, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_1b

    sget-object v34, Lkawa/standard/object;->initformKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_1b

    sget-object v34, Lkawa/standard/object;->init_formKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_1b

    sget-object v34, Lkawa/standard/object;->init_valueKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1d

    .line 202
    :cond_1b
    if-eqz v27, :cond_1c

    .line 203
    const/16 v34, 0x65

    const-string v35, "duplicate initialization"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 204
    :cond_1c
    const/16 v27, 0x1

    .line 208
    sget-object v34, Lkawa/standard/object;->initKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_14

    .line 209
    move-object/from16 v10, p1

    goto/16 :goto_c

    .line 211
    :cond_1d
    sget-object v34, Lkawa/standard/object;->init_keywordKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_1f

    .line 213
    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v34, v0

    if-nez v34, :cond_1e

    .line 214
    const/16 v34, 0x65

    const-string v35, "invalid \'init-keyword\' - not a keyword"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_c

    .line 215
    :cond_1e
    check-cast v32, Lgnu/expr/Keyword;

    .end local v32           #value:Ljava/lang/Object;
    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_14

    .line 217
    const/16 v34, 0x77

    const-string v35, "init-keyword option ignored"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_c

    .line 219
    .restart local v32       #value:Ljava/lang/Object;
    :cond_1f
    sget-object v34, Lkawa/standard/object;->accessKeyword:Lgnu/expr/Keyword;

    move-object v0, v13

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_22

    .line 221
    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkawa/standard/object;->matchAccess(Ljava/lang/Object;Lkawa/lang/Translator;)I

    move-result v21

    .line 222
    .local v21, newAccessFlag:I
    if-nez v21, :cond_21

    .line 223
    const/16 v34, 0x65

    const-string v35, "unknown access specifier"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 228
    :cond_20
    :goto_d
    move/from16 v3, v21

    .line 229
    goto/16 :goto_c

    .line 224
    :cond_21
    if-eqz v3, :cond_20

    .line 225
    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "duplicate access specifiers - "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {v3}, Lkawa/standard/object;->accessString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " and "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static/range {v21 .. v21}, Lkawa/standard/object;->accessString(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_d

    .line 232
    .end local v21           #newAccessFlag:I
    :cond_22
    const/16 v34, 0x77

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "unknown slot keyword \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_c

    .line 235
    .end local v32           #value:Ljava/lang/Object;
    :cond_23
    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v5

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_24

    if-nez v27, :cond_24

    .line 238
    move-object v10, v14

    .line 239
    const/16 v27, 0x1

    goto/16 :goto_c

    .line 241
    :cond_24
    move-object v0, v5

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-eqz v34, :cond_25

    if-nez v20, :cond_25

    if-nez v27, :cond_25

    if-nez v30, :cond_25

    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v34

    sget-object v35, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_25

    .line 246
    move-object/from16 v30, v14

    .line 247
    move-object/from16 v10, p1

    .line 248
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 249
    const/16 v27, 0x1

    goto/16 :goto_c

    .line 253
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v34, v5

    .line 258
    .end local v5           #args:Ljava/lang/Object;
    .end local v13           #key:Ljava/lang/Object;
    .end local v14           #keyPair:Lgnu/lists/Pair;
    .end local v26           #savedPos2:Ljava/lang/Object;
    :cond_26
    sget-object v35, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_28

    .line 260
    const/16 v33, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "invalid argument list for slot \'"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x27

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " args:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-nez v34, :cond_27

    const-string v34, "null"

    :goto_e
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 262
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 260
    :cond_27
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v34

    goto :goto_e

    .line 264
    :cond_28
    if-eqz v27, :cond_29

    .line 266
    const/16 v34, 0x800

    move v0, v4

    move/from16 v1, v34

    if-ne v0, v1, :cond_2a

    const/16 v34, 0x1

    move/from16 v12, v34

    .line 268
    .local v12, isStatic:Z
    :goto_f
    if-eqz v9, :cond_2b

    move-object/from16 v34, v9

    :goto_10
    move-object v0, v11

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v11, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 272
    .end local v12           #isStatic:Z
    :cond_29
    if-nez v9, :cond_2d

    .line 274
    if-nez v27, :cond_31

    .line 276
    const/16 v33, 0x65

    const-string v34, "missing field name"

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 277
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 266
    :cond_2a
    const/16 v34, 0x0

    move/from16 v12, v34

    goto :goto_f

    .line 268
    .restart local v12       #isStatic:Z
    :cond_2b
    if-eqz v12, :cond_2c

    sget-object v34, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_2c
    sget-object v34, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    .line 282
    .end local v12           #isStatic:Z
    :cond_2d
    if-eqz v30, :cond_2e

    .line 283
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v34

    move-object v0, v9

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 284
    :cond_2e
    if-eqz v4, :cond_2f

    .line 285
    invoke-virtual {v9, v4}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 286
    :cond_2f
    if-eqz v3, :cond_30

    .line 287
    invoke-virtual {v9, v3}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 288
    :cond_30
    const/16 v34, 0x1

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 289
    const/16 v34, 0x1

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 320
    .end local v3           #accessFlag:I
    .end local v4           #allocationFlag:I
    .end local v9           #decl:Lgnu/expr/Declaration;
    .end local v10           #initPair:Lgnu/lists/Pair;
    .end local v20           #nKeywords:I
    .end local v27           #seenInit:Z
    .end local v28           #sname:Ljava/lang/Object;
    .end local v30           #typePair:Lgnu/lists/Pair;
    :cond_31
    :goto_11
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 292
    :cond_32
    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v34, v0

    if-eqz v34, :cond_35

    .line 294
    move-object/from16 v0, v23

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v19, v0

    .line 295
    .local v19, mpair:Lgnu/lists/Pair;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    .line 296
    .local v18, mname:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v34, v0

    if-nez v34, :cond_33

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v34, v0

    if-nez v34, :cond_33

    .line 299
    const/16 v33, 0x65

    const-string v34, "missing method name"

    move-object/from16 v0, p3

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 300
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 302
    :cond_33
    sget-object v34, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ClassExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 304
    .restart local v9       #decl:Lgnu/expr/Declaration;
    move-object v0, v9

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 305
    new-instance v16, Lgnu/expr/LambdaExp;

    invoke-direct/range {v16 .. v16}, Lgnu/expr/LambdaExp;-><init>()V

    .line 306
    .local v16, lexp:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 307
    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setClassMethod(Z)V

    .line 308
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 309
    const/high16 v34, 0x10

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 310
    const/16 v34, 0x1

    move-object v0, v9

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 311
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 312
    if-nez v15, :cond_34

    .line 313
    move-object/from16 v17, v16

    .line 316
    :goto_12
    move-object/from16 v15, v16

    .line 317
    goto/16 :goto_11

    .line 315
    :cond_34
    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_12

    .line 319
    .end local v9           #decl:Lgnu/expr/Declaration;
    .end local v16           #lexp:Lgnu/expr/LambdaExp;
    .end local v18           #mname:Ljava/lang/Object;
    .end local v19           #mpair:Lgnu/lists/Pair;
    :cond_35
    const/16 v34, 0x65

    const-string v35, "invalid field/method definition"

    move-object/from16 v0, p3

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto/16 :goto_11

    .line 322
    .end local v23           #pair_car:Ljava/lang/Object;
    .end local v25           #savedPos1:Ljava/lang/Object;
    :cond_36
    if-eqz v6, :cond_37

    .line 323
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 325
    :cond_37
    const/16 v34, 0x6

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v34, 0x0

    aput-object p2, v24, v34

    const/16 v34, 0x1

    aput-object v8, v24, v34

    const/16 v34, 0x2

    aput-object v11, v24, v34

    const/16 v34, 0x3

    aput-object v17, v24, v34

    const/16 v34, 0x4

    aput-object v29, v24, v34

    const/16 v34, 0x5

    aput-object v33, v24, v34

    .local v24, result:[Ljava/lang/Object;
    move-object/from16 v33, v24

    .line 333
    goto/16 :goto_2
.end method
