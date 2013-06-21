.class Lgnu/kawa/functions/SetListExp;
.super Lgnu/expr/ApplyExp;
.source "Setter.java"


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0
    .parameter "func"
    .parameter "args"

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 183
    return-void
.end method


# virtual methods
.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"
    .parameter "walker"
    .parameter "decl"
    .parameter "argsInlined"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    if-nez p4, :cond_0

    .line 189
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 191
    .local v0, args:[Lgnu/expr/Expression;
    array-length v3, v0

    if-ne v3, v6, :cond_1

    .line 193
    const/4 v3, 0x4

    new-array v2, v3, [Lgnu/expr/Expression;

    .line 194
    .local v2, xargs:[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/kawa/functions/SetListExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v4

    .line 195
    const-string v3, "set"

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    aput-object v3, v2, v5

    .line 196
    aget-object v3, v0, v4

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v3, v4}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v6

    .line 197
    const/4 v3, 0x3

    aget-object v4, v0, v5

    aput-object v4, v2, v3

    .line 198
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v3, v4, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v3}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v1

    .line 200
    .local v1, set:Lgnu/expr/Expression;
    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-static {v1, v3}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    .line 202
    .end local v1           #set:Lgnu/expr/Expression;
    .end local v2           #xargs:[Lgnu/expr/Expression;
    :goto_0
    return-object v3

    :cond_1
    move-object v3, p1

    goto :goto_0
.end method
