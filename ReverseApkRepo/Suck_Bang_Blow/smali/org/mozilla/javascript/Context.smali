.class public Lorg/mozilla/javascript/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Context$ClassShutterSetter;
    }
.end annotation


# static fields
.field public static final FEATURE_DYNAMIC_SCOPE:I = 0x7

.field public static final FEATURE_E4X:I = 0x6

.field public static final FEATURE_ENHANCED_JAVA_ACCESS:I = 0xd

.field public static final FEATURE_LOCATION_INFORMATION_IN_ERROR:I = 0xa

.field public static final FEATURE_MEMBER_EXPR_AS_FUNCTION_NAME:I = 0x2

.field public static final FEATURE_NON_ECMA_GET_YEAR:I = 0x1

.field public static final FEATURE_PARENT_PROTO_PROPERTIES:I = 0x5

.field public static final FEATURE_PARENT_PROTO_PROPRTIES:I = 0x5

.field public static final FEATURE_RESERVED_KEYWORD_AS_IDENTIFIER:I = 0x3

.field public static final FEATURE_STRICT_EVAL:I = 0x9

.field public static final FEATURE_STRICT_MODE:I = 0xb

.field public static final FEATURE_STRICT_VARS:I = 0x8

.field public static final FEATURE_TO_STRING_AS_SOURCE:I = 0x4

.field public static final FEATURE_WARNING_AS_ERROR:I = 0xc

.field public static final VERSION_1_0:I = 0x64

.field public static final VERSION_1_1:I = 0x6e

.field public static final VERSION_1_2:I = 0x78

.field public static final VERSION_1_3:I = 0x82

.field public static final VERSION_1_4:I = 0x8c

.field public static final VERSION_1_5:I = 0x96

.field public static final VERSION_1_6:I = 0xa0

.field public static final VERSION_1_7:I = 0xaa

.field public static final VERSION_1_8:I = 0xb4

.field public static final VERSION_DEFAULT:I = 0x0

.field public static final VERSION_UNKNOWN:I = -0x1

