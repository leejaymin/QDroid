.class public Lkawa/standard/define_alias;
.super Lkawa/lang/Syntax;
.source "define_alias.java"


# static fields
.field public static final define_alias:Lkawa/standard/define_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/define_alias;

    invoke-direct {v0}, Lkawa/standard/define_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    .line 11
    sget-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    const-string v1, "define-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 75
    const-string v0, "define-alias is only allowed in a <body>"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 11
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 17
    .local v3, formCdr:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 18
    .local v4, formSyntax:Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v9, v3, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_0

    .line 20
    move-object v0, v3

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v4, v0

    .line 21
    iget-object v3, v4, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    instance-of v9, v3, Lgnu/lists/Pair;

    if-eqz v9, :cond_6

    .line 25
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    .line 26
    .local v7, p:Lgnu/lists/Pair;
    move-object v6, v4

    .line 27
    .local v6, nameSyntax:Lkawa/lang/SyntaxForm;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 28
    .local v5, name:Ljava/lang/Object;
    :goto_1
    instance-of v9, v5, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_1

    .line 30
    move-object v0, v5

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v6, v0

    .line 31
    iget-object v5, v6, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 34
    :goto_2
    instance-of v9, v3, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_2

    .line 36
    move-object v0, v3

    check-cast v0, Lkawa/lang/SyntaxForm;

    move-object v4, v0

    .line 37
    iget-object v3, v4, Lkawa/lang/SyntaxForm;->form:Ljava/lang/Object;

    goto :goto_2

    .line 39
    :cond_2
    instance-of v9, v5, Ljava/lang/String;

    if-nez v9, :cond_3

    instance-of v9, v5, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_6

    :cond_3
    instance-of v9, v3, Lgnu/lists/Pair;

    if-eqz v9, :cond_6

    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v9, v10, :cond_6

    .line 43
    invoke-virtual {p4, v5, v6, p3}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 44
    .local v2, decl:Lgnu/expr/Declaration;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 45
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 46
    invoke-virtual {p4, v7, v4}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v1

    .line 47
    .local v1, arg:Lgnu/expr/Expression;
    instance-of v9, v1, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_4

    .line 48
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v5, v0

    .end local v5           #name:Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 59
    :goto_3
    invoke-virtual {p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 60
    invoke-virtual {p4, v2}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 61
    new-instance v8, Lgnu/expr/SetExp;

    invoke-direct {v8, v2, v1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 62
    .local v8, sexp:Lgnu/expr/SetExp;
    invoke-virtual {p4, v8}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V

    .line 63
    invoke-virtual {v2, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 64
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 65
    invoke-virtual {p2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    const/4 v9, 0x1

    .line 70
    .end local v1           #arg:Lgnu/expr/Expression;
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v6           #nameSyntax:Lkawa/lang/SyntaxForm;
    .end local v7           #p:Lgnu/lists/Pair;
    .end local v8           #sexp:Lgnu/expr/SetExp;
    :goto_4
    return v9

    .line 49
    .restart local v1       #arg:Lgnu/expr/Expression;
    .restart local v2       #decl:Lgnu/expr/Declaration;
    .restart local v5       #name:Ljava/lang/Object;
    .restart local v6       #nameSyntax:Lkawa/lang/SyntaxForm;
    .restart local v7       #p:Lgnu/lists/Pair;
    :cond_4
    instance-of v9, v1, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_5

    .line 51
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 52
    const/16 v9, 0x4000

    invoke-virtual {v2, v9}, Lgnu/expr/Declaration;->setFlag(I)V

    goto :goto_3

    .line 56
    :cond_5
    invoke-static {v1, p4}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v1

    .line 57
    const-string v9, "gnu.mapping.Location"

    invoke-static {v9}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v2, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_3

    .line 69
    .end local v1           #arg:Lgnu/expr/Expression;
    .end local v2           #decl:Lgnu/expr/Declaration;
    .end local v5           #name:Ljava/lang/Object;
    .end local v6           #nameSyntax:Lkawa/lang/SyntaxForm;
    .end local v7           #p:Lgnu/lists/Pair;
    :cond_6
    const/16 v9, 0x65

    const-string v10, "invalid syntax for define-alias"

    invoke-virtual {p4, v9, v10}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 70
    const/4 v9, 0x0

    goto :goto_4
.end method
