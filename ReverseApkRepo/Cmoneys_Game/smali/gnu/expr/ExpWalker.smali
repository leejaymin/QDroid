.class public Lgnu/expr/ExpWalker;
.super Ljava/lang/Object;
.source "ExpWalker.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field protected currentLambda:Lgnu/expr/LambdaExp;

.field protected exitValue:Ljava/lang/Object;

.field protected messages:Lgnu/text/SourceMessages;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v0, p0, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    .line 130
    iput-object v0, p0, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public error(CLjava/lang/String;)V
    .locals 3
    .parameter "kind"
    .parameter "message"

    .prologue
    .line 191
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ExpWalker;->comp:Lgnu/expr/Compilation;

    const-string v1, "warn-as-error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/16 p1, 0x65

    .line 193
    :cond_0
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/expr/ExpWalker;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public final getCurrentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public getExitValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public noteError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .parameter "message"

    .prologue
    .line 201
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 203
    :cond_0
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setColumn(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 217
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setContext(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 25
    iput-object p1, p0, Lgnu/expr/ExpWalker;->comp:Lgnu/expr/Compilation;

    .line 26
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    .line 27
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 215
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 216
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 221
    iget-object v0, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 222
    return-void
.end method

.method public walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exp"

    .prologue
    .line 36
    invoke-virtual {p1}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    .line 37
    .local v0, line:I
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 39
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, saveFile:Ljava/lang/String;
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v4

    .line 41
    .local v4, saveLine:I
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v2

    .line 42
    .local v2, saveColumn:I
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v7

    invoke-virtual {v5, v6, v0, v7}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 43
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 44
    .local v1, ret:Lgnu/expr/Expression;
    iget-object v5, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v5, v3, v4, v2}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    move-object v5, v1

    .line 47
    .end local v1           #ret:Lgnu/expr/Expression;
    .end local v2           #saveColumn:I
    .end local v3           #saveFile:Ljava/lang/String;
    .end local v4           #saveLine:I
    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0
.end method

.method protected walkApplyExp(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkBeginExp(Lgnu/expr/BeginExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkBlockExp(Lgnu/expr/BlockExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected final walkDeclarationType(Lgnu/expr/Declaration;)V
    .locals 2
    .parameter "decl"

    .prologue
    .line 62
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v0

    .line 63
    .local v0, texp1:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 66
    .local v1, texp2:Lgnu/expr/Expression;
    if-eq v1, v0, :cond_0

    .line 67
    invoke-virtual {p1, v1}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 69
    .end local v1           #texp2:Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method protected final walkDeclarationTypes(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 73
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lgnu/expr/ExpWalker;->walkDeclarationType(Lgnu/expr/Declaration;)V

    .line 74
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public walkDefaultArgs(Lgnu/expr/LambdaExp;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 185
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/ExpWalker;->walkExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    .line 187
    :cond_0
    return-void
.end method

.method protected walkExitExp(Lgnu/expr/ExitExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0
    .parameter "exp"

    .prologue
    .line 19
    invoke-virtual {p1, p0}, Lgnu/expr/Expression;->walkChildren(Lgnu/expr/ExpWalker;)V

    .line 20
    return-object p1
.end method

.method public walkExps([Lgnu/expr/Expression;)[Lgnu/expr/Expression;
    .locals 1
    .parameter "exps"

    .prologue
    .line 138
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ExpWalker;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;
    .locals 10
    .parameter "exps"
    .parameter "n"

    .prologue
    .line 149
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    if-eqz v7, :cond_1

    .line 151
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, saveFile:Ljava/lang/String;
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v6

    .line 153
    .local v6, saveLine:I
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v4

    .line 161
    .local v4, saveColumn:I
    :goto_0
    const/4 v3, 0x0

    .line 162
    .local v3, mustRestore:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p2, :cond_3

    iget-object v7, p0, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v7, :cond_3

    .line 164
    aget-object v0, p1, v1

    .line 165
    .local v0, exp:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v2

    .line 166
    .local v2, line:I
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    if-eqz v7, :cond_2

    if-lez v2, :cond_2

    .line 168
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v9

    invoke-virtual {v7, v8, v2, v9}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 169
    const/4 v3, 0x1

    .line 176
    :cond_0
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, p1, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    .end local v0           #exp:Lgnu/expr/Expression;
    .end local v1           #i:I
    .end local v2           #line:I
    .end local v3           #mustRestore:Z
    .end local v4           #saveColumn:I
    .end local v5           #saveFile:Ljava/lang/String;
    .end local v6           #saveLine:I
    :cond_1
    const/4 v5, 0x0

    .line 158
    .restart local v5       #saveFile:Ljava/lang/String;
    const/4 v6, 0x0

    .line 159
    .restart local v6       #saveLine:I
    const/4 v4, 0x0

    .restart local v4       #saveColumn:I
    goto :goto_0

    .line 171
    .restart local v0       #exp:Lgnu/expr/Expression;
    .restart local v1       #i:I
    .restart local v2       #line:I
    .restart local v3       #mustRestore:Z
    :cond_2
    if-eqz v3, :cond_0

    .line 173
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7, v5, v6, v4}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 174
    const/4 v3, 0x0

    goto :goto_2

    .line 178
    .end local v0           #exp:Lgnu/expr/Expression;
    .end local v2           #line:I
    :cond_3
    if-eqz v3, :cond_4

    .line 179
    iget-object v7, p0, Lgnu/expr/ExpWalker;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v7, v5, v6, v4}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 180
    :cond_4
    return-object p1
.end method

.method protected walkFluidLetExp(Lgnu/expr/FluidLetExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkIfExp(Lgnu/expr/IfExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkLangExp(Lgnu/expr/LangExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkLetExp(Lgnu/expr/LetExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkModuleExp(Lgnu/expr/ModuleExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkObjectExp(Lgnu/expr/ObjectExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkClassExp(Lgnu/expr/ClassExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkQuoteExp(Lgnu/expr/QuoteExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkScopeExp(Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 83
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"

    .prologue
    .line 94
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 95
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_1

    iget-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    iget-object v4, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 96
    .local v2, updateNeeded:Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 99
    .local v1, ret:Lgnu/expr/Expression;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    iput-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 102
    iget-object v3, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_0

    .line 103
    iget-object p0, p1, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .end local p0
    check-cast p0, Lgnu/expr/LambdaExp;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 105
    :cond_0
    return-object v1

    .line 95
    .end local v1           #ret:Lgnu/expr/Expression;
    .end local v2           #updateNeeded:Z
    .restart local p0
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method protected walkSynchronizedExp(Lgnu/expr/SynchronizedExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkThisExp(Lgnu/expr/ThisExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkTryExp(Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 1
    .parameter "exp"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lgnu/expr/ExpWalker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
