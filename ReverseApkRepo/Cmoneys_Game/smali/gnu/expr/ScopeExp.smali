.class public abstract Lgnu/expr/ScopeExp;
.super Lgnu/expr/Expression;
.source "ScopeExp.java"


# static fields
.field static counter:I


# instance fields
.field decls:Lgnu/expr/Declaration;

.field protected frameSize:I

.field public id:I

.field last:Lgnu/expr/Declaration;

.field public outer:Lgnu/expr/ScopeExp;

.field private scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 293
    sget v0, Lgnu/expr/ScopeExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ScopeExp;->counter:I

    iput v0, p0, Lgnu/expr/ScopeExp;->id:I

    .line 113
    return-void
.end method

.method public static duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "oldDecl"
    .parameter "newDecl"
    .parameter "comp"

    .prologue
    const/16 v2, 0x65

    .line 207
    const-string v0, "duplicate declaration of \'"

    const-string v1, "\'"

    invoke-virtual {p2, v2, p1, v0, v1}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "(this is the previous declaration of \'"

    const-string v1, "\')"

    invoke-virtual {p2, v2, p0, v0, v1}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static nesting(Lgnu/expr/ScopeExp;)I
    .locals 1
    .parameter "sc"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, n:I
    :goto_0
    if-eqz p0, :cond_0

    .line 264
    iget-object p0, p0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return v0
.end method


# virtual methods
.method public add(Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "decl"

    .prologue
    .line 40
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 44
    :goto_0
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 45
    iput-object p0, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 46
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    iput-object p1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "prev"
    .parameter "decl"

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 54
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 55
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 62
    :goto_0
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p1, :cond_0

    .line 63
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 64
    :cond_0
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 65
    return-void

    .line 59
    :cond_1
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 60
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public final addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"

    .prologue
    .line 217
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 218
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 219
    return-object v0
.end method

.method public final addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    .line 229
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, p2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 230
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 231
    return-object v0
.end method

.method public final addDeclaration(Lgnu/expr/Declaration;)V
    .locals 0
    .parameter "decl"

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 240
    return-void
.end method

.method public countDecls()I
    .locals 2

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, n:I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 245
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_0
    return v1
.end method

.method public countNonDynamicDecls()I
    .locals 3

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, n:I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_1

    .line 254
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 253
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_1
    return v1
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .line 123
    .local v0, exp:Lgnu/expr/ScopeExp;
    :goto_0
    if-nez v0, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 126
    .end local v0           #exp:Lgnu/expr/ScopeExp;
    :goto_1
    return-object v1

    .line 125
    .restart local v0       #exp:Lgnu/expr/ScopeExp;
    :cond_0
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lgnu/expr/LambdaExp;

    .end local v0           #exp:Lgnu/expr/ScopeExp;
    move-object v1, v0

    goto :goto_1

    .line 121
    .restart local v0       #exp:Lgnu/expr/ScopeExp;
    :cond_1
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .line 135
    .local v0, exp:Lgnu/expr/ScopeExp;
    :goto_0
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 138
    .end local v0           #exp:Lgnu/expr/ScopeExp;
    :goto_1
    return-object v1

    .line 137
    .restart local v0       #exp:Lgnu/expr/ScopeExp;
    :cond_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 138
    check-cast v0, Lgnu/expr/ModuleExp;

    .end local v0           #exp:Lgnu/expr/ScopeExp;
    move-object v1, v0

    goto :goto_1

    .line 133
    .restart local v0       #exp:Lgnu/expr/ScopeExp;
    :cond_1
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;
    .locals 4
    .parameter "name"
    .parameter "severity"
    .parameter "parser"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 189
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 191
    :cond_0
    iget v2, v0, Lgnu/expr/Declaration;->flags:I

    const v3, 0x10200

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 193
    iget v2, v0, Lgnu/expr/Declaration;->flags:I

    const v3, -0x10201

    and-int/2addr v2, v3

    iput v2, v0, Lgnu/expr/Declaration;->flags:I

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 197
    .local v1, newDecl:Lgnu/expr/Declaration;
    invoke-static {v0, v1, p3}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 198
    move-object v0, v1

    goto :goto_0
.end method

.method public getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 177
    .local v0, decl:Lgnu/expr/Declaration;
    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 180
    iget v1, v0, Lgnu/expr/Declaration;->flags:I

    const v2, 0x10200

    or-int/2addr v1, v2

    iput v1, v0, Lgnu/expr/Declaration;->flags:I

    .line 182
    :cond_0
    return-object v0
.end method

.method public getVarScope()Lgnu/bytecode/Scope;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 21
    .local v0, sc:Lgnu/bytecode/Scope;
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lgnu/bytecode/Scope;

    .end local v0           #sc:Lgnu/bytecode/Scope;
    invoke-direct {v0}, Lgnu/bytecode/Scope;-><init>()V

    .restart local v0       #sc:Lgnu/bytecode/Scope;
    iput-object v0, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 23
    :cond_0
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 2
    .parameter "sym"

    .prologue
    .line 149
    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 152
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_1

    .line 154
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 158
    .end local v0           #decl:Lgnu/expr/Declaration;
    :goto_1
    return-object v1

    .line 152
    .restart local v0       #decl:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 158
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;
    .locals 2
    .parameter "sym"
    .parameter "language"
    .parameter "namespace"

    .prologue
    .line 163
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 164
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, p3}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 170
    :goto_1
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public popScope(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 32
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 35
    iput-object v1, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 36
    return-void
.end method

.method public remove(Lgnu/expr/Declaration;)V
    .locals 2
    .parameter "decl"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, prev:Lgnu/expr/Declaration;
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, cur:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 94
    if-ne v0, p1, :cond_1

    .line 96
    invoke-virtual {p0, v1, p1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 101
    :cond_0
    return-void

    .line 99
    :cond_1
    move-object v1, v0

    .line 92
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "prev"
    .parameter "decl"

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 106
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 109
    :goto_0
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p2, :cond_0

    .line 110
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 111
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method public replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 2
    .parameter "prev"
    .parameter "newDecl"

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 74
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 75
    .local v0, oldDecl:Lgnu/expr/Declaration;
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 82
    :goto_0
    iget-object v1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v1, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 83
    iget-object v1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v1, v0, :cond_0

    .line 84
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 85
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 86
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 87
    return-void

    .line 79
    .end local v0           #oldDecl:Lgnu/expr/Declaration;
    :cond_1
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 80
    .restart local v0       #oldDecl:Lgnu/expr/Declaration;
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    goto :goto_0
.end method

.method protected setIndexes()V
    .locals 3

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, i:I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iput v2, v0, Lgnu/expr/Declaration;->evalIndex:I

    .line 277
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 281
    :cond_0
    iput v2, p0, Lgnu/expr/ScopeExp;->frameSize:I

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/ScopeExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 286
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
