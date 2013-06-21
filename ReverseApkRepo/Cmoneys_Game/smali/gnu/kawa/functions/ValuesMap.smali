.class public Lgnu/kawa/functions/ValuesMap;
.super Lgnu/mapping/MethodProc;
.source "ValuesMap.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final valuesMap:Lgnu/kawa/functions/ValuesMap;

.field public static final valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;


# instance fields
.field private final startCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMap:Lgnu/kawa/functions/ValuesMap;

    .line 20
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "startCounter"

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    iput p1, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 25
    return-void
.end method

.method private canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .locals 7
    .parameter "exp"

    .prologue
    const/4 v6, 0x2

    .line 67
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 70
    .local v2, args:[Lgnu/expr/Expression;
    array-length v4, v2

    if-ne v4, v6, :cond_1

    const/4 v4, 0x0

    aget-object v1, v2, v4

    .local v1, arg0:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_1

    .line 72
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 73
    .local v3, lexp:Lgnu/expr/LambdaExp;
    iget v4, v3, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, v3, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v5, :cond_0

    move v5, v6

    :goto_0
    if-ne v4, v5, :cond_1

    move-object v4, v3

    .line 77
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :goto_1
    return-object v4

    .line 73
    .restart local v1       #arg0:Lgnu/expr/Expression;
    .restart local v3       #lexp:Lgnu/expr/LambdaExp;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 77
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .parameter "lambda"
    .parameter "vals"
    .parameter "startCounter"
    .parameter "matchesMethod"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 116
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 117
    .local v5, param:Lgnu/expr/Declaration;
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 118
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v0

    .line 121
    .local v0, scope:Lgnu/bytecode/Scope;
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 122
    .local v6, paramType:Lgnu/bytecode/Type;
    if-ltz p2, :cond_1

    .line 124
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v3, "position"

    invoke-virtual {v0, v2, v1, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 125
    .local v0, counter:Lgnu/bytecode/Variable;
    invoke-virtual {v2, p2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 126
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 127
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, v0}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .local v1, counterDecl:Lgnu/expr/Declaration;
    move-object v4, v1

    .end local v1           #counterDecl:Lgnu/expr/Declaration;
    .local v4, counterDecl:Lgnu/expr/Declaration;
    move-object v3, v0

    .line 136
    .end local v0           #counter:Lgnu/bytecode/Variable;
    .local v3, counter:Lgnu/bytecode/Variable;
    :goto_0
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v5, v2}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 141
    :goto_1
    if-ltz p2, :cond_3

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v0, v1

    const/4 v1, 0x1

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v0, v1

    .local v0, args:[Lgnu/expr/Expression;
    move-object v1, v0

    .line 148
    .end local v0           #args:[Lgnu/expr/Expression;
    .local v1, args:[Lgnu/expr/Expression;
    :goto_2
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 149
    .local v0, app:Lgnu/expr/Expression;
    if-eqz p3, :cond_5

    .line 152
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p0

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .end local v1           #args:[Lgnu/expr/Expression;
    if-eq p0, v1, :cond_4

    .line 153
    new-instance p0, Lgnu/expr/ApplyExp;

    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    aput-object v0, v1, v7

    const/4 v0, 0x1

    new-instance v7, Lgnu/expr/ReferenceExp;

    .end local v0           #app:Lgnu/expr/Expression;
    invoke-direct {v7, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v1, v0

    invoke-direct {p0, p3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 157
    .local p0, app:Lgnu/expr/Expression;
    :goto_3
    new-instance p3, Lgnu/expr/IfExp;

    .end local p3
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {p3, p0, v0, v1}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .end local p0           #app:Lgnu/expr/Expression;
    .local p3, app:Lgnu/expr/Expression;
    move-object p0, p3

    .line 172
    .end local p3           #app:Lgnu/expr/Expression;
    .restart local p0       #app:Lgnu/expr/Expression;
    :goto_4
    sget-object p3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, p3}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p3

    .line 173
    .local p3, indexVar:Lgnu/bytecode/Variable;
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 174
    .local v4, valuesVar:Lgnu/bytecode/Variable;
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v0

    .line 176
    .local v0, nextVar:Lgnu/bytecode/Variable;
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p4, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 177
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 178
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 179
    .end local p1
    invoke-virtual {v2, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 181
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 182
    .local v1, top:Lgnu/bytecode/Label;
    new-instance p1, Lgnu/bytecode/Label;

    invoke-direct {p1, v2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 183
    .local p1, doneLabel:Lgnu/bytecode/Label;
    invoke-virtual {v1, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 184
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 185
    invoke-virtual {v2, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 186
    sget-object v7, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v8, "nextIndex"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 187
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 188
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 190
    invoke-virtual {v2, p1}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V

    .line 192
    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 193
    invoke-virtual {v2, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 194
    sget-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .end local v4           #valuesVar:Lgnu/bytecode/Variable;
    const-string v7, "nextValue"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 196
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {p4, v4, v6}, Lgnu/expr/StackTarget;->convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 197
    invoke-virtual {v5, p4}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 199
    invoke-virtual {p0, p4, p5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 201
    if-ltz p2, :cond_0

    .line 203
    const/4 p0, 0x1

    invoke-virtual {v2, v3, p0}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 206
    .end local p0           #app:Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {v2, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 207
    invoke-virtual {v2, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 208
    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 210
    invoke-virtual {p1, v2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 212
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 213
    return-void

    .line 131
    .end local v1           #top:Lgnu/bytecode/Label;
    .end local v3           #counter:Lgnu/bytecode/Variable;
    .local v0, scope:Lgnu/bytecode/Scope;
    .local p0, lambda:Lgnu/expr/LambdaExp;
    .local p1, vals:Lgnu/expr/Expression;
    .local p3, matchesMethod:Lgnu/bytecode/Method;
    :cond_1
    const/4 v0, 0x0

    .line 132
    .local v0, counter:Lgnu/bytecode/Variable;
    const/4 v1, 0x0

    .local v1, counterDecl:Lgnu/expr/Declaration;
    move-object v4, v1

    .end local v1           #counterDecl:Lgnu/expr/Declaration;
    .local v4, counterDecl:Lgnu/expr/Declaration;
    move-object v3, v0

    .end local v0           #counter:Lgnu/bytecode/Variable;
    .restart local v3       #counter:Lgnu/bytecode/Variable;
    goto/16 :goto_0

    .line 139
    :cond_2
    new-instance v0, Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .end local v5           #param:Lgnu/expr/Declaration;
    .local v0, param:Lgnu/expr/Declaration;
    move-object v5, v0

    .end local v0           #param:Lgnu/expr/Declaration;
    .restart local v5       #param:Lgnu/expr/Declaration;
    goto/16 :goto_1

    .line 147
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v0, v1

    .local v0, args:[Lgnu/expr/Expression;
    move-object v1, v0

    .end local v0           #args:[Lgnu/expr/Expression;
    .local v1, args:[Lgnu/expr/Expression;
    goto/16 :goto_2

    .end local v1           #args:[Lgnu/expr/Expression;
    .end local p0           #lambda:Lgnu/expr/LambdaExp;
    .local v0, app:Lgnu/expr/Expression;
    :cond_4
    move-object p0, v0

    .end local v0           #app:Lgnu/expr/Expression;
    .local p0, app:Lgnu/expr/Expression;
    goto/16 :goto_3

    .restart local v0       #app:Lgnu/expr/Expression;
    .restart local v1       #args:[Lgnu/expr/Expression;
    .local p0, lambda:Lgnu/expr/LambdaExp;
    :cond_5
    move-object p0, v0

    .end local v0           #app:Lgnu/expr/Expression;
    .local p0, app:Lgnu/expr/Expression;
    goto/16 :goto_4
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/Procedure;

    .line 36
    .local v5, proc:Lgnu/mapping/Procedure;
    iget-object v4, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 37
    .local v4, out:Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    .line 38
    .local v7, val:Ljava/lang/Object;
    const/4 v9, 0x1

    invoke-static {v5, v9}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 39
    instance-of v9, v7, Lgnu/mapping/Values;

    if-eqz v9, :cond_1

    .line 41
    const/4 v3, 0x0

    .line 42
    .local v3, ipos:I
    iget v1, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 43
    .local v1, count:I
    move-object v0, v7

    check-cast v0, Lgnu/mapping/Values;

    move-object v8, v0

    .line 44
    .local v8, values:Lgnu/mapping/Values;
    :goto_0
    invoke-virtual {v8, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v8, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    .line 47
    .local v6, v:Ljava/lang/Object;
    iget v9, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v9, :cond_0

    .line 48
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-virtual {v5, v6, v9, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    move v1, v2

    .line 51
    .end local v2           #count:I
    .restart local v1       #count:I
    :goto_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v5, v6, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_1

    .line 56
    .end local v1           #count:I
    .end local v3           #ipos:I
    .end local v6           #v:Ljava/lang/Object;
    .end local v8           #values:Lgnu/mapping/Values;
    :cond_1
    iget v9, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v9, :cond_3

    .line 57
    iget v9, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    invoke-virtual {v5, v7, v9, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 60
    :goto_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 62
    :cond_2
    return-void

    .line 59
    :cond_3
    invoke-virtual {v5, v7, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 96
    .local v0, lambda:Lgnu/expr/LambdaExp;
    if-nez v0, :cond_0

    .line 98
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 102
    .local v6, args:[Lgnu/expr/Expression;
    instance-of v2, p3, Lgnu/expr/IgnoreTarget;

    if-nez v2, :cond_1

    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_1

    .line 105
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x1

    aget-object v1, v6, v2

    .line 109
    .local v1, vals:Lgnu/expr/Expression;
    iget v2, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 217
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 83
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 84
    invoke-direct {p0, p1}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 85
    .local v0, lexp:Lgnu/expr/LambdaExp;
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 88
    iput-object p1, v0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    .line 90
    :cond_0
    return-object p1
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x2002

    return v0
.end method
