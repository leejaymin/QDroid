.class public Lorg/mozilla/javascript/ast/ScriptNode;
.super Lorg/mozilla/javascript/ast/Scope;
.source "ScriptNode.java"


# instance fields
.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation
.end field

.field private compilerData:Ljava/lang/Object;

.field private encodedSource:Ljava/lang/String;

.field private encodedSourceEnd:I

.field private encodedSourceStart:I

.field private endLineno:I

.field private functions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation
.end field

.field private isConsts:[Z

.field private paramCount:I

.field private regexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/RegExpLiteral;",
            ">;"
        }
    .end annotation
.end field

.field private sourceName:Ljava/lang/String;

.field private symbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private tempNumber:I

.field private variableNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Lorg/mozilla/javascript/ast/Scope;-><init>()V

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 61
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    .line 68
    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 73
    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    .line 77
    iput-object p0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 78
    const/16 v0, 0x88

    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->type:I

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/ast/Scope;-><init>(I)V

    .line 57
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 58
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 61
    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    .line 68
    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 73
    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    .line 77
    iput-object p0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->top:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 78
    const/16 v0, 0x88

    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->type:I

    .line 86
    return-void
.end method


# virtual methods
.method public addFunction(Lorg/mozilla/javascript/ast/FunctionNode;)I
    .locals 2
    .parameter "fnNode"

    .prologue
    .line 214
    if-nez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public addRegExp(Lorg/mozilla/javascript/ast/RegExpLiteral;)V
    .locals 3
    .parameter "re"

    .prologue
    .line 237
    if-nez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    .line 240
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/ast/RegExpLiteral;->putIntProp(II)V

    .line 242
    return-void
.end method

.method addSymbol(Lorg/mozilla/javascript/ast/Symbol;)V
    .locals 2
    .parameter "symbol"

    .prologue
    .line 278
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 279
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_1

    .line 280
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public flattenSymbolTable(Z)V
    .locals 6
    .parameter "flattenAllTables"

    .prologue
    .line 302
    if-nez p1, :cond_2

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v1, newSymbols:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/Symbol;>;"
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbolTable:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 309
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Symbol;

    .line 310
    .local v2, symbol:Lorg/mozilla/javascript/ast/Symbol;
    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Symbol;->getContainingTable()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 311
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0           #i:I
    .end local v2           #symbol:Lorg/mozilla/javascript/ast/Symbol;
    :cond_1
    iput-object v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    .line 317
    .end local v1           #newSymbols:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/Symbol;>;"
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    .line 318
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    .line 319
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 320
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ast/Symbol;

    .line 321
    .restart local v2       #symbol:Lorg/mozilla/javascript/ast/Symbol;
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 322
    iget-object v3, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/Symbol;->getDeclType()I

    move-result v4

    const/16 v5, 0x9a

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    aput-boolean v4, v3, v0

    .line 323
    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/Symbol;->setIndex(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 322
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 325
    .end local v2           #symbol:Lorg/mozilla/javascript/ast/Symbol;
    :cond_4
    return-void
.end method

.method public getBaseLineno()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->lineno:I

    return v0
.end method

.method public getCompilerData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSource:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedSourceEnd()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    return v0
.end method

.method public getEncodedSourceStart()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    return v0
.end method

.method public getEndLineno()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    return v0
.end method

.method public getFunctionCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;
    .locals 1
    .parameter "i"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    return-object p0
.end method

.method public getFunctions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/FunctionNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->functions:Ljava/util/List;

    goto :goto_0
.end method

.method public getIndexForNameNode(Lorg/mozilla/javascript/Node;)I
    .locals 3
    .parameter "nameNode"

    .prologue
    .line 245
    iget-object v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 246
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getScope()Lorg/mozilla/javascript/ast/Scope;

    move-result-object v0

    .line 247
    .local v0, node:Lorg/mozilla/javascript/ast/Scope;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    .line 250
    .end local p1
    .local v1, symbol:Lorg/mozilla/javascript/ast/Symbol;
    :goto_0
    if-nez v1, :cond_2

    const/4 v2, -0x1

    :goto_1
    return v2

    .line 247
    .end local v1           #symbol:Lorg/mozilla/javascript/ast/Symbol;
    .restart local p1
    :cond_1
    check-cast p1, Lorg/mozilla/javascript/ast/Name;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ast/Scope;->getSymbol(Ljava/lang/String;)Lorg/mozilla/javascript/ast/Symbol;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 250
    .restart local v1       #symbol:Lorg/mozilla/javascript/ast/Symbol;
    :cond_2
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/Symbol;->getIndex()I

    move-result v2

    goto :goto_1
.end method

.method public getNextTempName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->tempNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamAndVarConst()[Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->isConsts:[Z

    return-object v0
.end method

.method public getParamAndVarCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParamAndVarNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getParamCount()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->paramCount:I

    return v0
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 254
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->variableNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRegexpCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRegexpFlags(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 230
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getFlags()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegexpString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 226
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->regexps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/ast/RegExpLiteral;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/RegExpLiteral;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    return-object v0
.end method

.method public setBaseLineno(I)V
    .locals 1
    .parameter "lineno"

    .prologue
    .line 182
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->lineno:I

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 183
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->lineno:I

    .line 184
    return-void
.end method

.method public setCompilerData(Ljava/lang/Object;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->assertNotNull(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->compilerData:Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public setEncodedSource(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedSource"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSource:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setEncodedSourceBounds(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 141
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 142
    iput p2, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 143
    return-void
.end method

.method public setEncodedSourceEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 133
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceEnd:I

    .line 134
    return-void
.end method

.method public setEncodedSourceStart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 117
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->encodedSourceStart:I

    .line 118
    return-void
.end method

.method public setEndLineno(I)V
    .locals 1
    .parameter "lineno"

    .prologue
    .line 192
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ast/ScriptNode;->codeBug()Ljava/lang/RuntimeException;

    .line 193
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->endLineno:I

    .line 194
    return-void
.end method

.method public setSourceName(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceName"

    .prologue
    .line 101
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->sourceName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSymbols(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/javascript/ast/Symbol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, symbols:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ast/Symbol;>;"
    iput-object p1, p0, Lorg/mozilla/javascript/ast/ScriptNode;->symbols:Ljava/util/List;

    .line 291
    return-void
.end method

.method public visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 345
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ast/NodeVisitor;->visit(Lorg/mozilla/javascript/ast/AstNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Node;

    .line 347
    .local v1, kid:Lorg/mozilla/javascript/Node;
    check-cast v1, Lorg/mozilla/javascript/ast/AstNode;

    .end local v1           #kid:Lorg/mozilla/javascript/Node;
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ast/AstNode;->visit(Lorg/mozilla/javascript/ast/NodeVisitor;)V

    goto :goto_0

    .line 350
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
