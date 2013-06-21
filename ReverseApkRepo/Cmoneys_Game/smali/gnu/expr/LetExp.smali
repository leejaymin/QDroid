.class public Lgnu/expr/LetExp;
.super Lgnu/expr/ScopeExp;
.source "LetExp.java"


# instance fields
.field public body:Lgnu/expr/Expression;

.field public inits:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0
    .parameter "i"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 24
    invoke-virtual {p0}, Lgnu/expr/LetExp;->setIndexes()V

    .line 25
    invoke-static {p0}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v5

    .line 26
    .local v5, level:I
    iget v3, p0, Lgnu/expr/LetExp;->frameSize:I

    .line 28
    .local v3, i:I
    new-array v1, v3, [Ljava/lang/Object;

    .line 29
    .local v1, evalFrame:[Ljava/lang/Object;
    iget-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 30
    .local v2, evalFrames:[[Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 32
    add-int/lit8 v10, v5, 0xa

    new-array v2, v10, [[Ljava/lang/Object;

    .line 33
    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 41
    :cond_0
    :goto_0
    aput-object v1, v2, v5

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_1
    if-eqz v0, :cond_5

    .line 49
    iget-object v10, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v4, v10, v3

    .line 50
    .local v4, init:Lgnu/expr/Expression;
    sget-object v10, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v4, v10, :cond_2

    .line 47
    :goto_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 35
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v4           #init:Lgnu/expr/Expression;
    :cond_1
    array-length v10, v2

    if-lt v5, v10, :cond_0

    .line 37
    add-int/lit8 v10, v5, 0xa

    new-array v7, v10, [[Ljava/lang/Object;

    .line 38
    .local v7, newFrames:[[Ljava/lang/Object;
    array-length v10, v2

    invoke-static {v2, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    move-object v2, v7

    iput-object v7, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    goto :goto_0

    .line 52
    .end local v7           #newFrames:[[Ljava/lang/Object;
    .restart local v0       #decl:Lgnu/expr/Declaration;
    .restart local v4       #init:Lgnu/expr/Expression;
    :cond_2
    :try_start_1
    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v9

    .line 53
    .local v9, value:Ljava/lang/Object;
    iget-object v8, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 54
    .local v8, type:Lgnu/bytecode/Type;
    if-eqz v8, :cond_3

    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v8, v10, :cond_3

    .line 55
    invoke-virtual {v8, v9}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 56
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 58
    invoke-virtual {v0}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v6

    .line 59
    .local v6, loc:Lgnu/mapping/Location;
    invoke-virtual {v6, v9}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 60
    move-object v9, v6

    .line 62
    .end local v6           #loc:Lgnu/mapping/Location;
    .end local v9           #value:Ljava/lang/Object;
    :cond_4
    aput-object v9, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 68
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v4           #init:Lgnu/expr/Expression;
    .end local v8           #type:Lgnu/bytecode/Type;
    :catchall_0
    move-exception v10

    aput-object v12, v2, v5

    throw v10

    .line 64
    .restart local v0       #decl:Lgnu/expr/Declaration;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    aput-object v12, v2, v5

    .line 70
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v8, 0x0

    .line 144
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 158
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 159
    .local v1, decl:Lgnu/expr/Declaration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 162
    iget-object v7, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v3, v7, v2

    .line 163
    .local v3, init:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v4

    .line 164
    .local v4, needsInit:Z
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 166
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v7, :cond_3

    .line 168
    :cond_1
    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 182
    .local v5, varTarget:Lgnu/expr/Target;
    :cond_2
    :goto_1
    invoke-virtual {v3, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 171
    .end local v5           #varTarget:Lgnu/expr/Target;
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 172
    .local v6, varType:Lgnu/bytecode/Type;
    invoke-static {v6}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v5

    .line 173
    .restart local v5       #varTarget:Lgnu/expr/Target;
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v7, :cond_2

    .line 176
    instance-of v7, v6, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_4

    .line 177
    new-instance v3, Lgnu/expr/QuoteExp;

    .end local v3           #init:Lgnu/expr/Expression;
    new-instance v7, Ljava/lang/Byte;

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v3, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v3       #init:Lgnu/expr/Expression;
    goto :goto_1

    .line 178
    :cond_4
    if-eqz v6, :cond_2

    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v6, v7, :cond_2

    .line 179
    sget-object v3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_1

    .line 185
    .end local v3           #init:Lgnu/expr/Expression;
    .end local v4           #needsInit:Z
    .end local v5           #varTarget:Lgnu/expr/Target;
    .end local v6           #varType:Lgnu/bytecode/Type;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/LetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 188
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    invoke-virtual {p0, p1, v8, v7}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 190
    iget-object v7, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v7, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 191
    invoke-virtual {p0, v0}, Lgnu/expr/LetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 192
    return-void
.end method

.method public getBody()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 226
    const-string v0, "(Let"

    const-string v1, ")"

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/LetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "out"
    .parameter "startTag"
    .parameter "endTag"

    .prologue
    const/4 v5, 0x0

    const-string v6, "("

    const-string v4, ")"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lgnu/expr/LetExp;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v2, p3, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 233
    invoke-virtual {p0, p1}, Lgnu/expr/LetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 234
    const-string v2, "("

    const-string v2, ")"

    invoke-virtual {p1, v6, v5, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 236
    .local v0, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .line 238
    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    .line 240
    if-lez v1, :cond_0

    .line 241
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 242
    :cond_0
    const-string v2, "("

    const-string v2, ")"

    invoke-virtual {p1, v6, v5, v4}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 244
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 247
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 248
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 253
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 254
    const-string v2, "<missing init>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 262
    :cond_1
    const-string v2, ")"

    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    .line 256
    const-string v2, "<null>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_1

    .line 264
    :cond_4
    const-string v2, ")"

    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 266
    iget-object v2, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    if-nez v2, :cond_5

    .line 267
    const-string v2, "<null body>"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 270
    :goto_2
    invoke-virtual {p1, p3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 271
    return-void

    .line 269
    :cond_5
    iget-object v2, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_2
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 18
    iput-object p1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V
    .locals 4
    .parameter "comp"
    .parameter "i"
    .parameter "decl"

    .prologue
    .line 118
    if-eqz p3, :cond_1

    .line 120
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 121
    invoke-virtual {p3}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 126
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v2, v2, p2

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v3, :cond_2

    .line 128
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, name:Ljava/lang/Object;
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 130
    invoke-static {v1}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 137
    .end local v0           #code:Lgnu/bytecode/CodeAttr;
    .end local v1           #name:Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 140
    :cond_1
    return-void

    .line 134
    .restart local v0       #code:Lgnu/bytecode/CodeAttr;
    :cond_2
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    goto :goto_0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 201
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 1
    .parameter "walker"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lgnu/expr/LetExp;->walkInitializers(Lgnu/expr/ExpWalker;)V

    .line 220
    iget-object v0, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 222
    :cond_0
    return-void
.end method

.method public walkInitializers(Lgnu/expr/ExpWalker;)V
    .locals 5
    .parameter "walker"

    .prologue
    .line 206
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 207
    .local v0, decl:Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 209
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v3, v4, v1

    .line 210
    .local v3, init0:Lgnu/expr/Expression;
    invoke-virtual {p1, v3}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    .line 211
    .local v2, init:Lgnu/expr/Expression;
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v2, v4, v1

    .line 212
    iget-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-ne v4, v3, :cond_0

    .line 213
    iput-object v2, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 215
    .end local v2           #init:Lgnu/expr/Expression;
    .end local v3           #init0:Lgnu/expr/Expression;
    :cond_1
    return-void
.end method
