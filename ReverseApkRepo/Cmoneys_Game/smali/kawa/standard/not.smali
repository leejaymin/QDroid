.class public Lkawa/standard/not;
.super Lgnu/mapping/Procedure1;
.source "not.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# instance fields
.field public falseExp:Lgnu/expr/QuoteExp;

.field language:Lgnu/expr/Language;

.field public trueExp:Lgnu/expr/QuoteExp;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 2
    .parameter "language"

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 17
    iput-object p1, p0, Lkawa/standard/not;->language:Lgnu/expr/Language;

    .line 18
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkawa/standard/not;->trueExp:Lgnu/expr/QuoteExp;

    .line 19
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkawa/standard/not;->falseExp:Lgnu/expr/QuoteExp;

    .line 20
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lkawa/standard/not;-><init>(Lgnu/expr/Language;)V

    .line 25
    invoke-virtual {p0, p2}, Lkawa/standard/not;->setName(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"

    .prologue
    .line 30
    iget-object v0, p0, Lkawa/standard/not;->language:Lgnu/expr/Language;

    iget-object v1, p0, Lkawa/standard/not;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v9, 0x0

    .line 44
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    aget-object v1, v6, v9

    .line 45
    .local v1, arg:Lgnu/expr/Expression;
    instance-of v6, p3, Lgnu/expr/ConditionalTarget;

    if-eqz v6, :cond_1

    .line 47
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v3, v0

    .line 48
    .local v3, ctarget:Lgnu/expr/ConditionalTarget;
    new-instance v4, Lgnu/expr/ConditionalTarget;

    iget-object v6, v3, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    iget-object v7, v3, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    iget-object v8, p0, Lkawa/standard/not;->language:Lgnu/expr/Language;

    invoke-direct {v4, v6, v7, v8}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 50
    .local v4, sub_target:Lgnu/expr/ConditionalTarget;
    iget-boolean v6, v3, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v4, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 51
    invoke-virtual {v1, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 65
    .end local v3           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v4           #sub_target:Lgnu/expr/ConditionalTarget;
    :goto_1
    return-void

    .restart local v3       #ctarget:Lgnu/expr/ConditionalTarget;
    .restart local v4       #sub_target:Lgnu/expr/ConditionalTarget;
    :cond_0
    move v6, v9

    .line 50
    goto :goto_0

    .line 54
    .end local v3           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v4           #sub_target:Lgnu/expr/ConditionalTarget;
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 55
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 56
    .local v5, type:Lgnu/bytecode/Type;
    instance-of v6, p3, Lgnu/expr/StackTarget;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    if-ne v6, v7, :cond_2

    .line 58
    invoke-virtual {v1, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 59
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitNot(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v6, p0, Lkawa/standard/not;->falseExp:Lgnu/expr/QuoteExp;

    iget-object v7, p0, Lkawa/standard/not;->trueExp:Lgnu/expr/QuoteExp;

    invoke-static {v1, v6, v7, p2, p3}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 69
    iget-object v0, p0, Lkawa/standard/not;->language:Lgnu/expr/Language;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 37
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 38
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
