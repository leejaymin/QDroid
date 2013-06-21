.class public Lgnu/kawa/functions/Convert;
.super Lgnu/mapping/Procedure2;
.source "Convert.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final as:Lgnu/kawa/functions/Convert;

.field static coerceMethod:Lgnu/bytecode/Method;

.field static typeType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lgnu/kawa/functions/Convert;

    invoke-direct {v0}, Lgnu/kawa/functions/Convert;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    .line 14
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    const-string v1, "as"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Convert;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/functions/Convert;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    return-object v0
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 3
    .parameter "value"
    .parameter "type"

    .prologue
    .line 90
    const/4 v2, 0x2

    new-array v1, v2, [Lgnu/expr/Expression;

    .line 91
    .local v1, exps:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 92
    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 93
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/kawa/functions/Convert;->getInstance()Lgnu/kawa/functions/Convert;

    move-result-object v2

    invoke-direct {v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 94
    .local v0, c:Lgnu/expr/QuoteExp;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method public static makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1
    .parameter "value"
    .parameter "type"

    .prologue
    .line 105
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v0

    return-object v0
.end method

.method public static setCoercedReturnValue(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;Lgnu/expr/Language;)V
    .locals 3
    .parameter "lexp"
    .parameter "type"
    .parameter "language"

    .prologue
    .line 112
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 115
    .local v1, value:Lgnu/expr/Expression;
    invoke-static {v1, p1}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 116
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 118
    .end local v1           #value:Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {p2, p1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 119
    .local v0, rtype:Lgnu/bytecode/Type;
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 24
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 25
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 28
    .local v1, type:Lgnu/bytecode/Type;
    :goto_0
    invoke-virtual {v1, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 27
    .end local v1           #type:Lgnu/bytecode/Type;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    move-object v1, v0

    .restart local v1       #type:Lgnu/bytecode/Type;
    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 43
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 44
    .local v0, args:[Lgnu/expr/Expression;
    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 45
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrong number of arguments to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/kawa/functions/Convert;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_0
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 47
    .local v1, code:Lgnu/bytecode/CodeAttr;
    aget-object v3, v0, v8

    invoke-static {v3}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 48
    .local v2, type:Lgnu/bytecode/Type;
    if-eqz v2, :cond_2

    .line 50
    aget-object v3, v0, v7

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 51
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    sget-object v3, Lgnu/kawa/functions/Convert;->typeType:Lgnu/bytecode/ClassType;

    if-nez v3, :cond_3

    .line 58
    const-string v3, "gnu.bytecode.Type"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/Convert;->typeType:Lgnu/bytecode/ClassType;

    .line 59
    sget-object v3, Lgnu/kawa/functions/Convert;->typeType:Lgnu/bytecode/ClassType;

    const-string v4, "coerceFromObject"

    sget-object v5, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/kawa/functions/Convert;->coerceMethod:Lgnu/bytecode/Method;

    .line 64
    :cond_3
    aget-object v3, v0, v8

    sget-object v4, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    aget-object v3, v0, v7

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 66
    sget-object v3, Lgnu/kawa/functions/Convert;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 67
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 3
    .parameter "args"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 75
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lkawa/standard/Scheme;->getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 76
    .local v0, type:Lgnu/bytecode/Type;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 79
    .end local v0           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0
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
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/Invoke;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object v0

    return-object v0
.end method
