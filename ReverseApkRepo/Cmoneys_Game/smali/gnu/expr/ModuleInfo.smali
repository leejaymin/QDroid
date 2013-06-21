.class public Lgnu/expr/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# static fields
.field static mapClassToInfo:Lgnu/expr/ClassToInfoMap;


# instance fields
.field public className:Ljava/lang/String;

.field comp:Lgnu/expr/Compilation;

.field dependencies:[Lgnu/expr/ModuleInfo;

.field exp:Lgnu/expr/ModuleExp;

.field public lastCheckedTime:J

.field public lastModifiedTime:J

.field moduleClass:Ljava/lang/Class;

.field numDependencies:I

.field sourceAbsPath:Lgnu/text/Path;

.field sourceAbsPathname:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lgnu/expr/ClassToInfoMap;

    invoke-direct {v0}, Lgnu/expr/ClassToInfoMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ClassToInfoMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absPath(Ljava/lang/String;)Lgnu/text/Path;
    .locals 1
    .parameter "path"

    .prologue
    .line 51
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    .locals 2
    .parameter "type"

    .prologue
    .line 219
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 229
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .locals 1
    .parameter "instance"

    .prologue
    .line 214
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V
    .locals 10
    .parameter "mod"
    .parameter "fdecl"

    .prologue
    const/4 v9, 0x1

    .line 252
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v3

    .line 253
    .local v3, fvalue:Ljava/lang/Object;
    instance-of v8, v3, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v8, :cond_2

    .line 255
    move-object v0, v3

    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    move-object v1, v0

    .line 256
    .local v1, floc:Lgnu/kawa/reflect/FieldLocation;
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v4

    .line 257
    .local v4, vdecl:Lgnu/expr/Declaration;
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 258
    .local v2, fref:Lgnu/expr/ReferenceExp;
    invoke-virtual {p1, v9}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 259
    invoke-virtual {v2, v9}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 260
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 261
    invoke-virtual {p1, v2}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 262
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    invoke-virtual {p1, v9}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 264
    :cond_0
    const v8, 0x8000

    invoke-virtual {v4, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 265
    invoke-virtual {p1}, Lgnu/expr/Declaration;->setSyntax()V

    .line 266
    :cond_1
    const/16 v8, 0x800

    invoke-virtual {p1, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 268
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 269
    .local v6, vtype:Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, vname:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 271
    .local v7, xdecl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v7, :cond_2

    .line 273
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x4000

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 276
    invoke-virtual {v2, v7}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 282
    .end local v1           #floc:Lgnu/kawa/reflect/FieldLocation;
    .end local v2           #fref:Lgnu/expr/ReferenceExp;
    .end local v4           #vdecl:Lgnu/expr/Declaration;
    .end local v5           #vname:Ljava/lang/String;
    .end local v6           #vtype:Lgnu/bytecode/ClassType;
    .end local v7           #xdecl:Lgnu/expr/Declaration;
    :cond_2
    return-void

    .line 271
    .restart local v1       #floc:Lgnu/kawa/reflect/FieldLocation;
    .restart local v2       #fref:Lgnu/expr/ReferenceExp;
    .restart local v4       #vdecl:Lgnu/expr/Declaration;
    .restart local v5       #vname:Ljava/lang/String;
    .restart local v6       #vtype:Lgnu/bytecode/ClassType;
    .restart local v7       #xdecl:Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_0
.end method

.method public static register(Ljava/lang/Object;)V
    .locals 1
    .parameter "instance"

    .prologue
    .line 234
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 235
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(Lgnu/expr/ModuleInfo;)V
    .locals 5
    .parameter "dep"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    if-nez v1, :cond_1

    .line 97
    const/16 v1, 0x8

    new-array v1, v1, [Lgnu/expr/ModuleInfo;

    iput-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    aput-object p1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 98
    :cond_1
    :try_start_1
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    iget-object v2, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 100
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/expr/ModuleInfo;

    .line 101
    .local v0, deps:[Lgnu/expr/ModuleInfo;
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v0           #deps:[Lgnu/expr/ModuleInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkCurrent(Lgnu/expr/ModuleManager;J)Z
    .locals 19
    .parameter "manager"
    .parameter "now"

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    move-object v15, v0

    if-nez v15, :cond_0

    .line 355
    const/4 v15, 0x1

    .line 414
    :goto_0
    return v15

    .line 356
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v15, v0

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    move v8, v15

    .line 357
    .local v8, hasClass:Z
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    move-wide v15, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    cmp-long v15, v15, p2

    if-ltz v15, :cond_4

    .line 358
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    move-object v15, v0

    if-eqz v15, :cond_3

    :cond_1
    const/4 v15, 0x1

    goto :goto_0

    .line 356
    .end local v8           #hasClass:Z
    :cond_2
    const/4 v15, 0x0

    move v8, v15

    goto :goto_1

    .line 358
    .restart local v8       #hasClass:Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 359
    :cond_4
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    move-object v15, v0

    invoke-virtual {v15}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v10

    .line 361
    .local v10, lastModifiedTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    move-wide v12, v0

    .line 362
    .local v12, oldModifiedTime:J
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 363
    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_5

    .line 367
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_5
    const-wide/16 v15, 0x0

    cmp-long v15, v12, v15

    if-nez v15, :cond_8

    if-eqz v8, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v4, v0

    .line 377
    .local v4, classFilename:Ljava/lang/String;
    const/16 v15, 0x2e

    invoke-virtual {v4, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 378
    .local v6, dot:I
    if-ltz v6, :cond_6

    .line 379
    add-int/lit8 v15, v6, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".class"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v15, v0

    invoke-virtual {v15, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v14

    .line 382
    .local v14, resource:Ljava/net/URL;
    if-eqz v14, :cond_7

    .line 386
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URLConnection;->getLastModified()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 393
    :cond_7
    :goto_2
    if-nez v14, :cond_8

    .line 397
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 369
    .end local v4           #classFilename:Ljava/lang/String;
    .end local v6           #dot:I
    .end local v14           #resource:Ljava/net/URL;
    :catch_0
    move-exception v15

    move-object v7, v15

    .line 371
    .local v7, ex:Ljava/lang/ClassNotFoundException;
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 388
    .end local v7           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFilename:Ljava/lang/String;
    .restart local v6       #dot:I
    .restart local v14       #resource:Ljava/net/URL;
    :catch_1
    move-exception v15

    move-object v7, v15

    .line 390
    .local v7, ex:Ljava/io/IOException;
    const/4 v14, 0x0

    goto :goto_2

    .line 400
    .end local v4           #classFilename:Ljava/lang/String;
    .end local v6           #dot:I
    .end local v7           #ex:Ljava/io/IOException;
    .end local v14           #resource:Ljava/net/URL;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_9

    cmp-long v15, v10, v12

    if-lez v15, :cond_a

    .line 402
    :cond_9
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 403
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 405
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/ModuleInfo;->numDependencies:I

    move v9, v0

    .local v9, i:I
    :cond_b
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_c

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    move-object v15, v0

    aget-object v5, v15, v9

    .line 408
    .local v5, dep:Lgnu/expr/ModuleInfo;
    move-object v0, v5

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v15

    if-nez v15, :cond_b

    .line 410
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 411
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 414
    .end local v5           #dep:Lgnu/expr/ModuleInfo;
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public clearClass()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 344
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 345
    return-void
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    .line 113
    :goto_0
    return-object v0

    .line 111
    .restart local p0
    :cond_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModuleClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 193
    .local v0, mclass:Ljava/lang/Class;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 197
    .end local v0           #mclass:Ljava/lang/Class;
    .local v1, mclass:Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 195
    .end local v1           #mclass:Ljava/lang/Class;
    .restart local v0       #mclass:Ljava/lang/Class;
    :cond_0
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 196
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    move-object v1, v0

    .line 197
    .end local v0           #mclass:Ljava/lang/Class;
    .restart local v1       #mclass:Ljava/lang/Class;
    goto :goto_0
.end method

.method public getModuleClassRaw()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized getModuleExp()Lgnu/expr/ModuleExp;
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 119
    .local v1, m:Lgnu/expr/ModuleExp;
    if-nez v1, :cond_1

    .line 121
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    monitor-exit p0

    return-object v2

    .line 123
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 124
    .local v0, ctype:Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/expr/ModuleExp;

    .end local v1           #m:Lgnu/expr/ModuleExp;
    invoke-direct {v1}, Lgnu/expr/ModuleExp;-><init>()V

    .line 125
    .restart local v1       #m:Lgnu/expr/ModuleExp;
    iput-object v0, v1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 126
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 127
    iget v2, v1, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v3, 0x4

    or-int/2addr v2, v3

    iput v2, v1, Lgnu/expr/ModuleExp;->flags:I

    .line 128
    iput-object p0, v1, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 129
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    :cond_1
    move-object v2, v1

    .line 131
    goto :goto_0

    .line 118
    .end local v1           #m:Lgnu/expr/ModuleExp;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRunInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .line 245
    .local v1, inst:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 246
    move-object v0, v1

    check-cast v0, Ljava/lang/Runnable;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 247
    :cond_0
    return-object v1
.end method

.method public getSourceAbsPath()Lgnu/text/Path;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    return-object v0
.end method

.method public getSourceAbsPathname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 86
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 91
    :cond_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v0, :cond_0

    const/16 v0, 0xe

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public loadByStages(I)V
    .locals 6
    .parameter "wantedState"

    .prologue
    .line 288
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 289
    .local v3, state:I
    add-int/lit8 v4, v3, 0x1

    if-lt v4, p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v4, 0x2

    sub-int v4, p1, v4

    invoke-virtual {p0, v4}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 292
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 293
    if-ge v3, p1, :cond_0

    .line 295
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 296
    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 297
    .local v2, ndeps:I
    const/4 v1, 0x0

    .local v1, idep:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 299
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v0, v4, v1

    .line 300
    .local v0, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    .end local v0           #dep:Lgnu/expr/ModuleInfo;
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 303
    if-ge v3, p1, :cond_0

    .line 305
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    and-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 306
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->process(I)V

    goto :goto_0
.end method

.method public loadEager(I)Z
    .locals 8
    .parameter "wantedState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v4, :cond_0

    iget-object v4, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v4, v6

    .line 337
    :goto_0
    return v4

    .line 317
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v3

    .line 318
    .local v3, state:I
    if-lt v3, p1, :cond_1

    move v4, v7

    .line 319
    goto :goto_0

    .line 320
    :cond_1
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    move v4, v6

    .line 321
    goto :goto_0

    .line 322
    :cond_2
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lgnu/expr/Compilation;->setState(I)V

    .line 323
    iget v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 324
    .local v2, ndeps:I
    const/4 v1, 0x0

    .local v1, idep:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 326
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v0, v4, v1

    .line 327
    .local v0, dep:Lgnu/expr/ModuleInfo;
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 329
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_3

    .line 330
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    :cond_3
    move v4, v6

    .line 331
    goto :goto_0

    .line 324
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v0           #dep:Lgnu/expr/ModuleInfo;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-ne v4, v5, :cond_6

    .line 335
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 336
    :cond_6
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->process(I)V

    .line 337
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    if-ne v4, p1, :cond_7

    move v4, v7

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_0
.end method

.method public setCompilation(Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 36
    iput-object p0, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 37
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 38
    iget-object v2, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 39
    .local v2, mod:Lgnu/expr/ModuleExp;
    iput-object v2, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 40
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, fileName:Ljava/lang/String;
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 44
    invoke-static {v1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    .line 45
    .local v0, abs:Lgnu/text/Path;
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 47
    .end local v0           #abs:Lgnu/text/Path;
    .end local v1           #fileName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setModuleClass(Ljava/lang/Class;)V
    .locals 1
    .parameter "clas"

    .prologue
    .line 207
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 209
    sget-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ClassToInfoMap;

    invoke-virtual {v0, p1, p0}, Lgnu/expr/ClassToInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public setNamespaceUri(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 28
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setSourceAbsPath(Lgnu/text/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 79
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public declared-synchronized setupModuleExp()Lgnu/expr/ModuleExp;
    .locals 12

    .prologue
    const/high16 v11, 0x4

    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v7

    .line 138
    .local v7, mod:Lgnu/expr/ModuleExp;
    iget v10, v7, Lgnu/expr/ModuleExp;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    .line 186
    :cond_0
    monitor-exit p0

    return-object v7

    .line 140
    :cond_1
    const/4 v10, 0x0

    const/high16 v11, 0x4

    :try_start_1
    invoke-virtual {v7, v10, v11}, Lgnu/expr/ModuleExp;->setFlag(ZI)V

    .line 143
    iget-object v10, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 145
    iget-object v8, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 146
    .local v8, rclass:Ljava/lang/Class;
    invoke-static {v8}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;

    .line 153
    .local v9, type:Lgnu/bytecode/ClassType;
    :goto_0
    const/4 v5, 0x0

    .line 155
    .local v5, instance:Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 156
    .local v6, language:Lgnu/expr/Language;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v3

    .local v3, fld:Lgnu/bytecode/Field;
    move-object v10, v5

    .end local v5           #instance:Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_7

    .line 158
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getFlags()I

    move-result v2

    .line 159
    .local v2, flags:I
    and-int/lit8 v11, v2, 0x1

    if-nez v11, :cond_3

    .line 156
    :goto_2
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v3

    goto :goto_1

    .line 150
    .end local v2           #flags:I
    .end local v3           #fld:Lgnu/bytecode/Field;
    .end local v6           #language:Lgnu/expr/Language;
    .end local v8           #rclass:Ljava/lang/Class;
    .end local v9           #type:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v10, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v10}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 151
    .restart local v9       #type:Lgnu/bytecode/ClassType;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .restart local v8       #rclass:Ljava/lang/Class;
    goto :goto_0

    .line 163
    .restart local v2       #flags:I
    .restart local v3       #fld:Lgnu/bytecode/Field;
    .restart local v6       #language:Lgnu/expr/Language;
    :cond_3
    and-int/lit8 v11, v2, 0x8

    if-nez v11, :cond_4

    if-nez v10, :cond_4

    .line 164
    :try_start_2
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v5

    .restart local v5       #instance:Ljava/lang/Object;
    move-object v10, v5

    .line 165
    .end local v5           #instance:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, fvalue:Ljava/lang/Object;
    invoke-virtual {v6, v7, v4, v3}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 168
    .local v1, fdecl:Lgnu/expr/Declaration;
    and-int/lit8 v11, v2, 0x10

    if-eqz v11, :cond_6

    instance-of v11, v4, Lgnu/mapping/Location;

    if-eqz v11, :cond_5

    instance-of v11, v4, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v11, :cond_6

    .line 171
    :cond_5
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 175
    .end local v1           #fdecl:Lgnu/expr/Declaration;
    .end local v4           #fvalue:Ljava/lang/Object;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 177
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    new-instance v10, Lgnu/mapping/WrappedException;

    invoke-direct {v10, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #flags:I
    .end local v3           #fld:Lgnu/bytecode/Field;
    .end local v6           #language:Lgnu/expr/Language;
    .end local v7           #mod:Lgnu/expr/ModuleExp;
    .end local v8           #rclass:Ljava/lang/Class;
    .end local v9           #type:Lgnu/bytecode/ClassType;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 173
    .restart local v1       #fdecl:Lgnu/expr/Declaration;
    .restart local v2       #flags:I
    .restart local v3       #fld:Lgnu/bytecode/Field;
    .restart local v4       #fvalue:Ljava/lang/Object;
    .restart local v6       #language:Lgnu/expr/Language;
    .restart local v7       #mod:Lgnu/expr/ModuleExp;
    .restart local v8       #rclass:Ljava/lang/Class;
    .restart local v9       #type:Lgnu/bytecode/ClassType;
    :cond_6
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v1, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 181
    .end local v1           #fdecl:Lgnu/expr/Declaration;
    .end local v2           #flags:I
    .end local v4           #fvalue:Ljava/lang/Object;
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 182
    .restart local v1       #fdecl:Lgnu/expr/Declaration;
    :goto_3
    if-eqz v1, :cond_0

    .line 184
    invoke-static {v7, v1}, Lgnu/expr/ModuleInfo;->makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V

    .line 182
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "ModuleInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 431
    :cond_0
    :goto_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 426
    :cond_1
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 428
    const-string v1, "class-name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
