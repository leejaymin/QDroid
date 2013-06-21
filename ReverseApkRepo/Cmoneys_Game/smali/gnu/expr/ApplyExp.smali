.class public Lgnu/expr/ApplyExp;
.super Lgnu/expr/Expression;
.source "ApplyExp.java"


# static fields
.field public static final INLINE_IF_CONSTANT:I = 0x2

.field public static final TAILCALL:I = 0x1


# instance fields
.field args:[Lgnu/expr/Expression;

.field context:Lgnu/expr/LambdaExp;

.field func:Lgnu/expr/Expression;

.field public nextCall:Lgnu/expr/ApplyExp;

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V
    .locals 2
    .parameter "m"
    .parameter "a"

    .prologue
    .line 50
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 51
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 52
    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 53
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0
    .parameter "f"
    .parameter "a"

    .prologue
    .line 45
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    .locals 1
    .parameter "p"
    .parameter "a"

    .prologue
    .line 47
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 116
    return-void
.end method

.method static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V
    .locals 12
    .parameter "exp"
    .parameter "comp"
    .parameter "target"
    .parameter "checkInlineable"

    .prologue
    .line 121
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    .line 122
    .local v1, args_length:I
    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 123
    .local v3, exp_func:Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 124
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    const/4 v5, 0x0

    .line 125
    .local v5, func_name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 126
    .local v6, owner:Lgnu/expr/Declaration;
    instance-of v2, v3, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    .line 128
    move-object v0, v3

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object p3, v0

    .line 129
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, func_lambda:Lgnu/expr/LambdaExp;
    invoke-virtual {p3}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    .line 130
    .end local v5           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    if-nez v2, :cond_26

    .line 131
    const-string v2, "<lambda>"

    move-object v5, v2

    .end local v2           #func_name:Ljava/lang/String;
    .restart local v5       #func_name:Ljava/lang/String;
    move-object v4, p3

    .line 177
    .end local p3           #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p3

    .line 180
    .local p3, code:Lgnu/bytecode/CodeAttr;
    if-eqz v4, :cond_11

    .line 182
    iget v2, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_1

    iget v2, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v1, v2, :cond_2

    :cond_1
    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v1, v2, :cond_8

    .line 185
    :cond_2
    new-instance p0, Ljava/lang/Error;

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "internal error - wrong number of parameters for "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    .restart local p0
    .restart local p1
    .restart local p2
    .local p3, checkInlineable:Z
    :cond_3
    instance-of v2, v3, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_7

    .line 135
    move-object v0, v3

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v6, v0

    .line 136
    .local v6, func_ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 137
    .local v7, owner:Lgnu/expr/Declaration;
    iget-object v2, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 139
    .local v2, func_decl:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v8, v8, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_4

    .line 141
    iget-object v6, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .end local v6           #func_ref:Lgnu/expr/ReferenceExp;
    check-cast v6, Lgnu/expr/ReferenceExp;

    .line 142
    .restart local v6       #func_ref:Lgnu/expr/ReferenceExp;
    if-nez v7, :cond_4

    invoke-virtual {v2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v8, :cond_5

    .line 147
    :cond_4
    const/high16 v6, 0x1

    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->getFlag(I)Z

    .end local v6           #func_ref:Lgnu/expr/ReferenceExp;
    move-result v6

    if-nez v6, :cond_25

    .line 149
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 150
    .local v6, value:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    .line 151
    if-eqz v6, :cond_24

    instance-of v2, v6, Lgnu/expr/LambdaExp;

    .end local v2           #func_decl:Lgnu/expr/Declaration;
    if-eqz v2, :cond_24

    .line 152
    move-object v0, v6

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    .line 153
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    :goto_2
    if-eqz v6, :cond_6

    instance-of v4, v6, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_6

    .line 155
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #value:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, quotedValue:Ljava/lang/Object;
    if-eqz p3, :cond_6

    instance-of p3, v4, Lgnu/expr/Inlineable;

    .end local p3           #checkInlineable:Z
    if-eqz p3, :cond_6

    .line 158
    check-cast v4, Lgnu/expr/Inlineable;

    .end local v4           #quotedValue:Ljava/lang/Object;
    invoke-interface {v4, p0, p1, p2}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    move-object p2, v7

    .end local v7           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v2

    .line 381
    .end local v1           #args_length:I
    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .end local v3           #exp_func:Lgnu/expr/Expression;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    :goto_3
    return-void

    .line 144
    .restart local v1       #args_length:I
    .local v2, func_decl:Lgnu/expr/Declaration;
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .local v6, func_ref:Lgnu/expr/ReferenceExp;
    .restart local v7       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    .restart local p3       #checkInlineable:Z
    :cond_5
    iget-object v2, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 145
    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_1

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .end local v6           #func_ref:Lgnu/expr/ReferenceExp;
    .end local p3           #checkInlineable:Z
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    :cond_6
    move-object p3, v2

    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, func_lambda:Lgnu/expr/LambdaExp;
    move-object v2, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    :goto_4
    move-object v6, v7

    .end local v7           #owner:Lgnu/expr/Declaration;
    .local v6, owner:Lgnu/expr/Declaration;
    move-object v5, v2

    .end local v2           #func_name:Ljava/lang/String;
    .restart local v5       #func_name:Ljava/lang/String;
    move-object v4, p3

    .line 163
    .end local p3           #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_0

    .line 164
    .local p3, checkInlineable:Z
    :cond_7
    instance-of v2, v3, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 166
    move-object v0, v3

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 167
    .local v2, proc:Ljava/lang/Object;
    instance-of v7, v2, Lgnu/expr/Inlineable;

    if-eqz v7, :cond_0

    .line 169
    if-eqz p3, :cond_0

    .line 171
    check-cast v2, Lgnu/expr/Inlineable;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-interface {v2, p0, p1, p2}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 172
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto :goto_3

    .line 187
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_8
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v2

    .line 190
    .local v2, conv:I
    invoke-virtual {p1, v4}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x2

    if-le v2, v7, :cond_9

    const/4 v7, 0x3

    if-ne v2, v7, :cond_11

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    .end local v2           #conv:I
    if-nez v2, :cond_11

    :cond_9
    invoke-virtual {v4, v1}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v2

    .local v2, method:Lgnu/bytecode/Method;
    if-eqz v2, :cond_11

    .line 196
    new-instance v3, Lgnu/expr/PrimProcedure;

    .end local v3           #exp_func:Lgnu/expr/Expression;
    invoke-direct {v3, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 197
    .local v3, pproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v2

    .line 198
    .local v2, is_static:Z
    const/4 v1, 0x0

    .line 200
    .local v1, extraArg:Z
    if-eqz v2, :cond_a

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 202
    :cond_a
    if-eqz v2, :cond_b

    .line 203
    const/4 v1, 0x1

    .line 204
    :cond_b
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .end local v2           #is_static:Z
    if-ne v2, v4, :cond_d

    .line 205
    iget-object v2, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_c

    iget-object v2, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    :goto_5
    invoke-virtual {p3, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move p3, v1

    .line 214
    .end local v1           #extraArg:Z
    .local p3, extraArg:Z
    :goto_6
    if-eqz p3, :cond_10

    sget-object p3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .end local p3           #extraArg:Z
    :goto_7
    invoke-virtual {v3, p3, p0, p1, p2}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 216
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto :goto_3

    .line 205
    .restart local v1       #extraArg:Z
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_c
    iget-object v2, v4, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    goto :goto_5

    .line 208
    :cond_d
    if-eqz v6, :cond_e

    .line 209
    const/4 p3, 0x0

    const/4 v2, 0x0

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .end local p3           #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v6, p3, v2, p1, v7}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    move p3, v1

    .end local v1           #extraArg:Z
    .local p3, extraArg:Z
    goto :goto_6

    .line 211
    .restart local v1       #extraArg:Z
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_e
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    .end local p3           #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p3, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    :cond_f
    move p3, v1

    .end local v1           #extraArg:Z
    .local p3, extraArg:Z
    goto :goto_6

    .line 214
    :cond_10
    const/4 p3, 0x0

    goto :goto_7

    .line 278
    .local v1, args_length:I
    .local v3, exp_func:Lgnu/expr/Expression;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_11
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v4, :cond_12

    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v4, v2, :cond_12

    const/4 v2, 0x1

    move v7, v2

    .line 282
    .local v7, tail_recurse:Z
    :goto_8
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v7, :cond_13

    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v2, v1, :cond_13

    .line 285
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    const/4 v1, 0x0

    invoke-static {v4, p0, v1, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 286
    .end local v1           #args_length:I
    iget-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 287
    .local p0, saveLambda:Lgnu/expr/LambdaExp;
    iput-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 288
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 289
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p3, v4, v1, v2}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 291
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 292
    iget-object v1, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 293
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 294
    invoke-virtual {v4, p3}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 295
    iput-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 296
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .line 278
    .end local v7           #tail_recurse:Z
    .restart local v1       #args_length:I
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    :cond_12
    const/4 v2, 0x0

    move v7, v2

    goto :goto_8

    .line 299
    .restart local v7       #tail_recurse:Z
    :cond_13
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    if-nez v2, :cond_14

    instance-of v2, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v2, :cond_19

    :cond_14
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_19

    .line 303
    sget-object v7, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 304
    .local v7, typeContext:Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/expr/StackTarget;

    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v8}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 306
    const/4 v2, 0x4

    if-gt v1, v2, :cond_16

    .line 308
    const/4 v2, 0x0

    .end local v3           #exp_func:Lgnu/expr/Expression;
    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_15

    .line 309
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p1, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 310
    :cond_15
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 311
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .end local v2           #i:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v1           #args_length:I
    move-result-object v1

    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 322
    :goto_a
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    if-eqz p0, :cond_17

    .line 324
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .end local p1           #comp:Lgnu/expr/Compilation;
    .end local p2           #target:Lgnu/expr/Target;
    :goto_b
    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 337
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .line 317
    .restart local v1       #args_length:I
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    :cond_16
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local v1           #args_length:I
    invoke-static {v1, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 318
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 319
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v2, "checkN"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v3           #exp_func:Lgnu/expr/Expression;
    move-result-object v1

    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 326
    .end local p0           #exp:Lgnu/expr/ApplyExp;
    :cond_17
    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 328
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 329
    const-string p0, "runUntilDone"

    const/4 p1, 0x0

    invoke-virtual {v7, p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p1           #comp:Lgnu/expr/Compilation;
    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_b

    .line 333
    .restart local p1       #comp:Lgnu/expr/Compilation;
    :cond_18
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 334
    check-cast p2, Lgnu/expr/ConsumerTarget;

    .end local p2           #target:Lgnu/expr/Target;
    invoke-virtual {p2}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 335
    const-string p0, "runUntilValue"

    const/4 p1, 0x1

    invoke-virtual {v7, p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p1           #comp:Lgnu/expr/Compilation;
    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_b

    .line 340
    .restart local v1       #args_length:I
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .local v7, tail_recurse:Z
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    .restart local p1       #comp:Lgnu/expr/Compilation;
    .restart local p2       #target:Lgnu/expr/Target;
    :cond_19
    if-nez v7, :cond_1a

    .line 341
    new-instance v2, Lgnu/expr/StackTarget;

    sget-object v8, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v8}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 343
    :cond_1a
    if-eqz v7, :cond_1c

    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    iget v3, v4, Lgnu/expr/LambdaExp;->max_args:I

    .end local v3           #exp_func:Lgnu/expr/Expression;
    if-eq v2, v3, :cond_1b

    const/4 v2, 0x1

    move v8, v2

    .line 346
    .local v8, toArray:Z
    :goto_c
    const/4 v3, 0x0

    .line 347
    .local v3, incValues:[I
    if-eqz v8, :cond_1e

    .line 349
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static {p0, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 350
    sget-object p0, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .local p0, method:Lgnu/bytecode/Method;
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v3

    .line 368
    .end local v3           #incValues:[I
    .local p0, incValues:[I
    :goto_d
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-nez v2, :cond_22

    .line 370
    const/16 p0, 0x65

    const-string p2, "unreachable code"

    .end local p0           #incValues:[I
    .end local p2           #target:Lgnu/expr/Target;
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 371
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .line 343
    .end local v8           #toArray:Z
    .local v1, args_length:I
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    :cond_1b
    const/4 v2, 0x0

    move v8, v2

    goto :goto_c

    .local v3, exp_func:Lgnu/expr/Expression;
    :cond_1c
    const/4 v2, 0x4

    if-le v1, v2, :cond_1d

    const/4 v2, 0x1

    move v8, v2

    goto :goto_c

    :cond_1d
    const/4 v2, 0x0

    move v8, v2

    goto :goto_c

    .line 352
    .local v3, incValues:[I
    .restart local v8       #toArray:Z
    :cond_1e
    if-eqz v7, :cond_1f

    .line 354
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local v1           #args_length:I
    array-length v1, v1

    new-array v1, v1, [I

    .line 355
    .end local v3           #incValues:[I
    .local v1, incValues:[I
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static {v4, p0, v1, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 356
    const/4 p0, 0x0

    .local p0, method:Lgnu/bytecode/Method;
    move-object v11, v1

    .end local v1           #incValues:[I
    .local v11, incValues:[I
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v11

    .end local v11           #incValues:[I
    .local p0, incValues:[I
    goto :goto_d

    .line 360
    .local v1, args_length:I
    .restart local v3       #incValues:[I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_1f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_e
    if-ge v2, v1, :cond_20

    .line 362
    iget-object v9, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v9, v9, v2

    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v9, p1, v10}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 363
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v9

    if-nez v9, :cond_21

    .line 366
    :cond_20
    sget-object p0, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    aget-object p0, p0, v1

    .local p0, method:Lgnu/bytecode/Method;
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v3

    .end local v3           #incValues:[I
    .local p0, incValues:[I
    goto :goto_d

    .line 360
    .local v1, args_length:I
    .restart local v3       #incValues:[I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 373
    .end local v2           #i:I
    .end local v3           #incValues:[I
    .local v1, method:Lgnu/bytecode/Method;
    .local p0, incValues:[I
    :cond_22
    if-eqz v7, :cond_23

    .line 375
    invoke-static {p3, v4, p0, v8}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 376
    const/4 p0, 0x0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    .end local p0           #incValues:[I
    move-result-object p1

    .end local p1           #comp:Lgnu/expr/Compilation;
    invoke-virtual {p3, p0, p1}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 377
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .line 379
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .local p0, incValues:[I
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    :cond_23
    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 380
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .end local p0           #incValues:[I
    invoke-virtual {p2, p1, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    move-object p2, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local p2, owner:Lgnu/expr/Declaration;
    move-object p1, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local p1, func_name:Ljava/lang/String;
    move-object p0, v4

    .line 381
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p0, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .end local v8           #toArray:Z
    .local v1, args_length:I
    .local v3, exp_func:Lgnu/expr/Expression;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #func_name:Ljava/lang/String;
    .local v6, value:Lgnu/expr/Expression;
    .local v7, owner:Lgnu/expr/Declaration;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p1, comp:Lgnu/expr/Compilation;
    .local p2, target:Lgnu/expr/Target;
    .local p3, checkInlineable:Z
    :cond_24
    move-object v2, v4

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_2

    .end local v6           #value:Lgnu/expr/Expression;
    .local v2, func_decl:Lgnu/expr/Declaration;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    :cond_25
    move-object v2, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    move-object p3, v4

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_4

    .end local v7           #owner:Lgnu/expr/Declaration;
    .local v6, owner:Lgnu/expr/Declaration;
    :cond_26
    move-object v5, v2

    .end local v2           #func_name:Ljava/lang/String;
    .restart local v5       #func_name:Ljava/lang/String;
    move-object v4, p3

    .end local p3           #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_0
.end method

.method public static compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "args"
    .parameter "comp"

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 70
    .local v1, code:Lgnu/bytecode/CodeAttr;
    array-length v3, p0

    if-nez v3, :cond_1

    .line 72
    sget-object v3, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 106
    :cond_0
    return-void

    .line 75
    :cond_1
    array-length v3, p0

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 76
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 77
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 79
    aget-object v0, p0, v2

    .line 80
    .local v0, arg:Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v0, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_2

    instance-of v3, v0, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_2

    .line 91
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 93
    invoke-virtual {v1, v4, v4}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 94
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 95
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 96
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 104
    :goto_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_2
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 102
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V
    .locals 6
    .parameter "code"
    .parameter "paramNo"
    .parameter "count"
    .parameter "incValues"
    .parameter "decl"
    .parameter "vars"

    .prologue
    .line 485
    if-lez p2, :cond_0

    .line 487
    add-int/lit8 p2, p2, -0x1

    .line 488
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {p4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 490
    if-eqz p3, :cond_2

    aget v0, p3, p1

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 491
    aget v0, p3, p1

    int-to-short v0, v0

    invoke-virtual {p0, p5, v0}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 495
    :cond_0
    :goto_1
    return-void

    .line 488
    :cond_1
    invoke-virtual {p5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0, p5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V
    .locals 6
    .parameter "code"
    .parameter "lexp"
    .parameter "incValues"
    .parameter "toArray"

    .prologue
    const/4 v1, 0x0

    .line 462
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 463
    .local v5, vars:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 464
    .local v4, decls:Lgnu/expr/Declaration;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "this"

    if-ne v0, v2, :cond_0

    .line 465
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 466
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$ctx"

    if-ne v0, v2, :cond_1

    .line 467
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 468
    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "argsArray"

    if-ne v0, v2, :cond_3

    .line 470
    if-eqz p3, :cond_2

    .line 472
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 478
    :goto_0
    return-void

    .line 475
    :cond_2
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 477
    :cond_3
    iget v2, p1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method private static pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V
    .locals 6
    .parameter "lexp"
    .parameter "args"
    .parameter "incValues"
    .parameter "comp"

    .prologue
    .line 442
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 443
    .local v3, param:Lgnu/expr/Declaration;
    array-length v1, p1

    .line 444
    .local v1, args_length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 446
    aget-object v0, p1, v2

    .line 447
    .local v0, arg:Lgnu/expr/Expression;
    if-eqz p2, :cond_0

    invoke-static {v0, v3}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v4

    aput v4, p2, v2

    const/high16 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 455
    :goto_1
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v3}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    sget-object v4, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v0, p3, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    .line 453
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v0, p3, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    .line 457
    .end local v0           #arg:Lgnu/expr/Expression;
    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v4, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, proc:Ljava/lang/Object;
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v4

    .line 61
    .local v1, n:I
    new-array v3, v1, [Ljava/lang/Object;

    .line 62
    .local v3, vals:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 63
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    check-cast v2, Lgnu/mapping/Procedure;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 65
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 111
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 4
    .parameter "mapper"

    .prologue
    .line 385
    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v3, p1}, Lgnu/expr/ApplyExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v2

    .line 386
    .local v2, f:Lgnu/expr/Expression;
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v3, p1}, Lgnu/expr/ApplyExp;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v0

    .line 387
    .local v0, a:[Lgnu/expr/Expression;
    if-nez v2, :cond_0

    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-eqz v3, :cond_2

    .line 388
    :cond_1
    const/4 v3, 0x0

    .line 391
    :goto_0
    return-object v3

    .line 389
    :cond_2
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 390
    .local v1, copy:Lgnu/expr/ApplyExp;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFlags()I

    move-result v3

    iput v3, v1, Lgnu/expr/ApplyExp;->flags:I

    move-object v3, v1

    .line 391
    goto :goto_0
.end method

.method public getArg(I)Lgnu/expr/Expression;
    .locals 1
    .parameter "i"

    .prologue
    .line 33
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getArgCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    return v0
.end method

.method public final getArgs()[Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunction()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunctionValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 512
    iget-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v4, :cond_0

    .line 513
    iget-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 534
    :goto_0
    return-object v4

    .line 514
    :cond_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 516
    .local v1, afunc:Lgnu/expr/Expression;
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    iput-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 517
    instance-of v4, v1, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_1

    .line 519
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v4, v0

    iget-object v2, v4, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 520
    .local v2, func_decl:Lgnu/expr/Declaration;
    invoke-static {v2}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_1

    const/high16 v4, 0x1

    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 524
    .end local v2           #func_decl:Lgnu/expr/Declaration;
    :cond_1
    instance-of v4, v1, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_3

    .line 526
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #afunc:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 527
    .local v3, proc:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Inlineable;

    if-eqz v4, :cond_2

    .line 528
    check-cast v3, Lgnu/expr/Inlineable;

    .end local v3           #proc:Ljava/lang/Object;
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-interface {v3, v4}, Lgnu/expr/Inlineable;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v4

    iput-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 534
    :cond_2
    :goto_1
    iget-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_0

    .line 530
    .restart local v1       #afunc:Lgnu/expr/Expression;
    :cond_3
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_2

    .line 532
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1           #afunc:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    iput-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public final getTypeRaw()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "proc"
    .parameter "walker"

    .prologue
    .line 539
    invoke-virtual {p2}, Lgnu/expr/ExpWalker;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;
    .locals 10
    .parameter "proc"
    .parameter "messages"

    .prologue
    .line 550
    iget-object v7, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v5, v7

    .line 551
    .local v5, len:I
    new-array v6, v5, [Ljava/lang/Object;

    .line 552
    .local v6, vals:[Ljava/lang/Object;
    move v4, v5

    .local v4, i:I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 554
    iget-object v7, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v1, v7, v4

    .line 555
    .local v1, arg:Lgnu/expr/Expression;
    instance-of v7, v1, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_0

    .line 557
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 558
    .local v2, decl:Lgnu/expr/Declaration;
    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 561
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v7, :cond_0

    move-object v7, p0

    .line 578
    .end local v1           #arg:Lgnu/expr/Expression;
    .end local v2           #decl:Lgnu/expr/Declaration;
    :goto_1
    return-object v7

    .line 565
    .restart local v1       #arg:Lgnu/expr/Expression;
    :cond_0
    instance-of v7, v1, Lgnu/expr/QuoteExp;

    if-nez v7, :cond_1

    move-object v7, p0

    .line 566
    goto :goto_1

    .line 567
    :cond_1
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    goto :goto_0

    .line 571
    :cond_2
    :try_start_0
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-virtual {p1, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 573
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 575
    .local v3, ex:Ljava/lang/Throwable;
    if-eqz p2, :cond_3

    .line 576
    const/16 v7, 0x77

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " throws "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    :cond_3
    move-object v7, p0

    .line 578
    goto :goto_1
.end method

.method public final isTailCall()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "out"

    .prologue
    const-string v3, ")"

    .line 419
    const-string v1, "(Apply"

    const-string v2, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v3, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 420
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    const-string v1, " [tailcall]"

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 422
    :cond_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_1

    .line 424
    const-string v1, " => "

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 427
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 428
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 429
    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 430
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 432
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 433
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public setArg(ILgnu/expr/Expression;)V
    .locals 1
    .parameter "i"
    .parameter "arg"

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aput-object p2, v0, p1

    return-void
.end method

.method public setArgs([Lgnu/expr/Expression;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 32
    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public setFunction(Lgnu/expr/Expression;)V
    .locals 0
    .parameter "func"

    .prologue
    .line 31
    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTailCall(Z)V
    .locals 1
    .parameter "tailCall"

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->setFlag(ZI)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 507
    iput-object p1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 508
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 396
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public walkArgs(Lgnu/expr/ExpWalker;)V
    .locals 2
    .parameter "walker"

    .prologue
    .line 401
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/ExpWalker;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 402
    return-void
.end method

.method public walkArgs(Lgnu/expr/ExpWalker;Z)V
    .locals 2
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 406
    if-nez p2, :cond_0

    .line 407
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/ExpWalker;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 408
    :cond_0
    return-void
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 2
    .parameter "walker"

    .prologue
    .line 412
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 413
    iget-object v0, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lgnu/expr/ExpWalker;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 415
    :cond_0
    return-void
.end method
