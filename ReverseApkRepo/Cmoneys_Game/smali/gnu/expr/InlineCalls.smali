.class public Lgnu/expr/InlineCalls;
.super Lgnu/expr/ExpWalker;
.source "InlineCalls.java"


# direct methods
.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 18
    return-void
.end method

.method public static inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;
    .locals 9
    .parameter "lexp"
    .parameter "args"
    .parameter "makeCopy"

    .prologue
    .line 196
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 201
    :cond_0
    const/4 p0, 0x0

    .line 291
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 202
    .restart local p0
    .restart local p1
    :cond_1
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    .line 203
    .local v6, varArgs:Z
    :goto_1
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    array-length v1, p1

    if-eq v0, v1, :cond_3

    :cond_2
    if-eqz v6, :cond_b

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-nez v0, :cond_b

    .line 207
    :cond_3
    const/4 v4, 0x0

    .line 208
    .local v4, prev:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 211
    .local v1, i:I
    if-eqz p2, :cond_5

    .line 213
    new-instance v2, Lgnu/kawa/util/IdentityHashTable;

    invoke-direct {v2}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    .line 214
    .local v2, mapper:Lgnu/kawa/util/IdentityHashTable;
    invoke-static {p1, v2}, Lgnu/expr/Expression;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v0

    .line 215
    .local v0, cargs:[Lgnu/expr/Expression;
    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    .line 216
    const/4 p0, 0x0

    goto :goto_0

    .line 202
    .end local v0           #cargs:[Lgnu/expr/Expression;
    .end local v1           #i:I
    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .end local v4           #prev:Lgnu/expr/Declaration;
    .end local v6           #varArgs:Z
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 220
    .restart local v1       #i:I
    .restart local v4       #prev:Lgnu/expr/Declaration;
    .restart local v6       #varArgs:Z
    :cond_5
    const/4 v2, 0x0

    .line 221
    .restart local v2       #mapper:Lgnu/kawa/util/IdentityHashTable;
    move-object v0, p1

    .restart local v0       #cargs:[Lgnu/expr/Expression;
    move-object v3, v2

    .line 223
    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .local v3, mapper:Lgnu/kawa/util/IdentityHashTable;
    :goto_2
    if-eqz v6, :cond_c

    .line 225
    array-length v0, p1

    .end local v0           #cargs:[Lgnu/expr/Expression;
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 226
    .local v0, xargs:[Lgnu/expr/Expression;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    iget-object v5, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v5

    aput-object v5, v0, v2

    .line 227
    const/4 v2, 0x0

    const/4 v5, 0x1

    array-length v7, p1

    invoke-static {p1, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    const/4 p1, 0x1

    new-array p1, p1, [Lgnu/expr/Expression;

    .end local p1
    const/4 v2, 0x0

    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v5, v7, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    aput-object v5, p1, v2

    .line 230
    .end local v0           #xargs:[Lgnu/expr/Expression;
    .local p1, cargs:[Lgnu/expr/Expression;
    :goto_3
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, p1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 231
    .local v2, let:Lgnu/expr/LetExp;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, param:Lgnu/expr/Declaration;
    move-object v5, v0

    .end local v0           #param:Lgnu/expr/Declaration;
    .local v5, param:Lgnu/expr/Declaration;
    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    move-object v1, v4

    .end local v4           #prev:Lgnu/expr/Declaration;
    .local v1, prev:Lgnu/expr/Declaration;
    :goto_4
    if-eqz v5, :cond_9

    .line 233
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 234
    .local v4, next:Lgnu/expr/Declaration;
    if-eqz p2, :cond_8

    .line 236
    iget-object v1, v5, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .end local v1           #prev:Lgnu/expr/Declaration;
    iget-object v7, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2, v1, v7}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 237
    .local v1, ldecl:Lgnu/expr/Declaration;
    iget-object v7, v5, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v7, :cond_6

    .line 239
    iget-object v7, v5, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    invoke-static {v7}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 240
    iget-object v7, v1, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v7, :cond_6

    .line 241
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-virtual {v3, v5, v1}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1           #ldecl:Lgnu/expr/Declaration;
    :goto_5
    if-nez v6, :cond_7

    .line 253
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-nez v1, :cond_7

    .line 254
    aget-object v1, p1, v0

    invoke-virtual {v5, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 256
    :cond_7
    move-object v5, v5

    .line 257
    .local v5, prev:Lgnu/expr/Declaration;
    move-object v1, v4

    .line 231
    .local v1, param:Lgnu/expr/Declaration;
    add-int/lit8 v0, v0, 0x1

    move-object v8, v1

    .end local v1           #param:Lgnu/expr/Declaration;
    .local v8, param:Lgnu/expr/Declaration;
    move-object v1, v5

    .end local v5           #prev:Lgnu/expr/Declaration;
    .local v1, prev:Lgnu/expr/Declaration;
    move-object v5, v8

    .end local v8           #param:Lgnu/expr/Declaration;
    .local v5, param:Lgnu/expr/Declaration;
    goto :goto_4

    .line 248
    :cond_8
    invoke-virtual {p0, v1, v5}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 249
    invoke-virtual {v2, v1, v5}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    goto :goto_5

    .line 266
    .end local v4           #next:Lgnu/expr/Declaration;
    :cond_9
    iget-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 267
    .local p1, body:Lgnu/expr/Expression;
    if-eqz p2, :cond_a

    .line 269
    invoke-static {p1, v3}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object p1

    .line 270
    if-nez p1, :cond_a

    iget-object p0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .end local p0
    if-eqz p0, :cond_a

    .line 271
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    move-object p0, p1

    .line 273
    .end local p1           #body:Lgnu/expr/Expression;
    .local p0, body:Lgnu/expr/Expression;
    iput-object p0, v2, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    move-object p0, v2

    .line 274
    goto/16 :goto_0

    .line 291
    .end local v0           #i:I
    .end local v1           #prev:Lgnu/expr/Declaration;
    .end local v2           #let:Lgnu/expr/LetExp;
    .end local v3           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .end local v5           #param:Lgnu/expr/Declaration;
    .local p0, lexp:Lgnu/expr/LambdaExp;
    .local p1, args:[Lgnu/expr/Expression;
    :cond_b
    const/4 p0, 0x0

    goto/16 :goto_0

    .local v0, cargs:[Lgnu/expr/Expression;
    .local v1, i:I
    .restart local v3       #mapper:Lgnu/kawa/util/IdentityHashTable;
    .local v4, prev:Lgnu/expr/Declaration;
    :cond_c
    move-object p1, v0

    .end local v0           #cargs:[Lgnu/expr/Expression;
    .local p1, cargs:[Lgnu/expr/Expression;
    goto :goto_3

    .end local v3           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .restart local v0       #cargs:[Lgnu/expr/Expression;
    .local v2, mapper:Lgnu/kawa/util/IdentityHashTable;
    .local p1, args:[Lgnu/expr/Expression;
    :cond_d
    move-object v3, v2

    .end local v2           #mapper:Lgnu/kawa/util/IdentityHashTable;
    .restart local v3       #mapper:Lgnu/kawa/util/IdentityHashTable;
    goto/16 :goto_2
.end method

.method public static inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"

    .prologue
    .line 11
    new-instance v0, Lgnu/expr/InlineCalls;

    invoke-direct {v0, p1}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    .line 12
    .local v0, walker:Lgnu/expr/InlineCalls;
    invoke-virtual {v0, p0}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 13
    return-void
.end method


# virtual methods
.method protected walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 7
    .parameter "exp"

    .prologue
    const/4 v6, 0x0

    .line 22
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 27
    .local v1, func:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 29
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 30
    .local v3, lexp:Lgnu/expr/LambdaExp;
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v4, v0

    iget-object v5, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v4, v5, v6}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 31
    .local v2, inlined:Lgnu/expr/Expression;
    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p0, v2}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    .line 36
    .end local v2           #inlined:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v4

    .line 34
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 35
    iput-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 36
    const/4 v4, 0x0

    invoke-virtual {v1, p1, p0, v4, v6}, Lgnu/expr/Expression;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0
.end method

.method public final walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"

    .prologue
    .line 42
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p0, v1, v2}, Lgnu/expr/Expression;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkIfExp(Lgnu/expr/IfExp;)Lgnu/expr/Expression;
    .locals 6
    .parameter "exp"

    .prologue
    .line 83
    iget-object v4, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v4, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v2

    .line 84
    .local v2, test:Lgnu/expr/Expression;
    instance-of v4, v2, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_0

    .line 86
    move-object v0, v2

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 87
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 90
    .local v3, value:Lgnu/expr/Expression;
    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    sget-object v4, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v3, v4, :cond_0

    .line 91
    move-object v2, v3

    .line 94
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #value:Lgnu/expr/Expression;
    :cond_0
    instance-of v4, v2, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_3

    .line 96
    iget-object v4, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    check-cast v2, Lgnu/expr/QuoteExp;

    .end local v2           #test:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    :goto_0
    invoke-virtual {p0, v4}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    .line 106
    :goto_1
    return-object v4

    .line 96
    :cond_1
    iget-object v4, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v4, :cond_2

    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    goto :goto_0

    .line 101
    .restart local v2       #test:Lgnu/expr/Expression;
    :cond_3
    iput-object v2, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 102
    iget-object v4, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 103
    iget-object v4, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v4}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 104
    :cond_4
    iget-object v4, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v4, :cond_5

    iget-object v4, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_5

    .line 105
    iget-object v4, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v4}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    :cond_5
    move-object v4, p1

    .line 106
    goto :goto_1
.end method

.method protected walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 152
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 153
    .local v0, firstDecl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method protected walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;
    .locals 11
    .parameter "exp"

    .prologue
    .line 111
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 112
    .local v1, decl:Lgnu/expr/Declaration;
    iget-object v9, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v6, v9

    .line 113
    .local v6, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 115
    iget-object v9, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v5, v9, v3

    .line 116
    .local v5, init0:Lgnu/expr/Expression;
    invoke-virtual {p0, v5}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    .line 117
    .local v4, init:Lgnu/expr/Expression;
    iget-object v9, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v4, v9, v3

    .line 118
    iget-object v2, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 119
    .local v2, dvalue:Lgnu/expr/Expression;
    if-ne v2, v5, :cond_0

    .line 121
    move-object v2, v4

    iput-object v4, v1, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 122
    const/16 v9, 0x2000

    invoke-virtual {v1, v9}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 123
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v1, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 113
    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 127
    .end local v2           #dvalue:Lgnu/expr/Expression;
    .end local v4           #init:Lgnu/expr/Expression;
    .end local v5           #init0:Lgnu/expr/Expression;
    :cond_1
    iget-object v9, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v9, :cond_2

    .line 128
    iget-object v9, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v9}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    iput-object v9, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 129
    :cond_2
    iget-object v9, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_4

    .line 131
    iget-object v7, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v7, Lgnu/expr/ReferenceExp;

    .line 132
    .local v7, ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 133
    .local v0, d:Lgnu/expr/Declaration;
    if-eqz v0, :cond_4

    iget-object v9, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v9, p1, :cond_4

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v9

    if-nez v9, :cond_4

    .line 135
    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    .line 137
    iget-object v9, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    const/4 v10, 0x0

    aget-object v4, v9, v10

    .line 138
    .restart local v4       #init:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v8

    .line 139
    .local v8, texp:Lgnu/expr/Expression;
    sget-object v9, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    if-eq v8, v9, :cond_3

    .line 140
    invoke-static {v4, v8}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v4

    :cond_3
    move-object v9, v4

    .line 147
    .end local v0           #d:Lgnu/expr/Declaration;
    .end local v4           #init:Lgnu/expr/Expression;
    .end local v7           #ref:Lgnu/expr/ReferenceExp;
    .end local v8           #texp:Lgnu/expr/Expression;
    :goto_1
    return-object v9

    :cond_4
    move-object v9, p1

    goto :goto_1
.end method

.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"

    .prologue
    const v7, 0x100080

    const/16 v9, 0x65

    .line 47
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 48
    .local v1, decl:Lgnu/expr/Declaration;
    if-eqz v1, :cond_3

    iget-object v6, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 50
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 51
    .local v3, dval:Lgnu/expr/Expression;
    instance-of v6, v3, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_0

    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v3, v6, :cond_0

    .line 52
    check-cast v3, Lgnu/expr/QuoteExp;

    .end local v3           #dval:Lgnu/expr/Expression;
    invoke-virtual {p0, v3}, Lgnu/expr/InlineCalls;->walkQuoteExp(Lgnu/expr/QuoteExp;)Lgnu/expr/Expression;

    move-result-object v6

    .line 78
    :goto_0
    return-object v6

    .line 53
    .restart local v3       #dval:Lgnu/expr/Expression;
    :cond_0
    instance-of v6, v3, Lgnu/expr/ReferenceExp;

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v6

    if-nez v6, :cond_2

    .line 55
    move-object v0, v3

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v5, v0

    .line 56
    .local v5, rval:Lgnu/expr/ReferenceExp;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 57
    .local v4, rdecl:Lgnu/expr/Declaration;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 58
    .local v2, dtype:Lgnu/bytecode/Type;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_1

    sget-object v6, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v2, v6, :cond_1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    if-ne v2, v6, :cond_2

    :cond_1
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v6

    if-nez v6, :cond_2

    .line 63
    invoke-virtual {p0, v5}, Lgnu/expr/InlineCalls;->walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_0

    .line 65
    .end local v2           #dtype:Lgnu/bytecode/Type;
    .end local v4           #rdecl:Lgnu/expr/Declaration;
    .end local v5           #rval:Lgnu/expr/ReferenceExp;
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, v1, Lgnu/expr/Declaration;->flags:I

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3

    .line 74
    iget-object v6, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unimplemented: reference to method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as variable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 75
    iget-object v6, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const-string v7, "here is the definition of "

    const-string v8, ""

    invoke-virtual {v6, v9, v1, v7, v8}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v3           #dval:Lgnu/expr/Expression;
    :cond_3
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_0
.end method

.method protected walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    const v2, 0x100080

    .line 163
    invoke-super {p0, p1}, Lgnu/expr/ExpWalker;->walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;

    .line 164
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 165
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, v0, Lgnu/expr/Declaration;->flags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t assign to method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 182
    :cond_0
    return-object p1
.end method
