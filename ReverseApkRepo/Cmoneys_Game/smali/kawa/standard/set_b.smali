.class public Lkawa/standard/set_b;
.super Lkawa/lang/Syntax;
.source "set_b.java"


# static fields
.field public static final set:Lkawa/standard/set_b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lkawa/standard/set_b;

    invoke-direct {v0}, Lkawa/standard/set_b;-><init>()V

    sput-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    .line 16
    sget-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    const-string v1, "set!"

    invoke-virtual {v0, v1}, Lkawa/standard/set_b;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 26
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 20
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    .line 21
    .local v11, o1:Ljava/lang/Object;
    const/16 v19, 0x0

    .line 22
    .local v19, syntax:Lkawa/lang/SyntaxForm;
    :goto_0
    move-object v0, v11

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 24
    move-object v0, v11

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v0

    .line 25
    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v11, v0

    goto :goto_0

    .line 27
    :cond_0
    move-object v0, v11

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 28
    const-string v22, "missing name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    .line 83
    :goto_1
    return-object v22

    .line 29
    :cond_1
    move-object v0, v11

    check-cast v0, Lgnu/lists/Pair;

    move-object v13, v0

    .line 30
    .local v13, p1:Lgnu/lists/Pair;
    move-object/from16 v0, p2

    move-object v1, v13

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v9

    .line 31
    .local v9, name:Lgnu/expr/Expression;
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    .line 32
    .local v12, o2:Ljava/lang/Object;
    :goto_2
    move-object v0, v12

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 34
    move-object v0, v12

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object/from16 v19, v0

    .line 35
    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    move-object v12, v0

    goto :goto_2

    .line 38
    :cond_2
    move-object v0, v12

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object v0, v12

    check-cast v0, Lgnu/lists/Pair;

    move-object v14, v0

    .local v14, p2:Lgnu/lists/Pair;
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 40
    .end local v14           #p2:Lgnu/lists/Pair;
    :cond_3
    const-string v22, "missing or extra arguments to set!"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    goto :goto_1

    .line 41
    .restart local v14       #p2:Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v0, p2

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v20

    .line 43
    .local v20, value:Lgnu/expr/Expression;
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ApplyExp;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 47
    move-object v0, v9

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v5, v0

    .line 48
    .local v5, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 49
    .local v6, args:[Lgnu/expr/Expression;
    array-length v10, v6

    .line 50
    .local v10, nargs:I
    const/16 v18, 0x0

    .line 51
    .local v18, skip:I
    invoke-virtual {v5}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    .line 52
    .local v8, func:Lgnu/expr/Expression;
    move-object v0, v6

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_5

    move-object v0, v8

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object v0, v8

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v9, v0

    .end local v9           #name:Lgnu/expr/Expression;
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v22

    sget-object v23, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 55
    const/16 v18, 0x1

    .line 56
    add-int/lit8 v10, v10, -0x1

    .line 57
    const/16 v22, 0x0

    aget-object v8, v6, v22

    .line 59
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    aput-object v8, v16, v22

    .line 60
    .local v16, setterArgs:[Lgnu/expr/Expression;
    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v21, v0

    .line 61
    .local v21, xargs:[Lgnu/expr/Expression;
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aput-object v20, v21, v10

    .line 63
    new-instance v22, Lgnu/expr/ApplyExp;

    new-instance v23, Lgnu/expr/ApplyExp;

    new-instance v24, Lgnu/expr/ReferenceExp;

    sget-object v25, Lgnu/kawa/functions/Setter;->setterDecl:Lgnu/expr/Declaration;

    invoke-direct/range {v24 .. v25}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_1

    .line 66
    .end local v5           #aexp:Lgnu/expr/ApplyExp;
    .end local v6           #args:[Lgnu/expr/Expression;
    .end local v8           #func:Lgnu/expr/Expression;
    .end local v10           #nargs:I
    .end local v16           #setterArgs:[Lgnu/expr/Expression;
    .end local v18           #skip:I
    .end local v21           #xargs:[Lgnu/expr/Expression;
    .restart local v9       #name:Lgnu/expr/Expression;
    :cond_6
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 67
    const-string v22, "first set! argument is not a variable name"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    goto/16 :goto_1

    .line 69
    :cond_7
    move-object v0, v9

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v15, v0

    .line 70
    .local v15, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    .line 71
    .local v7, decl:Lgnu/expr/Declaration;
    new-instance v17, Lgnu/expr/SetExp;

    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 72
    .local v17, sexp:Lgnu/expr/SetExp;
    invoke-virtual {v15}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 73
    if-eqz v7, :cond_9

    .line 75
    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 76
    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    invoke-static {v7}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_8

    .line 79
    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 80
    :cond_8
    const/16 v22, 0x4000

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 81
    const-string v22, "constant variable is set!"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v22

    goto/16 :goto_1

    :cond_9
    move-object/from16 v22, v17

    .line 83
    goto/16 :goto_1
.end method
