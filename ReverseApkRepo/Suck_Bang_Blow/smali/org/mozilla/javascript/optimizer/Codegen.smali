.class public Lorg/mozilla/javascript/optimizer/Codegen;
.super Ljava/lang/Object;
.source "Codegen.java"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# static fields
.field static final DEFAULT_MAIN_METHOD_CLASS:Ljava/lang/String; = "org.mozilla.javascript.optimizer.OptRuntime"

.field static final DIRECT_CALL_PARENT_FIELD:Ljava/lang/String; = "_dcp"

.field static final FUNCTION_CONSTRUCTOR_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

.field static final FUNCTION_INIT_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

.field private static final ID_FIELD_NAME:Ljava/lang/String; = "_id"

.field static final REGEXP_ARRAY_FIELD_NAME:Ljava/lang/String; = "_re"

.field static final REGEXP_ARRAY_FIELD_TYPE:Ljava/lang/String; = "[Ljava/lang/Object;"

.field private static final REGEXP_INIT_METHOD_NAME:Ljava/lang/String; = "_reInit"

.field private static final REGEXP_INIT_METHOD_SIGNATURE:Ljava/lang/String; = "(Lorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Context;)V"

.field private static final SUPER_CLASS_NAME:Ljava/lang/String; = "org.mozilla.javascript.NativeFunction"

.field private static final globalLock:Ljava/lang/Object;

.field private static globalSerialClassCounter:I


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private directCallTargets:Lorg/mozilla/javascript/ObjArray;

