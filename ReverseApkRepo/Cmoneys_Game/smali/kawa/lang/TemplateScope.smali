.class public Lkawa/lang/TemplateScope;
.super Lgnu/expr/LetExp;
.source "TemplateScope.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field macroContext:Lgnu/expr/Declaration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "outer"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 27
    iput-object p1, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 28
    return-void
.end method

.method public static make()Lkawa/lang/TemplateScope;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    invoke-static {v0}, Lkawa/lang/TemplateScope;->make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lkawa/lang/Translator;)Lkawa/lang/TemplateScope;
    .locals 3
    .parameter "tr"

    .prologue
    .line 37
    new-instance v1, Lkawa/lang/TemplateScope;

    invoke-direct {v1}, Lkawa/lang/TemplateScope;-><init>()V

    .line 38
    .local v1, templateScope:Lkawa/lang/TemplateScope;
    invoke-virtual {p0}, Lkawa/lang/Translator;->getCurrentSyntax()Lkawa/lang/Syntax;

    move-result-object v0

    .line 39
    .local v0, curSyntax:Lkawa/lang/Syntax;
    instance-of v2, v0, Lkawa/lang/Macro;

    if-eqz v2, :cond_0

    .line 41
    check-cast v0, Lkawa/lang/Macro;

    .end local v0           #curSyntax:Lkawa/lang/Syntax;
    invoke-virtual {v0}, Lkawa/lang/Macro;->getCapturedScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    iput-object v2, v1, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 42
    iget-object v2, p0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    iput-object v2, v1, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    .line 44
    :cond_0
    return-object v1
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/ScopeExp;

    iput-object v0, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    .line 56
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lkawa/lang/TemplateScope;->outer:Lgnu/expr/ScopeExp;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
