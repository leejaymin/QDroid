.class public abstract Lgnu/kawa/lispexpr/LispLanguage;
.super Lgnu/expr/Language;
.source "LispLanguage.java"


# static fields
.field public static final lookup_sym:Lgnu/mapping/Symbol; = null

.field public static final quasiquote_sym:Ljava/lang/String; = "quasiquote"

.field public static final quote_sym:Ljava/lang/String; = "quote"

.field public static final unquote_sym:Ljava/lang/String; = "unquote"

.field public static final unquotesplicing_sym:Ljava/lang/String; = "unquote-splicing"


# instance fields
.field public defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "$lookup$"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 28
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->createReadTable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispLanguage;->defaultReadTable:Lgnu/kawa/lispexpr/ReadTable;

    return-void
.end method

.method public static langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "sym"

    .prologue
    .line 153
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    check-cast v0, Lgnu/kawa/lispexpr/LispLanguage;

    invoke-virtual {v0, p0}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "name"
    .parameter "tr"

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract createReadTable()Lgnu/kawa/lispexpr/ReadTable;
.end method

.method public declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "mod"
    .parameter "fvalue"
    .parameter "fld"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 107
    .local v0, fdecl:Lgnu/expr/Declaration;
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 108
    .local v1, isFinal:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, p2, Lkawa/lang/Syntax;

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v0}, Lgnu/expr/Declaration;->setSyntax()V

    .line 110
    :cond_0
    return-object v0

    .line 107
    .end local v1           #isFinal:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "cname"

    .prologue
    .line 131
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/lispexpr/LispLanguage;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 121
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispLanguage;->hasSeparateFunctionNamespace()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v1, v2

    .line 123
    .local v1, property:Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    iget-object v3, p0, Lgnu/kawa/lispexpr/LispLanguage;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v3, p1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-static {v2, v3, v1, p2, p3}, Lgnu/kawa/reflect/StaticFieldLocation;->define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    .line 126
    .local v0, loc:Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setSyntax()V

    .line 127
    return-void

    .line 121
    .end local v0           #loc:Lgnu/kawa/reflect/StaticFieldLocation;
    .end local v1           #property:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "sym"

    .prologue
    .line 158
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    move-object v0, p1

    goto :goto_0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 1
    .parameter "lexer"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 40
    new-instance v0, Lkawa/lang/Translator;

    invoke-direct {v0, p0, p2, p3}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 1
    .parameter "inp"
    .parameter "messages"

    .prologue
    .line 35
    new-instance v0, Lgnu/kawa/lispexpr/LispReader;

    invoke-direct {v0, p1, p2}, Lgnu/kawa/lispexpr/LispReader;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .parameter "func"
    .parameter "args"

    .prologue
    .line 142
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exps"

    .prologue
    .line 137
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, p1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 12
    .parameter "comp"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 46
    move-object v0, p1

    check-cast v0, Lkawa/lang/Translator;

    move-object v7, v0

    .line 47
    .local v7, tr:Lkawa/lang/Translator;
    iget-object v2, v7, Lkawa/lang/Translator;->lexer:Lgnu/text/Lexer;

    .line 48
    .local v2, lexer:Lgnu/text/Lexer;
    iget-object v3, v7, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    .line 49
    .local v3, mexp:Lgnu/expr/ModuleExp;
    new-instance v1, Lgnu/mapping/Values;

    invoke-direct {v1}, Lgnu/mapping/Values;-><init>()V

    .line 50
    .local v1, forms:Lgnu/mapping/Values;
    move-object v0, v2

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v4, v0

    .line 51
    .local v4, reader:Lgnu/kawa/lispexpr/LispReader;
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v5

    .line 54
    .local v5, save_comp:Lgnu/expr/Compilation;
    :try_start_0
    invoke-static {v7}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 55
    iget-object v8, v7, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 57
    iget-object v8, v7, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    invoke-virtual {v7, v8, v3}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 58
    const/4 v8, 0x0

    iput-object v8, v7, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 62
    :cond_0
    invoke-virtual {v4}, Lgnu/kawa/lispexpr/LispReader;->readCommand()Ljava/lang/Object;

    move-result-object v6

    .line 63
    .local v6, sexp:Ljava/lang/Object;
    sget-object v8, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v8, :cond_1

    .line 65
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_2

    .line 92
    invoke-static {v5}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    move v8, v10

    .line 94
    :goto_0
    return v8

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {v7, v6, v3}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 70
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_5

    .line 78
    :cond_2
    invoke-virtual {v2}, Lgnu/text/Lexer;->peek()I

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_3

    .line 79
    const-string v8, "An unexpected close paren was read."

    invoke-virtual {v2, v8}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 82
    :cond_3
    invoke-virtual {v7, v3}, Lkawa/lang/Translator;->finishModule(Lgnu/expr/ModuleExp;)V

    .line 84
    and-int/lit8 v8, p2, 0x4

    if-nez v8, :cond_4

    .line 86
    const/4 v8, 0x0

    iput v8, v7, Lkawa/lang/Translator;->firstForm:I

    .line 88
    :cond_4
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-static {v5}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    move v8, v11

    .line 94
    goto :goto_0

    .line 72
    :cond_5
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v7}, Lkawa/lang/Translator;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 92
    invoke-static {v5}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    move v8, v11

    goto :goto_0

    .end local v6           #sexp:Ljava/lang/Object;
    :catchall_0
    move-exception v8

    invoke-static {v5}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    throw v8
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 100
    move-object v0, p1

    check-cast v0, Lkawa/lang/Translator;

    move-object v1, v0

    .line 101
    .local v1, tr:Lkawa/lang/Translator;
    invoke-virtual {v1}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 102
    return-void
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 147
    instance-of v0, p1, Lgnu/expr/Keyword;

    return v0
.end method
