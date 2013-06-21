.class public Lkawa/lang/Translator;
.super Lgnu/expr/Compilation;
.source "Translator.java"


# static fields
.field private static errorExp:Lgnu/expr/Expression;

.field public static final getNamedPartDecl:Lgnu/expr/Declaration;

.field public static final getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;


# instance fields
.field public curMethodLambda:Lgnu/expr/LambdaExp;

.field public currentMacroDefinition:Lkawa/lang/Macro;

.field currentSyntax:Lkawa/lang/Syntax;

.field private env:Lgnu/mapping/Environment;

.field public firstForm:I

.field public formStack:Ljava/util/Stack;

.field macroContext:Lgnu/expr/Declaration;

.field public matchArray:Lgnu/expr/Declaration;

.field notedAccess:Ljava/util/Vector;

.field public patternScope:Lkawa/lang/PatternScope;

.field public pendingForm:Ljava/lang/Object;

.field positionPair:Lgnu/lists/PairWithPosition;

.field renamedAliasStack:Ljava/util/Stack;

.field public templateScopeDecl:Lgnu/expr/Declaration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 57
    const-string v0, "gnu.kawa.functions.GetNamedPart"

    .line 58
    .local v0, cname:Ljava/lang/String;
    const-string v1, "getNamedPart"

    .line 59
    .local v1, fname:Ljava/lang/String;
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v3

    sput-object v3, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    .line 60
    new-instance v2, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v2, v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v2, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v2}, Lgnu/kawa/reflect/StaticFieldLocation;->setProcedure()V

    .line 62
    sget-object v3, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 63
    sput-object v2, Lkawa/lang/Translator;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    .line 87
    new-instance v3, Lgnu/expr/ErrorExp;

    const-string v4, "unknown syntax error"

    invoke-direct {v3, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    sput-object v3, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 1
    .parameter "language"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    .line 92
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    .line 93
    return-void
.end method

.method static getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;
    .locals 2
    .parameter "decl"

    .prologue
    .line 164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 167
    .local v0, value:Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lgnu/expr/ReferenceExp;

    .end local v0           #value:Lgnu/expr/Expression;
    move-object v1, v0

    .line 170
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static listLength(Ljava/lang/Object;)I
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v6, -0x1

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, n:I
    move-object v4, p0

    .line 507
    .local v4, slow:Ljava/lang/Object;
    move-object v1, p0

    .line 511
    .local v1, fast:Ljava/lang/Object;
    :cond_0
    :goto_0
    instance-of v5, v1, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 512
    check-cast v1, Lkawa/lang/SyntaxForm;

    .end local v1           #fast:Ljava/lang/Object;
    iget-object v1, v1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local v1       #fast:Ljava/lang/Object;
    goto :goto_0

    .line 513
    :cond_1
    :goto_1
    instance-of v5, v4, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_2

    .line 514
    check-cast v4, Lkawa/lang/SyntaxForm;

    .end local v4           #slow:Ljava/lang/Object;
    iget-object v4, v4, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local v4       #slow:Ljava/lang/Object;
    goto :goto_1

    .line 515
    :cond_2
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v5, :cond_3

    move v5, v2

    .line 531
    :goto_2
    return v5

    .line 517
    :cond_3
    instance-of v5, v1, Lgnu/lists/Pair;

    if-nez v5, :cond_4

    .line 518
    sub-int v5, v6, v2

    goto :goto_2

    .line 519
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 520
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 521
    .local v3, next:Ljava/lang/Object;
    :goto_3
    instance-of v5, v3, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_5

    .line 522
    check-cast v3, Lkawa/lang/SyntaxForm;

    .end local v3           #next:Ljava/lang/Object;
    iget-object v3, v3, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local v3       #next:Ljava/lang/Object;
    goto :goto_3

    .line 523
    :cond_5
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v5, :cond_6

    move v5, v2

    .line 524
    goto :goto_2

    .line 525
    :cond_6
    instance-of v5, v3, Lgnu/lists/Pair;

    if-nez v5, :cond_7

    .line 526
    sub-int v5, v6, v2

    goto :goto_2

    .line 527
    :cond_7
    check-cast v4, Lgnu/lists/Pair;

    .end local v4           #slow:Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 528
    .restart local v4       #slow:Ljava/lang/Object;
    check-cast v3, Lgnu/lists/Pair;

    .end local v3           #next:Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 529
    add-int/lit8 v2, v2, 0x1

    .line 530
    if-ne v1, v4, :cond_0

    .line 531
    const/high16 v5, -0x8000

    goto :goto_2
.end method

.method public static makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .parameter "pair"
    .parameter "car"
    .parameter "cdr"

    .prologue
    .line 1148
    instance-of v0, p0, Lgnu/lists/PairWithPosition;

    if-eqz v0, :cond_0

    .line 1149
    new-instance v0, Lgnu/lists/PairWithPosition;

    check-cast p0, Lgnu/lists/PairWithPosition;

    .end local p0
    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1150
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Lgnu/lists/Pair;

    invoke-direct {v0, p1, p2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static safeCar(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 480
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 481
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    iget-object p0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local p0
    goto :goto_0

    .line 482
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    .line 483
    const/4 v0, 0x0

    .line 484
    .end local p0
    :goto_1
    return-object v0

    .restart local p0
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static safeCdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 489
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 490
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    iget-object p0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local p0
    goto :goto_0

    .line 491
    :cond_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-nez v0, :cond_1

    .line 492
    const/4 v0, 0x0

    .line 493
    .end local p0
    :goto_1
    return-object v0

    .restart local p0
    :cond_1
    check-cast p0, Lgnu/lists/Pair;

    .end local p0
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public static setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V
    .locals 1
    .parameter "decl"
    .parameter "location"

    .prologue
    .line 815
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 816
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 817
    :cond_0
    return-void
.end method

.method public static setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V
    .locals 1
    .parameter "exp"
    .parameter "location"

    .prologue
    .line 809
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 810
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 811
    :cond_0
    return-void
.end method

.method public static stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 473
    :goto_0
    instance-of v0, p0, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 474
    check-cast p0, Lkawa/lang/SyntaxForm;

    .end local p0
    iget-object p0, p0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .restart local p0
    goto :goto_0

    .line 475
    :cond_0
    return-object p0
.end method

.method public static wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 1
    .parameter "form"
    .parameter "syntax"

    .prologue
    .line 919
    if-eqz p1, :cond_0

    instance-of v0, p0, Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 922
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p0}, Lkawa/lang/SyntaxForm;->fromDatumIfNeeded(Ljava/lang/Object;)Lkawa/lang/SyntaxForm;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;
    .locals 3
    .parameter "syntax"
    .parameter "form"

    .prologue
    .line 145
    sget-object v0, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    .line 146
    .local v0, exp:Lgnu/expr/Expression;
    iget-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 147
    .local v1, saveSyntax:Lkawa/lang/Syntax;
    iput-object p1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 150
    :try_start_0
    invoke-virtual {p1, p2, p0}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 154
    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 156
    return-object v0

    .line 154
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    throw v2
.end method

.method check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    .locals 10
    .parameter "decl"

    .prologue
    const/4 v9, 0x0

    const v7, 0x8000

    .line 259
    invoke-static {p1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 260
    .local v1, d:Lgnu/expr/Declaration;
    const/4 v5, 0x0

    .line 261
    .local v5, obj:Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 262
    .local v2, dval:Lgnu/expr/Expression;
    if-eqz v2, :cond_4

    invoke-virtual {v1, v7}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 266
    :try_start_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    instance-of v6, v6, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_3

    .line 268
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    check-cast v6, Lgnu/expr/ReferenceExp;

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 270
    .local v0, context:Lgnu/expr/Declaration;
    if-eqz v0, :cond_2

    .line 271
    iput-object v0, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 277
    .end local v0           #context:Lgnu/expr/Declaration;
    :cond_0
    :goto_0
    iget-object v6, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v2, v6}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 290
    .end local v5           #obj:Ljava/lang/Object;
    :cond_1
    :goto_1
    instance-of v6, v5, Lkawa/lang/Syntax;

    if-eqz v6, :cond_5

    check-cast v5, Lkawa/lang/Syntax;

    move-object v6, v5

    :goto_2
    return-object v6

    .line 272
    .restart local v0       #context:Lgnu/expr/Declaration;
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lkawa/lang/TemplateScope;

    if-eqz v6, :cond_0

    .line 273
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lkawa/lang/TemplateScope;

    iget-object v6, v6, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v6, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 279
    .end local v0           #context:Lgnu/expr/Declaration;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 281
    .local v3, ex:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    const/16 v6, 0x65

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to evaluate macro for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 275
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lkawa/lang/TemplateScope;

    if-eqz v6, :cond_0

    .line 276
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v6, Lkawa/lang/TemplateScope;

    iget-object v6, v6, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v6, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {p1, v7}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 287
    invoke-static {p1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v4

    .line 288
    .local v4, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v4, v9}, Lgnu/kawa/reflect/StaticFieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v4           #loc:Lgnu/kawa/reflect/StaticFieldLocation;
    .end local v5           #obj:Ljava/lang/Object;
    :cond_5
    move-object v6, v9

    .line 290
    goto :goto_2
.end method

.method public define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 6
    .parameter "name"
    .parameter "nameSyntax"
    .parameter "defs"

    .prologue
    .line 1445
    if-eqz p2, :cond_1

    iget-object v4, p2, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v5

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1446
    .local v1, aliasNeeded:Z
    :goto_0
    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 1447
    .local v3, declName:Ljava/lang/Object;
    :goto_1
    const/16 v4, 0x77

    invoke-virtual {p3, v3, v4, p0}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 1448
    .local v2, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 1450
    iget-object v4, p2, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-virtual {p0, p1, v2, v4}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 1451
    .local v0, alias:Lgnu/expr/Declaration;
    iget-object v4, p2, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0}, Lkawa/lang/TemplateScope;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1453
    .end local v0           #alias:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 1454
    return-object v2

    .line 1445
    .end local v1           #aliasNeeded:Z
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v3           #declName:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .restart local v1       #aliasNeeded:Z
    :cond_2
    move-object v3, p1

    .line 1446
    goto :goto_1
.end method

.method public exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;
    .locals 6
    .parameter "typeSpecPair"

    .prologue
    .line 871
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 874
    .local v0, saved:Ljava/lang/Object;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 875
    .local v1, texp:Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/InlineCalls;

    invoke-direct {v3, p0}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    invoke-virtual {v3, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 876
    instance-of v3, v1, Lgnu/expr/ErrorExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 877
    const/4 v3, 0x0

    .line 893
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .end local v1           #texp:Lgnu/expr/Expression;
    :goto_0
    return-object v3

    .line 878
    .restart local v1       #texp:Lgnu/expr/Expression;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 879
    .local v2, type:Lgnu/bytecode/Type;
    if-nez v2, :cond_2

    .line 881
    instance-of v3, v1, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_1

    .line 882
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v1, Lgnu/expr/ReferenceExp;

    .end local v1           #texp:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 887
    :goto_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    goto :goto_0

    .line 885
    .restart local v1       #texp:Lgnu/expr/Expression;
    :cond_1
    const/16 v3, 0x65

    :try_start_2
    const-string v4, "invalid type spec (must be \"type\" or \'type or <type>)"

    invoke-virtual {p0, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 893
    .end local v1           #texp:Lgnu/expr/Expression;
    .end local v2           #type:Lgnu/bytecode/Type;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v3

    .restart local v1       #texp:Lgnu/expr/Expression;
    .restart local v2       #type:Lgnu/bytecode/Type;
    :cond_2
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_0
.end method

.method public finishModule(Lgnu/expr/ModuleExp;)V
    .locals 9
    .parameter "mexp"

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x65

    const/16 v6, 0x800

    .line 1286
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    .line 1287
    .local v1, moduleStatic:Z
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1288
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_a

    .line 1290
    const/16 v4, 0x200

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1292
    const-string v2, "\'"

    .line 1293
    .local v2, msg1:Ljava/lang/String;
    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\' exported but never defined"

    move-object v3, v4

    .line 1299
    .local v3, msg2:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v7, v0, v2, v3}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    .end local v2           #msg1:Ljava/lang/String;
    .end local v3           #msg2:Ljava/lang/String;
    :cond_0
    const/16 v4, 0x2000

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1303
    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1305
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1307
    const/high16 v4, 0x100

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1308
    const-string v4, "\'"

    const-string v5, "\' is declared both private and exported"

    invoke-virtual {p0, v7, v0, v4, v5}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1316
    :cond_2
    :goto_2
    if-eqz v1, :cond_7

    .line 1317
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 1288
    :cond_3
    :goto_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 1293
    .restart local v2       #msg1:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\' declared static but never defined"

    move-object v3, v4

    goto :goto_1

    :cond_5
    const-string v4, "\' declared but never defined"

    move-object v3, v4

    goto :goto_1

    .line 1314
    .end local v2           #msg1:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_2

    .line 1318
    :cond_7
    const v4, 0x8000

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    sget v4, Lgnu/expr/Compilation;->moduleStatic:I

    if-ltz v4, :cond_9

    const/high16 v4, 0x1

    invoke-virtual {p1, v4}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1322
    :cond_9
    const/16 v4, 0x1000

    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setFlag(I)V

    goto :goto_3

    .line 1324
    :cond_a
    return-void
.end method

.method public getCurrentSyntax()Lkawa/lang/Syntax;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    return-object v0
.end method

.method public final getGlobalEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public isLexical(Lgnu/expr/Declaration;)Z
    .locals 6
    .parameter "decl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    if-nez p1, :cond_0

    move v3, v4

    .line 83
    :goto_0
    return v3

    .line 71
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    .line 74
    .local v2, scope:Lgnu/expr/ScopeExp;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v1

    .line 77
    .local v1, context:Lgnu/expr/ScopeExp;
    :goto_1
    if-nez v2, :cond_2

    move v3, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    if-ne v2, v1, :cond_3

    move v3, v5

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    instance-of v3, v2, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    .line 83
    goto :goto_0

    .line 75
    :cond_4
    iget-object v2, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 227
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 228
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 230
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0
.end method

.method public lookupGlobal(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"

    .prologue
    .line 236
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 242
    invoke-virtual {p0}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 243
    .local v1, module:Lgnu/expr/ModuleExp;
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 244
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 246
    invoke-virtual {v1, p1}, Lgnu/expr/ModuleExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 249
    :cond_0
    return-object v0
.end method

.method public makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "first"
    .parameter "scope"

    .prologue
    .line 1219
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewriteBody(I)V

    .line 1220
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    sub-int v2, v3, p1

    .line 1221
    .local v2, nforms:I
    if-nez v2, :cond_0

    .line 1222
    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 1237
    .end local p0
    :goto_0
    return-object v3

    .line 1223
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1225
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Expression;

    move-object v3, p0

    goto :goto_0

    .line 1229
    .restart local p0
    :cond_1
    new-array v0, v2, [Lgnu/expr/Expression;

    .line 1230
    .local v0, exps:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1231
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    add-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    aput-object v3, v0, v1

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1232
    :cond_2
    iget-object v3, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->setSize(I)V

    .line 1233
    instance-of v3, p2, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_3

    .line 1234
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v3, v4, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 1237
    :cond_3
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispLanguage;->makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0
.end method

.method public makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "decl"
    .parameter "templateScope"

    .prologue
    .line 1379
    if-nez p2, :cond_0

    move-object v0, p1

    .line 1381
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0
.end method

.method public makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "decl"
    .parameter "templateScope"

    .prologue
    const/4 v2, 0x1

    .line 1388
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 1389
    .local v0, alias:Lgnu/expr/Declaration;
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 1390
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1391
    iput-object p3, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1392
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, p2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 1393
    .local v1, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v1, v2}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 1394
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1395
    return-object v0
.end method

.method public final matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .parameter "form"
    .parameter "literal"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z
    .locals 3
    .parameter "form"
    .parameter "syntax"
    .parameter "literal"

    .prologue
    .line 207
    if-eqz p2, :cond_0

    .line 211
    :cond_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 214
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    iget-object p1, p1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 216
    .restart local p1
    :cond_1
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 219
    .local v0, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 222
    .end local v0           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    if-ne p1, p3, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z
    .locals 3
    .parameter "form"
    .parameter "syntax"
    .parameter "literal"

    .prologue
    .line 186
    if-eqz p2, :cond_0

    .line 190
    :cond_0
    instance-of v1, p1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 193
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    iget-object p1, p1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 195
    .restart local p1
    :cond_1
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v0

    .line 198
    .local v0, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 201
    .end local v0           #rexp:Lgnu/expr/ReferenceExp;
    :cond_2
    instance-of v1, p1, Lgnu/mapping/SimpleSymbol;

    if-eqz v1, :cond_3

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p3, :cond_3

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "context"
    .parameter "member"

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "ns"
    .parameter "member"

    .prologue
    .line 458
    if-eqz p1, :cond_0

    instance-of v1, p2, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 460
    check-cast p2, Lgnu/expr/QuoteExp;

    .end local p2
    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, mem:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 463
    .end local v0           #mem:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "name"

    .prologue
    .line 571
    instance-of v6, p1, Lgnu/mapping/SimpleSymbol;

    if-nez v6, :cond_1

    .line 574
    instance-of v6, p1, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .local v2, p:Lgnu/lists/Pair;
    invoke-static {v2}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v6, v7, :cond_1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .restart local v2       #p:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 579
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    .line 580
    .local v3, part1:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    .line 581
    .local v4, part2:Lgnu/expr/Expression;
    invoke-virtual {p0, v3, v4}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 582
    .local v5, sym:Lgnu/mapping/Symbol;
    if-eqz v5, :cond_0

    move-object v6, v5

    .line 589
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #part1:Lgnu/expr/Expression;
    .end local v4           #part2:Lgnu/expr/Expression;
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :goto_0
    return-object v6

    .line 584
    .restart local v2       #p:Lgnu/lists/Pair;
    .restart local v3       #part1:Lgnu/expr/Expression;
    .restart local v4       #part2:Lgnu/expr/Expression;
    .restart local v5       #sym:Lgnu/mapping/Symbol;
    :cond_0
    invoke-static {v3, v4}, Lgnu/kawa/functions/GetNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, combinedName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 586
    sget-object v6, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v6, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    goto :goto_0

    .end local v1           #combinedName:Ljava/lang/String;
    .end local v2           #p:Lgnu/lists/Pair;
    .end local v3           #part1:Lgnu/expr/Expression;
    .end local v4           #part2:Lgnu/expr/Expression;
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :cond_1
    move-object v6, p1

    .line 589
    goto :goto_0
.end method

.method public namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 426
    instance-of v8, p1, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_5

    .line 428
    move-object v0, p1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v3, v0

    .line 429
    .local v3, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 431
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    const/high16 v8, 0x1

    invoke-virtual {v1, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 433
    :cond_0
    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    .line 434
    .local v4, rsym:Ljava/lang/Object;
    instance-of v8, v4, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_1

    check-cast v4, Lgnu/mapping/Symbol;

    .end local v4           #rsym:Ljava/lang/Object;
    move-object v5, v4

    .line 436
    .local v5, sym:Lgnu/mapping/Symbol;
    :goto_0
    iget-object v8, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v8, v5, v10}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 444
    .end local v5           #sym:Lgnu/mapping/Symbol;
    :goto_1
    instance-of v8, v7, Lgnu/mapping/Namespace;

    if-eqz v8, :cond_5

    .line 446
    move-object v0, v7

    check-cast v0, Lgnu/mapping/Namespace;

    move-object v2, v0

    .line 447
    .local v2, ns:Lgnu/mapping/Namespace;
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, uri:Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v8, "class:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v10

    .line 453
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #rexp:Lgnu/expr/ReferenceExp;
    .end local v6           #uri:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 434
    .restart local v1       #decl:Lgnu/expr/Declaration;
    .restart local v3       #rexp:Lgnu/expr/ReferenceExp;
    .restart local v4       #rsym:Ljava/lang/Object;
    :cond_1
    iget-object v8, p0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    .line 438
    .end local v4           #rsym:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 440
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, val:Ljava/lang/Object;
    goto :goto_1

    .line 443
    .end local v7           #val:Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #val:Ljava/lang/Object;
    goto :goto_1

    .end local v7           #val:Ljava/lang/Object;
    .restart local v2       #ns:Lgnu/mapping/Namespace;
    .restart local v6       #uri:Ljava/lang/String;
    :cond_4
    move-object v8, v2

    .line 450
    goto :goto_2

    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #rexp:Lgnu/expr/ReferenceExp;
    .end local v6           #uri:Ljava/lang/String;
    :cond_5
    move-object v8, v10

    .line 453
    goto :goto_2
.end method

.method public noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "name"
    .parameter "scope"

    .prologue
    .line 1249
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1250
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    .line 1251
    :cond_0
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1252
    iget-object v0, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1253
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "input"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public popForms(I)Ljava/lang/Object;
    .locals 5
    .parameter "first"

    .prologue
    .line 927
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v1

    .line 928
    .local v1, last:I
    if-ne v1, p1, :cond_0

    .line 929
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 941
    :goto_0
    return-object v4

    .line 931
    :cond_0
    add-int/lit8 v4, p1, 0x1

    if-ne v1, v4, :cond_1

    .line 932
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 940
    :goto_1
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->setSize(I)V

    move-object v4, v2

    .line 941
    goto :goto_0

    .line 935
    :cond_1
    new-instance v3, Lgnu/mapping/Values;

    invoke-direct {v3}, Lgnu/mapping/Values;-><init>()V

    .line 936
    .local v3, vals:Lgnu/mapping/Values;
    move v0, p1

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 937
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 938
    :cond_2
    move-object v2, v3

    .local v2, r:Lgnu/mapping/Values;
    goto :goto_1
.end method

.method public popPositionOf(Ljava/lang/Object;)V
    .locals 2
    .parameter "saved"

    .prologue
    .line 851
    if-nez p1, :cond_1

    .line 857
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 853
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 854
    check-cast p1, Lgnu/lists/PairWithPosition;

    .end local p1
    iput-object p1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 855
    iget-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 856
    iget-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v0}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/PairWithPosition;

    iput-object v0, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    goto :goto_0
.end method

.method public popRenamedAlias(I)V
    .locals 5
    .parameter "count"

    .prologue
    .line 1430
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1432
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/ScopeExp;

    .line 1433
    .local v3, templateScope:Lgnu/expr/ScopeExp;
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 1434
    .local v0, alias:Lgnu/expr/Declaration;
    invoke-static {v0}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 1435
    .local v1, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1436
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1437
    iget-object v4, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1438
    .local v2, old:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1439
    check-cast v2, Lgnu/expr/Declaration;

    .end local v2           #old:Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 1441
    .end local v0           #alias:Lgnu/expr/Declaration;
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #templateScope:Lgnu/expr/ScopeExp;
    :cond_1
    return-void
.end method

.method public processAccesses()V
    .locals 8

    .prologue
    .line 1261
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v6, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1264
    .local v5, sz:I
    iget-object v3, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1265
    .local v3, saveScope:Lgnu/expr/ScopeExp;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 1267
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1268
    .local v2, name:Ljava/lang/Object;
    iget-object v6, p0, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/ScopeExp;

    .line 1269
    .local v4, scope:Lgnu/expr/ScopeExp;
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v4, :cond_2

    .line 1270
    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1271
    :cond_2
    iget-object v6, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    .line 1272
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_3

    const/high16 v6, 0x1

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1274
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    invoke-virtual {v6, v0}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    .line 1275
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 1276
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 1277
    const/high16 v6, 0x8

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 1265
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1280
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v2           #name:Ljava/lang/Object;
    .end local v4           #scope:Lgnu/expr/ScopeExp;
    :cond_4
    iget-object v6, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v3, :cond_0

    .line 1281
    invoke-virtual {p0, v3}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_0
.end method

.method public pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "pair"

    .prologue
    .line 826
    instance-of v3, p1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 827
    check-cast p1, Lkawa/lang/SyntaxForm;

    .end local p1
    iget-object p1, p1, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    .line 828
    .restart local p1
    :cond_0
    instance-of v3, p1, Lgnu/lists/PairWithPosition;

    if-nez v3, :cond_1

    .line 829
    const/4 v3, 0x0

    .line 843
    :goto_0
    return-object v3

    .line 830
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v1, v0

    .line 832
    .local v1, ppair:Lgnu/lists/PairWithPosition;
    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getLineNumber()I

    move-result v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v3

    invoke-virtual {p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 837
    :cond_2
    new-instance v2, Lgnu/lists/PairWithPosition;

    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    iget-object v4, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-direct {v2, p0, v3, v4}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    .local v2, saved:Lgnu/lists/PairWithPosition;
    :goto_1
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 842
    iput-object v1, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    move-object v3, v2

    .line 843
    goto :goto_0

    .line 840
    .end local v2           #saved:Lgnu/lists/PairWithPosition;
    :cond_3
    iget-object v2, p0, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .restart local v2       #saved:Lgnu/lists/PairWithPosition;
    goto :goto_1
.end method

.method public pushRenamedAlias(Lgnu/expr/Declaration;)V
    .locals 4
    .parameter "alias"

    .prologue
    .line 1413
    invoke-static {p1}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1414
    .local v0, decl:Lgnu/expr/Declaration;
    iget-object v2, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1415
    .local v2, templateScope:Lgnu/expr/ScopeExp;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1416
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 1417
    .local v1, old:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 1418
    invoke-virtual {v2, v1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1419
    :cond_0
    invoke-virtual {v2, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1420
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    if-nez v3, :cond_1

    .line 1421
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    .line 1422
    :cond_1
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1423
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    iget-object v3, p0, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 13
    .parameter "mexp"

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v9, v3

    .line 1329
    .local v9, numPending:I
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 1331
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-virtual {v3, v8}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/ModuleInfo;

    .line 1332
    .local v2, info:Lgnu/expr/ModuleInfo;
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .restart local v8       #i:I
    invoke-virtual {v3, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/expr/ScopeExp;

    .line 1333
    .local v5, defs:Lgnu/expr/ScopeExp;
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    add-int/lit8 v7, v8, 0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    invoke-virtual {v3, v8}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/expr/Expression;

    .line 1334
    .local v10, posExp:Lgnu/expr/Expression;
    if-ne p1, v5, :cond_0

    .line 1337
    new-instance v11, Lgnu/expr/ReferenceExp;

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    move-object v3, v0

    invoke-direct {v11, v3}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 1338
    .local v11, savePos:Lgnu/expr/Expression;
    invoke-virtual {v11, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 1339
    invoke-virtual {p0, v10}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1340
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v3, v1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 1342
    invoke-virtual {p0, v11}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1343
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    const/4 v4, 0x3

    sub-int v4, v7, v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    .line 1344
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    const/4 v4, 0x2

    sub-int v4, v7, v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    .line 1345
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    const/4 v4, 0x1

    sub-int v4, v7, v4

    invoke-virtual {v3, v1, v4}, Ljava/util/Stack;->setElementAt(Ljava/lang/Object;I)V

    .end local v11           #savePos:Lgnu/expr/Expression;
    :cond_0
    move v8, v7

    .line 1347
    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 1328
    .end local v2           #info:Lgnu/expr/ModuleInfo;
    .end local v5           #defs:Lgnu/expr/ScopeExp;
    .end local v8           #i:I
    .end local v9           #numPending:I
    .end local v10           #posExp:Lgnu/expr/Expression;
    :cond_1
    iget-object v3, p0, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    move v9, v3

    goto :goto_0

    .line 1349
    .restart local v8       #i:I
    .restart local v9       #numPending:I
    :cond_2
    invoke-virtual {p0}, Lkawa/lang/Translator;->processAccesses()V

    .line 1351
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->setModule(Lgnu/expr/ModuleExp;)V

    .line 1352
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v12

    .line 1355
    .local v12, save_comp:Lgnu/expr/Compilation;
    :try_start_0
    invoke-static {p0}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 1356
    iget v1, p0, Lkawa/lang/Translator;->firstForm:I

    invoke-virtual {p0, v1, p1}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1358
    iget-boolean v1, p0, Lkawa/lang/Translator;->immediate:Z

    if-nez v1, :cond_3

    .line 1359
    iget-object v1, p0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v1, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    :cond_3
    invoke-static {v12}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 1374
    return-void

    .line 1363
    :catchall_0
    move-exception v1

    invoke-static {v12}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    throw v1
.end method

.method public rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    .locals 36
    .parameter "exp"
    .parameter "function"

    .prologue
    .line 597
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v32, v0

    if-eqz v32, :cond_0

    .line 599
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v30, v0

    .line 600
    .local v30, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v27, v0

    .line 603
    .local v27, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 604
    move-object/from16 v0, v30

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 609
    .local v26, s:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object/from16 v32, v26

    .line 804
    .end local v26           #s:Lgnu/expr/Expression;
    .end local v27           #save_scope:Lgnu/expr/ScopeExp;
    .end local v30           #sf:Lkawa/lang/SyntaxForm;
    .end local p0
    .end local p1
    :goto_0
    return-object v32

    .line 609
    .restart local v27       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v30       #sf:Lkawa/lang/SyntaxForm;
    .restart local p0
    .restart local p1
    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v32

    .line 612
    .end local v27           #save_scope:Lgnu/expr/ScopeExp;
    .end local v30           #sf:Lkawa/lang/SyntaxForm;
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/PairWithPosition;

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 613
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/PairWithPosition;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v32

    goto :goto_0

    .line 614
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 615
    check-cast p1, Lgnu/lists/Pair;

    .end local p1
    invoke-virtual/range {p0 .. p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v32

    goto :goto_0

    .line 616
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-eqz v32, :cond_20

    invoke-virtual/range {p0 .. p1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_20

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v11

    .line 619
    .local v11, decl:Lgnu/expr/Declaration;
    const/4 v6, 0x0

    .line 624
    .local v6, cdecl:Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    .line 625
    .local v28, scope:Lgnu/expr/ScopeExp;
    if-nez v11, :cond_7

    const/16 v32, -0x1

    move/from16 v12, v32

    .line 627
    .local v12, decl_nesting:I
    :goto_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v32, v0

    if-eqz v32, :cond_8

    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 628
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 634
    .local v13, dname:Ljava/lang/String;
    :goto_2
    if-eqz v28, :cond_3

    .line 636
    move-object/from16 v0, v28

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v32, v0

    if-eqz v32, :cond_b

    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v32, v0

    if-eqz v32, :cond_b

    move-object/from16 v0, v28

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 640
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v32

    move v0, v12

    move/from16 v1, v32

    if-lt v0, v1, :cond_9

    .line 671
    :cond_3
    if-eqz v11, :cond_10

    .line 673
    invoke-virtual {v11}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v22

    .line 674
    .local v22, nameToLookup:Ljava/lang/Object;
    const/16 p1, 0x0

    .line 675
    invoke-static {v11}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v25

    .line 676
    .local v25, rexp:Lgnu/expr/ReferenceExp;
    if-eqz v25, :cond_4

    .line 678
    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v11

    .line 679
    if-nez v11, :cond_4

    .line 681
    invoke-virtual/range {v25 .. v25}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    .line 682
    move-object/from16 v22, p1

    .end local p1
    :cond_4
    move-object/from16 v32, p1

    .line 690
    .end local v25           #rexp:Lgnu/expr/ReferenceExp;
    :goto_3
    move-object/from16 v0, v32

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    .line 691
    .local v31, symbol:Lgnu/mapping/Symbol;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v29

    .line 692
    .local v29, separate:Z
    if-eqz v11, :cond_15

    .line 694
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->isLexical(Lgnu/expr/Declaration;)Z

    move-result v32

    if-eqz v32, :cond_5

    if-eqz v29, :cond_11

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 696
    :cond_5
    const/4 v11, 0x0

    .line 782
    :cond_6
    :goto_4
    if-eqz v11, :cond_1e

    .line 785
    const/high16 v32, 0x4

    move-object v0, v11

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 786
    invoke-virtual {v11}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v32

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/PatternScope;

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    .line 787
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "reference to pattern variable "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " outside syntax template"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 625
    .end local v12           #decl_nesting:I
    .end local v13           #dname:Ljava/lang/String;
    .end local v22           #nameToLookup:Ljava/lang/Object;
    .end local v29           #separate:Z
    .end local v31           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_7
    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v32

    move/from16 v12, v32

    goto/16 :goto_1

    .line 631
    .restart local v12       #decl_nesting:I
    :cond_8
    const/4 v13, 0x0

    .line 632
    .restart local v13       #dname:Ljava/lang/String;
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 642
    :cond_9
    move-object/from16 v0, v28

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v5, v0

    .line 643
    .local v5, caller:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v8, v0

    check-cast v8, Lgnu/expr/ClassExp;

    .line 644
    .local v8, cexp:Lgnu/expr/ClassExp;
    invoke-virtual {v8}, Lgnu/expr/ClassExp;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/ClassType;

    .line 645
    .local v10, ctype:Lgnu/bytecode/ClassType;
    invoke-static {v10, v13, v10}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v23

    .line 646
    .local v23, part:Lgnu/bytecode/Member;
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v32, v0

    move-object v0, v5

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_a

    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v32, v0

    move-object v0, v5

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_c

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v32

    if-eqz v32, :cond_c

    :cond_a
    const/16 v32, 0x1

    move/from16 v9, v32

    .line 650
    .local v9, contextStatic:Z
    :goto_5
    if-nez v23, :cond_e

    .line 652
    if-eqz v9, :cond_d

    const/16 v32, 0x53

    move/from16 v21, v32

    .line 653
    .local v21, mode:C
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->language:Lgnu/expr/Language;

    move-object/from16 v32, v0

    move-object v0, v10

    move-object v1, v13

    move/from16 v2, v21

    move-object v3, v10

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v20

    .line 656
    .local v20, methods:[Lgnu/expr/PrimProcedure;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_e

    .line 634
    .end local v5           #caller:Lgnu/expr/LambdaExp;
    .end local v8           #cexp:Lgnu/expr/ClassExp;
    .end local v9           #contextStatic:Z
    .end local v10           #ctype:Lgnu/bytecode/ClassType;
    .end local v20           #methods:[Lgnu/expr/PrimProcedure;
    .end local v21           #mode:C
    .end local v23           #part:Lgnu/bytecode/Member;
    :cond_b
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    goto/16 :goto_2

    .line 646
    .restart local v5       #caller:Lgnu/expr/LambdaExp;
    .restart local v8       #cexp:Lgnu/expr/ClassExp;
    .restart local v10       #ctype:Lgnu/bytecode/ClassType;
    .restart local v23       #part:Lgnu/bytecode/Member;
    :cond_c
    const/16 v32, 0x0

    move/from16 v9, v32

    goto :goto_5

    .line 652
    .restart local v9       #contextStatic:Z
    :cond_d
    const/16 v32, 0x56

    move/from16 v21, v32

    goto :goto_6

    .line 661
    :cond_e
    if-eqz v9, :cond_f

    .line 662
    new-instance v24, Lgnu/expr/ReferenceExp;

    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lgnu/expr/ClassExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 665
    .local v24, part1:Lgnu/expr/Expression;
    :goto_7
    invoke-static {v13}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lgnu/kawa/functions/GetNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 664
    .end local v24           #part1:Lgnu/expr/Expression;
    .restart local p0
    :cond_f
    new-instance v24, Lgnu/expr/ThisExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .restart local v24       #part1:Lgnu/expr/Expression;
    goto :goto_7

    .line 688
    .end local v5           #caller:Lgnu/expr/LambdaExp;
    .end local v8           #cexp:Lgnu/expr/ClassExp;
    .end local v9           #contextStatic:Z
    .end local v10           #ctype:Lgnu/bytecode/ClassType;
    .end local v23           #part:Lgnu/bytecode/Member;
    .end local v24           #part1:Lgnu/expr/Expression;
    :cond_10
    move-object/from16 v22, p1

    .restart local v22       #nameToLookup:Ljava/lang/Object;
    move-object/from16 v32, p1

    goto/16 :goto_3

    .line 697
    .end local p1
    .restart local v29       #separate:Z
    .restart local v31       #symbol:Lgnu/mapping/Symbol;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    move/from16 v32, v0

    if-eqz v32, :cond_12

    invoke-virtual {v11}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 p1, v0

    check-cast p1, Lkawa/lang/TemplateScope;

    move-object/from16 v0, p1

    iget-object v0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    move-object v6, v0

    goto/16 :goto_4

    .line 699
    :cond_12
    const/high16 v32, 0x10

    move-object v0, v11

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v32

    if-eqz v32, :cond_6

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v32

    if-nez v32, :cond_6

    .line 702
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v28

    .line 705
    :goto_8
    if-nez v28, :cond_13

    .line 706
    new-instance v32, Ljava/lang/Error;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "internal error: missing "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v32

    .line 707
    :cond_13
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v32, v0

    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_14

    .line 711
    invoke-virtual/range {v28 .. v28}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    goto/16 :goto_4

    .line 709
    :cond_14
    move-object/from16 v0, v28

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v28, v0

    goto :goto_8

    .line 716
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v33, v0

    if-eqz p2, :cond_17

    if-eqz v29, :cond_17

    sget-object v34, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_9
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v19

    .line 720
    .local v19, loc:Lgnu/mapping/Location;
    if-eqz v19, :cond_16

    .line 721
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v19

    .line 722
    :cond_16
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/kawa/reflect/FieldLocation;

    move/from16 v33, v0

    if-eqz v33, :cond_1c

    .line 724
    move-object/from16 v0, v19

    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    move-object/from16 v18, v0

    .line 727
    .local v18, floc:Lgnu/kawa/reflect/FieldLocation;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    .line 728
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v33

    if-nez v33, :cond_18

    sget-object v33, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object v0, v11

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_18

    .line 732
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 716
    .end local v18           #floc:Lgnu/kawa/reflect/FieldLocation;
    .end local v19           #loc:Lgnu/mapping/Location;
    :cond_17
    const/16 v34, 0x0

    goto :goto_9

    .line 733
    .restart local v18       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v19       #loc:Lgnu/mapping/Location;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move/from16 v33, v0

    if-eqz v33, :cond_19

    .line 735
    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v33

    if-nez v33, :cond_6

    .line 737
    new-instance v7, Lgnu/expr/Declaration;

    const-string v33, "(module-instance)"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 738
    .end local v6           #cdecl:Lgnu/expr/Declaration;
    .local v7, cdecl:Lgnu/expr/Declaration;
    :try_start_2
    new-instance v33, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getInstance()Ljava/lang/Object;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v7

    .end local v7           #cdecl:Lgnu/expr/Declaration;
    .restart local v6       #cdecl:Lgnu/expr/Declaration;
    goto/16 :goto_4

    .line 741
    :cond_19
    :try_start_3
    invoke-virtual {v11}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v33

    if-eqz v33, :cond_1b

    .line 746
    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getRClass()Ljava/lang/Class;

    move-result-object v16

    .line 748
    .local v16, fclass:Ljava/lang/Class;
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    .local v17, floader:Ljava/lang/ClassLoader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ZipLoader;

    move/from16 v33, v0

    if-nez v33, :cond_1a

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    move/from16 v32, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v32, :cond_6

    .line 752
    .end local v17           #floader:Ljava/lang/ClassLoader;
    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 755
    .end local v16           #fclass:Ljava/lang/Class;
    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 757
    :catch_0
    move-exception v33

    move-object/from16 v15, v33

    .line 759
    .local v15, ex:Ljava/lang/Throwable;
    :goto_a
    const/16 v33, 0x65

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "exception loading \'"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, "\' - "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 762
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 765
    .end local v15           #ex:Ljava/lang/Throwable;
    .end local v18           #floc:Lgnu/kawa/reflect/FieldLocation;
    :cond_1c
    if-eqz v19, :cond_1d

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Location;->isBound()Z

    move-result v32

    if-nez v32, :cond_6

    .line 767
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p1

    check-cast p1, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v14

    .line 769
    .local v14, e:Lgnu/expr/Expression;
    if-eqz v14, :cond_6

    move-object/from16 v32, v14

    .line 770
    goto/16 :goto_0

    .line 790
    .end local v14           #e:Lgnu/expr/Expression;
    .end local v19           #loc:Lgnu/mapping/Location;
    :cond_1e
    new-instance v25, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 791
    .restart local v25       #rexp:Lgnu/expr/ReferenceExp;
    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 792
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setLine(Lgnu/expr/Compilation;)V

    .line 793
    if-eqz p2, :cond_1f

    if-eqz v29, :cond_1f

    .line 794
    const/16 v32, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    :cond_1f
    move-object/from16 v32, v25

    .line 795
    goto/16 :goto_0

    .line 797
    .end local v6           #cdecl:Lgnu/expr/Declaration;
    .end local v11           #decl:Lgnu/expr/Declaration;
    .end local v12           #decl_nesting:I
    .end local v13           #dname:Ljava/lang/String;
    .end local v22           #nameToLookup:Ljava/lang/Object;
    .end local v25           #rexp:Lgnu/expr/ReferenceExp;
    .end local v28           #scope:Lgnu/expr/ScopeExp;
    .end local v29           #separate:Z
    .end local v31           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_20
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v32, v0

    if-eqz v32, :cond_21

    .line 798
    check-cast p1, Lgnu/expr/LangExp;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v32

    goto/16 :goto_0

    .line 799
    .restart local p1
    :cond_21
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v32, v0

    if-eqz v32, :cond_22

    .line 800
    check-cast p1, Lgnu/expr/Expression;

    .end local p1
    move-object/from16 v32, p1

    goto/16 :goto_0

    .line 801
    .restart local p1
    :cond_22
    sget-object v32, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 802
    sget-object v32, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    goto/16 :goto_0

    .line 804
    :cond_23
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v32

    goto/16 :goto_0

    .line 757
    .end local p1
    .restart local v7       #cdecl:Lgnu/expr/Declaration;
    .restart local v11       #decl:Lgnu/expr/Declaration;
    .restart local v12       #decl_nesting:I
    .restart local v13       #dname:Ljava/lang/String;
    .restart local v18       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v19       #loc:Lgnu/mapping/Location;
    .restart local v22       #nameToLookup:Ljava/lang/Object;
    .restart local v28       #scope:Lgnu/expr/ScopeExp;
    .restart local v29       #separate:Z
    .restart local v31       #symbol:Lgnu/mapping/Symbol;
    :catch_1
    move-exception v33

    move-object/from16 v15, v33

    move-object v6, v7

    .end local v7           #cdecl:Lgnu/expr/Declaration;
    .restart local v6       #cdecl:Lgnu/expr/Declaration;
    goto/16 :goto_a
.end method

.method public rewriteBody(I)V
    .locals 6
    .parameter "first"

    .prologue
    .line 1197
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    sub-int v3, v4, p1

    .line 1198
    .local v3, nforms:I
    if-nez v3, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1202
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 1203
    .local v0, f:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    goto :goto_0

    .line 1207
    .end local v0           #f:Ljava/lang/Object;
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    .line 1208
    .local v1, forms:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1209
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    add-int v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1210
    :cond_3
    iget-object v4, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->setSize(I)V

    .line 1211
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    .line 1212
    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 1211
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public rewriteInBody(Ljava/lang/Object;)V
    .locals 7
    .parameter "exp"

    .prologue
    .line 537
    instance-of v5, p1, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 539
    move-object v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v3, v0

    .line 540
    .local v3, sf:Lkawa/lang/SyntaxForm;
    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 543
    .local v2, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    iget-object v5, v3, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 544
    iget-object v5, v3, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 559
    .end local v2           #save_scope:Lgnu/expr/ScopeExp;
    .end local v3           #sf:Lkawa/lang/SyntaxForm;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 548
    .restart local v2       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v3       #sf:Lkawa/lang/SyntaxForm;
    .restart local p1
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v2}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v5

    .line 551
    .end local v2           #save_scope:Lgnu/expr/ScopeExp;
    .end local v3           #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    instance-of v5, p1, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 553
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v4

    .line 554
    .local v4, vals:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 555
    aget-object v5, v4, v1

    invoke-virtual {p0, v5}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    .end local v1           #i:I
    .end local v4           #vals:[Ljava/lang/Object;
    .restart local p1
    :cond_2
    iget-object v5, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"

    .prologue
    const/4 v7, 0x0

    .line 1161
    invoke-virtual {p0, p1}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1162
    .local v6, saved:Ljava/lang/Object;
    new-instance v1, Lgnu/expr/LetExp;

    invoke-direct {v1, v7}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 1163
    .local v1, defs:Lgnu/expr/LetExp;
    iget-object v7, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v2

    .line 1164
    .local v2, first:I
    iget-object v7, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v7, v1, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 1165
    iput-object v1, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1168
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v7}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Ljava/lang/Object;

    .line 1169
    iget-object v7, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 1170
    iget-object v7, p0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    const-string v8, "body with no expressions"

    invoke-virtual {p0, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_0
    invoke-virtual {v1}, Lgnu/expr/LetExp;->countNonDynamicDecls()I

    move-result v5

    .line 1172
    .local v5, ndecls:I
    if-eqz v5, :cond_2

    .line 1174
    new-array v4, v5, [Lgnu/expr/Expression;

    .line 1175
    .local v4, inits:[Lgnu/expr/Expression;
    move v3, v5

    .local v3, i:I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 1176
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v7, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1189
    .end local v3           #i:I
    .end local v4           #inits:[Lgnu/expr/Expression;
    .end local v5           #ndecls:I
    :catchall_0
    move-exception v7

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1190
    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v7

    .line 1177
    .restart local v3       #i:I
    .restart local v4       #inits:[Lgnu/expr/Expression;
    .restart local v5       #ndecls:I
    :cond_1
    :try_start_1
    iput-object v4, v1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 1179
    .end local v3           #i:I
    .end local v4           #inits:[Lgnu/expr/Expression;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1180
    .local v0, body:Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1181
    if-nez v5, :cond_3

    .line 1189
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1190
    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v0

    :goto_1
    return-object v7

    .line 1183
    :cond_3
    :try_start_2
    iput-object v0, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 1184
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1189
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1190
    invoke-virtual {p0, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v1

    goto :goto_1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;
    .locals 4
    .parameter "pair"
    .parameter "syntax"

    .prologue
    const/4 v3, 0x0

    .line 104
    if-eqz p2, :cond_0

    iget-object v1, p2, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    iget-object v2, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0, p1, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 107
    :cond_1
    iget-object v0, p0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 110
    .local v0, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    iget-object v1, p2, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 115
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v1
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 2
    .parameter "pair"
    .parameter "function"

    .prologue
    .line 121
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, car:Ljava/lang/Object;
    instance-of v1, p1, Lgnu/lists/PairWithPosition;

    if-eqz v1, :cond_0

    .line 123
    check-cast p1, Lgnu/lists/PairWithPosition;

    .end local p1
    invoke-virtual {p0, v0, p2, p1}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .restart local p1
    :cond_0
    invoke-virtual {p0, v0, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_0
.end method

.method public rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 32
    .parameter "p"
    .parameter "function"

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 296
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lkawa/lang/Syntax;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v29

    .line 421
    .end local p0
    .end local p1
    :goto_0
    return-object v29

    .line 297
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 299
    .local v7, cdr:Ljava/lang/Object;
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v13

    .line 300
    .local v13, func:Lgnu/expr/Expression;
    const/16 v19, 0x0

    .line 301
    .local v19, proc:Ljava/lang/Object;
    const/16 v20, 0x0

    .line 302
    .local v20, ref:Lgnu/expr/ReferenceExp;
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 304
    move-object v0, v13

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v20, v0

    .line 305
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v10

    .line 306
    .local v10, decl:Lgnu/expr/Declaration;
    if-nez v10, :cond_6

    .line 308
    invoke-virtual/range {v20 .. v20}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v24

    .line 311
    .local v24, sym:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 313
    move-object/from16 v0, v24

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v25, v0

    .line 314
    .local v25, symbol:Lgnu/mapping/Symbol;
    invoke-virtual/range {v25 .. v25}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v16

    .line 321
    .local v16, name:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v30

    if-eqz v30, :cond_2

    sget-object v30, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_2
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 326
    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 327
    check-cast v19, Lkawa/lang/Syntax;

    .end local v19           #proc:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v29

    goto :goto_0

    .line 318
    .end local v16           #name:Ljava/lang/String;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    .restart local v19       #proc:Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 319
    .restart local v16       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v25

    .restart local v25       #symbol:Lgnu/mapping/Symbol;
    goto :goto_1

    .line 321
    :cond_2
    const/16 v30, 0x0

    goto :goto_2

    .line 328
    :cond_3
    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/AutoloadProcedure;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 332
    :try_start_0
    check-cast v19, Lkawa/lang/AutoloadProcedure;

    .end local v19           #proc:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 352
    .end local v16           #name:Ljava/lang/String;
    .end local v24           #sym:Ljava/lang/Object;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    :cond_4
    :goto_3
    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v29

    if-eqz v29, :cond_5

    .line 354
    const/16 v29, 0x4

    move-object v0, v13

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/expr/Expression;->setFlag(I)V

    .line 357
    .end local v10           #decl:Lgnu/expr/Declaration;
    :cond_5
    invoke-static {v7}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v8

    .line 359
    .local v8, cdr_length:I
    const/16 v29, -0x1

    move v0, v8

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 360
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "circular list is not allowed after "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 334
    .end local v8           #cdr_length:I
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v24       #sym:Ljava/lang/Object;
    .restart local v25       #symbol:Lgnu/mapping/Symbol;
    :catch_0
    move-exception v29

    move-object/from16 v12, v29

    .line 336
    .local v12, ex:Ljava/lang/RuntimeException;
    const/16 v19, 0x0

    .restart local v19       #proc:Ljava/lang/Object;
    goto :goto_3

    .line 342
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v16           #name:Ljava/lang/String;
    .end local v24           #sym:Ljava/lang/Object;
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    .line 343
    .local v21, saveContext:Lgnu/expr/Declaration;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v26

    .line 344
    .local v26, syntax:Lkawa/lang/Syntax;
    if-eqz v26, :cond_4

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v11

    .line 347
    .local v11, e:Lgnu/expr/Expression;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v29, v11

    .line 348
    goto/16 :goto_0

    .line 361
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v11           #e:Lgnu/expr/Expression;
    .end local v19           #proc:Ljava/lang/Object;
    .end local v21           #saveContext:Lgnu/expr/Declaration;
    .end local v26           #syntax:Lkawa/lang/Syntax;
    .restart local v8       #cdr_length:I
    :cond_7
    if-gez v8, :cond_8

    .line 362
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dotted list ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] is not allowed after "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 364
    :cond_8
    const/4 v15, 0x0

    .line 365
    .local v15, mapKeywordsToAttributes:Z
    new-instance v28, Ljava/util/Stack;

    invoke-direct/range {v28 .. v28}, Ljava/util/Stack;-><init>()V

    .line 367
    .local v28, vec:Ljava/util/Stack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v22, v0

    .line 368
    .local v22, save_scope:Lgnu/expr/ScopeExp;
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_4
    if-ge v14, v8, :cond_d

    .line 370
    move-object v0, v7

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 372
    move-object v0, v7

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v23, v0

    .line 373
    .local v23, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v7, v0

    .line 374
    move-object/from16 v0, v23

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 376
    .end local v23           #sf:Lkawa/lang/SyntaxForm;
    :cond_9
    move-object v0, v7

    check-cast v0, Lgnu/lists/Pair;

    move-object v9, v0

    .line 377
    .local v9, cdr_pair:Lgnu/lists/Pair;
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v5

    .line 378
    .local v5, arg:Lgnu/expr/Expression;
    add-int/lit8 v14, v14, 0x1

    .line 380
    if-eqz v15, :cond_a

    .line 382
    and-int/lit8 v29, v14, 0x1

    if-nez v29, :cond_b

    .line 384
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v4, v0

    .line 385
    .local v4, aargs:[Lgnu/expr/Expression;
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    aput-object p1, v4, v29

    .line 386
    const/16 v29, 0x1

    aput-object v5, v4, v29

    .line 387
    new-instance v5, Lgnu/expr/ApplyExp;

    .end local v5           #arg:Lgnu/expr/Expression;
    sget-object v29, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 401
    .end local v4           #aargs:[Lgnu/expr/Expression;
    .restart local v5       #arg:Lgnu/expr/Expression;
    :cond_a
    :goto_5
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 402
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 403
    goto :goto_4

    .line 392
    :cond_b
    move-object v0, v5

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    move-object v0, v5

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v27

    .local v27, value:Ljava/lang/Object;
    move-object/from16 v0, v27

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    if-ge v14, v8, :cond_c

    .line 395
    new-instance v5, Lgnu/expr/QuoteExp;

    .end local v5           #arg:Lgnu/expr/Expression;
    check-cast v27, Lgnu/expr/Keyword;

    .end local v27           #value:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v29

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v5       #arg:Lgnu/expr/Expression;
    goto :goto_5

    .line 397
    :cond_c
    const/4 v15, 0x0

    goto :goto_5

    .line 404
    .end local v5           #arg:Lgnu/expr/Expression;
    .end local v9           #cdr_pair:Lgnu/lists/Pair;
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/util/Stack;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v6, v0

    .line 405
    .local v6, args:[Lgnu/expr/Expression;
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 410
    :cond_e
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v29, v0

    if-eqz v29, :cond_10

    move-object v0, v13

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v14, v0

    .end local v14           #i:I
    invoke-virtual {v14}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v29

    sget-object v30, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 413
    const/16 v29, 0x0

    aget-object v17, v6, v29

    .line 414
    .local v17, part1:Lgnu/expr/Expression;
    const/16 v29, 0x1

    aget-object v18, v6, v29

    .line 415
    .local v18, part2:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v24

    .line 416
    .local v24, sym:Lgnu/mapping/Symbol;
    if-eqz v24, :cond_f

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 419
    :cond_f
    invoke-static/range {v17 .. v18}, Lgnu/kawa/functions/GetNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0

    .line 421
    .end local v17           #part1:Lgnu/expr/Expression;
    .end local v18           #part2:Lgnu/expr/Expression;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/lispexpr/LispLanguage;->makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v29

    goto/16 :goto_0
.end method

.method public rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "function"
    .parameter "pair"

    .prologue
    .line 900
    invoke-virtual {p0, p3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 904
    .local v1, saved:Ljava/lang/Object;
    if-ne p1, p3, :cond_0

    .line 905
    :try_start_0
    invoke-virtual {p0, p3, p2}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 908
    .local v0, result:Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0, v0}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 914
    return-object v0

    .line 907
    .end local v0           #result:Lgnu/expr/Expression;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #result:Lgnu/expr/Expression;
    goto :goto_0

    .line 912
    .end local v0           #result:Lgnu/expr/Expression;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    throw v2
.end method

.method public scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Ljava/lang/Object;
    .locals 17
    .parameter "body"
    .parameter "defs"
    .parameter "makeList"

    .prologue
    .line 1076
    if-eqz p3, :cond_1

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v9, v14

    .line 1077
    .local v9, list:Lgnu/lists/LList;
    :goto_0
    const/4 v8, 0x0

    .local v8, lastPair:Lgnu/lists/Pair;
    move-object v14, v9

    .line 1078
    .end local v9           #list:Lgnu/lists/LList;
    :goto_1
    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, p1

    move-object v1, v15

    if-eq v0, v1, :cond_0

    .line 1080
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move v15, v0

    if-eqz v15, :cond_4

    .line 1082
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v13, v0

    .line 1083
    .local v13, sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v12, v0

    .line 1086
    .local v12, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    iget-object v15, v13, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1088
    .local v5, first:I
    iget-object v15, v13, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Ljava/lang/Object;

    move-result-object v4

    .line 1089
    .local v4, f:Ljava/lang/Object;
    if-eqz p3, :cond_3

    .line 1091
    invoke-static {v4, v13}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1092
    if-nez v8, :cond_2

    .line 1102
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v14, v4

    .line 1143
    .end local v4           #f:Ljava/lang/Object;
    .end local v5           #first:I
    .end local v12           #save_scope:Lgnu/expr/ScopeExp;
    .end local v13           #sf:Lkawa/lang/SyntaxForm;
    :cond_0
    :goto_2
    return-object v14

    .line 1076
    .end local v8           #lastPair:Lgnu/lists/Pair;
    :cond_1
    const/4 v14, 0x0

    move-object v9, v14

    goto :goto_0

    .line 1094
    .restart local v4       #f:Ljava/lang/Object;
    .restart local v5       #first:I
    .restart local v8       #lastPair:Lgnu/lists/Pair;
    .restart local v12       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v13       #sf:Lkawa/lang/SyntaxForm;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v4}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_2

    .line 1097
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v14, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v13}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1098
    const/4 v14, 0x0

    .line 1102
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    goto :goto_2

    .end local v4           #f:Ljava/lang/Object;
    .end local v5           #first:I
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v14

    .line 1105
    .end local v12           #save_scope:Lgnu/expr/ScopeExp;
    .end local v13           #sf:Lkawa/lang/SyntaxForm;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move v15, v0

    if-eqz v15, :cond_a

    .line 1107
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v11, v0

    .line 1108
    .local v11, pair:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v5

    .line 1109
    .restart local v5       #first:I
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 1110
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getState()I

    move-result v15

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 1115
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v15, v0

    if-eq v14, v15, :cond_5

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v14, v0

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v11, v14, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    .line 1117
    :cond_5
    new-instance v14, Lgnu/lists/Pair;

    sget-object v15, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    invoke-direct {v14, v15, v11}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 1118
    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto/16 :goto_2

    .line 1120
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v6

    .line 1121
    .local v6, fsize:I
    if-eqz p3, :cond_9

    .line 1123
    move v7, v5

    .local v7, i:I
    :goto_3
    if-ge v7, v6, :cond_8

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    invoke-virtual {v15, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    .line 1127
    .local v10, npair:Lgnu/lists/Pair;
    if-nez v8, :cond_7

    .line 1128
    move-object v9, v10

    .local v9, list:Lgnu/lists/Pair;
    move-object v14, v9

    .line 1131
    .end local v9           #list:Lgnu/lists/Pair;
    :goto_4
    move-object v8, v10

    .line 1123
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1130
    :cond_7
    invoke-virtual {v8, v10}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_4

    .line 1133
    .end local v10           #npair:Lgnu/lists/Pair;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    invoke-virtual {v15, v5}, Ljava/util/Stack;->setSize(I)V

    .line 1135
    .end local v7           #i:I
    :cond_9
    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 1136
    goto/16 :goto_1

    .line 1139
    .end local v5           #first:I
    .end local v6           #fsize:I
    .end local v11           #pair:Lgnu/lists/Pair;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v15, v0

    const-string v16, "body is not a proper list"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 26
    .parameter "st"
    .parameter "defs"

    .prologue
    .line 946
    move-object/from16 v0, p1

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 948
    move-object/from16 v0, p1

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v18, v0

    .line 949
    .local v18, sf:Lkawa/lang/SyntaxForm;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v17

    .line 952
    .local v17, save_scope:Lgnu/expr/ScopeExp;
    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->size()I

    move-result v6

    .line 954
    .local v6, first:I
    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    .end local v6           #first:I
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v18           #sf:Lkawa/lang/SyntaxForm;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 960
    .restart local v17       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v18       #sf:Lkawa/lang/SyntaxForm;
    .restart local p1
    :catchall_0
    move-exception v24

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    throw v24

    .line 963
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v18           #sf:Lkawa/lang/SyntaxForm;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 965
    sget-object v24, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 966
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 975
    .end local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 977
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object/from16 v19, v0

    .line 978
    .local v19, st_pair:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object v13, v0

    .line 979
    .local v13, saveContext:Lgnu/expr/Declaration;
    const/16 v20, 0x0

    .line 980
    .local v20, syntax:Lkawa/lang/Syntax;
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    .line 983
    .restart local v17       #save_scope:Lgnu/expr/ScopeExp;
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 984
    .local v9, obj:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 986
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lkawa/lang/SyntaxForm;

    .line 987
    .restart local v18       #sf:Lkawa/lang/SyntaxForm;
    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->scope:Lkawa/lang/TemplateScope;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 988
    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v9, v0

    .line 991
    .end local v18           #sf:Lkawa/lang/SyntaxForm;
    :cond_3
    move-object v0, v9

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v10, v0

    .local v10, p:Lgnu/lists/Pair;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    sget-object v25, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #p:Lgnu/lists/Pair;
    check-cast v10, Lgnu/lists/Pair;

    .restart local v10       #p:Lgnu/lists/Pair;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 996
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v11

    .line 997
    .local v11, part1:Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v12

    .line 998
    .local v12, part2:Lgnu/expr/Expression;
    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v22

    .line 999
    .local v22, value1:Ljava/lang/Object;
    invoke-virtual {v12}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v23

    .line 1000
    .local v23, value2:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, v23

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v24, :cond_8

    .line 1004
    :try_start_2
    check-cast v23, Lgnu/mapping/Symbol;

    .end local v23           #value2:Ljava/lang/Object;
    invoke-static/range {v22 .. v23}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v9

    .line 1005
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1006
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v20, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1017
    .end local v9           #obj:Ljava/lang/Object;
    .end local v10           #p:Lgnu/lists/Pair;
    .end local v11           #part1:Lgnu/expr/Expression;
    .end local v12           #part2:Lgnu/expr/Expression;
    .end local v22           #value1:Ljava/lang/Object;
    :cond_4
    :goto_1
    :try_start_3
    move-object v0, v9

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 1019
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 1020
    .local v7, func:Lgnu/expr/Expression;
    move-object v0, v7

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1022
    check-cast v7, Lgnu/expr/ReferenceExp;

    .end local v7           #func:Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 1023
    .local v4, decl:Lgnu/expr/Declaration;
    if-eqz v4, :cond_9

    .line 1024
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v20

    .line 1041
    .end local v4           #decl:Lgnu/expr/Declaration;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1044
    :cond_6
    if-eqz v20, :cond_c

    .line 1046
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v15

    .line 1047
    .local v15, save_filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v16

    .line 1048
    .local v16, save_line:I
    invoke-virtual/range {p0 .. p0}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v14

    .line 1051
    .local v14, save_column:I
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 1052
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1057
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1058
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 969
    .end local v13           #saveContext:Lgnu/expr/Declaration;
    .end local v14           #save_column:I
    .end local v15           #save_filename:Ljava/lang/String;
    .end local v16           #save_line:I
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v19           #st_pair:Lgnu/lists/Pair;
    .end local v20           #syntax:Lkawa/lang/Syntax;
    .restart local p1
    :cond_7
    check-cast p1, Lgnu/mapping/Values;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v21

    .line 970
    .local v21, vals:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 971
    aget-object v24, v21, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 970
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1008
    .end local v8           #i:I
    .end local v21           #vals:[Ljava/lang/Object;
    .restart local v9       #obj:Ljava/lang/Object;
    .restart local v10       #p:Lgnu/lists/Pair;
    .restart local v11       #part1:Lgnu/expr/Expression;
    .restart local v12       #part2:Lgnu/expr/Expression;
    .restart local v13       #saveContext:Lgnu/expr/Declaration;
    .restart local v17       #save_scope:Lgnu/expr/ScopeExp;
    .restart local v19       #st_pair:Lgnu/lists/Pair;
    .restart local v20       #syntax:Lkawa/lang/Syntax;
    .restart local v22       #value1:Ljava/lang/Object;
    :catch_0
    move-exception v24

    move-object/from16 v5, v24

    .line 1010
    .local v5, ex:Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 1011
    goto/16 :goto_1

    .line 1014
    .end local v5           #ex:Ljava/lang/Throwable;
    .restart local v23       #value2:Ljava/lang/Object;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v9

    .local v9, obj:Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 1027
    .end local v9           #obj:Lgnu/mapping/Symbol;
    .end local v10           #p:Lgnu/lists/Pair;
    .end local v11           #part1:Lgnu/expr/Expression;
    .end local v12           #part2:Lgnu/expr/Expression;
    .end local v22           #value1:Ljava/lang/Object;
    .end local v23           #value2:Ljava/lang/Object;
    .restart local v4       #decl:Lgnu/expr/Declaration;
    :cond_9
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    .line 1028
    .local v9, obj:Ljava/lang/Object;
    move-object v0, v9

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1029
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v20, v0

    goto/16 :goto_2

    .line 1036
    .end local v4           #decl:Lgnu/expr/Declaration;
    .end local v9           #obj:Ljava/lang/Object;
    :cond_a
    sget-object v24, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    move-object v0, v9

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1037
    move-object v0, v9

    check-cast v0, Lkawa/lang/Syntax;

    move-object/from16 v20, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 1041
    :catchall_1
    move-exception v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 1042
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    :cond_b
    throw v24

    .line 1057
    .restart local v14       #save_column:I
    .restart local v15       #save_filename:Ljava/lang/String;
    .restart local v16       #save_line:I
    :catchall_2
    move-exception v24

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1058
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    throw v24

    .line 1062
    .end local v13           #saveContext:Lgnu/expr/Declaration;
    .end local v14           #save_column:I
    .end local v15           #save_filename:Ljava/lang/String;
    .end local v16           #save_line:I
    .end local v17           #save_scope:Lgnu/expr/ScopeExp;
    .end local v19           #st_pair:Lgnu/lists/Pair;
    .end local v20           #syntax:Lkawa/lang/Syntax;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public final selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 175
    invoke-virtual {p0}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setLineOf(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 863
    instance-of v0, p1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    goto :goto_0
.end method
