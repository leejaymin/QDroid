.class public Lorg/mozilla/javascript/ast/Scope;
.super Lorg/mozilla/javascript/ast/Jump;
.source "Scope.java"


# instance fields
.field private childScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Scope;",
            ">;"
        }
    .end annotation
.end field

.field protected parentScope:Lorg/mozilla/javascript/ast/Scope;

.field protected symbolTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field protected top:Lorg/mozilla/javascript/ast/ScriptNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 67
    const/16 v0, 0x81

    iput v0, p0, Lorg/mozilla/javascript/ast/Scope;->type:I

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Jump;-><init>()V

    .line 67
    const/16 v0, 0x81

    iput v0, p0, Lorg/mozilla/javascript/ast/Scope;->type:I

    .line 74
    iput p1, p0, Lorg/mozilla/javascript/ast/Scope;->position:I

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pos"
    .parameter "len"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 79
    iput p2, p0, Lorg/mozilla/javascript/ast/Scope;->length:I

    .line 80
    return-void
.end method

.method private ensureSymbolTable()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    return-object v0
.end method

.method public static joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V
    .locals 7
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;->ensureSymbolTable()Ljava/util/Map;

    move-result-object v3

    .line 182
    .local v3, src:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    invoke-direct {p1}, Lorg/mozilla/javascript/ast/Scope;->ensureSymbolTable()Ljava/util/Map;

    move-result-object v0

    .line 183
    .local v0, dst:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 184
    invoke-static {}, Lorg/mozilla/javascript/ast/Scope;->codeBug()Ljava/lang/RuntimeException;

    .line 186
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 187
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/ast/Symbol;

    .line 188
    .local v4, sym:Lorg/mozilla/javascript/ast/Symbol;
    invoke-virtual {v4, p1}, Lorg/mozilla/javascript/ast/Symbol;->setContainingTable(Lorg/mozilla/javascript/ast/Scope;)V

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    .end local v4           #sym:Lorg/mozilla/javascript/ast/Symbol;
    :cond_1
    return-void
.end method

.method public static splitScope(Lorg/mozilla/javascript/ast/Scope;)Lorg/mozilla/javascript/ast/Scope;
    .locals 2
    .parameter "scope"

    .prologue
    .line 166
    new-instance v0, Lorg/mozilla/javascript/ast/Scope;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Scope;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 167
    .local v0, result:Lorg/mozilla/javascript/ast/Scope;
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    .line 168
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    .line 169
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->parent:Lorg/mozilla/javascript/ast/AstNode;

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Scope;->parent:Lorg/mozilla/javascript/ast/AstNode;

    .line 170
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Scope;->getParentScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 171
    invoke-virtual {v0, v0}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 172
    iput-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->parent:Lorg/mozilla/javascript/ast/AstNode;

    .line 173
    iget-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v1, v0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 174
    return-object v0
.end method


# virtual methods
.method public addChildScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Scope;->setParentScope(Lorg/mozilla/javascript/ast/Scope;)V

    .line 121
    return-void
.end method

.method public clearParentScope()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->parentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 99
    return-void
.end method

.method public getChildScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    return-object v0
.end method

.method public getDefiningScope(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Scope;
    .locals 3
    .parameter "name"

    .prologue
    .line 200
    move-object v0, p0

    .local v0, s:Lorg/mozilla/javascript/ast/Scope;
    :goto_0
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Scope;->getSymbolTable()Ljava/util/Map;

    move-result-object v1

    .line 202
    .local v1, symbolTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 206
    .end local v1           #symbolTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    :goto_1
    return-object v2

    .line 200
    .restart local v1       #symbolTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    :cond_0
    iget-object v0, v0, Lorg/mozilla/javascript/ast/Scope;->parentScope:Lorg/mozilla/javascript/ast/Scope;

    goto :goto_0

    .line 206
    .end local v1           #symbolTable:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getParentScope()Lorg/mozilla/javascript/ast/Scope;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->parentScope:Lorg/mozilla/javascript/ast/Scope;

    return-object v0
.end method

.method public getStatements()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v2, stmts:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/AstNode;>;"
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Scope;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    .line 262
    .local v1, n:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v1, :cond_0

    .line 263
    move-object v0, v1

    check-cast v0, Lorg/mozilla/javascript/ast/AstNode;

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_0

    .line 266
    :cond_0
    return-object v2
.end method

.method public getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;
    .locals 1
    .parameter "name"

    .prologue
    .line 215
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/Symbol;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSymbolTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    return-object v0
.end method

.method public getTop()Lorg/mozilla/javascript/ast/ScriptNode;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    return-object v0
.end method

.method public putSymbol(Lorg/mozilla/javascript/ast/Symbol;)V
    .locals 2
    .parameter "symbol"

    .prologue
    .line 222
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null symbol name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;->ensureSymbolTable()Ljava/util/Map;

    .line 225
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ast/Symbol;->setContainingTable(Lorg/mozilla/javascript/ast/Scope;)V

    .line 227
    iget-object v0, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->addSymbol(Lorg/mozilla/javascript/ast/Symbol;)V

    .line 228
    return-void
.end method

.method public replaceWith(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 3
    .parameter "newScope"

    .prologue
    .line 133
    iget-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ast/Scope;

    .line 135
    .local v1, kid:Lorg/mozilla/javascript/ast/Scope;
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/ast/Scope;->addChildScope(Lorg/mozilla/javascript/ast/Scope;)V

    goto :goto_0

    .line 137
    .end local v1           #kid:Lorg/mozilla/javascript/ast/Scope;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 138
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->childScopes:Ljava/util/List;

    .line 140
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ast/Scope;->joinScopes(Lorg/mozilla/javascript/ast/Scope;Lorg/mozilla/javascript/ast/Scope;)V

    .line 143
    :cond_2
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/ast/Scope;)V
    .locals 2
    .parameter "parentScope"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Scope;->parentScope:Lorg/mozilla/javascript/ast/Scope;

    .line 91
    if-nez p1, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 92
    return-void

    .line 91
    :cond_0
    iget-object v1, p1, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0
.end method

.method public setSymbolTable(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, table:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/ast/Symbol;>;"
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Scope;->symbolTable:Ljava/util/Map;

    .line 243
    return-void
.end method

.method public setTop(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 0
    .parameter "top"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/mozilla/javascript/ast/Scope;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 157
    return-void
.end method

.method public toSource(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Scope;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v3, "{\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Scope;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 275
    .local v1, kid:Lorg/mozilla/javascript/Node;
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .end local v1           #kid:Lorg/mozilla/javascript/Node;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lorg/mozilla/javascript/ast/AstNode;->toSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/Scope;->makeIndent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 284
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/Scope;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 286
    .local v1, kid:Lorg/mozilla/javascript/Node;
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .end local v1           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 289
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