.field private static codegenClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final emptyArgs:[Ljava/lang/Object; = null

.field public static final errorReporterProperty:Ljava/lang/String; = "error reporter"

.field private static implementationVersion:Ljava/lang/String; = null

.field private static interpreterClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final languageVersionProperty:Ljava/lang/String; = "language version"


# instance fields
.field activationNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private applicationClassLoader:Ljava/lang/ClassLoader;

.field cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

.field private classShutter:Lorg/mozilla/javascript/ClassShutter;

.field compileFunctionsWithDynamicScopeFlag:Z

.field currentActivationCall:Lorg/mozilla/javascript/NativeCall;

.field debugger:Lorg/mozilla/javascript/debug/Debugger;

.field private debuggerData:Ljava/lang/Object;

.field private enterCount:I

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private final factory:Lorg/mozilla/javascript/ContextFactory;

.field public generateObserverCount:Z

.field private generatingDebug:Z

.field private generatingDebugChanged:Z

.field private generatingSource:Z

.field private hasClassShutter:Z

.field instructionCount:I

.field instructionThreshold:I

.field interpreterSecurityDomain:Ljava/lang/Object;

.field isContinuationsTopCall:Z

.field iterating:Lorg/mozilla/javascript/ObjToIntMap;

.field lastInterpreterFrame:Ljava/lang/Object;

.field private locale:Ljava/util/Locale;

.field private maximumInterpreterStackDepth:I

.field private optimizationLevel:I

.field previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

.field private propertyListeners:Ljava/lang/Object;

.field regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

.field scratchIndex:I

.field scratchScriptable:Lorg/mozilla/javascript/Scriptable;

.field scratchUint32:J

.field private sealKey:Ljava/lang/Object;

.field private sealed:Z

.field private securityController:Lorg/mozilla/javascript/SecurityController;

.field private threadLocalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field topCallScope:Lorg/mozilla/javascript/Scriptable;

.field useDynamicScope:Z

.field version:I

.field private wrapFactory:Lorg/mozilla/javascript/WrapFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    sput-object v0, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    .line 2457
    const-string v0, "org.mozilla.javascript.optimizer.Codegen"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    .line 2459
    const-string v0, "org.mozilla.javascript.Interpreter"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Context;->interpreterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Context;-><init>(Lorg/mozilla/javascript/ContextFactory;)V

    .line 342
    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/ContextFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    .line 2672
    iput-boolean v1, p0, Lorg/mozilla/javascript/Context;->generateObserverCount:Z

    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    .line 359
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->setLanguageVersion(I)V

    .line 360
    sget-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    .line 361
    const v0, 0x7fffffff

    iput v0, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    .line 362
    return-void

    .line 360
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ClassShutter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    return-object v0
.end method

.method static synthetic access$002(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ClassShutter;)Lorg/mozilla/javascript/ClassShutter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    return-object p1
.end method

.method public static addContextListener(Lorg/mozilla/javascript/ContextListener;)V
    .locals 11
    .parameter "listener"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 536
    const-string v0, "org.mozilla.javascript.tools.debugger.Main"

    .line 537
    .local v0, DBG:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 538
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 539
    .local v2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v8, "org.mozilla.javascript.ContextFactory"

    invoke-static {v8}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 541
    .local v4, factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-array v7, v10, [Ljava/lang/Class;

    aput-object v4, v7, v9

    .line 542
    .local v7, sig:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v8

    aput-object v8, v1, v9

    .line 544
    .local v1, args:[Ljava/lang/Object;
    :try_start_0
    const-string v8, "attachTo"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 545
    .local v5, m:Ljava/lang/reflect/Method;
    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v7           #sig:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 546
    .restart local v1       #args:[Ljava/lang/Object;
    .restart local v2       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v7       #sig:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 547
    .local v3, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    .line 548
    .local v6, rex:Ljava/lang/RuntimeException;
    invoke-static {v6, v3}, Lorg/mozilla/javascript/Kit;->initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 549
    throw v6

    .line 554
    .end local v1           #args:[Ljava/lang/Object;
    .end local v2           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #factoryClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #rex:Ljava/lang/RuntimeException;
    .end local v7           #sig:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v8

    invoke-virtual {v8, p0}, Lorg/mozilla/javascript/ContextFactory;->addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    goto :goto_0
.end method

.method public static call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .locals 1
    .parameter "action"

    .prologue
    .line 483
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "factory"
    .parameter "callable"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 505
    if-nez p0, :cond_0

    .line 506
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    .line 508
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/Context$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Context$1;-><init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .locals 2
    .parameter "factory"
    .parameter "action"

    .prologue
    .line 519
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 521
    .local v0, cx:Lorg/mozilla/javascript/Context;
    :try_start_0
    invoke-interface {p1, v0}, Lorg/mozilla/javascript/ContextAction;->run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 524
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw v1
.end method

.method public static checkLanguageVersion(I)V
    .locals 3
    .parameter "version"

    .prologue
    .line 684
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->isValidLanguageVersion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad language version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkOptimizationLevel(I)V
    .locals 3
    .parameter "optimizationLevel"

    .prologue
    .line 1884
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->isValidOptimizationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    return-void

    .line 1887
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimization level outside [-1..9]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;
    .locals 16
    .parameter "scope"
    .parameter "sourceReader"
    .parameter "sourceString"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"
    .parameter "returnFunction"
    .parameter "compiler"
    .parameter "compilationErrorReporter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2364
    if-nez p4, :cond_0

    .line 2365
    const-string p4, "unnamed script"

    .line 2367
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getSecurityController()Lorg/mozilla/javascript/SecurityController;

    move-result-object v13

    if-nez v13, :cond_1

    .line 2368
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "securityDomain should be null if setSecurityController() was never called"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2373
    :cond_1
    if-nez p2, :cond_8

    const/4 v13, 0x1

    :goto_0
    if-nez p3, :cond_9

    const/4 v14, 0x1

    :goto_1
    xor-int/2addr v13, v14

    if-nez v13, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2375
    :cond_2
    if-nez p1, :cond_a

    const/4 v13, 0x1

    :goto_2
    xor-int v13, v13, p7

    if-nez v13, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2377
    :cond_3
    new-instance v7, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v7}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    .line 2378
    .local v7, compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->initFromContext(Lorg/mozilla/javascript/Context;)V

    .line 2379
    if-nez p9, :cond_4

    .line 2380
    invoke-virtual {v7}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p9

    .line 2383
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    move-object v13, v0

    if-eqz v13, :cond_5

    .line 2384
    if-eqz p2, :cond_5

    .line 2385
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p3

    .line 2386
    const/16 p2, 0x0

    .line 2390
    :cond_5
    new-instance v10, Lorg/mozilla/javascript/Parser;

    move-object v0, v10

    move-object v1, v7

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 2391
    .local v10, p:Lorg/mozilla/javascript/Parser;
    if-eqz p7, :cond_6

    .line 2392
    const/4 v13, 0x1

    iput-boolean v13, v10, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    .line 2395
    :cond_6
    if-eqz p3, :cond_b

    .line 2396
    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object v5

    .line 2400
    .local v5, ast:Lorg/mozilla/javascript/ast/AstRoot;
    :goto_3
    if-eqz p7, :cond_c

    .line 2402
    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstRoot;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/AstRoot;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v13

    invoke-virtual {v13}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v13

    const/16 v14, 0x6d

    if-eq v13, v14, :cond_c

    .line 2408
    :cond_7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "compileFunction only accepts source with single JS function: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2373
    .end local v5           #ast:Lorg/mozilla/javascript/ast/AstRoot;
    .end local v7           #compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;
    .end local v10           #p:Lorg/mozilla/javascript/Parser;
    :cond_8
    const/4 v13, 0x0

    goto :goto_0

    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 2375
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 2398
    .restart local v7       #compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;
    .restart local v10       #p:Lorg/mozilla/javascript/Parser;
    :cond_b
    move-object v0, v10

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/io/Reader;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object v5

    .restart local v5       #ast:Lorg/mozilla/javascript/ast/AstRoot;
    goto :goto_3

    .line 2413
    :cond_c
    new-instance v9, Lorg/mozilla/javascript/IRFactory;

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 2414
    .local v9, irf:Lorg/mozilla/javascript/IRFactory;
    invoke-virtual {v9, v5}, Lorg/mozilla/javascript/IRFactory;->transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object v12

    .line 2417
    .local v12, tree:Lorg/mozilla/javascript/ast/ScriptNode;
    const/4 v10, 0x0

    .line 2418
    const/4 v5, 0x0

    .line 2419
    const/4 v9, 0x0

    .line 2421
    if-nez p8, :cond_d

    .line 2422
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->createCompiler()Lorg/mozilla/javascript/Evaluator;

    move-result-object p8

    .line 2425
    :cond_d
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p8

    move-object v1, v7

    move-object v2, v12

    move-object v3, v13

    move/from16 v4, p7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Evaluator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v6

    .line 2428
    .local v6, bytecode:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    move-object v13, v0

    if-eqz v13, :cond_f

    .line 2429
    if-nez p3, :cond_e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2430
    :cond_e
    instance-of v13, v6, Lorg/mozilla/javascript/debug/DebuggableScript;

    if-eqz v13, :cond_10

    .line 2431
    move-object v0, v6

    check-cast v0, Lorg/mozilla/javascript/debug/DebuggableScript;

    move-object v8, v0

    .line 2432
    .local v8, dscript:Lorg/mozilla/javascript/debug/DebuggableScript;
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    .line 2439
    .end local v8           #dscript:Lorg/mozilla/javascript/debug/DebuggableScript;
    :cond_f
    if-eqz p7, :cond_11

    .line 2440
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, p6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Evaluator;->createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v11

    .line 2445
    :goto_4
    return-object v11

    .line 2434
    :cond_10
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "NOT SUPPORTED"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2442
    :cond_11
    move-object/from16 v0, p8

    move-object v1, v6

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Evaluator;->createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v11

    .local v11, result:Lorg/mozilla/javascript/Script;
    goto :goto_4
.end method

.method private createCompiler()Lorg/mozilla/javascript/Evaluator;
    .locals 2

    .prologue
    .line 2464
    const/4 v0, 0x0

    .line 2465
    .local v0, result:Lorg/mozilla/javascript/Evaluator;
    iget v1, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    if-ltz v1, :cond_0

    sget-object v1, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 2466
    sget-object v1, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lorg/mozilla/javascript/Evaluator;
    check-cast v0, Lorg/mozilla/javascript/Evaluator;

    .line 2468
    .restart local v0       #result:Lorg/mozilla/javascript/Evaluator;
    :cond_0
    if-nez v0, :cond_1

    .line 2469
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    .line 2471
    :cond_1
    return-object v0
.end method

.method static createInterpreter()Lorg/mozilla/javascript/Evaluator;
    .locals 1

    .prologue
    .line 2476
    sget-object v0, Lorg/mozilla/javascript/Context;->interpreterClass:Ljava/lang/Class;

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Evaluator;

    return-object v0
.end method

.method public static enter()Lorg/mozilla/javascript/Context;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public static enter(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;
    .locals 1
    .parameter "cx"

    .prologue
    .line 412
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method static final enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;
    .locals 4
    .parameter "cx"
    .parameter "factory"

    .prologue
    .line 417
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, helper:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 419
    .local v1, old:Lorg/mozilla/javascript/Context;
    if-eqz v1, :cond_0

    .line 420
    move-object p0, v1

    .line 438
    :goto_0
    iget v2, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    .line 439
    return-object p0

    .line 422
    :cond_0
    if-nez p0, :cond_3

    .line 423
    invoke-virtual {p1}, Lorg/mozilla/javascript/ContextFactory;->makeContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    .line 424
    iget v2, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-eqz v2, :cond_1

    .line 425
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "factory.makeContext() returned Context instance already associated with some thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    :cond_1
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ContextFactory;->onContextCreated(Lorg/mozilla/javascript/Context;)V

    .line 428
    invoke-virtual {p1}, Lorg/mozilla/javascript/ContextFactory;->isSealed()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isSealed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Context;->seal(Ljava/lang/Object;)V

    .line 436
    :cond_2
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v0, p0}, Lorg/mozilla/javascript/VMBridge;->setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V

    goto :goto_0

    .line 432
    :cond_3
    iget v2, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-eqz v2, :cond_2

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "can not use Context instance already associated with some thread"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static exit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 455
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v1

    .line 456
    .local v1, helper:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 457
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-nez v0, :cond_0

    .line 458
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Calling Context.exit without previous Context.enter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_0
    iget v2, v0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-ge v2, v3, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 462
    :cond_1
    iget v2, v0, Lorg/mozilla/javascript/Context;->enterCount:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-nez v2, :cond_2

    .line 463
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/mozilla/javascript/VMBridge;->setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V

    .line 464
    iget-object v2, v0, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ContextFactory;->onContextReleased(Lorg/mozilla/javascript/Context;)V

    .line 466
    :cond_2
    return-void
.end method

.method private firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "listeners"
    .parameter "property"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 829
    const/4 v1, 0x0

    .line 830
    .local v1, i:I
    :goto_0
    invoke-static {p1, v1}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 831
    .local v2, l:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 839
    return-void

    .line 833
    :cond_0
    instance-of v4, v2, Ljava/beans/PropertyChangeListener;

    if-eqz v4, :cond_1

    .line 834
    move-object v0, v2

    check-cast v0, Ljava/beans/PropertyChangeListener;

    move-object v3, v0

    .line 835
    .local v3, pcl:Ljava/beans/PropertyChangeListener;
    new-instance v4, Ljava/beans/PropertyChangeEvent;

    invoke-direct {v4, p0, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 829
    .end local v3           #pcl:Ljava/beans/PropertyChangeListener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getContext()Lorg/mozilla/javascript/Context;
    .locals 3

    .prologue
    .line 2348
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2349
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-nez v0, :cond_0

    .line 2350
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Context associated with current Thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2353
    :cond_0
    return-object v0
.end method

.method public static getCurrentContext()Lorg/mozilla/javascript/Context;
    .locals 2

    .prologue
    .line 378
    sget-object v1, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v1}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, helper:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    return-object v1
.end method

.method public static getDebuggableView(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1
    .parameter "script"

    .prologue
    .line 2153
    instance-of v0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_0

    .line 2154
    check-cast p0, Lorg/mozilla/javascript/NativeFunction;

    .end local p0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getDebuggableView()Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v0

    .line 2156
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSourcePositionFromStack([I)Ljava/lang/String;
    .locals 8
    .parameter "linep"

    .prologue
    .line 2481
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 2482
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-nez v0, :cond_0

    .line 2483
    const/4 p0, 0x0

    .line 2529
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .end local p0
    :goto_0
    return-object p0

    .line 2484
    .restart local v0       #cx:Lorg/mozilla/javascript/Context;
    .restart local p0
    :cond_0
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2485
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v1

    .line 2486
    .local v1, evaluator:Lorg/mozilla/javascript/Evaluator;
    if-eqz v1, :cond_1

    .line 2487
    invoke-interface {v1, v0, p0}, Lorg/mozilla/javascript/Evaluator;->getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2493
    .end local v1           #evaluator:Lorg/mozilla/javascript/Evaluator;
    :cond_1
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 2494
    .local v1, writer:Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/lang/RuntimeException;

    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2495
    .local v0, re:Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2496
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2497
    .local v5, s:Ljava/lang/String;
    const/4 v3, -0x1

    .line 2498
    .local v3, open:I
    const/4 v0, -0x1

    .line 2499
    .local v0, close:I
    const/4 v1, -0x1

    .line 2500
    .local v1, colon:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #open:I
    .local v4, open:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    move v2, v1

    .end local v1           #colon:I
    .local v2, colon:I
    move v1, v0

    .end local v0           #close:I
    .local v1, close:I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 2501
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2502
    .local v0, c:C
    const/16 v6, 0x3a

    if-ne v0, v6, :cond_2

    .line 2503
    move v0, v3

    .end local v2           #colon:I
    .local v0, colon:I
    move v7, v0

    .end local v0           #colon:I
    .local v7, colon:I
    move v0, v1

    .end local v1           #close:I
    .local v0, close:I
    move v1, v7

    .line 2500
    .end local v7           #colon:I
    .local v1, colon:I
    :goto_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    move v2, v1

    .end local v1           #colon:I
    .local v2, colon:I
    move v1, v0

    .end local v0           #close:I
    .local v1, close:I
    goto :goto_1

    .line 2504
    .local v0, c:C
    :cond_2
    const/16 v6, 0x28

    if-ne v0, v6, :cond_3

    .line 2505
    move v0, v3

    .end local v4           #open:I
    .local v0, open:I
    move v4, v0

    .end local v0           #open:I
    .restart local v4       #open:I
    move v0, v1

    .end local v1           #close:I
    .local v0, close:I
    move v1, v2

    .end local v2           #colon:I
    .local v1, colon:I
    goto :goto_2

    .line 2506
    .local v0, c:C
    .local v1, close:I
    .restart local v2       #colon:I
    :cond_3
    const/16 v6, 0x29

    if-ne v0, v6, :cond_4

    .line 2507
    move v0, v3

    .end local v1           #close:I
    .local v0, close:I
    move v1, v2

    .end local v2           #colon:I
    .local v1, colon:I
    goto :goto_2

    .line 2508
    .local v0, c:C
    .local v1, close:I
    .restart local v2       #colon:I
    :cond_4
    const/16 v6, 0xa

    if-ne v0, v6, :cond_8

    const/4 v0, -0x1

    if-eq v4, v0, :cond_8

    .end local v0           #c:C
    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    const/4 v0, -0x1

    if-eq v2, v0, :cond_8

    if-ge v4, v2, :cond_8

    if-ge v2, v1, :cond_8

    .line 2511
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2512
    .local v0, fileStr:Ljava/lang/String;
    const-string v4, ".java"

    .end local v4           #open:I
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2513
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2           #colon:I
    move-result-object v1

    .line 2515
    .local v1, lineStr:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .end local v1           #lineStr:Ljava/lang/String;
    aput v1, p0, v2

    .line 2516
    const/4 v1, 0x0

    aget v1, p0, v1

    if-gez v1, :cond_5

    .line 2517
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object p0, v0

    .line 2519
    goto/16 :goto_0

    .line 2521
    :catch_0
    move-exception v0

    .line 2525
    .end local v0           #fileStr:Ljava/lang/String;
    :cond_6
    const/4 v1, -0x1

    .local v1, colon:I
    move v0, v1

    .local v0, close:I
    move v2, v1

    .local v2, open:I
    move v4, v2

    .end local v2           #open:I
    .restart local v4       #open:I
    goto :goto_2

    .line 2529
    .end local v0           #close:I
    .local v1, close:I
    .local v2, colon:I
    :cond_7
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .end local v1           #close:I
    .restart local v0       #close:I
    move v1, v2

    .end local v2           #colon:I
    .local v1, colon:I
    goto :goto_2
.end method

.method public static getUndefinedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1084
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public static isValidLanguageVersion(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 666
    sparse-switch p0, :sswitch_data_0

    .line 679
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 677
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 666
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_0
        0x6e -> :sswitch_0
        0x78 -> :sswitch_0
        0x82 -> :sswitch_0
        0x8c -> :sswitch_0
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_0
        0xb4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isValidOptimizationLevel(I)Z
    .locals 1
    .parameter "optimizationLevel"

    .prologue
    .line 1879
    const/4 v0, -0x1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
    .parameter "scope"

    .prologue
    .line 1698
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, p0

    .line 1706
    .end local p0
    :goto_0
    return-object v1

    .line 1702
    .restart local p0
    :cond_1
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_2

    .line 1703
    check-cast p0, Ljava/lang/Character;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1705
    .restart local p0
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 1706
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p0, v2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/EvaluatorException;
        }
    .end annotation

    .prologue
    .line 1724
    .local p1, desiredType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .locals 2
    .parameter "cx"
    .parameter "dscript"
    .parameter "debugSource"

    .prologue
    .line 2451
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    invoke-interface {v1, p0, p1, p2}, Lorg/mozilla/javascript/debug/Debugger;->handleCompilationDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    .line 2452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2453
    invoke-interface {p1, v0}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/Context;->notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2455
    :cond_0
    return-void
.end method

.method static onSealedMutation()V
    .locals 1

    .prologue
    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static removeContextListener(Lorg/mozilla/javascript/ContextListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 564
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ContextFactory;->addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    .line 565
    return-void
.end method

.method public static reportError(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 920
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput v4, v1, v4

    .line 921
    .local v1, linep:[I
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, filename:Ljava/lang/String;
    aget v2, v1, v4

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 923
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 902
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    .line 903
    .local v6, cx:Lorg/mozilla/javascript/Context;
    if-eqz v6, :cond_0

    .line 904
    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 910
    return-void

    .line 907
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/EvaluatorException;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method public static reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 999
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput v4, v1, v4

    .line 1000
    .local v1, linep:[I
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, filename:Ljava/lang/String;
    aget v2, v1, v4

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    return-object v2
.end method

.method public static reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 943
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    .line 944
    .local v6, cx:Lorg/mozilla/javascript/Context;
    if-eqz v6, :cond_0

    .line 945
    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    return-object v0

    .line 949
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/EvaluatorException;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method static reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 2
    .parameter "messageId"

    .prologue
    .line 956
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    return-object v1
.end method

.method static reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"

    .prologue
    .line 963
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    return-object v1
.end method

.method static reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 970
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    return-object v1
.end method

.method static reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 978
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    return-object v1
.end method

.method static reportRuntimeError4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .locals 2
    .parameter "messageId"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 986
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    return-object v1
.end method

.method public static reportWarning(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 871
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput v4, v1, v4

    .line 872
    .local v1, linep:[I
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, filename:Ljava/lang/String;
    aget v2, v1, v4

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 874
    return-void
.end method

.method public static reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "message"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 855
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v6

    .line 856
    .local v6, cx:Lorg/mozilla/javascript/Context;
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_0
    invoke-virtual {v6}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "message"
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 878
    const/4 v4, 0x1

    new-array v1, v4, [I

    aput v7, v1, v7

    .line 879
    .local v1, linep:[I
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 881
    .local v3, sw:Ljava/io/Writer;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 882
    .local v2, pw:Ljava/io/PrintWriter;
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 884
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 885
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget v5, v1, v7

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6, v7}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 886
    return-void
.end method

.method public static setCachingEnabled(Z)V
    .locals 0
    .parameter "cachingEnabled"

    .prologue
    .line 2084
    return-void
.end method

.method public static throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "e"

    .prologue
    .line 1766
    :goto_0
    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    .line 1767
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .restart local p0
    goto :goto_0

    .line 1770
    :cond_0
    instance-of v1, p0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 1771
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 1772
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-eqz v0, :cond_1

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1775
    :cond_1
    check-cast p0, Ljava/lang/Error;

    .end local p0
    throw p0

    .line 1778
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .restart local p0
    :cond_2
    instance-of v1, p0, Lorg/mozilla/javascript/RhinoException;

    if-eqz v1, :cond_3

    .line 1779
    check-cast p0, Lorg/mozilla/javascript/RhinoException;

    .end local p0
    throw p0

    .line 1781
    .restart local p0
    :cond_3
    new-instance v1, Lorg/mozilla/javascript/WrappedException;

    invoke-direct {v1, p0}, Lorg/mozilla/javascript/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 1603
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .locals 2
    .parameter "value"

    .prologue
    .line 1619
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "value"
    .parameter "scope"

    .prologue
    .line 1655
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public static toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "value"
    .parameter "scope"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/mozilla/javascript/Scriptable;"
        }
    .end annotation

    .prologue
    .line 1665
    .local p2, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1633
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1738
    .local p1, desiredType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1739
    :catch_0
    move-exception v0

    .line 1741
    .local v0, ex:Lorg/mozilla/javascript/EvaluatorException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v1, ex2:Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0}, Lorg/mozilla/javascript/Kit;->initCause(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1743
    throw v1
.end method


# virtual methods
.method public addActivationName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2572
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2573
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 2574
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    .line 2575
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2576
    return-void
.end method

.method public final addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 790
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Kit;->addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    .line 792
    return-void
.end method

.method public callFunctionWithContinuations(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "function"
    .parameter "scope"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/ContinuationPending;
        }
    .end annotation

    .prologue
    .line 1192
    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-nez v0, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Function argument was not created by interpreted mode "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have any pending top calls when executing a script with continuations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    .line 1204
    invoke-static {p1, p0, p2, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public captureContinuation()Lorg/mozilla/javascript/ContinuationPending;
    .locals 2

    .prologue
    .line 1221
    new-instance v0, Lorg/mozilla/javascript/ContinuationPending;

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ContinuationPending;-><init>(Lorg/mozilla/javascript/NativeContinuation;)V

    return-object v0
.end method

.method public final compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 8
    .parameter "scope"
    .parameter "source"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"

    .prologue
    const/4 v3, 0x0

    .line 1397
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/mozilla/javascript/Context;->compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    return-object v0
.end method

.method final compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 11
    .parameter "scope"
    .parameter "source"
    .parameter "compiler"
    .parameter "compilationErrorReporter"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"

    .prologue
    .line 1408
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object v8, p3

    move-object v9, p4

    :try_start_0
    invoke-direct/range {v0 .. v9}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Function;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1412
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1415
    .local v10, ioe:Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 10
    .parameter "in"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1324
    if-gez p3, :cond_0

    .line 1326
    const/4 p3, 0x0

    .line 1328
    :cond_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v8, v1

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Script;

    return-object p0
.end method

.method public final compileReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1
    .parameter "scope"
    .parameter "in"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    return-object v0
.end method

.method public final compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 7
    .parameter "source"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"

    .prologue
    const/4 v2, 0x0

    .line 1352
    if-gez p3, :cond_0

    .line 1354
    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 1356
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    return-object v0
.end method

.method final compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 11
    .parameter "source"
    .parameter "compiler"
    .parameter "compilationErrorReporter"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"

    .prologue
    .line 1367
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, p2

    move-object v9, p3

    :try_start_0
    invoke-direct/range {v0 .. v9}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Script;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1370
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1372
    .local v10, ex:Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .locals 2
    .parameter "parent"

    .prologue
    .line 2289
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    .line 2290
    .local v0, f:Lorg/mozilla/javascript/ContextFactory;
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ContextFactory;->createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object v1

    return-object v1
.end method

.method public final decompileFunction(Lorg/mozilla/javascript/Function;I)Ljava/lang/String;
    .locals 2
    .parameter "fun"
    .parameter "indent"

    .prologue
    .line 1449
    instance-of v0, p1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v0, :cond_0

    .line 1450
    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v0

    .line 1452
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/mozilla/javascript/Function;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() {\n\t[native code]\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final decompileFunctionBody(Lorg/mozilla/javascript/Function;I)Ljava/lang/String;
    .locals 3
    .parameter "fun"
    .parameter "indent"

    .prologue
    .line 1471
    instance-of v2, p1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v2, :cond_0

    .line 1472
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/BaseFunction;

    move-object v1, v0

    .line 1473
    .local v1, bf:Lorg/mozilla/javascript/BaseFunction;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v2

    .line 1476
    .end local v1           #bf:Lorg/mozilla/javascript/BaseFunction;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "[native code]\n"

    goto :goto_0
.end method

.method public final decompileScript(Lorg/mozilla/javascript/Script;I)Ljava/lang/String;
    .locals 3
    .parameter "script"
    .parameter "indent"

    .prologue
    .line 1430
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeFunction;

    move-object v1, v0

    .line 1431
    .local v1, scriptImpl:Lorg/mozilla/javascript/NativeFunction;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/mozilla/javascript/NativeFunction;->decompile(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final evaluateReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "scope"
    .parameter "in"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual/range {p0 .. p5}, Lorg/mozilla/javascript/Context;->compileReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    .line 1141
    .local v0, script:Lorg/mozilla/javascript/Script;
    if-eqz v0, :cond_0

    .line 1142
    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 1144
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "scope"
    .parameter "source"
    .parameter "sourceName"
    .parameter "lineno"
    .parameter "securityDomain"

    .prologue
    .line 1108
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    .line 1110
    .local v0, script:Lorg/mozilla/javascript/Script;
    if-eqz v0, :cond_0

    .line 1111
    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 1113
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public executeScriptWithContinuations(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "script"
    .parameter "scope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/ContinuationPending;
        }
    .end annotation

    .prologue
    .line 1164
    instance-of v1, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/mozilla/javascript/InterpretedFunction;->isScript()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1168
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Script argument was not a script or was not created by interpreted mode "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1171
    :cond_1
    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    .end local p1
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lorg/mozilla/javascript/Context;->callFunctionWithContinuations(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "property"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 820
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    .line 821
    .local v0, listeners:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 822
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    :cond_0
    return-void
.end method

.method public final getApplicationClassLoader()Ljava/lang/ClassLoader;
    .locals 5

    .prologue
    .line 2295
    iget-object v4, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    if-nez v4, :cond_2

    .line 2296
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    .line 2297
    .local v0, f:Lorg/mozilla/javascript/ContextFactory;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2298
    .local v2, loader:Ljava/lang/ClassLoader;
    if-nez v2, :cond_1

    .line 2299
    sget-object v4, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v4}, Lorg/mozilla/javascript/VMBridge;->getCurrentThreadClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2301
    .local v3, threadLoader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 2322
    .end local v0           #f:Lorg/mozilla/javascript/ContextFactory;
    .end local v2           #loader:Ljava/lang/ClassLoader;
    .end local v3           #threadLoader:Ljava/lang/ClassLoader;
    :goto_0
    return-object v4

    .line 2313
    .restart local v0       #f:Lorg/mozilla/javascript/ContextFactory;
    .restart local v2       #loader:Ljava/lang/ClassLoader;
    .restart local v3       #threadLoader:Ljava/lang/ClassLoader;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2314
    .local v1, fClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    if-eq v1, v4, :cond_3

    .line 2315
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2320
    .end local v1           #fClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #threadLoader:Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    iput-object v2, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    .line 2322
    .end local v0           #f:Lorg/mozilla/javascript/ContextFactory;
    .end local v2           #loader:Ljava/lang/ClassLoader;
    :cond_2
    iget-object v4, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 2317
    .restart local v0       #f:Lorg/mozilla/javascript/ContextFactory;
    .restart local v1       #fClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #loader:Ljava/lang/ClassLoader;
    .restart local v3       #threadLoader:Ljava/lang/ClassLoader;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1
.end method

.method final declared-synchronized getClassShutter()Lorg/mozilla/javascript/ClassShutter;
    .locals 1

    .prologue
    .line 1985
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getClassShutterSetter()Lorg/mozilla/javascript/Context$ClassShutterSetter;
    .locals 1

    .prologue
    .line 1994
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1995
    const/4 v0, 0x0

    .line 1997
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1996
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z

    .line 1997
    new-instance v0, Lorg/mozilla/javascript/Context$2;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Context$2;-><init>(Lorg/mozilla/javascript/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDebugger()Lorg/mozilla/javascript/debug/Debugger;
    .locals 1

    .prologue
    .line 2120
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    return-object v0
.end method

.method public final getDebuggerContextData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->debuggerData:Ljava/lang/Object;

    return-object v0
.end method

.method public getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .locals 1

    .prologue
    .line 2203
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 1
    .parameter "object"

    .prologue
    .line 1589
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-nez v0, :cond_0

    .line 726
    sget-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    .line 728
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    goto :goto_0
.end method

.method public final getFactory()Lorg/mozilla/javascript/ContextFactory;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method public final getImplementationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    sget-object v0, Lorg/mozilla/javascript/Context;->implementationVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "implementation.version"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Context;->implementationVersion:Ljava/lang/String;

    .line 715
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Context;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstructionObserverThreshold()I
    .locals 1

    .prologue
    .line 2216
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    return v0
.end method

.method public final getLanguageVersion()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lorg/mozilla/javascript/Context;->version:I

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 764
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    .line 765
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getMaximumInterpreterStackDepth()I
    .locals 1

    .prologue
    .line 1907
    iget v0, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    return v0
.end method

.method public final getOptimizationLevel()I
    .locals 1

    .prologue
    .line 1844
    iget v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    return v0
.end method

.method getRegExpProxy()Lorg/mozilla/javascript/RegExpProxy;
    .locals 2

    .prologue
    .line 2534
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    if-nez v1, :cond_0

    .line 2535
    const-string v1, "org.mozilla.javascript.regexp.RegExpImpl"

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2537
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 2538
    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/RegExpProxy;

    iput-object v1, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    .line 2541
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    return-object v1
.end method

.method getSecurityController()Lorg/mozilla/javascript/SecurityController;
    .locals 2

    .prologue
    .line 2552
    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->global()Lorg/mozilla/javascript/SecurityController;

    move-result-object v0

    .line 2553
    .local v0, global:Lorg/mozilla/javascript/SecurityController;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2556
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    goto :goto_0
.end method

.method public final getThreadLocal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 2024
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2025
    const/4 v0, 0x0

    .line 2026
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getWrapFactory()Lorg/mozilla/javascript/WrapFactory;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    if-nez v0, :cond_0

    .line 2109
    new-instance v0, Lorg/mozilla/javascript/WrapFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/WrapFactory;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    .line 2111
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    return-object v0
.end method

.method public final hasCompileFunctionsWithDynamicScope()Z
    .locals 1

    .prologue
    .line 2063
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->compileFunctionsWithDynamicScopeFlag:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 2
    .parameter "featureIndex"

    .prologue
    .line 2187
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    .line 2188
    .local v0, f:Lorg/mozilla/javascript/ContextFactory;
    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory;->hasFeature(Lorg/mozilla/javascript/Context;I)Z

    move-result v1

    return v1
.end method

.method public final initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public final initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;
    .locals 2

    .prologue
    .line 1020
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 1076
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public final isActivationNeeded(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 2588
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGeneratingDebug()Z
    .locals 1

    .prologue
    .line 1790
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebug:Z

    return v0
.end method

.method public final isGeneratingDebugChanged()Z
    .locals 1

    .prologue
    .line 2561
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebugChanged:Z

    return v0
.end method

.method public final isGeneratingSource()Z
    .locals 1

    .prologue
    .line 1815
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    return v0
.end method

.method public final isSealed()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    return v0
.end method

.method final isVersionECMA1()Z
    .locals 2

    .prologue
    .line 2546
    iget v0, p0, Lorg/mozilla/javascript/Context;->version:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Context;->version:I

    const/16 v1, 0x82

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "scope"
    .parameter "length"

    .prologue
    .line 1546
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    .line 1547
    .local v0, result:Lorg/mozilla/javascript/NativeArray;
    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 1548
    return-object v0
.end method

.method public final newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 3
    .parameter "scope"
    .parameter "elements"

    .prologue
    .line 1563
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 1564
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1565
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    .line 1566
    .local v0, result:Lorg/mozilla/javascript/NativeArray;
    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 1567
    return-object v0
.end method

.method public final newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "scope"

    .prologue
    .line 1489
    const-string v0, "Object"

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public final newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "scope"
    .parameter "constructorName"

    .prologue
    .line 1504
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public final newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "scope"
    .parameter "constructorName"
    .parameter "args"

    .prologue
    .line 1529
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 1530
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    .line 1532
    .local v0, ctor:Lorg/mozilla/javascript/Function;
    if-nez p3, :cond_0

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 1533
    :cond_0
    invoke-interface {v0, p0, p1, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    return-object v1
.end method

.method protected observeInstructionCount(I)V
    .locals 1
    .parameter "instructionCount"

    .prologue
    .line 2278
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    .line 2279
    .local v0, f:Lorg/mozilla/javascript/ContextFactory;
    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory;->observeInstructionCount(Lorg/mozilla/javascript/Context;I)V

    .line 2280
    return-void
.end method

.method public final declared-synchronized putThreadLocal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2037
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2038
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2039
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    .line 2040
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    monitor-exit p0

    return-void

    .line 2037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeActivationName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2599
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2600
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 2601
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2602
    :cond_1
    return-void
.end method

.method public final removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 803
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Kit;->removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    .line 805
    return-void
.end method

.method public final removeThreadLocal(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2050
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2051
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2054
    :goto_0
    return-void

    .line 2053
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeContinuation(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "continuation"
    .parameter "scope"
    .parameter "functionResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/ContinuationPending;
        }
    .end annotation

    .prologue
    .line 1245
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 1246
    .local v0, args:[Ljava/lang/Object;
    check-cast p1, Lorg/mozilla/javascript/NativeContinuation;

    .end local p1
    invoke-static {p1, p0, p2, v0}, Lorg/mozilla/javascript/Interpreter;->restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final seal(Ljava/lang/Object;)V
    .locals 1
    .parameter "sealKey"

    .prologue
    .line 600
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 601
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    .line 602
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    .line 603
    return-void
.end method

.method public final setApplicationClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    .line 2327
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2328
    :cond_0
    if-nez p1, :cond_1

    .line 2330
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    .line 2338
    :goto_0
    return-void

    .line 2333
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loader can not resolve Rhino classes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2337
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public final declared-synchronized setClassShutter(Lorg/mozilla/javascript/ClassShutter;)V
    .locals 2
    .parameter "shutter"

    .prologue
    .line 1973
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1974
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1975
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z

    if-eqz v0, :cond_2

    .line 1976
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot overwrite existing ClassShutter object"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1979
    :cond_2
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    .line 1980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1981
    monitor-exit p0

    return-void
.end method

.method public final setCompileFunctionsWithDynamicScope(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2073
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2074
    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->compileFunctionsWithDynamicScopeFlag:Z

    .line 2075
    return-void
.end method

.method public final setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V
    .locals 1
    .parameter "debugger"
    .parameter "contextData"

    .prologue
    .line 2141
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2142
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    .line 2143
    iput-object p2, p0, Lorg/mozilla/javascript/Context;->debuggerData:Ljava/lang/Object;

    .line 2144
    return-void
.end method

.method public final setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;
    .locals 3
    .parameter "reporter"

    .prologue
    .line 739
    iget-boolean v2, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 740
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 741
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v1

    .line 742
    .local v1, old:Lorg/mozilla/javascript/ErrorReporter;
    if-ne p1, v1, :cond_2

    .line 751
    :goto_0
    return-object v1

    .line 745
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    .line 746
    .local v0, listeners:Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 747
    const-string v2, "error reporter"

    invoke-direct {p0, v0, v2, v1, p1}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 750
    :cond_3
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    goto :goto_0
.end method

.method public setGenerateObserverCount(Z)V
    .locals 0
    .parameter "generateObserverCount"

    .prologue
    .line 2254
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generateObserverCount:Z

    .line 2255
    return-void
.end method

.method public final setGeneratingDebug(Z)V
    .locals 1
    .parameter "generatingDebug"

    .prologue
    .line 1802
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1803
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebugChanged:Z

    .line 1804
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v0

    if-lez v0, :cond_1

    .line 1805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    .line 1806
    :cond_1
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generatingDebug:Z

    .line 1807
    return-void
.end method

.method public final setGeneratingSource(Z)V
    .locals 1
    .parameter "generatingSource"

    .prologue
    .line 1830
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1831
    :cond_0
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    .line 1832
    return-void
.end method

.method public final setInstructionObserverThreshold(I)V
    .locals 1
    .parameter "threshold"

    .prologue
    .line 2236
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2237
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2238
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    .line 2239
    if-lez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setGenerateObserverCount(Z)V

    .line 2240
    return-void

    .line 2239
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLanguageVersion(I)V
    .locals 4
    .parameter "version"

    .prologue
    .line 653
    iget-boolean v1, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 654
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    .line 655
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    .line 656
    .local v0, listeners:Ljava/lang/Object;
    if-eqz v0, :cond_1

    iget v1, p0, Lorg/mozilla/javascript/Context;->version:I

    if-eq p1, v1, :cond_1

    .line 657
    const-string v1, "language version"

    iget v2, p0, Lorg/mozilla/javascript/Context;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 661
    :cond_1
    iput p1, p0, Lorg/mozilla/javascript/Context;->version:I

    .line 662
    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .parameter "loc"

    .prologue
    .line 775
    iget-boolean v1, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 776
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    .line 777
    .local v0, result:Ljava/util/Locale;
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    .line 778
    return-object v0
.end method

.method public final setMaximumInterpreterStackDepth(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 1929
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1930
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1931
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set maximumInterpreterStackDepth when optimizationLevel != -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1933
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 1934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set maximumInterpreterStackDepth to less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1936
    :cond_2
    iput p1, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    .line 1937
    return-void
.end method

.method public final setOptimizationLevel(I)V
    .locals 1
    .parameter "optimizationLevel"

    .prologue
    .line 1866
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1867
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1869
    const/4 p1, -0x1

    .line 1871
    :cond_1
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    .line 1872
    sget-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 1873
    const/4 p1, -0x1

    .line 1874
    :cond_2
    iput p1, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    .line 1875
    return-void
.end method

.method public final setSecurityController(Lorg/mozilla/javascript/SecurityController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1952
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 1953
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1954
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    if-eqz v0, :cond_2

    .line 1955
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can not overwrite existing SecurityController object"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1957
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->hasGlobal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1958
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can not overwrite existing global SecurityController object"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1960
    :cond_3
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    .line 1961
    return-void
.end method

.method public final setWrapFactory(Lorg/mozilla/javascript/WrapFactory;)V
    .locals 1
    .parameter "wrapFactory"

    .prologue
    .line 2096
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    .line 2097
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2098
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    .line 2099
    return-void
.end method

.method public final stringIsCompilableUnit(Ljava/lang/String;)Z
    .locals 8
    .parameter "source"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1269
    const/4 v2, 0x0

    .line 1270
    .local v2, errorseen:Z
    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    .line 1271
    .local v0, compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/CompilerEnvirons;->initFromContext(Lorg/mozilla/javascript/Context;)V

    .line 1274
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/CompilerEnvirons;->setGeneratingSource(Z)V

    .line 1275
    new-instance v3, Lorg/mozilla/javascript/Parser;

    sget-object v4, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    invoke-direct {v3, v0, v4}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    .line 1277
    .local v3, p:Lorg/mozilla/javascript/Parser;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, p1, v4, v5}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    :try_end_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->eof()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 1287
    :goto_1
    return v4

    .line 1278
    :catch_0
    move-exception v1

    .line 1279
    .local v1, ee:Lorg/mozilla/javascript/EvaluatorException;
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #ee:Lorg/mozilla/javascript/EvaluatorException;
    :cond_0
    move v4, v7

    .line 1287
    goto :goto_1
.end method

.method public final unseal(Ljava/lang/Object;)V
    .locals 1
    .parameter "sealKey"

    .prologue
    .line 616
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 618
    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 619
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    .line 621
    return-void
.end method
