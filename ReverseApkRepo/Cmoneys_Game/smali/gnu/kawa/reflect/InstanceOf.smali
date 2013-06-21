.class public Lgnu/kawa/reflect/InstanceOf;
.super Lgnu/mapping/Procedure2;
.source "InstanceOf.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field static instanceMethod:Lgnu/bytecode/Method;

.field static typeType:Lgnu/bytecode/ClassType;


# instance fields
.field protected language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    .line 13
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .parameter "language"
    .parameter "name"

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 17
    iput-object p1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    .line 18
    invoke-virtual {p0, p2}, Lgnu/kawa/reflect/InstanceOf;->setName(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "type"
    .parameter "incoming"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 120
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-interface {p0, v3, v3, p2}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, cond:Lgnu/expr/ConditionalTarget;
    instance-of v3, p3, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1

    .line 124
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v2, v0

    .line 125
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 129
    :goto_0
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 130
    if-eqz v2, :cond_2

    .line 131
    iget-object v3, v2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 134
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 135
    if-nez v2, :cond_0

    .line 136
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 138
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_0

    .line 133
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_1
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 23
    iget-object v1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 24
    .local v0, type:Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 11
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 65
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 66
    .local v0, args:[Lgnu/expr/Expression;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 67
    .local v1, code:Lgnu/bytecode/CodeAttr;
    const/4 v3, 0x0

    .line 68
    .local v3, type:Lgnu/bytecode/Type;
    aget-object v4, v0, v9

    .line 69
    .local v4, typeArg:Lgnu/expr/Expression;
    instance-of v5, v4, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_0

    .line 73
    :try_start_0
    iget-object v5, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    check-cast v4, Lgnu/expr/QuoteExp;

    .end local v4           #typeArg:Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 82
    :goto_0
    if-eqz v3, :cond_2

    .line 84
    aget-object v5, v0, v10

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 85
    instance-of v5, v3, Lgnu/expr/TypeValue;

    if-eqz v5, :cond_1

    .line 87
    check-cast v3, Lgnu/expr/TypeValue;

    .end local v3           #type:Lgnu/bytecode/Type;
    const/4 v5, 0x0

    invoke-interface {v3, v5, p2, p3}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 109
    :goto_1
    return-void

    .line 75
    .restart local v3       #type:Lgnu/bytecode/Type;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 77
    .local v2, ex:Ljava/lang/Exception;
    const/16 v5, 0x77

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown type spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v4       #typeArg:Lgnu/expr/Expression;
    :cond_0
    iget-object v5, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    invoke-virtual {v5, v4}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_0

    .line 91
    .end local v4           #typeArg:Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {v3, v1}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 92
    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 108
    :goto_2
    iget-object v5, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {p3, p2, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 96
    :cond_2
    sget-object v5, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    if-nez v5, :cond_3

    .line 98
    const-string v5, "gnu.bytecode.Type"

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    sput-object v5, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    .line 99
    sget-object v5, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    const-string v6, "isInstance"

    sget-object v7, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v6, v7, v8, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    sput-object v5, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    .line 104
    :cond_3
    aget-object v5, v0, v9

    sget-object v6, Lgnu/kawa/reflect/InstanceOf;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 105
    aget-object v5, v0, v10

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 106
    sget-object v5, Lgnu/kawa/reflect/InstanceOf;->instanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .parameter "args"

    .prologue
    .line 113
    iget-object v0, p0, Lgnu/kawa/reflect/InstanceOf;->language:Lgnu/expr/Language;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v9, 0x1

    .line 33
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 34
    invoke-static {p1, v9, p2}, Lgnu/kawa/reflect/Invoke;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 36
    .local v1, args:[Lgnu/expr/Expression;
    array-length v7, v1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 38
    const/4 v7, 0x0

    aget-object v6, v1, v7

    .line 39
    .local v6, value:Lgnu/expr/Expression;
    aget-object v4, v1, v9

    .line 40
    .local v4, texp:Lgnu/expr/Expression;
    instance-of v7, v4, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_4

    .line 42
    check-cast v4, Lgnu/expr/QuoteExp;

    .end local v4           #texp:Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 43
    .local v3, t:Ljava/lang/Object;
    instance-of v7, v3, Lgnu/bytecode/Type;

    if-eqz v7, :cond_4

    .line 45
    move-object v0, v3

    check-cast v0, Lgnu/bytecode/Type;

    move-object v5, v0

    .line 46
    .local v5, type:Lgnu/bytecode/Type;
    instance-of v7, v6, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_1

    .line 47
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #value:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    .line 60
    .end local v3           #t:Ljava/lang/Object;
    .end local v5           #type:Lgnu/bytecode/Type;
    :goto_0
    return-object v7

    .line 47
    .restart local v3       #t:Ljava/lang/Object;
    .restart local v5       #type:Lgnu/bytecode/Type;
    :cond_0
    sget-object v7, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 49
    .restart local v6       #value:Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {v6}, Lgnu/expr/Expression;->side_effects()Z

    move-result v7

    if-nez v7, :cond_4

    .line 51
    invoke-virtual {v6}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v5, v7}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    .line 52
    .local v2, comp:I
    if-eq v2, v9, :cond_2

    if-nez v2, :cond_3

    .line 53
    :cond_2
    sget-object v7, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 54
    :cond_3
    const/4 v7, -0x3

    if-ne v2, v7, :cond_4

    .line 55
    sget-object v7, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .end local v2           #comp:I
    .end local v3           #t:Ljava/lang/Object;
    .end local v5           #type:Lgnu/bytecode/Type;
    .end local v6           #value:Lgnu/expr/Expression;
    :cond_4
    move-object v7, p1

    .line 60
    goto :goto_0
.end method
