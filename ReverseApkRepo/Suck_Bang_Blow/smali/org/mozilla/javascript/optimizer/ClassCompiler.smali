.class public Lorg/mozilla/javascript/optimizer/ClassCompiler;
.super Ljava/lang/Object;
.source "ClassCompiler.java"


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private mainMethodClassName:Ljava/lang/String;

.field private targetExtends:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private targetImplements:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/CompilerEnvirons;)V
    .locals 1
    .parameter "compilerEnv"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 63
    const-string v0, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public compileToClassFiles(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/Object;
    .locals 24
    .parameter "source"
    .parameter "sourceLocation"
    .parameter "lineno"
    .parameter "mainClassName"

    .prologue
    .line 165
    new-instance v21, Lorg/mozilla/javascript/Parser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v6, v0

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    .line 166
    .local v21, p:Lorg/mozilla/javascript/Parser;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object v11

    .line 167
    .local v11, ast:Lorg/mozilla/javascript/ast/AstRoot;
    new-instance v16, Lorg/mozilla/javascript/IRFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;)V

    .line 168
    .local v16, irf:Lorg/mozilla/javascript/IRFactory;
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IRFactory;->transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object v8

    .line 171
    .local v8, tree:Lorg/mozilla/javascript/ast/ScriptNode;
    const/16 v16, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    const/16 v21, 0x0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetExtends()Ljava/lang/Class;

    move-result-object v23

    .line 176
    .local v23, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->getTargetImplements()[Ljava/lang/Class;

    move-result-object v15

    .line 178
    .local v15, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez v15, :cond_0

    if-nez v23, :cond_0

    const/4 v6, 0x1

    move/from16 v17, v6

    .line 179
    .local v17, isPrimary:Z
    :goto_0
    if-eqz v17, :cond_1

    .line 180
    move-object/from16 v7, p4

    .line 185
    .local v7, scriptClassName:Ljava/lang/String;
    :goto_1
    new-instance v5, Lorg/mozilla/javascript/optimizer/Codegen;

    invoke-direct {v5}, Lorg/mozilla/javascript/optimizer/Codegen;-><init>()V

    .line 186
    .local v5, codegen:Lorg/mozilla/javascript/optimizer/Codegen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/optimizer/Codegen;->setMainMethodClass(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object v6, v0

    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object v22

    .line 192
    .local v22, scriptClassBytes:[B
    if-eqz v17, :cond_2

    .line 193
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .end local v8           #tree:Lorg/mozilla/javascript/ast/ScriptNode;
    const/4 v7, 0x1

    aput-object v22, v6, v7

    .line 212
    .end local v7           #scriptClassName:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 178
    .end local v5           #codegen:Lorg/mozilla/javascript/optimizer/Codegen;
    .end local v17           #isPrimary:Z
    .end local v22           #scriptClassBytes:[B
    .restart local v8       #tree:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_0
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_0

    .line 182
    .restart local v17       #isPrimary:Z
    :cond_1
    const-string v6, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/ClassCompiler;->makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #scriptClassName:Ljava/lang/String;
    goto :goto_1

    .line 195
    .restart local v5       #codegen:Lorg/mozilla/javascript/optimizer/Codegen;
    .restart local v22       #scriptClassBytes:[B
    :cond_2
    invoke-virtual {v8}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v12

    .line 196
    .local v12, functionCount:I
    new-instance v13, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v13, v12}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    .line 197
    .local v13, functionNames:Lorg/mozilla/javascript/ObjToIntMap;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-eq v14, v12, :cond_4

    .line 198
    invoke-virtual {v8, v14}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v20

    .line 199
    .local v20, ofn:Lorg/mozilla/javascript/ast/FunctionNode;
    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v19

    .line 200
    .local v19, name:Ljava/lang/String;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 201
    invoke-virtual/range {v20 .. v20}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v6

    move-object v0, v13

    move-object/from16 v1, v19

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 197
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 204
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #ofn:Lorg/mozilla/javascript/ast/FunctionNode;
    :cond_4
    if-nez v23, :cond_5

    .line 205
    sget-object v23, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    .line 207
    :cond_5
    move-object v0, v13

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object v3, v15

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/JavaAdapter;->createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object v18

    .line 212
    .local v18, mainClassBytes:[B
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p4, v6, v8

    .end local v8           #tree:Lorg/mozilla/javascript/ast/ScriptNode;
    const/4 v8, 0x1

    aput-object v18, v6, v8

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v22, v6, v7

    goto :goto_2
.end method

.method public getCompilerEnv()Lorg/mozilla/javascript/CompilerEnvirons;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    return-object v0
.end method

.method public getMainMethodClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetExtends()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    return-object v0
.end method

.method public getTargetImplements()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Class;

    check-cast p0, [Ljava/lang/Class;

    move-object v0, p0

    goto :goto_0
.end method

.method protected makeAuxiliaryClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mainClassName"
    .parameter "auxMarker"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMainMethodClass(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->mainMethodClassName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTargetExtends(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, extendsClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetExtends:Ljava/lang/Class;

    .line 113
    return-void
.end method

.method public setTargetImplements([Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, implementsClasses:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ClassCompiler;->targetImplements:[Ljava/lang/Class;

    .line 132
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    check-cast v0, [Ljava/lang/Class;

    goto :goto_0
.end method
