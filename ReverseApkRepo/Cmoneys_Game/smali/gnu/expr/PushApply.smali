.class public Lgnu/expr/PushApply;
.super Lgnu/expr/ExpWalker;
.source "PushApply.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    return-void
.end method

.method public static pushApply(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 14
    new-instance v0, Lgnu/expr/PushApply;

    invoke-direct {v0}, Lgnu/expr/PushApply;-><init>()V

    .line 15
    .local v0, walker:Lgnu/expr/PushApply;
    invoke-virtual {v0, p0}, Lgnu/expr/PushApply;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 16
    return-void
.end method


# virtual methods
.method protected walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"

    .prologue
    .line 20
    iget-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 21
    .local v3, func:Lgnu/expr/Expression;
    instance-of v7, v3, Lgnu/expr/LetExp;

    if-eqz v7, :cond_0

    instance-of v7, v3, Lgnu/expr/FluidLetExp;

    if-nez v7, :cond_0

    .line 25
    move-object v0, v3

    check-cast v0, Lgnu/expr/LetExp;

    move-object v5, v0

    .line 26
    .local v5, let:Lgnu/expr/LetExp;
    iget-object v2, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 27
    .local v2, body:Lgnu/expr/Expression;
    iput-object p1, v5, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 28
    iput-object v2, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 29
    invoke-virtual {v5, p0}, Lgnu/expr/LetExp;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v7

    .line 42
    .end local v2           #body:Lgnu/expr/Expression;
    .end local v5           #let:Lgnu/expr/LetExp;
    :goto_0
    return-object v7

    .line 31
    :cond_0
    instance-of v7, v3, Lgnu/expr/BeginExp;

    if-eqz v7, :cond_1

    .line 34
    move-object v0, v3

    check-cast v0, Lgnu/expr/BeginExp;

    move-object v1, v0

    .line 35
    .local v1, begin:Lgnu/expr/BeginExp;
    iget-object v6, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 36
    .local v6, stmts:[Lgnu/expr/Expression;
    iget-object v7, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int v4, v7, v8

    .line 37
    .local v4, last_index:I
    aget-object v7, v6, v4

    iput-object v7, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 38
    aput-object p1, v6, v4

    .line 39
    invoke-virtual {v1, p0}, Lgnu/expr/BeginExp;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    .line 41
    .end local v1           #begin:Lgnu/expr/BeginExp;
    .end local v4           #last_index:I
    .end local v6           #stmts:[Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {p1, p0}, Lgnu/expr/ApplyExp;->walkChildren(Lgnu/expr/ExpWalker;)V

    move-object v7, p1

    .line 42
    goto :goto_0
.end method