.field private itsConstantList:[D

.field private itsConstantListSize:I

.field mainClassName:Ljava/lang/String;

.field mainClassSignature:Ljava/lang/String;

.field private mainMethodClass:Ljava/lang/String;

.field private scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

.field scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1339
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    const-string v0, "org.mozilla.javascript.optimizer.OptRuntime"

    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    return-void
.end method

.method private static addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 4
    .parameter "cfw"

    .prologue
    .line 1213
    const/16 v0, 0xb8

    const-string v1, "org/mozilla/javascript/optimizer/OptRuntime"

    const-string v2, "wrapDouble"

    const-string v3, "(D)Ljava/lang/Double;"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    return-void
.end method

.method static badTree()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 1305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bad tree in codegen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V
    .locals 3
    .parameter "n"
    .parameter "x"

    .prologue
    .line 285
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v1

    .line 287
    .local v1, nestedCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method private defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 12
    .parameter "bytecode"
    .parameter "staticSecurityDomain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 148
    .local v6, nameBytesPair:[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v3, v6, v9

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, className:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v6, v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 153
    .local v2, classBytes:[B
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 155
    .local v7, rhinoLoader:Ljava/lang/ClassLoader;
    invoke-static {v7, p2}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object v5

    .line 159
    .local v5, loader:Lorg/mozilla/javascript/GeneratedClassLoader;
    :try_start_0
    invoke-interface {v5, v3, v2}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v1

    .line 160
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {v5, v1}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    return-object v1

    .line 162
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 163
    .local v8, x:Ljava/lang/SecurityException;
    move-object v4, v8

    .line 167
    .end local v8           #x:Ljava/lang/SecurityException;
    .local v4, e:Ljava/lang/Exception;
    :goto_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed optimizer package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 164
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    move-object v8, v9

    .line 165
    .local v8, x:Ljava/lang/IllegalArgumentException;
    move-object v4, v8

    .restart local v4       #e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 12
    .parameter "cfw"

    .prologue
    const-string v11, "java/lang/Integer"

    .line 1068
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 1069
    .local v0, N:I
    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-void

    .line 1072
    :cond_0
    const-string v8, "<clinit>"

    const-string v9, "()V"

    const/16 v10, 0x18

    invoke-virtual {p1, v8, v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1075
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 1076
    .local v1, array:[D
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-eq v4, v0, :cond_2

    .line 1077
    aget-wide v6, v1, v4

    .line 1078
    .local v6, num:D
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_k"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, constantName:Ljava/lang/String;
    invoke-static {v6, v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, constantType:Ljava/lang/String;
    const/16 v8, 0xa

    invoke-virtual {p1, v2, v3, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1083
    double-to-int v5, v6

    .line 1084
    .local v5, inum:I
    int-to-double v8, v5

    cmpl-double v8, v8, v6

    if-nez v8, :cond_1

    .line 1085
    const/16 v8, 0xbb

    const-string v9, "java/lang/Integer"

    invoke-virtual {p1, v8, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1086
    const/16 v8, 0x59

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1087
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1088
    const/16 v8, 0xb7

    const-string v9, "java/lang/Integer"

    const-string v9, "<init>"

    const-string v10, "(I)V"

    invoke-virtual {p1, v8, v11, v9, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_2
    const/16 v8, 0xb3

    iget-object v9, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1091
    :cond_1
    invoke-virtual {p1, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 1092
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_2

    .line 1098
    .end local v2           #constantName:Ljava/lang/String;
    .end local v3           #constantType:Ljava/lang/String;
    .end local v5           #inum:I
    .end local v6           #num:D
    :cond_2
    const/16 v8, 0xb1

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1099
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    goto :goto_0
.end method

.method private emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 13
    .parameter "cfw"
    .parameter "ofn"

    .prologue
    const/16 v11, 0xb0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "org/mozilla/javascript/Scriptable"

    .line 383
    iget-object v4, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {p1, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 388
    iget-object v4, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v0

    .line 389
    .local v0, argCount:I
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, v4, 0x1

    .line 391
    .local v2, firstLocal:I
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 392
    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 393
    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 394
    const/16 v4, 0xb6

    const-string v5, "org/mozilla/javascript/BaseFunction"

    const-string v6, "createObject"

    const-string v7, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addAStore(I)V

    .line 402
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 403
    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 404
    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 405
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 406
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 407
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 408
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    :cond_0
    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 411
    const/16 v4, 0xb8

    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    iget-object v6, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v1

    .line 416
    .local v1, exitLabel:I
    const/16 v4, 0x59

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 417
    const/16 v4, 0xc1

    const-string v5, "org/mozilla/javascript/Scriptable"

    invoke-virtual {p1, v4, v12}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 418
    const/16 v4, 0x99

    invoke-virtual {p1, v4, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 420
    const/16 v4, 0xc0

    const-string v5, "org/mozilla/javascript/Scriptable"

    invoke-virtual {p1, v4, v12}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 421
    invoke-virtual {p1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 422
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 424
    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 425
    invoke-virtual {p1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 427
    add-int/lit8 v4, v2, 0x1

    int-to-short v4, v4

    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 428
    return-void
.end method

.method private emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 14
    .parameter "cfw"

    .prologue
    .line 1010
    const/4 v9, 0x0

    .line 1011
    .local v9, totalRegCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v10, v10

    if-eq v1, v10, :cond_0

    .line 1012
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v10

    add-int/2addr v9, v10

    .line 1011
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    :cond_0
    if-nez v9, :cond_1

    .line 1064
    :goto_1
    return-void

    .line 1018
    :cond_1
    const-string v10, "_reInit"

    const-string v11, "(Lorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Context;)V"

    const/16 v12, 0x2a

    invoke-virtual {p1, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1021
    const-string v10, "_reInitDone"

    const-string v11, "Z"

    const/16 v12, 0xa

    invoke-virtual {p1, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1024
    const/16 v10, 0xb2

    iget-object v11, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v12, "_reInitDone"

    const-string v13, "Z"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 1026
    .local v0, doInit:I
    const/16 v10, 0x99

    invoke-virtual {p1, v10, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1027
    const/16 v10, 0xb1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1028
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1030
    const/4 v1, 0x0

    :goto_2
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v10, v10

    if-eq v1, v10, :cond_4

    .line 1031
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v3, v10, v1

    .line 1032
    .local v3, n:Lorg/mozilla/javascript/ast/ScriptNode;
    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v8

    .line 1033
    .local v8, regCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-eq v2, v8, :cond_3

    .line 1034
    invoke-virtual {p0, v3, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, reFieldName:Ljava/lang/String;
    const-string v5, "Ljava/lang/Object;"

    .line 1036
    .local v5, reFieldType:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v7

    .line 1037
    .local v7, reString:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, reFlags:Ljava/lang/String;
    const/16 v10, 0xa

    invoke-virtual {p1, v4, v5, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 1041
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1042
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1043
    invoke-virtual {p1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 1044
    if-nez v6, :cond_2

    .line 1045
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1049
    :goto_4
    const/16 v10, 0xb9

    const-string v11, "org/mozilla/javascript/RegExpProxy"

    const-string v12, "compileRegExp"

    const-string v13, "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    const/16 v10, 0xb3

    iget-object v11, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p1, v10, v11, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1047
    :cond_2
    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_4

    .line 1030
    .end local v4           #reFieldName:Ljava/lang/String;
    .end local v5           #reFieldType:Ljava/lang/String;
    .end local v6           #reFlags:Ljava/lang/String;
    .end local v7           #reString:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1060
    .end local v2           #j:I
    .end local v3           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .end local v8           #regCount:I
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1061
    const/16 v10, 0xb3

    iget-object v11, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v12, "_reInitDone"

    const-string v13, "Z"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const/16 v10, 0xb1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1063
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    goto/16 :goto_1
.end method

.method private generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 21
    .parameter "cfw"

    .prologue
    .line 515
    const-string v17, "call"

    const-string v18, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v19, 0x11

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 528
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v10

    .line 529
    .local v10, nonTopCallLabel:I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 530
    const/16 v17, 0xb8

    const-string v18, "org/mozilla/javascript/ScriptRuntime"

    const-string v19, "hasTopCall"

    const-string v20, "(Lorg/mozilla/javascript/Context;)Z"

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/16 v17, 0x9a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 536
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 537
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 538
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 539
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 540
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 541
    const/16 v17, 0xb8

    const-string v18, "org/mozilla/javascript/ScriptRuntime"

    const-string v19, "doTopCall"

    const-string v20, "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/16 v17, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 551
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 554
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 555
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 556
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 557
    const/16 v17, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 558
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move v6, v0

    .line 561
    .local v6, end:I
    const/16 v17, 0x2

    move/from16 v0, v17

    move v1, v6

    if-gt v0, v1, :cond_2

    const/16 v17, 0x1

    move/from16 v7, v17

    .line 563
    .local v7, generateSwitch:Z
    :goto_0
    const/4 v15, 0x0

    .line 564
    .local v15, switchStart:I
    const/4 v14, 0x0

    .line 565
    .local v14, switchStackTop:I
    if-eqz v7, :cond_0

    .line 566
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 567
    const/16 v17, 0xb4

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "_id"

    const-string v20, "I"

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/16 v17, 0x1

    const/16 v18, 0x1

    sub-int v18, v6, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v15

    .line 573
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-eq v8, v6, :cond_5

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v17, v0

    aget-object v9, v17, v8

    .line 575
    .local v9, n:Lorg/mozilla/javascript/ast/ScriptNode;
    if-eqz v7, :cond_1

    .line 576
    if-nez v8, :cond_3

    .line 577
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v14

    .line 584
    :cond_1
    :goto_2
    invoke-virtual {v9}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v17

    const/16 v18, 0x6d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 585
    invoke-static {v9}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v11

    .line 586
    .local v11, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    invoke-virtual {v11}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 587
    move-object v0, v11

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v13

    .line 588
    .local v13, pcount:I
    if-eqz v13, :cond_4

    .line 591
    const/4 v12, 0x0

    .local v12, p:I
    :goto_3
    if-eq v12, v13, :cond_4

    .line 592
    const/16 v17, 0xbe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 593
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 594
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v16

    .line 595
    .local v16, undefArg:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v5

    .line 596
    .local v5, beyond:I
    const/16 v17, 0xa4

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 598
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 599
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 600
    const/16 v17, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 601
    const/16 v17, 0xa7

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 602
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 603
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 604
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 606
    const/16 v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->adjustStackTop(I)V

    .line 607
    const-wide/16 v17, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 609
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 591
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 561
    .end local v5           #beyond:I
    .end local v7           #generateSwitch:Z
    .end local v8           #i:I
    .end local v9           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .end local v11           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .end local v12           #p:I
    .end local v13           #pcount:I
    .end local v14           #switchStackTop:I
    .end local v15           #switchStart:I
    .end local v16           #undefArg:I
    :cond_2
    const/16 v17, 0x0

    move/from16 v7, v17

    goto/16 :goto_0

    .line 580
    .restart local v7       #generateSwitch:Z
    .restart local v8       #i:I
    .restart local v9       #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .restart local v14       #switchStackTop:I
    .restart local v15       #switchStart:I
    :cond_3
    const/16 v17, 0x1

    sub-int v17, v8, v17

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v17

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    goto/16 :goto_2

    .line 614
    :cond_4
    const/16 v17, 0xb8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const/16 v17, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 620
    .end local v9           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_5
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 622
    return-void
.end method

.method private generateCode(Ljava/lang/String;)[B
    .locals 19
    .parameter "encodedSource"

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v16

    const/16 v17, 0x88

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 295
    .local v10, hasScript:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    if-nez v10, :cond_6

    :cond_0
    const/16 v16, 0x1

    move/from16 v9, v16

    .line 297
    .local v9, hasFunctions:Z
    :goto_1
    const/4 v15, 0x0

    .line 298
    .local v15, sourceFile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v15

    .line 302
    :cond_1
    new-instance v6, Lorg/mozilla/classfile/ClassFileWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "org.mozilla.javascript.NativeFunction"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v6, cfw:Lorg/mozilla/classfile/ClassFileWriter;
    const-string v16, "_id"

    const-string v17, "I"

    const/16 v18, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 307
    const-string v16, "_dcp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 309
    const-string v16, "_re"

    const-string v17, "[Ljava/lang/Object;"

    const/16 v18, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 312
    if-eqz v9, :cond_2

    .line 313
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 316
    :cond_2
    if-eqz v10, :cond_3

    .line 317
    const-string v16, "org/mozilla/javascript/Script"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInterface(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 319
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 320
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 323
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCallMethod(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 324
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 326
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    .line 329
    .local v7, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-eq v11, v7, :cond_7

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v16, v0

    aget-object v13, v16, v11

    .line 332
    .local v13, n:Lorg/mozilla/javascript/ast/ScriptNode;
    new-instance v5, Lorg/mozilla/javascript/optimizer/BodyCodegen;

    invoke-direct {v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;-><init>()V

    .line 333
    .local v5, bodygen:Lorg/mozilla/javascript/optimizer/BodyCodegen;
    iput-object v6, v5, Lorg/mozilla/javascript/optimizer/BodyCodegen;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 334
    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->codegen:Lorg/mozilla/javascript/optimizer/Codegen;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v5

    iput-object v0, v1, Lorg/mozilla/javascript/optimizer/BodyCodegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 336
    iput-object v13, v5, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 337
    iput v11, v5, Lorg/mozilla/javascript/optimizer/BodyCodegen;->scriptOrFnIndex:I

    .line 340
    :try_start_0
    invoke-virtual {v5}, Lorg/mozilla/javascript/optimizer/BodyCodegen;->generateBodyCode()V
    :try_end_0
    .catch Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    invoke-virtual {v13}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v16

    const/16 v17, 0x6d

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 346
    invoke-static {v13}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v14

    .line 347
    .local v14, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    .line 348
    invoke-virtual {v14}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 349
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->emitDirectConstructor(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V

    .line 329
    .end local v14           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 294
    .end local v5           #bodygen:Lorg/mozilla/javascript/optimizer/BodyCodegen;
    .end local v6           #cfw:Lorg/mozilla/classfile/ClassFileWriter;
    .end local v7           #count:I
    .end local v9           #hasFunctions:Z
    .end local v10           #hasScript:Z
    .end local v11           #i:I
    .end local v13           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .end local v15           #sourceFile:Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_0

    .line 295
    .restart local v10       #hasScript:Z
    :cond_6
    const/16 v16, 0x0

    move/from16 v9, v16

    goto/16 :goto_1

    .line 341
    .restart local v5       #bodygen:Lorg/mozilla/javascript/optimizer/BodyCodegen;
    .restart local v6       #cfw:Lorg/mozilla/classfile/ClassFileWriter;
    .restart local v7       #count:I
    .restart local v9       #hasFunctions:Z
    .restart local v11       #i:I
    .restart local v13       #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .restart local v15       #sourceFile:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 342
    .local v8, e:Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;
    invoke-virtual {v8}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->reportClassFileFormatException(Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v16

    throw v16

    .line 354
    .end local v5           #bodygen:Lorg/mozilla/javascript/optimizer/BodyCodegen;
    .end local v8           #e:Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;
    .end local v13           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v4

    .line 356
    .local v4, N:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    if-eq v12, v4, :cond_8

    .line 357
    invoke-static {v12}, Lorg/mozilla/javascript/optimizer/Codegen;->getDirectTargetFieldName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    .line 356
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 363
    .end local v4           #N:I
    .end local v12           #j:I
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->emitRegExpInit(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 364
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->emitConstantDudeInitializers(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 366
    invoke-virtual {v6}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v16

    return-object v16
.end method

.method private generateExecute(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 6
    .parameter "cfw"

    .prologue
    const/4 v5, 0x1

    .line 649
    const-string v2, "exec"

    const-string v3, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;"

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 656
    const/4 v0, 0x1

    .line 657
    .local v0, CONTEXT_ARG:I
    const/4 v1, 0x2

    .line 659
    .local v1, SCOPE_ARG:I
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 660
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 661
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 662
    const/16 v2, 0x59

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 663
    invoke-virtual {p1, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 664
    const/16 v2, 0xb6

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "call"

    const-string v5, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/16 v2, 0xb0

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 675
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 676
    return-void
.end method

.method private generateFunctionConstructor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 14
    .parameter "cfw"

    .prologue
    .line 697
    const/4 v2, 0x1

    .line 698
    .local v2, SCOPE_ARG:I
    const/4 v0, 0x2

    .line 699
    .local v0, CONTEXT_ARG:I
    const/4 v1, 0x3

    .line 701
    .local v1, ID_ARG:I
    const-string v10, "<init>"

    const-string v11, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V"

    const/4 v12, 0x1

    invoke-virtual {p1, v10, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 703
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 704
    const/16 v10, 0xb7

    const-string v11, "org.mozilla.javascript.NativeFunction"

    const-string v12, "<init>"

    const-string v13, "()V"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 708
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 709
    const/16 v10, 0xb5

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_id"

    const-string v13, "I"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 712
    const/4 v10, 0x2

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 713
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 715
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v10

    const/16 v11, 0x88

    if-ne v10, v11, :cond_0

    const/4 v10, 0x1

    move v7, v10

    .line 716
    .local v7, start:I
    :goto_0
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v3, v10

    .line 717
    .local v3, end:I
    if-ne v7, v3, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v10

    throw v10

    .line 715
    .end local v3           #end:I
    .end local v7           #start:I
    :cond_0
    const/4 v10, 0x0

    move v7, v10

    goto :goto_0

    .line 718
    .restart local v3       #end:I
    .restart local v7       #start:I
    :cond_1
    const/4 v10, 0x2

    sub-int v11, v3, v7

    if-gt v10, v11, :cond_4

    const/4 v10, 0x1

    move v4, v10

    .line 720
    .local v4, generateSwitch:Z
    :goto_1
    const/4 v9, 0x0

    .line 721
    .local v9, switchStart:I
    const/4 v8, 0x0

    .line 722
    .local v8, switchStackTop:I
    if-eqz v4, :cond_2

    .line 723
    const/4 v10, 0x3

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 726
    add-int/lit8 v10, v7, 0x1

    const/4 v11, 0x1

    sub-int v11, v3, v11

    invoke-virtual {p1, v10, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v9

    .line 729
    :cond_2
    move v5, v7

    .local v5, i:I
    :goto_2
    if-eq v5, v3, :cond_6

    .line 730
    if-eqz v4, :cond_3

    .line 731
    if-ne v5, v7, :cond_5

    .line 732
    invoke-virtual {p1, v9}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 733
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v8

    .line 739
    :cond_3
    :goto_3
    iget-object v10, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v10, v10, v5

    invoke-static {v10}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v6

    .line 740
    .local v6, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    const/16 v10, 0xb7

    iget-object v11, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p1, v10, v11, v12, v13}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/16 v10, 0xb1

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 729
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 718
    .end local v4           #generateSwitch:Z
    .end local v5           #i:I
    .end local v6           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .end local v8           #switchStackTop:I
    .end local v9           #switchStart:I
    :cond_4
    const/4 v10, 0x0

    move v4, v10

    goto :goto_1

    .line 735
    .restart local v4       #generateSwitch:Z
    .restart local v5       #i:I
    .restart local v8       #switchStackTop:I
    .restart local v9       #switchStart:I
    :cond_5
    const/4 v10, 0x1

    sub-int v10, v5, v10

    sub-int/2addr v10, v7

    invoke-virtual {p1, v9, v10, v8}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    goto :goto_3

    .line 748
    :cond_6
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 749
    return-void
.end method

.method private generateFunctionInit(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/optimizer/OptFunctionNode;)V
    .locals 10
    .parameter "cfw"
    .parameter "ofn"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v9, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    .line 754
    const/4 v0, 0x1

    .line 755
    .local v0, CONTEXT_ARG:I
    const/4 v1, 0x2

    .line 756
    .local v1, SCOPE_ARG:I
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    const/16 v4, 0x12

    invoke-virtual {p1, v3, v9, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 762
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 763
    invoke-virtual {p1, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 764
    invoke-virtual {p1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 765
    const/16 v3, 0xb6

    const-string v4, "org/mozilla/javascript/NativeFunction"

    const-string v5, "initScriptFunction"

    const-string v6, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V"

    invoke-virtual {p1, v3, v4, v5, v9}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v3, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getRegexpCount()I

    move-result v2

    .line 774
    .local v2, regexpCount:I
    if-eqz v2, :cond_0

    .line 775
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 776
    iget-object v3, p2, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, p1, v3, v7, v8}, Lorg/mozilla/javascript/optimizer/Codegen;->pushRegExpArray(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/ast/ScriptNode;II)V

    .line 777
    const/16 v3, 0xb5

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v5, "_re"

    const-string v6, "[Ljava/lang/Object;"

    invoke-virtual {p1, v3, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_0
    const/16 v3, 0xb1

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 783
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 784
    return-void
.end method

.method private generateMain(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 5
    .parameter "cfw"

    .prologue
    const-string v4, "main"

    .line 626
    const-string v0, "main"

    const-string v0, "([Ljava/lang/String;)V"

    const/16 v1, 0x9

    invoke-virtual {p1, v4, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 631
    const/16 v0, 0xbb

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 632
    const/16 v0, 0x59

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 633
    const/16 v0, 0xb7

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    const-string v3, "()V"

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 638
    const/16 v0, 0xb8

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    const-string v2, "main"

    const-string v2, "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V"

    invoke-virtual {p1, v0, v1, v4, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v0, 0xb1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 644
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 645
    return-void
.end method

.method private generateNativeFunctionOverrides(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;)V
    .locals 29
    .parameter "cfw"
    .parameter "encodedSource"

    .prologue
    .line 792
    const-string v25, "getLanguageVersion"

    const-string v26, "()I"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 796
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 799
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 804
    const/4 v6, 0x0

    .line 805
    .local v6, Do_getFunctionName:I
    const/4 v8, 0x1

    .line 806
    .local v8, Do_getParamCount:I
    const/4 v7, 0x2

    .line 807
    .local v7, Do_getParamAndVarCount:I
    const/4 v10, 0x3

    .line 808
    .local v10, Do_getParamOrVarName:I
    const/4 v5, 0x4

    .line 809
    .local v5, Do_getEncodedSource:I
    const/4 v9, 0x5

    .line 810
    .local v9, Do_getParamOrVarConst:I
    const/4 v11, 0x6

    .line 812
    .local v11, SWITCH_COUNT:I
    const/16 v16, 0x0

    .local v16, methodIndex:I
    :goto_0
    const/16 v25, 0x6

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    .line 813
    const/16 v25, 0x4

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 812
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 823
    :cond_0
    packed-switch v16, :pswitch_data_0

    .line 856
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v25

    throw v25

    .line 825
    :pswitch_0
    const/16 v17, 0x1

    .line 826
    .local v17, methodLocals:S
    const-string v25, "getFunctionName"

    const-string v26, "()Ljava/lang/String;"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 859
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move v13, v0

    .line 861
    .local v13, count:I
    const/16 v24, 0x0

    .line 862
    .local v24, switchStart:I
    const/16 v23, 0x0

    .line 863
    .local v23, switchStackTop:I
    const/16 v25, 0x1

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 866
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 867
    const/16 v25, 0xb4

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v26

    const-string v27, "_id"

    const-string v28, "I"

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/16 v25, 0x1

    const/16 v26, 0x1

    sub-int v26, v13, v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v24

    .line 874
    :cond_1
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-eq v14, v13, :cond_e

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v25, v0

    aget-object v18, v25, v14

    .line 876
    .local v18, n:Lorg/mozilla/javascript/ast/ScriptNode;
    if-nez v14, :cond_3

    .line 877
    const/16 v25, 0x1

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 878
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 879
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v23

    .line 887
    :cond_2
    :goto_4
    packed-switch v16, :pswitch_data_1

    .line 998
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v25

    throw v25

    .line 830
    .end local v13           #count:I
    .end local v14           #i:I
    .end local v17           #methodLocals:S
    .end local v18           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .end local v23           #switchStackTop:I
    .end local v24           #switchStart:I
    :pswitch_1
    const/16 v17, 0x1

    .line 831
    .restart local v17       #methodLocals:S
    const-string v25, "getParamCount"

    const-string v26, "()I"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto :goto_2

    .line 835
    .end local v17           #methodLocals:S
    :pswitch_2
    const/16 v17, 0x1

    .line 836
    .restart local v17       #methodLocals:S
    const-string v25, "getParamAndVarCount"

    const-string v26, "()I"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto/16 :goto_2

    .line 840
    .end local v17           #methodLocals:S
    :pswitch_3
    const/16 v17, 0x2

    .line 841
    .restart local v17       #methodLocals:S
    const-string v25, "getParamOrVarName"

    const-string v26, "(I)Ljava/lang/String;"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto/16 :goto_2

    .line 845
    .end local v17           #methodLocals:S
    :pswitch_4
    const/16 v17, 0x3

    .line 846
    .restart local v17       #methodLocals:S
    const-string v25, "getParamOrVarConst"

    const-string v26, "(I)Z"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    goto/16 :goto_2

    .line 850
    .end local v17           #methodLocals:S
    :pswitch_5
    const/16 v17, 0x1

    .line 851
    .restart local v17       #methodLocals:S
    const-string v25, "getEncodedSource"

    const-string v26, "()Ljava/lang/String;"

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 853
    invoke-virtual/range {p1 .. p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 882
    .restart local v13       #count:I
    .restart local v14       #i:I
    .restart local v18       #n:Lorg/mozilla/javascript/ast/ScriptNode;
    .restart local v23       #switchStackTop:I
    .restart local v24       #switchStart:I
    :cond_3
    const/16 v25, 0x1

    sub-int v25, v14, v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    goto/16 :goto_4

    .line 890
    :pswitch_6
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v25

    const/16 v26, 0x88

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 891
    const-string v25, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 896
    .end local v18           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :goto_5
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 874
    :cond_4
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 893
    .restart local v18       #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_5
    check-cast v18, Lorg/mozilla/javascript/ast/FunctionNode;

    .end local v18           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v19

    .line 894
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    goto :goto_5

    .line 901
    .end local v19           #name:Ljava/lang/String;
    .restart local v18       #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :pswitch_7
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 902
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_6

    .line 907
    :pswitch_8
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 908
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_6

    .line 914
    :pswitch_9
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v20

    .line 915
    .local v20, paramAndVarCount:I
    if-nez v20, :cond_6

    .line 919
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 920
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_6

    .line 921
    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 924
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 925
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_6

    .line 928
    :cond_7
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 931
    const/16 v25, 0x1

    const/16 v26, 0x1

    sub-int v26, v20, v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v21

    .line 933
    .local v21, paramSwitchStart:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_7
    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 934
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v25

    if-eqz v25, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 935
    :cond_8
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v22

    .line 936
    .local v22, s:Ljava/lang/String;
    if-nez v15, :cond_9

    .line 937
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 942
    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    .line 943
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 933
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 939
    :cond_9
    const/16 v25, 0x1

    sub-int v25, v15, v25

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    goto :goto_8

    .line 951
    .end local v15           #j:I
    .end local v20           #paramAndVarCount:I
    .end local v21           #paramSwitchStart:I
    .end local v22           #s:Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v20

    .line 952
    .restart local v20       #paramAndVarCount:I
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v12

    .line 953
    .local v12, constness:[Z
    if-nez v20, :cond_a

    .line 957
    const/16 v25, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 958
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    .line 959
    :cond_a
    const/16 v25, 0x1

    move/from16 v0, v20

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 962
    const/16 v25, 0x0

    aget-boolean v25, v12, v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 963
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    .line 966
    :cond_b
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 969
    const/16 v25, 0x1

    const/16 v26, 0x1

    sub-int v26, v20, v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v21

    .line 971
    .restart local v21       #paramSwitchStart:I
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_9
    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 972
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/classfile/ClassFileWriter;->getStackTop()S

    move-result v25

    if-eqz v25, :cond_c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 973
    :cond_c
    if-nez v15, :cond_d

    .line 974
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 979
    :goto_a
    aget-boolean v25, v12, v15

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Z)V

    .line 980
    const/16 v25, 0xac

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 971
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 976
    :cond_d
    const/16 v25, 0x1

    sub-int v25, v15, v25

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    goto :goto_a

    .line 988
    .end local v12           #constness:[Z
    .end local v15           #j:I
    .end local v20           #paramAndVarCount:I
    .end local v21           #paramSwitchStart:I
    :pswitch_b
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 989
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 990
    const/16 v25, 0xb6

    const-string v26, "java/lang/String"

    const-string v27, "substring"

    const-string v28, "(II)Ljava/lang/String;"

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const/16 v25, 0xb0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_6

    .line 1002
    .end local v18           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    goto/16 :goto_1

    .line 1004
    .end local v13           #count:I
    .end local v14           #i:I
    .end local v17           #methodLocals:S
    .end local v23           #switchStackTop:I
    .end local v24           #switchStart:I
    :cond_f
    return-void

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 887
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private generateResumeGenerator(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 14
    .parameter "cfw"

    .prologue
    const/16 v13, 0xb0

    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 450
    const/4 v1, 0x0

    .line 451
    .local v1, hasGenerators:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 452
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v6, v6, v2

    invoke-static {v6}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 453
    const/4 v1, 0x1

    .line 451
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_1
    if-nez v1, :cond_2

    .line 511
    :goto_1
    return-void

    .line 461
    :cond_2
    const-string v6, "resumeGenerator"

    const-string v7, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const/16 v8, 0x11

    invoke-virtual {p1, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 470
    invoke-virtual {p1, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 471
    invoke-virtual {p1, v11}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 472
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 473
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 474
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 475
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    .line 477
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 478
    const/16 v6, 0xb4

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_id"

    const-string v9, "I"

    invoke-virtual {p1, v6, v7, v8, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v6

    sub-int/2addr v6, v11

    invoke-virtual {p1, v10, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addTableSwitch(II)I

    move-result v4

    .line 481
    .local v4, startSwitch:I
    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchDefault(I)V

    .line 482
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->acquireLabel()I

    move-result v0

    .line 484
    .local v0, endlabel:I
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 485
    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v3, v6, v2

    .line 486
    .local v3, n:Lorg/mozilla/javascript/ast/ScriptNode;
    invoke-virtual {p1, v4, v2, v12}, Lorg/mozilla/classfile/ClassFileWriter;->markTableSwitchCase(III)V

    .line 487
    invoke-static {v3}, Lorg/mozilla/javascript/optimizer/Codegen;->isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Lorg/mozilla/javascript/Context;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Ljava/lang/Object;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Ljava/lang/Object;I)Ljava/lang/Object;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, type:Ljava/lang/String;
    const/16 v6, 0xb8

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/optimizer/Codegen;->getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_gen"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v8, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 484
    .end local v5           #type:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 500
    :cond_3
    const/16 v6, 0xa7

    invoke-virtual {p1, v6, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_3

    .line 504
    .end local v3           #n:Lorg/mozilla/javascript/ast/ScriptNode;
    :cond_4
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 505
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 506
    invoke-virtual {p1, v13}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 510
    invoke-virtual {p1, v12}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    goto/16 :goto_1
.end method

.method private generateScriptCtor(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 6
    .parameter "cfw"

    .prologue
    const/4 v4, 0x1

    const-string v5, "<init>"

    const-string v3, "()V"

    .line 680
    const-string v0, "<init>"

    const-string v0, "()V"

    invoke-virtual {p1, v5, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 682
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 683
    const/16 v0, 0xb7

    const-string v1, "org.mozilla.javascript.NativeFunction"

    const-string v2, "<init>"

    const-string v2, "()V"

    invoke-virtual {p1, v0, v1, v5, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadThis()V

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 688
    const/16 v0, 0xb5

    invoke-virtual {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    const-string v3, "I"

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/16 v0, 0xb1

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 692
    invoke-virtual {p1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 693
    return-void
.end method

.method static getDirectTargetFieldName(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_dt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getStaticConstantWrapperType(D)Ljava/lang/String;
    .locals 3
    .parameter "num"

    .prologue
    .line 1220
    double-to-int v0, p0

    .line 1221
    .local v0, inum:I
    int-to-double v1, v0

    cmpl-double v1, v1, p0

    if-nez v1, :cond_0

    .line 1222
    const-string v1, "Ljava/lang/Integer;"

    .line 1224
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Ljava/lang/Double;"

    goto :goto_0
.end method

.method private static initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 4
    .parameter "scriptOrFn"

    .prologue
    .line 260
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-eq v2, v0, :cond_0

    .line 261
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    .line 262
    .local v1, fn:Lorg/mozilla/javascript/ast/FunctionNode;
    new-instance v3, Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    invoke-direct {v3, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;-><init>(Lorg/mozilla/javascript/ast/FunctionNode;)V

    .line 263
    invoke-static {v1}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v1           #fn:Lorg/mozilla/javascript/ast/FunctionNode;
    :cond_0
    return-void
.end method

.method private initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 5
    .parameter "scriptOrFn"

    .prologue
    .line 269
    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    .line 270
    .local v2, x:Lorg/mozilla/javascript/ObjArray;
    invoke-static {p1, v2}, Lorg/mozilla/javascript/optimizer/Codegen;->collectScriptNodes_r(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/ObjArray;)V

    .line 272
    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v0

    .line 273
    .local v0, count:I
    new-array v3, v0, [Lorg/mozilla/javascript/ast/ScriptNode;

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    .line 274
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    .line 276
    new-instance v3, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v3, v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    .line 277
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 278
    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnNodes:[Lorg/mozilla/javascript/ast/ScriptNode;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method static isGenerator(Lorg/mozilla/javascript/ast/ScriptNode;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static pushUndefined(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 4
    .parameter "cfw"

    .prologue
    .line 1229
    const/16 v0, 0xb2

    const-string v1, "org/mozilla/javascript/Undefined"

    const-string v2, "instance"

    const-string v3, "Ljava/lang/Object;"

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    return-void
.end method

.method private reportClassFileFormatException(Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 6
    .parameter "scriptOrFn"
    .parameter "message"

    .prologue
    .line 205
    instance-of v2, p1, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v2, :cond_0

    const-string v3, "msg.while.compiling.fn"

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    invoke-static {v3, v2, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 209
    .local v1, msg:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getLineno()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    return-object v2

    .line 205
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const-string v2, "msg.while.compiling.script"

    invoke-static {v2, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method private transform(Lorg/mozilla/javascript/ast/ScriptNode;)V
    .locals 9
    .parameter "tree"

    .prologue
    .line 215
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->initOptFunctions_r(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 217
    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getOptimizationLevel()I

    move-result v4

    .line 219
    .local v4, optLevel:I
    const/4 v6, 0x0

    .line 220
    .local v6, possibleDirectCalls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/optimizer/OptFunctionNode;>;"
    if-lez v4, :cond_2

    .line 226
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v7

    const/16 v8, 0x88

    if-ne v7, v8, :cond_2

    .line 227
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    .line 228
    .local v0, functionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v0, :cond_2

    .line 229
    invoke-static {p1, v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;I)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v3

    .line 230
    .local v3, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    iget-object v7, v3, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 233
    iget-object v7, v3, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 235
    if-nez v6, :cond_0

    .line 236
    new-instance v6, Ljava/util/HashMap;

    .end local v6           #possibleDirectCalls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/optimizer/OptFunctionNode;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 238
    .restart local v6       #possibleDirectCalls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/optimizer/OptFunctionNode;>;"
    :cond_0
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v0           #functionCount:I
    .end local v1           #i:I
    .end local v3           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    :cond_2
    if-eqz v6, :cond_3

    .line 246
    new-instance v7, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v7}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    .line 249
    :cond_3
    new-instance v5, Lorg/mozilla/javascript/optimizer/OptTransformer;

    iget-object v7, p0, Lorg/mozilla/javascript/optimizer/Codegen;->directCallTargets:Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v5, v6, v7}, Lorg/mozilla/javascript/optimizer/OptTransformer;-><init>(Ljava/util/Map;Lorg/mozilla/javascript/ObjArray;)V

    .line 251
    .local v5, ot:Lorg/mozilla/javascript/optimizer/OptTransformer;
    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/optimizer/OptTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 253
    if-lez v4, :cond_4

    .line 254
    new-instance v7, Lorg/mozilla/javascript/optimizer/Optimizer;

    invoke-direct {v7}, Lorg/mozilla/javascript/optimizer/Optimizer;-><init>()V

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/optimizer/Optimizer;->optimize(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 256
    :cond_4
    return-void
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 3
    .parameter "n"

    .prologue
    .line 1258
    const-string v1, ""

    .line 1259
    .local v1, result:Ljava/lang/String;
    instance-of v2, p1, Lorg/mozilla/javascript/ast/FunctionNode;

    if-eqz v2, :cond_1

    .line 1260
    check-cast p1, Lorg/mozilla/javascript/ast/FunctionNode;

    .end local p1
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v0

    .line 1261
    .local v0, name:Lorg/mozilla/javascript/ast/Name;
    if-nez v0, :cond_0

    .line 1262
    const-string v1, "anonymous"

    .line 1269
    .end local v0           #name:Lorg/mozilla/javascript/ast/Name;
    :goto_0
    return-object v1

    .line 1264
    .restart local v0       #name:Lorg/mozilla/javascript/ast/Name;
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1267
    .end local v0           #name:Lorg/mozilla/javascript/ast/Name;
    .restart local p1
    :cond_1
    const-string v1, "script"

    goto :goto_0
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 10
    .parameter "compilerEnv"
    .parameter "tree"
    .parameter "encodedSource"
    .parameter "returnFunction"

    .prologue
    const/4 v9, 0x0

    const-string v4, "_"

    .line 90
    sget-object v0, Lorg/mozilla/javascript/optimizer/Codegen;->globalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    sget v1, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    add-int/lit8 v8, v1, 0x1

    sput v8, Lorg/mozilla/javascript/optimizer/Codegen;->globalSerialClassCounter:I

    .line 92
    .local v8, serial:I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const-string v6, "c"

    .line 95
    .local v6, baseName:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\W"

    const-string v3, "_"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.mozilla.javascript.gen."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, mainClassName:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 104
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/Codegen;->compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B

    move-result-object v7

    .line 108
    .local v7, mainClassBytes:[B
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v9

    const/4 v1, 0x1

    aput-object v7, v0, v1

    return-object v0

    .line 92
    .end local v2           #mainClassName:Ljava/lang/String;
    .end local v6           #baseName:Ljava/lang/String;
    .end local v7           #mainClassBytes:[B
    .end local v8           #serial:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method compileToClassFile(Lorg/mozilla/javascript/CompilerEnvirons;Ljava/lang/String;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)[B
    .locals 2
    .parameter "compilerEnv"
    .parameter "mainClassName"
    .parameter "scriptOrFn"
    .parameter "encodedSource"
    .parameter "returnFunction"

    .prologue
    .line 176
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 178
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 184
    if-eqz p5, :cond_0

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p3

    .line 188
    :cond_0
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->initScriptNodesData(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 190
    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    .line 191
    invoke-static {p2}, Lorg/mozilla/classfile/ClassFileWriter;->classNameToSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    .line 195
    :try_start_0
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->generateCode(Ljava/lang/String;)[B
    :try_end_0
    .catch Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->reportClassFileFormatException(Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 8
    .parameter "cx"
    .parameter "scope"
    .parameter "bytecode"
    .parameter "staticSecurityDomain"

    .prologue
    .line 130
    invoke-direct {p0, p3, p4}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 135
    .local v1, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 136
    .local v4, initArgs:[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/NativeFunction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v3, f:Lorg/mozilla/javascript/NativeFunction;
    return-object v3

    .line 137
    .end local v1           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #f:Lorg/mozilla/javascript/NativeFunction;
    .end local v4           #initArgs:[Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 138
    .local v2, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate compiled class:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 6
    .parameter "bytecode"
    .parameter "staticSecurityDomain"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/Codegen;->defineClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Script;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v2, script:Lorg/mozilla/javascript/Script;
    return-object v2

    .line 119
    .end local v2           #script:Lorg/mozilla/javascript/Script;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 120
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate compiled class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method getBodyMethodName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->cleanName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getBodyMethodSignature(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 6
    .parameter "n"

    .prologue
    .line 1274
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1275
    .local v3, sb:Ljava/lang/StringBuffer;
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1276
    iget-object v4, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassSignature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1277
    const-string v4, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1280
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getType()I

    move-result v4

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_0

    .line 1281
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->get(Lorg/mozilla/javascript/ast/ScriptNode;)Lorg/mozilla/javascript/optimizer/OptFunctionNode;

    move-result-object v1

    .line 1282
    .local v1, ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    invoke-virtual {v1}, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->isTargetOfDirectCall()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1283
    iget-object v4, v1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ast/FunctionNode;->getParamCount()I

    move-result v2

    .line 1284
    .local v2, pCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 1285
    const-string v4, "Ljava/lang/Object;D"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1289
    .end local v0           #i:I
    .end local v1           #ofn:Lorg/mozilla/javascript/optimizer/OptFunctionNode;
    .end local v2           #pCount:I
    :cond_0
    const-string v4, "[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1290
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;
    .locals 2
    .parameter "n"
    .parameter "regexpIndex"

    .prologue
    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_re"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDirectCtorName(Lorg/mozilla/javascript/ast/ScriptNode;)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFunctionInitMethodName(Lorg/mozilla/javascript/optimizer/OptFunctionNode;)Ljava/lang/String;
    .locals 2
    .parameter "ofn"

    .prologue
    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/javascript/optimizer/OptFunctionNode;->fnode:Lorg/mozilla/javascript/ast/FunctionNode;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/optimizer/Codegen;->getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIndex(Lorg/mozilla/javascript/ast/ScriptNode;)I
    .locals 1
    .parameter "n"

    .prologue
    .line 1235
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->scriptOrFnIndexes:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjToIntMap;->getExisting(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ex"
    .parameter "nativeStackTrace"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 1
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 1
    .parameter "cx"
    .parameter "linep"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method pushNumberAsObject(Lorg/mozilla/classfile/ClassFileWriter;D)V
    .locals 9
    .parameter "cfw"
    .parameter "num"

    .prologue
    .line 1149
    const-wide/16 v5, 0x0

    cmpl-double v5, p2, v5

    if-nez v5, :cond_1

    .line 1150
    const-wide/high16 v5, 0x3ff0

    div-double/2addr v5, p2

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 1152
    const/16 v5, 0xb2

    const-string v6, "org/mozilla/javascript/optimizer/OptRuntime"

    const-string v7, "zeroObj"

    const-string v8, "Ljava/lang/Double;"

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :goto_0
    return-void

    .line 1156
    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 1157
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_0

    .line 1160
    :cond_1
    const-wide/high16 v5, 0x3ff0

    cmpl-double v5, p2, v5

    if-nez v5, :cond_2

    .line 1161
    const/16 v5, 0xb2

    const-string v6, "org/mozilla/javascript/optimizer/OptRuntime"

    const-string v7, "oneObj"

    const-string v8, "Ljava/lang/Double;"

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_2
    const-wide/high16 v5, -0x4010

    cmpl-double v5, p2, v5

    if-nez v5, :cond_3

    .line 1167
    const/16 v5, 0xb2

    const-string v6, "org/mozilla/javascript/optimizer/OptRuntime"

    const-string v7, "minusOneObj"

    const-string v8, "Ljava/lang/Double;"

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_3
    cmpl-double v5, p2, p2

    if-eqz v5, :cond_4

    .line 1172
    const/16 v5, 0xb2

    const-string v6, "org/mozilla/javascript/ScriptRuntime"

    const-string v7, "NaNobj"

    const-string v8, "Ljava/lang/Double;"

    invoke-virtual {p1, v5, v6, v7, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :cond_4
    iget v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    const/16 v6, 0x7d0

    if-lt v5, v6, :cond_5

    .line 1181
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(D)V

    .line 1182
    invoke-static {p1}, Lorg/mozilla/javascript/optimizer/Codegen;->addDoubleWrap(Lorg/mozilla/classfile/ClassFileWriter;)V

    goto :goto_0

    .line 1185
    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 1186
    .local v0, N:I
    const/4 v4, 0x0

    .line 1187
    .local v4, index:I
    if-nez v0, :cond_8

    .line 1188
    const/16 v5, 0x40

    new-array v5, v5, [D

    iput-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 1200
    :cond_6
    :goto_1
    if-ne v4, v0, :cond_7

    .line 1201
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    aput-wide p2, v5, v0

    .line 1202
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantListSize:I

    .line 1204
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_k"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1205
    .local v2, constantName:Ljava/lang/String;
    invoke-static {p2, p3}, Lorg/mozilla/javascript/optimizer/Codegen;->getStaticConstantWrapperType(D)Ljava/lang/String;

    move-result-object v3

    .line 1206
    .local v3, constantType:Ljava/lang/String;
    const/16 v5, 0xb2

    iget-object v6, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    .end local v2           #constantName:Ljava/lang/String;
    .end local v3           #constantType:Ljava/lang/String;
    :cond_8
    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    .line 1191
    .local v1, array:[D
    :goto_2
    if-eq v4, v0, :cond_9

    aget-wide v5, v1, v4

    cmpl-double v5, v5, p2

    if-eqz v5, :cond_9

    .line 1192
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1194
    :cond_9
    array-length v5, v1

    if-ne v0, v5, :cond_6

    .line 1195
    mul-int/lit8 v5, v0, 0x2

    new-array v1, v5, [D

    .line 1196
    iget-object v5, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    iput-object v1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->itsConstantList:[D

    goto :goto_1
.end method

.method pushRegExpArray(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/javascript/ast/ScriptNode;II)V
    .locals 6
    .parameter "cfw"
    .parameter "n"
    .parameter "contextArg"
    .parameter "scopeArg"

    .prologue
    const/16 v5, 0xb8

    .line 1105
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v1

    .line 1106
    .local v1, regexpCount:I
    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/optimizer/Codegen;->badTree()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1108
    :cond_0
    invoke-virtual {p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1109
    const/16 v2, 0xbd

    const-string v3, "java/lang/Object"

    invoke-virtual {p1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 1111
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1112
    const-string v2, "org/mozilla/javascript/ScriptRuntime"

    const-string v3, "checkRegExpProxy"

    const-string v4, "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;"

    invoke-virtual {p1, v5, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/16 v2, 0x59

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1119
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1120
    iget-object v2, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    const-string v3, "_reInit"

    const-string v4, "(Lorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Context;)V"

    invoke-virtual {p1, v5, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 1124
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1125
    invoke-virtual {p1, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1126
    invoke-virtual {p1, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 1127
    const/16 v2, 0xb2

    iget-object v3, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainClassName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/javascript/optimizer/Codegen;->getCompiledRegexpName(Lorg/mozilla/javascript/ast/ScriptNode;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Ljava/lang/Object;"

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const/16 v2, 0xb9

    const-string v3, "org/mozilla/javascript/RegExpProxy"

    const-string v4, "wrapRegExp"

    const-string v5, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p1, v2, v3, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 1139
    const/16 v2, 0x5f

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1140
    const/16 v2, 0x53

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1144
    :cond_1
    const/16 v2, 0x57

    invoke-virtual {p1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1145
    return-void
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 1
    .parameter "script"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method setMainMethodClass(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 1310
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/Codegen;->mainMethodClass:Ljava/lang/String;

    .line 1311
    return-void
.end method
