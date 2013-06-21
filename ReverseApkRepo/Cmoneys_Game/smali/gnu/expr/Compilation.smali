.class public Lgnu/expr/Compilation;
.super Ljava/lang/Object;
.source "Compilation.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field public static final BODY_PARSED:I = 0x4

.field public static final CALL_WITH_CONSUMER:I = 0x2

.field public static final CALL_WITH_CONTINUATIONS:I = 0x4

.field public static final CALL_WITH_RETURN:I = 0x1

.field public static final CALL_WITH_TAILCALLS:I = 0x3

.field public static final CALL_WITH_UNSPECIFIED:I = 0x0

.field public static final CLASS_WRITTEN:I = 0xe

.field public static final COMPILED:I = 0xc

.field public static final COMPILE_SETUP:I = 0xa

.field public static final ERROR_SEEN:I = 0x64

.field public static final PROLOG_PARSED:I = 0x2

.field public static final PROLOG_PARSING:I = 0x1

.field public static final RESOLVED:I = 0x6

.field public static final WALKED:I = 0x8

.field public static apply0args:[Lgnu/bytecode/Type;

.field public static apply0method:Lgnu/bytecode/Method;

.field public static apply1args:[Lgnu/bytecode/Type;

.field public static apply1method:Lgnu/bytecode/Method;

.field public static apply2args:[Lgnu/bytecode/Type;

.field public static apply2method:Lgnu/bytecode/Method;

.field public static apply3method:Lgnu/bytecode/Method;

.field public static apply4method:Lgnu/bytecode/Method;

.field private static applyCpsArgs:[Lgnu/bytecode/Type;

.field public static applyCpsMethod:Lgnu/bytecode/Method;

.field public static applyNargs:[Lgnu/bytecode/Type;

.field public static applyNmethod:Lgnu/bytecode/Method;

.field public static applymethods:[Lgnu/bytecode/Method;

.field public static argsCallContextField:Lgnu/bytecode/Field;

.field private static chainUninitialized:Lgnu/expr/Compilation;

.field static checkArgCountMethod:Lgnu/bytecode/Method;

.field public static classPrefixDefault:Ljava/lang/String;

.field private static final current:Lgnu/mapping/ThreadLocation;

.field public static debugPrintExpr:Z

.field public static debugPrintFinalExpr:Z

.field public static defaultCallConvention:I

.field public static defaultClassFileVersion:I

.field public static emitSourceDebugExtAttr:Z

.field public static final falseConstant:Lgnu/bytecode/Field;

.field public static fewerClasses:Z

.field public static generateAppletDefault:Z

.field public static generateMainDefault:Z

.field public static generateServletDefault:Z

.field public static getCallContextInstanceMethod:Lgnu/bytecode/Method;

.field public static getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

.field public static final getLocationMethod:Lgnu/bytecode/Method;

.field public static final getProcedureBindingMethod:Lgnu/bytecode/Method;

.field public static final getSymbolProcedureMethod:Lgnu/bytecode/Method;

.field public static final getSymbolValueMethod:Lgnu/bytecode/Method;

.field public static inlineOk:Z

.field public static final int1Args:[Lgnu/bytecode/Type;

.field public static javaStringType:Lgnu/bytecode/ClassType;

.field static makeListMethod:Lgnu/bytecode/Method;

.field public static moduleStatic:I

.field public static noArgsField:Lgnu/bytecode/Field;

.field public static final objArrayType:Lgnu/bytecode/ArrayType;

.field public static options:Lgnu/text/Options;

.field public static pcCallContextField:Lgnu/bytecode/Field;

.field public static procCallContextField:Lgnu/bytecode/Field;

.field public static scmBooleanType:Lgnu/bytecode/ClassType;

.field public static scmKeywordType:Lgnu/bytecode/ClassType;

.field public static scmListType:Lgnu/bytecode/ClassType;

.field public static scmSequenceType:Lgnu/bytecode/ClassType;

.field static final setNameMethod:Lgnu/bytecode/Method;

.field public static final string1Arg:[Lgnu/bytecode/Type;

.field public static final sym1Arg:[Lgnu/bytecode/Type;

.field public static final trueConstant:Lgnu/bytecode/Field;

.field public static typeApplet:Lgnu/bytecode/ClassType;

.field public static typeCallContext:Lgnu/bytecode/ClassType;

.field public static typeClass:Lgnu/bytecode/ClassType;

.field public static typeClassType:Lgnu/bytecode/ClassType;

.field public static final typeConsumer:Lgnu/bytecode/ClassType;

.field public static typeEnvironment:Lgnu/bytecode/ClassType;

.field public static typeLanguage:Lgnu/bytecode/ClassType;

.field public static typeLocation:Lgnu/bytecode/ClassType;

.field public static typeMethodProc:Lgnu/bytecode/ClassType;

.field public static typeModuleBody:Lgnu/bytecode/ClassType;

.field public static typeModuleMethod:Lgnu/bytecode/ClassType;

.field public static typeModuleWithContext:Lgnu/bytecode/ClassType;

.field public static typeObject:Lgnu/bytecode/ClassType;

.field public static typeObjectType:Lgnu/bytecode/ClassType;

.field public static typePair:Lgnu/bytecode/ClassType;

.field public static typeProcedure:Lgnu/bytecode/ClassType;

.field public static typeProcedure0:Lgnu/bytecode/ClassType;

.field public static typeProcedure1:Lgnu/bytecode/ClassType;

.field public static typeProcedure2:Lgnu/bytecode/ClassType;

.field public static typeProcedure3:Lgnu/bytecode/ClassType;

.field public static typeProcedure4:Lgnu/bytecode/ClassType;

.field public static typeProcedureArray:[Lgnu/bytecode/ClassType;

.field public static typeProcedureN:Lgnu/bytecode/ClassType;

.field public static typeRunnable:Lgnu/bytecode/ClassType;

.field public static typeServlet:Lgnu/bytecode/ClassType;

.field public static typeString:Lgnu/bytecode/ClassType;

.field public static typeSymbol:Lgnu/bytecode/ClassType;

.field public static typeType:Lgnu/bytecode/ClassType;

.field public static typeValues:Lgnu/bytecode/ClassType;


# instance fields
.field callContextVar:Lgnu/bytecode/Variable;

.field callContextVarForInit:Lgnu/bytecode/Variable;

.field public classPrefix:Ljava/lang/String;

.field classes:[Lgnu/bytecode/ClassType;

.field clinitChain:Lgnu/expr/Initializer;

.field clinitMethod:Lgnu/bytecode/Method;

.field public curClass:Lgnu/bytecode/ClassType;

.field public curLambda:Lgnu/expr/LambdaExp;

.field public currentOptions:Lgnu/text/Options;

.field protected current_scope:Lgnu/expr/ScopeExp;

.field public exprStack:Ljava/util/Stack;

.field forNameHelper:Lgnu/bytecode/Method;

.field fswitch:Lgnu/bytecode/SwitchState;

.field fswitchIndex:Lgnu/bytecode/Field;

.field public generateApplet:Z

.field public generateMain:Z

.field public generateServlet:Z

.field public immediate:Z

.field private keyUninitialized:I

.field protected language:Lgnu/expr/Language;

.field public lexer:Lgnu/text/Lexer;

.field public lexical:Lgnu/expr/NameLookup;

.field litTable:Lgnu/expr/LitTable;

.field loader:Lgnu/bytecode/ArrayClassLoader;

.field localFieldIndex:I

.field public mainClass:Lgnu/bytecode/ClassType;

.field public mainLambda:Lgnu/expr/ModuleExp;

.field maxSelectorValue:I

.field protected messages:Lgnu/text/SourceMessages;

.field public method:Lgnu/bytecode/Method;

.field method_counter:I

.field public minfo:Lgnu/expr/ModuleInfo;

.field public moduleClass:Lgnu/bytecode/ClassType;

.field moduleInstanceMainField:Lgnu/bytecode/Field;

.field moduleInstanceVar:Lgnu/bytecode/Variable;

.field public mustCompile:Z

.field private nextUninitialized:Lgnu/expr/Compilation;

.field numClasses:I

.field pedantic:Z

.field public pendingImports:Ljava/util/Stack;

.field private state:I

.field public thisDecl:Lgnu/bytecode/Variable;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 108
    sput-boolean v10, Lgnu/expr/Compilation;->debugPrintExpr:Z

    .line 113
    new-instance v4, Lgnu/text/Options;

    invoke-direct {v4}, Lgnu/text/Options;-><init>()V

    sput-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    .line 116
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-undefined-variable"

    const-string v6, "warn if no compiler-visible binding for a variable"

    invoke-virtual {v4, v5, v9, v6}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-invoke-unknown-method"

    const-string v6, "warn if invoke calls an unknown method"

    invoke-virtual {v4, v5, v9, v6}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    sget-object v4, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    const-string v5, "warn-as-error"

    const-string v6, "Make all warnings into errors"

    invoke-virtual {v4, v5, v9, v6}, Lgnu/text/Options;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    const/high16 v4, 0x31

    sput v4, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 169
    sput v10, Lgnu/expr/Compilation;->moduleStatic:I

    .line 197
    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    .line 198
    const-string v4, "java.lang.Boolean"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .line 199
    const-string v4, "java.lang.String"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    .line 200
    sget-object v4, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    .line 201
    const-string v4, "gnu.expr.Keyword"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    .line 202
    const-string v4, "gnu.lists.Sequence"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    .line 203
    const-string v4, "gnu.lists.LList"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    .line 204
    const-string v4, "gnu.lists.Pair"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    .line 205
    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-static {v4}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 206
    const-string v4, "java.lang.Runnable"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    .line 207
    const-string v4, "gnu.bytecode.Type"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    .line 208
    const-string v4, "gnu.bytecode.ObjectType"

    sget-object v5, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    .line 210
    sget-object v4, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    sput-object v4, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    .line 211
    const-string v4, "gnu.bytecode.ClassType"

    sget-object v5, Lgnu/expr/Compilation;->typeObjectType:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    .line 212
    const-string v4, "gnu.mapping.Procedure"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .line 214
    const-string v4, "gnu.expr.Language"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    .line 216
    const-string v4, "gnu.mapping.Environment"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    .line 218
    const-string v4, "gnu.mapping.Location"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    .line 220
    const-string v4, "gnu.mapping.Symbol"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    .line 222
    sget-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v5, "getSymbolValue"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getSymbolValueMethod:Lgnu/bytecode/Method;

    .line 224
    sget-object v4, Lgnu/expr/Compilation;->typeLanguage:Lgnu/bytecode/ClassType;

    const-string v5, "getSymbolProcedure"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getSymbolProcedureMethod:Lgnu/bytecode/Method;

    .line 226
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v5, "get"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    .line 229
    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v5, "getProcedure"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getProcedureBindingMethod:Lgnu/bytecode/Method;

    .line 232
    sget-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->trueConstant:Lgnu/bytecode/Field;

    .line 234
    sget-object v4, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    const-string v5, "FALSE"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->falseConstant:Lgnu/bytecode/Field;

    .line 237
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "setName"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->setNameMethod:Lgnu/bytecode/Method;

    .line 241
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->int1Args:[Lgnu/bytecode/Type;

    .line 242
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    .line 243
    sget-object v4, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sput-object v4, Lgnu/expr/Compilation;->sym1Arg:[Lgnu/bytecode/Type;

    .line 245
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getLocation"

    invoke-virtual {v4, v5, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocation1EnvironmentMethod:Lgnu/bytecode/Method;

    .line 249
    new-array v2, v11, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v10

    sget-object v4, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v9

    .line 250
    .local v2, args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getLocation"

    sget-object v6, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v7, 0x11

    invoke-virtual {v4, v5, v2, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getLocation2EnvironmentMethod:Lgnu/bytecode/Method;

    .line 256
    new-array v3, v11, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v4, v3, v10

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v3, v9

    .line 257
    .local v3, makeListArgs:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v5, "makeList"

    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const/16 v7, 0x9

    invoke-virtual {v4, v5, v3, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    .line 262
    sget-object v4, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const-string v5, "getCurrent"

    sget-object v6, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeEnvironment:Lgnu/bytecode/ClassType;

    const/16 v8, 0x9

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getCurrentEnvironmentMethod:Lgnu/bytecode/Method;

    .line 266
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sput-object v4, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .line 267
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    .line 268
    new-array v4, v11, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v9

    sput-object v4, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    .line 269
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    .line 273
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply0"

    sget-object v6, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    const/16 v8, 0x11

    invoke-virtual {v4, v5, v6, v7, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    .line 284
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply1"

    sget-object v6, Lgnu/expr/Compilation;->apply1args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    .line 286
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply2"

    sget-object v6, Lgnu/expr/Compilation;->apply2args:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    .line 288
    new-array v0, v12, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v10

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v9

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v0, v11

    .line 289
    .local v0, apply3args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply3"

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v0, v6, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    .line 291
    new-array v1, v13, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v10

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v9

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v11

    sget-object v4, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v4, v1, v12

    .line 292
    .local v1, apply4args:[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply4"

    sget-object v6, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v1, v6, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    .line 294
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "applyN"

    sget-object v6, Lgnu/expr/Compilation;->applyNargs:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .line 296
    new-array v2, v11, [Lgnu/bytecode/Type;

    .line 297
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v4, v2, v10

    .line 298
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v4, v2, v9

    .line 299
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "checkArgCount"

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v7, 0x9

    invoke-virtual {v4, v5, v2, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->checkArgCountMethod:Lgnu/bytecode/Method;

    .line 304
    const/4 v4, 0x6

    new-array v4, v4, [Lgnu/bytecode/Method;

    sget-object v5, Lgnu/expr/Compilation;->apply0method:Lgnu/bytecode/Method;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->apply1method:Lgnu/bytecode/Method;

    aput-object v5, v4, v9

    sget-object v5, Lgnu/expr/Compilation;->apply2method:Lgnu/bytecode/Method;

    aput-object v5, v4, v11

    sget-object v5, Lgnu/expr/Compilation;->apply3method:Lgnu/bytecode/Method;

    aput-object v5, v4, v12

    sget-object v5, Lgnu/expr/Compilation;->apply4method:Lgnu/bytecode/Method;

    aput-object v5, v4, v13

    const/4 v5, 0x5

    sget-object v6, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    aput-object v6, v4, v5

    sput-object v4, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .line 308
    const-string v4, "gnu.mapping.Procedure0"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    .line 310
    const-string v4, "gnu.mapping.Procedure1"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    .line 312
    const-string v4, "gnu.mapping.Procedure2"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    .line 314
    const-string v4, "gnu.mapping.Procedure3"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    .line 316
    const-string v4, "gnu.mapping.Procedure4"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    .line 318
    const-string v4, "gnu.mapping.ProcedureN"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    .line 320
    const-string v4, "gnu.expr.ModuleBody"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    .line 322
    const-string v4, "gnu.expr.ModuleWithContext"

    sget-object v5, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    .line 324
    const-string v4, "java.applet.Applet"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 325
    const-string v4, "gnu.kawa.servlet.KawaServlet"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    .line 328
    const-string v4, "gnu.mapping.CallContext"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 330
    const-string v4, "gnu.lists.Consumer"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    .line 332
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "getInstance"

    invoke-virtual {v4, v5, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    .line 334
    const-string v4, "gnu.mapping.Values"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 336
    sget-object v4, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v5, "noArgs"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    .line 338
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "pc"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    .line 340
    const-string v4, "gnu.mapping.MethodProc"

    sget-object v5, Lgnu/expr/Compilation;->typeProcedureN:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    .line 342
    const-string v4, "gnu.expr.ModuleMethod"

    sget-object v5, Lgnu/expr/Compilation;->typeMethodProc:Lgnu/bytecode/ClassType;

    invoke-static {v4, v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 345
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "values"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->argsCallContextField:Lgnu/bytecode/Field;

    .line 347
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "proc"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    .line 349
    new-array v4, v9, [Lgnu/bytecode/Type;

    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sput-object v4, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    .line 350
    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v5, "apply"

    sget-object v6, Lgnu/expr/Compilation;->applyCpsArgs:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5, v6, v7, v9}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    sput-object v4, Lgnu/expr/Compilation;->applyCpsMethod:Lgnu/bytecode/Method;

    .line 354
    const/4 v4, 0x5

    new-array v4, v4, [Lgnu/bytecode/ClassType;

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure0:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v10

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure1:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v9

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure2:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v11

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure3:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v12

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure4:Lgnu/bytecode/ClassType;

    aput-object v5, v4, v13

    sput-object v4, Lgnu/expr/Compilation;->typeProcedureArray:[Lgnu/bytecode/ClassType;

    .line 361
    sput-boolean v10, Lgnu/expr/Compilation;->generateMainDefault:Z

    .line 367
    sput-boolean v10, Lgnu/expr/Compilation;->generateAppletDefault:Z

    .line 371
    sput-boolean v10, Lgnu/expr/Compilation;->generateServletDefault:Z

    .line 405
    sput-boolean v9, Lgnu/expr/Compilation;->inlineOk:Z

    .line 550
    const-string v4, ""

    sput-object v4, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    .line 1009
    sput-boolean v9, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    .line 2838
    new-instance v4, Lgnu/mapping/ThreadLocation;

    const-string v5, "current-compilation"

    invoke-direct {v4, v5}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v4, Lgnu/expr/Compilation;->current:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 2
    .parameter "language"
    .parameter "messages"
    .parameter "lexical"

    .prologue
    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lgnu/text/Options;

    sget-object v1, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-direct {v0, v1}, Lgnu/text/Options;-><init>(Lgnu/text/Options;)V

    iput-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    .line 363
    sget-boolean v0, Lgnu/expr/Compilation;->generateMainDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateMain:Z

    .line 369
    sget-boolean v0, Lgnu/expr/Compilation;->generateAppletDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateApplet:Z

    .line 373
    sget-boolean v0, Lgnu/expr/Compilation;->generateServletDefault:Z

    iput-boolean v0, p0, Lgnu/expr/Compilation;->generateServlet:Z

    .line 552
    sget-object v0, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    iput-object v0, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    .line 907
    iput-object p1, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    .line 908
    iput-object p2, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    .line 909
    iput-object p3, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    .line 910
    return-void
.end method

.method private checkLoop()V
    .locals 2

    .prologue
    .line 2589
    iget-object p0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .end local p0
    check-cast p0, Lgnu/expr/LambdaExp;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%do%loop"

    if-eq v0, v1, :cond_0

    .line 2590
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad loop state"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :cond_0
    return-void
.end method

.method public static demangle2(CC)C
    .locals 2
    .parameter "char1"
    .parameter "char2"

    .prologue
    const/16 v1, 0x25

    .line 774
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 806
    const v0, 0xffff

    :goto_0
    return v0

    .line 776
    :sswitch_0
    const/16 v0, 0x26

    goto :goto_0

    .line 777
    :sswitch_1
    const/16 v0, 0x40

    goto :goto_0

    .line 778
    :sswitch_2
    const/16 v0, 0x3a

    goto :goto_0

    .line 779
    :sswitch_3
    const/16 v0, 0x2c

    goto :goto_0

    .line 780
    :sswitch_4
    const/16 v0, 0x22

    goto :goto_0

    .line 781
    :sswitch_5
    const/16 v0, 0x2e

    goto :goto_0

    .line 782
    :sswitch_6
    const/16 v0, 0x3d

    goto :goto_0

    .line 783
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 784
    :sswitch_8
    const/16 v0, 0x3e

    goto :goto_0

    .line 785
    :sswitch_9
    const/16 v0, 0x5b

    goto :goto_0

    .line 786
    :sswitch_a
    const/16 v0, 0x7b

    goto :goto_0

    .line 787
    :sswitch_b
    const/16 v0, 0x28

    goto :goto_0

    .line 788
    :sswitch_c
    const/16 v0, 0x3c

    goto :goto_0

    :sswitch_d
    move v0, v1

    .line 789
    goto :goto_0

    .line 790
    :sswitch_e
    const/16 v0, 0x2d

    goto :goto_0

    .line 791
    :sswitch_f
    const/16 v0, 0x23

    goto :goto_0

    :sswitch_10
    move v0, v1

    .line 792
    goto :goto_0

    .line 793
    :sswitch_11
    const/16 v0, 0x2b

    goto :goto_0

    .line 794
    :sswitch_12
    const/16 v0, 0x3f

    goto :goto_0

    .line 795
    :sswitch_13
    const/16 v0, 0x5d

    goto :goto_0

    .line 796
    :sswitch_14
    const/16 v0, 0x7d

    goto :goto_0

    .line 797
    :sswitch_15
    const/16 v0, 0x29

    goto :goto_0

    .line 798
    :sswitch_16
    const/16 v0, 0x3b

    goto :goto_0

    .line 799
    :sswitch_17
    const/16 v0, 0x2f

    goto :goto_0

    .line 800
    :sswitch_18
    const/16 v0, 0x5c

    goto :goto_0

    .line 801
    :sswitch_19
    const/16 v0, 0x2a

    goto :goto_0

    .line 802
    :sswitch_1a
    const/16 v0, 0x7e

    goto :goto_0

    .line 803
    :sswitch_1b
    const/16 v0, 0x5e

    goto :goto_0

    .line 804
    :sswitch_1c
    const/16 v0, 0x7c

    goto :goto_0

    .line 774
    nop

    :sswitch_data_0
    .sparse-switch
        0x41006d -> :sswitch_0
        0x410074 -> :sswitch_1
        0x43006c -> :sswitch_2
        0x43006d -> :sswitch_3
        0x440071 -> :sswitch_4
        0x440074 -> :sswitch_5
        0x450071 -> :sswitch_6
        0x450078 -> :sswitch_7
        0x470072 -> :sswitch_8
        0x4c0042 -> :sswitch_9
        0x4c0043 -> :sswitch_a
        0x4c0050 -> :sswitch_b
        0x4c0073 -> :sswitch_c
        0x4d0063 -> :sswitch_d
        0x4d006e -> :sswitch_e
        0x4e006d -> :sswitch_f
        0x500063 -> :sswitch_10
        0x50006c -> :sswitch_11
        0x510075 -> :sswitch_12
        0x520042 -> :sswitch_13
        0x520043 -> :sswitch_14
        0x520050 -> :sswitch_15
        0x530043 -> :sswitch_16
        0x53006c -> :sswitch_17
        0x530071 -> :sswitch_18
        0x530074 -> :sswitch_19
        0x54006c -> :sswitch_1a
        0x550070 -> :sswitch_1b
        0x560042 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static demangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 811
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static demangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 14
    .parameter "name"
    .parameter "reversible"

    .prologue
    const/16 v13, 0x24

    const/4 v12, 0x1

    .line 816
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 817
    .local v9, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 818
    .local v6, len:I
    const/4 v7, 0x0

    .line 819
    .local v7, mangled:Z
    const/4 v8, 0x0

    .line 820
    .local v8, predicate:Z
    const/4 v4, 0x0

    .line 821
    .local v4, downCaseNext:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_8

    .line 823
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 824
    .local v2, ch:C
    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 826
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 827
    const/4 v4, 0x0

    .line 830
    :cond_0
    if-nez p1, :cond_3

    const/16 v10, 0x69

    if-ne v2, v10, :cond_3

    if-nez v5, :cond_3

    const/4 v10, 0x2

    if-le v6, v10, :cond_3

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x73

    if-ne v10, v11, :cond_3

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, d:C
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 834
    const/4 v7, 0x1

    .line 835
    const/4 v8, 0x1

    .line 836
    add-int/lit8 v5, v5, 0x1

    .line 837
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 839
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 840
    add-int/lit8 v5, v5, 0x1

    .line 821
    .end local v3           #d:C
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 845
    :cond_3
    if-ne v2, v13, :cond_5

    add-int/lit8 v10, v5, 0x2

    if-ge v10, v6, :cond_5

    .line 847
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 848
    .local v0, c1:C
    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 849
    .local v1, c2:C
    invoke-static {v0, v1}, Lgnu/expr/Compilation;->demangle2(CC)C

    move-result v3

    .line 850
    .restart local v3       #d:C
    const v10, 0xffff

    if-eq v3, v10, :cond_4

    .line 852
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 853
    add-int/lit8 v5, v5, 0x2

    .line 854
    const/4 v7, 0x1

    .line 855
    const/4 v4, 0x1

    .line 856
    goto :goto_1

    .line 858
    :cond_4
    const/16 v10, 0x54

    if-ne v0, v10, :cond_7

    const/16 v10, 0x6f

    if-ne v1, v10, :cond_7

    add-int/lit8 v10, v5, 0x3

    if-ge v10, v6, :cond_7

    add-int/lit8 v10, v5, 0x3

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_7

    .line 861
    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    add-int/lit8 v5, v5, 0x3

    .line 863
    const/4 v7, 0x1

    .line 864
    const/4 v4, 0x1

    .line 865
    goto :goto_1

    .line 868
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v3           #d:C
    :cond_5
    if-nez p1, :cond_7

    if-le v5, v12, :cond_7

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    sub-int v10, v5, v12

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 872
    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
    const/4 v7, 0x1

    .line 874
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 876
    :cond_7
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 878
    .end local v2           #ch:C
    :cond_8
    if-eqz v8, :cond_9

    .line 879
    const/16 v10, 0x3f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    return-object v10

    :cond_a
    move-object v10, p0

    goto :goto_2
.end method

.method private dumpInitializers(Lgnu/expr/Initializer;)V
    .locals 1
    .parameter "inits"

    .prologue
    .line 532
    invoke-static {p1}, Lgnu/expr/Initializer;->reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;

    move-result-object v0

    .line 533
    .local v0, init:Lgnu/expr/Initializer;
    :goto_0
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, p0}, Lgnu/expr/Initializer;->emit(Lgnu/expr/Compilation;)V

    .line 533
    iget-object v0, v0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    goto :goto_0

    .line 535
    :cond_0
    return-void
.end method

.method public static declared-synchronized findForImmediateLiterals(I)Lgnu/expr/Compilation;
    .locals 5
    .parameter "key"

    .prologue
    .line 2813
    const-class v3, Lgnu/expr/Compilation;

    monitor-enter v3

    const/4 v2, 0x0

    .line 2814
    .local v2, prev:Lgnu/expr/Compilation;
    :try_start_0
    sget-object v0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2816
    .local v0, comp:Lgnu/expr/Compilation;
    :goto_0
    iget-object v1, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2817
    .local v1, next:Lgnu/expr/Compilation;
    iget v4, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    if-ne v4, p0, :cond_1

    .line 2819
    if-nez v2, :cond_0

    .line 2820
    sput-object v1, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .line 2823
    :goto_1
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    monitor-exit v3

    return-object v0

    .line 2822
    :cond_0
    :try_start_1
    iput-object v1, v2, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2813
    .end local v0           #comp:Lgnu/expr/Compilation;
    .end local v1           #next:Lgnu/expr/Compilation;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 2826
    .restart local v0       #comp:Lgnu/expr/Compilation;
    .restart local v1       #next:Lgnu/expr/Compilation;
    :cond_1
    move-object v2, v0

    .line 2827
    move-object v0, v1

    .line 2828
    goto :goto_0
.end method

.method public static final getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 6
    .parameter "clas"
    .parameter "lexp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "<init>"

    .line 1080
    const-string v2, "<init>"

    invoke-virtual {p0, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 1081
    .local v1, meth:Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1091
    :goto_0
    return-object v2

    .line 1084
    :cond_0
    instance-of v2, p1, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_1

    .line 1086
    new-array v0, v4, [Lgnu/bytecode/Type;

    .line 1087
    .local v0, args:[Lgnu/bytecode/Type;
    iget-object v2, p1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1091
    :goto_1
    const-string v2, "<init>"

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v5, v4, v0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 1090
    .end local v0           #args:[Lgnu/bytecode/Type;
    :cond_1
    sget-object v0, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    .restart local v0       #args:[Lgnu/bytecode/Type;
    goto :goto_1
.end method

.method public static getCurrent()Lgnu/expr/Compilation;
    .locals 1

    .prologue
    .line 2843
    sget-object v0, Lgnu/expr/Compilation;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Compilation;

    return-object v0
.end method

.method public static isValidJavaName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 650
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 651
    .local v1, len:I
    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 656
    :goto_0
    return v2

    .line 653
    :cond_1
    move v0, v1

    .local v0, i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    .line 654
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 655
    goto :goto_0

    .line 656
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static mangleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 637
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mangleName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "kind"

    .prologue
    .line 674
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 675
    .local v4, reversible:Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 676
    .local v2, len:I
    const/4 v0, 0x6

    if-ne v2, v0, :cond_2

    const-string v0, "*init*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    const-string p0, "<init>"

    .line 766
    .end local p0
    .end local p1
    :cond_0
    :goto_1
    return-object p0

    .line 674
    .end local v2           #len:I
    .end local v4           #reversible:Z
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 678
    .restart local v2       #len:I
    .restart local v4       #reversible:Z
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 679
    .local v3, mangled:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 680
    .local v1, upcaseNext:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v5, v1

    .end local v1           #upcaseNext:Z
    .local v5, upcaseNext:Z
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_10

    .line 682
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 683
    .local v0, ch:C
    if-eqz v5, :cond_3

    .line 685
    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    .line 686
    const/4 v5, 0x0

    .line 688
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 690
    if-nez v1, :cond_4

    .line 691
    const-string v6, "$N"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v5

    .line 680
    .end local v5           #upcaseNext:Z
    .local v1, upcaseNext:Z
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    .end local v1           #upcaseNext:Z
    .restart local v5       #upcaseNext:Z
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    goto :goto_2

    .line 694
    .local v0, ch:C
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_6

    const/16 v6, 0x5f

    if-ne v0, v6, :cond_7

    .line 695
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v5

    .end local v5           #upcaseNext:Z
    .local v1, upcaseNext:Z
    goto :goto_3

    .line 696
    .local v0, ch:C
    .local v1, i:I
    .restart local v5       #upcaseNext:Z
    :cond_7
    const/16 v6, 0x24

    if-ne v0, v6, :cond_9

    .line 697
    const/4 v0, 0x1

    if-le p1, v0, :cond_8

    .end local v0           #ch:C
    const-string v0, "$$"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v5

    .end local v5           #upcaseNext:Z
    .local v1, upcaseNext:Z
    goto :goto_3

    .end local v0           #i:I
    .local v1, i:I
    .restart local v5       #upcaseNext:Z
    :cond_8
    const-string v0, "$"

    goto :goto_4

    .line 700
    .local v0, ch:C
    :cond_9
    sparse-switch v0, :sswitch_data_0

    .line 755
    const/16 v6, 0x24

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 756
    shr-int/lit8 v6, v0, 0xc

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 757
    shr-int/lit8 v6, v0, 0x8

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 758
    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 759
    and-int/lit8 v0, v0, 0xf

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Character;->forDigit(II)C

    .end local v0           #ch:C
    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a
    :goto_5
    move v0, v1

    .line 761
    .end local v1           #i:I
    .local v0, i:I
    :goto_6
    if-nez v4, :cond_11

    .line 762
    const/4 v1, 0x1

    .end local v5           #upcaseNext:Z
    .local v1, upcaseNext:Z
    goto :goto_3

    .line 702
    .local v0, ch:C
    .local v1, i:I
    .restart local v5       #upcaseNext:Z
    :sswitch_0
    const-string v0, "$Pl"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 704
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_1
    if-eqz v4, :cond_b

    .line 705
    const-string v0, "$Mn"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 708
    .local v0, ch:C
    .restart local v1       #i:I
    :cond_b
    add-int/lit8 v0, v1, 0x1

    if-ge v0, v2, :cond_c

    .end local v0           #ch:C
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 709
    .local v0, next:C
    :goto_7
    const/16 v6, 0x3e

    if-ne v0, v6, :cond_d

    .line 711
    const-string v0, "$To$"

    .end local v0           #next:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 708
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 714
    .local v0, next:C
    :cond_d
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    .end local v0           #next:C
    if-nez v0, :cond_a

    .line 715
    const-string v0, "$Mn"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 718
    .local v0, ch:C
    :sswitch_2
    const-string v0, "$St"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 719
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_3
    const-string v0, "$Sl"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 720
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_4
    const-string v0, "$Eq"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 721
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_5
    const-string v0, "$Ls"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 722
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_6
    const-string v0, "$Gr"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 723
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_7
    const-string v0, "$At"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 724
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_8
    const-string v0, "$Tl"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 725
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_9
    const-string v0, "$Pc"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 726
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_a
    const-string v0, "$Dt"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 727
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_b
    const-string v0, "$Cm"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto :goto_6

    .line 728
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_c
    const-string v0, "$LP"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 729
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_d
    const-string v0, "$RP"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 730
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_e
    const-string v0, "$LB"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 731
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_f
    const-string v0, "$RB"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 732
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_10
    const-string v0, "$LC"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 733
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_11
    const-string v0, "$RC"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 734
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_12
    const-string v0, "$Sq"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 735
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_13
    const-string v0, "$Dq"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 736
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_14
    const-string v0, "$Am"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 737
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_15
    const-string v0, "$Nm"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 739
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_16
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .end local v0           #ch:C
    if-lez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 740
    .local v0, first:C
    :goto_8
    if-nez v4, :cond_f

    add-int/lit8 v6, v1, 0x1

    if-ne v6, v2, :cond_f

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 743
    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    .end local v0           #first:C
    invoke-virtual {v3, v6, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 744
    const/4 v0, 0x0

    const-string v6, "is"

    invoke-virtual {v3, v0, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 739
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    .line 747
    .local v0, first:C
    :cond_f
    const-string v0, "$Qu"

    .end local v0           #first:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 748
    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 749
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_17
    const-string v0, "$Ex"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 750
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_18
    const-string v0, "$Cl"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 751
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_19
    const-string v0, "$SC"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 752
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_1a
    const-string v0, "$Up"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 753
    .local v0, ch:C
    .restart local v1       #i:I
    :sswitch_1b
    const-string v0, "$VB"

    .end local v0           #ch:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #i:I
    .local v0, i:I
    goto/16 :goto_6

    .line 765
    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_10
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 766
    .local p1, mname:Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p0, p1

    goto/16 :goto_1

    .end local v1           #i:I
    .restart local v0       #i:I
    .local p1, kind:I
    :cond_11
    move v1, v5

    .end local v5           #upcaseNext:Z
    .local v1, upcaseNext:Z
    goto/16 :goto_3

    .line 700
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_17
        0x22 -> :sswitch_13
        0x23 -> :sswitch_15
        0x25 -> :sswitch_9
        0x26 -> :sswitch_14
        0x27 -> :sswitch_12
        0x28 -> :sswitch_c
        0x29 -> :sswitch_d
        0x2a -> :sswitch_2
        0x2b -> :sswitch_0
        0x2c -> :sswitch_b
        0x2d -> :sswitch_1
        0x2e -> :sswitch_a
        0x2f -> :sswitch_3
        0x3a -> :sswitch_18
        0x3b -> :sswitch_19
        0x3c -> :sswitch_5
        0x3d -> :sswitch_4
        0x3e -> :sswitch_6
        0x3f -> :sswitch_16
        0x40 -> :sswitch_7
        0x5b -> :sswitch_e
        0x5d -> :sswitch_f
        0x5e -> :sswitch_1a
        0x7b -> :sswitch_10
        0x7c -> :sswitch_1b
        0x7d -> :sswitch_11
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method public static mangleName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "reversible"

    .prologue
    .line 664
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 642
    invoke-static {p0}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mangleURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    .line 572
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 573
    .local v0, hasSlash:Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 574
    .local v1, len:I
    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    const-string v2, "class:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move v9, v1

    .end local v1           #len:I
    .local v9, len:I
    move-object v1, p0

    move p0, v0

    .local p0, hasSlash:I
    move v0, v9

    .line 632
    .end local v9           #len:I
    .local v0, len:I
    :goto_1
    return-object v1

    .line 572
    .end local v0           #len:I
    .local p0, name:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 577
    .local v0, hasSlash:Z
    .restart local v1       #len:I
    :cond_1
    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 580
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #hasSlash:Z
    move-result-object p0

    .line 581
    add-int/lit8 v1, v1, -0x5

    .line 582
    const/4 v0, 0x1

    .restart local v0       #hasSlash:Z
    move v3, v0

    .local v3, hasSlash:I
    move v0, v1

    .line 590
    .end local v1           #len:I
    .local v0, len:I
    :goto_2
    const/4 v1, 0x0

    .line 591
    .local v1, start:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, sbuf:Ljava/lang/StringBuffer;
    move v7, v1

    .end local v1           #start:I
    .local v7, start:I
    move v4, v0

    .line 594
    .end local v0           #len:I
    .local v4, len:I
    :goto_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 595
    .local v6, slash:I
    if-gez v6, :cond_4

    move v1, v4

    .line 596
    .local v1, end:I
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 597
    .local v2, first:Z
    :goto_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 600
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, host:Ljava/lang/String;
    sub-int v2, v1, v7

    const/4 v7, 0x4

    if-le v2, v7, :cond_2

    .end local v2           #first:Z
    .end local v7           #start:I
    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    :cond_2
    invoke-static {v0, v5}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    move v0, v1

    .end local v1           #end:I
    .local v0, end:I
    move v1, v4

    .line 628
    .end local v4           #len:I
    .local v1, len:I
    :goto_6
    if-gez v6, :cond_9

    .line 632
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #name:Ljava/lang/String;
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    move-object v1, p0

    move p0, v3

    .end local v3           #hasSlash:I
    .local p0, hasSlash:I
    goto :goto_1

    .line 584
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v6           #slash:I
    .local v0, hasSlash:Z
    .restart local v1       #len:I
    .local p0, name:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    if-le v1, v2, :cond_c

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 587
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 588
    add-int/lit8 v1, v1, -0x4

    move v3, v0

    .restart local v3       #hasSlash:I
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    goto :goto_2

    .end local v0           #len:I
    .restart local v4       #len:I
    .restart local v5       #sbuf:Ljava/lang/StringBuffer;
    .restart local v6       #slash:I
    .restart local v7       #start:I
    :cond_4
    move v1, v6

    .line 595
    goto :goto_4

    .line 596
    .local v1, end:I
    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_5

    .line 606
    .restart local v2       #first:Z
    :cond_6
    if-eq v7, v1, :cond_b

    .line 608
    if-nez v2, :cond_7

    .line 609
    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 610
    :cond_7
    if-ne v1, v4, :cond_a

    .line 612
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 613
    .local v0, dot:I
    add-int/lit8 v8, v7, 0x1

    if-le v0, v8, :cond_a

    if-nez v2, :cond_a

    .line 616
    sub-int v0, v4, v0

    .line 617
    .local v0, extLen:I
    const/4 v2, 0x4

    if-le v0, v2, :cond_8

    .end local v2           #first:Z
    const/4 v2, 0x5

    if-ne v0, v2, :cond_a

    const-string v2, "html"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 620
    :cond_8
    sub-int v1, v4, v0

    .line 621
    .end local v4           #len:I
    .local v1, len:I
    move v0, v1

    .line 622
    .local v0, end:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 626
    :goto_7
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 630
    .end local v7           #start:I
    :cond_9
    add-int/lit8 v0, v6, 0x1

    .local v0, start:I
    move v7, v0

    .end local v0           #start:I
    .restart local v7       #start:I
    move v4, v1

    .line 631
    .end local v1           #len:I
    .restart local v4       #len:I
    goto/16 :goto_3

    .local v1, end:I
    :cond_a
    move v0, v1

    .end local v1           #end:I
    .local v0, end:I
    move v1, v4

    .end local v4           #len:I
    .local v1, len:I
    goto :goto_7

    .end local v0           #end:I
    .local v1, end:I
    .restart local v2       #first:Z
    .restart local v4       #len:I
    :cond_b
    move v0, v1

    .end local v1           #end:I
    .restart local v0       #end:I
    move v1, v4

    .end local v4           #len:I
    .local v1, len:I
    goto :goto_6

    .end local v2           #first:Z
    .end local v3           #hasSlash:I
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    .end local v6           #slash:I
    .end local v7           #start:I
    .local v0, hasSlash:Z
    :cond_c
    move v3, v0

    .restart local v3       #hasSlash:I
    move v0, v1

    .end local v1           #len:I
    .local v0, len:I
    goto/16 :goto_2
.end method

.method private static putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "name"
    .parameter "sbuf"

    .prologue
    const/16 v2, 0x2e

    .line 557
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 558
    .local v0, dot:I
    if-lez v0, :cond_0

    .line 560
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/expr/Compilation;->putURLWords(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 561
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 564
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    return-void
.end method

.method private registerClass(Lgnu/bytecode/ClassType;)V
    .locals 4
    .parameter "new_class"

    .prologue
    const/4 v3, 0x0

    .line 1013
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    if-nez v1, :cond_2

    .line 1014
    const/16 v1, 0x14

    new-array v1, v1, [Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 1021
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassType;->addModifiers(I)V

    .line 1023
    iget-object v1, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v1, :cond_1

    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-lez v1, :cond_1

    .line 1026
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object p1, v1, v3

    .line 1027
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    aput-object v2, v1, v3

    .line 1029
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/expr/Compilation;->numClasses:I

    aput-object p1, v1, v2

    .line 1030
    return-void

    .line 1015
    :cond_2
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    iget-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1017
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lgnu/bytecode/ClassType;

    .line 1018
    .local v0, new_classes:[Lgnu/bytecode/ClassType;
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    iget v2, p0, Lgnu/expr/Compilation;->numClasses:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    iput-object v0, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1021
    .end local v0           #new_classes:[Lgnu/bytecode/ClassType;
    :cond_3
    const/16 v1, 0x21

    goto :goto_1
.end method

.method public static declared-synchronized registerForImmediateLiterals(Lgnu/expr/Compilation;)I
    .locals 4
    .parameter "comp"

    .prologue
    .line 2799
    const-class v2, Lgnu/expr/Compilation;

    monitor-enter v2

    const/4 v1, 0x0

    .line 2800
    .local v1, i:I
    :try_start_0
    sget-object v0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    .local v0, c:Lgnu/expr/Compilation;
    :goto_0
    if-eqz v0, :cond_1

    .line 2802
    iget v3, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    if-gt v1, v3, :cond_0

    .line 2803
    iget v3, v0, Lgnu/expr/Compilation;->keyUninitialized:I

    add-int/lit8 v1, v3, 0x1

    .line 2800
    :cond_0
    iget-object v0, v0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    goto :goto_0

    .line 2805
    :cond_1
    iput v1, p0, Lgnu/expr/Compilation;->keyUninitialized:I

    .line 2806
    sget-object v3, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;

    iput-object v3, p0, Lgnu/expr/Compilation;->nextUninitialized:Lgnu/expr/Compilation;

    .line 2807
    sput-object p0, Lgnu/expr/Compilation;->chainUninitialized:Lgnu/expr/Compilation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2808
    monitor-exit v2

    return v1

    .line 2799
    .end local v0           #c:Lgnu/expr/Compilation;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static setCurrent(Lgnu/expr/Compilation;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 2848
    sget-object v0, Lgnu/expr/Compilation;->current:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0, p0}, Lgnu/mapping/ThreadLocation;->set(Ljava/lang/Object;)V

    .line 2849
    return-void
.end method

.method public static setupLiterals(I)V
    .locals 7
    .parameter "key"

    .prologue
    .line 2770
    invoke-static {p0}, Lgnu/expr/Compilation;->findForImmediateLiterals(I)Lgnu/expr/Compilation;

    move-result-object v1

    .line 2773
    .local v1, comp:Lgnu/expr/Compilation;
    :try_start_0
    iget-object v4, v1, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    iget-object v5, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2776
    .local v0, clas:Ljava/lang/Class;
    iget-object v4, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    iget-object v3, v4, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v3, init:Lgnu/expr/Literal;
    :goto_0
    if-eqz v3, :cond_0

    .line 2785
    iget-object v4, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, v3, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2777
    iget-object v3, v3, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_0

    .line 2788
    :cond_0
    const/4 v4, 0x0

    iput-object v4, v1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2794
    return-void

    .line 2790
    .end local v0           #clas:Ljava/lang/Class;
    .end local v3           #init:Lgnu/expr/Literal;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 2792
    .local v2, ex:Ljava/lang/Throwable;
    new-instance v4, Lgnu/mapping/WrappedException;

    const-string v5, "internal error"

    invoke-direct {v4, v5, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private startClassInit()Lgnu/bytecode/Method;
    .locals 8

    .prologue
    .line 1815
    iget-object v3, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string v4, "<clinit>"

    sget-object v5, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v7, 0x9

    invoke-virtual {v3, v4, v5, v6, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1818
    iget-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1820
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateMain:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateApplet:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateServlet:Z

    if-eqz v3, :cond_1

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 1824
    .local v1, languageType:Lgnu/bytecode/ClassType;
    const-string v3, "registerEnvironment"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 1826
    .local v2, registerMethod:Lgnu/bytecode/Method;
    if-eqz v2, :cond_1

    .line 1827
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1829
    .end local v1           #languageType:Lgnu/bytecode/ClassType;
    .end local v2           #registerMethod:Lgnu/bytecode/Method;
    :cond_1
    iget-object v3, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    return-object v3
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 1
    .parameter "new_class"

    .prologue
    .line 1034
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1036
    sget-boolean v0, Lgnu/expr/Compilation;->emitSourceDebugExtAttr:Z

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Language;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setStratum(Ljava/lang/String;)V

    .line 1038
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v0, v0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 1040
    :cond_1
    invoke-direct {p0, p1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 1041
    sget v0, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 1042
    return-void
.end method

.method public addMainClass(Lgnu/expr/ModuleExp;)V
    .locals 4
    .parameter "module"

    .prologue
    .line 1046
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 1048
    invoke-virtual {p1, p0}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1050
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 1051
    .local v2, type:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1052
    .local v0, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 1054
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1055
    .local v1, sup:Lgnu/bytecode/ClassType;
    if-nez v1, :cond_1

    .line 1057
    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateApplet:Z

    if-eqz v3, :cond_3

    .line 1058
    sget-object v1, Lgnu/expr/Compilation;->typeApplet:Lgnu/bytecode/ClassType;

    .line 1064
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateServlet:Z

    if-nez v3, :cond_2

    .line 1065
    sget-object v3, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->addInterface(Lgnu/bytecode/ClassType;)V

    .line 1066
    :cond_2
    invoke-virtual {v2, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1068
    iput-object v2, p1, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 1069
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1070
    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-static {v3, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    .line 1071
    return-void

    .line 1059
    :cond_3
    iget-boolean v3, p0, Lgnu/expr/Compilation;->generateServlet:Z

    if-eqz v3, :cond_4

    .line 1060
    sget-object v1, Lgnu/expr/Compilation;->typeServlet:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 1062
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_0
.end method

.method public allocLocalField(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 2265
    if-nez p2, :cond_0

    .line 2266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tmp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2267
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 2268
    .local v0, field:Lgnu/bytecode/Field;
    return-object v0
.end method

.method callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V
    .locals 11
    .parameter "clas"
    .parameter "seen"

    .prologue
    .line 1166
    if-nez p1, :cond_1

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1170
    .local v8, name:Ljava/lang/String;
    const-string v9, "java.lang.Object"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1173
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v4

    .local v4, i:I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 1174
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/bytecode/ClassType;

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v8, :cond_2

    goto :goto_0

    .line 1176
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1181
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 1182
    .local v5, interfaces:[Lgnu/bytecode/ClassType;
    if-eqz v5, :cond_4

    .line 1184
    array-length v7, v5

    .line 1185
    .local v7, n:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_4

    .line 1186
    aget-object v9, v5, v4

    invoke-virtual {p0, v9, p2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1185
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1189
    .end local v7           #n:I
    :cond_4
    const/4 v1, 0x1

    .line 1190
    .local v1, clEnvArgs:I
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1192
    instance-of v9, p1, Lgnu/expr/PairClassType;

    if-eqz v9, :cond_5

    .line 1193
    check-cast p1, Lgnu/expr/PairClassType;

    .end local p1
    iget-object p1, p1, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 1209
    .restart local p1
    :goto_2
    const-string v9, "$finit$"

    invoke-virtual {p1, v9, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v6

    .line 1210
    .local v6, meth:Lgnu/bytecode/Method;
    if-eqz v6, :cond_0

    .line 1212
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 1213
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1214
    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 1198
    .end local v2           #code:Lgnu/bytecode/CodeAttr;
    .end local v6           #meth:Lgnu/bytecode/Method;
    :cond_5
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object p1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1201
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1203
    .local v3, ex:Ljava/lang/Throwable;
    goto :goto_0

    .line 1208
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public cleanupAfterCompilation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 950
    const/4 v0, 0x0

    .local v0, iClass:I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_0

    .line 951
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->cleanupAfterCompilation()V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_0
    iput-object v2, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    .line 953
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v2, v1, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 955
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    .line 956
    iget-object v1, p0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iget-object v1, v1, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    iput-object v2, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 957
    :cond_1
    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v2, v1, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 958
    iput-object v2, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 959
    return-void
.end method

.method public compileConstant(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 388
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 389
    .local v0, code:Lgnu/bytecode/CodeAttr;
    if-nez p1, :cond_0

    .line 390
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 395
    .end local p1
    :goto_0
    return-void

    .line 391
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-nez v1, :cond_1

    .line 392
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V
    .locals 17
    .parameter "value"
    .parameter "target"

    .prologue
    .line 426
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move v15, v0

    if-eqz v15, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Values;

    move v15, v0

    if-eqz v15, :cond_2

    .line 430
    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Values;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v14

    .line 431
    .local v14, values:[Ljava/lang/Object;
    array-length v7, v14

    .line 432
    .local v7, len:I
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move v15, v0

    if-eqz v15, :cond_2

    .line 434
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 436
    aget-object v15, v14, v6

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 434
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 441
    .end local v6           #i:I
    .end local v7           #len:I
    .end local v14           #values:[Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ConditionalTarget;

    move v15, v0

    if-eqz v15, :cond_4

    .line 443
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ConditionalTarget;

    move-object v4, v0

    .line 444
    .local v4, ctarg:Lgnu/expr/ConditionalTarget;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v0, v4

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    :goto_2
    invoke-virtual/range {v15 .. v16}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    :cond_3
    move-object v0, v4

    iget-object v0, v0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    move-object/from16 v16, v0

    goto :goto_2

    .line 448
    .end local v4           #ctarg:Lgnu/expr/ConditionalTarget;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/StackTarget;

    move v15, v0

    if-eqz v15, :cond_8

    .line 450
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/StackTarget;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/expr/StackTarget;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 451
    .local v12, type:Lgnu/bytecode/Type;
    instance-of v15, v12, Lgnu/bytecode/PrimType;

    if-eqz v15, :cond_7

    .line 455
    :try_start_0
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v11

    .line 456
    .local v11, signature:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 457
    .local v3, code:Lgnu/bytecode/CodeAttr;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    :cond_5
    const/16 v15, 0x20

    move v10, v15

    .line 459
    .local v10, sig1:C
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Number;

    move v15, v0

    if-eqz v15, :cond_6

    .line 461
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v8, v0

    .line 462
    .local v8, num:Ljava/lang/Number;
    sparse-switch v10, :sswitch_data_0

    .line 484
    .end local v8           #num:Ljava/lang/Number;
    :cond_6
    const/16 v15, 0x43

    if-ne v10, v15, :cond_a

    .line 486
    move-object v0, v12

    check-cast v0, Lgnu/bytecode/PrimType;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/bytecode/PrimType;->charValue(Ljava/lang/Object;)C

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 496
    .end local v3           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #sig1:C
    .end local v11           #signature:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 503
    :cond_7
    :try_start_1
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 523
    .end local v12           #type:Lgnu/bytecode/Type;
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 524
    if-nez p1, :cond_e

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 457
    .restart local v3       #code:Lgnu/bytecode/CodeAttr;
    .restart local v11       #signature:Ljava/lang/String;
    .restart local v12       #type:Lgnu/bytecode/Type;
    :cond_9
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v10, v15

    goto :goto_3

    .line 465
    .restart local v8       #num:Ljava/lang/Number;
    .restart local v10       #sig1:C
    :sswitch_0
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 468
    :sswitch_1
    invoke-virtual {v8}, Ljava/lang/Number;->shortValue()S

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 471
    :sswitch_2
    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto/16 :goto_0

    .line 474
    :sswitch_3
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto/16 :goto_0

    .line 477
    :sswitch_4
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto/16 :goto_0

    .line 480
    :sswitch_5
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    move-object v0, v3

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto/16 :goto_0

    .line 489
    .end local v8           #num:Ljava/lang/Number;
    :cond_a
    const/16 v15, 0x5a

    if-ne v10, v15, :cond_7

    .line 491
    invoke-static/range {p1 .. p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result v13

    .line 492
    .local v13, val:Z
    if-eqz v13, :cond_b

    const/4 v15, 0x1

    :goto_6
    invoke-virtual {v3, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 505
    .end local v3           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #sig1:C
    .end local v11           #signature:Ljava/lang/String;
    .end local v13           #val:Z
    :catch_1
    move-exception v5

    .line 507
    .local v5, ex:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 508
    .local v9, sbuf:Ljava/lang/StringBuffer;
    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object v1, v15

    if-ne v0, v1, :cond_c

    .line 509
    const-string v15, "cannot convert void to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    :goto_7
    invoke-virtual {v12}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    const/16 v15, 0x77

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_4

    .line 512
    :cond_c
    const-string v15, "cannot convert literal (of type "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    if-nez p1, :cond_d

    .line 514
    const-string v15, "<null>"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :goto_8
    const-string v15, ") to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 516
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 524
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v9           #sbuf:Ljava/lang/StringBuffer;
    .end local v12           #type:Lgnu/bytecode/Type;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v15

    goto/16 :goto_5

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public compileConstantToField(Ljava/lang/Object;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "value"

    .prologue
    .line 399
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v1, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v0

    .line 400
    .local v0, literal:Lgnu/expr/Literal;
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 401
    iget-object v1, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v0, v1}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 402
    :cond_0
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    return-object v1
.end method

.method public compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V
    .locals 12
    .parameter "mexp"
    .parameter "fname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, ".zip"

    .line 964
    const/4 v3, 0x0

    .line 965
    .local v3, makeJar:Z
    const-string v8, ".zip"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 966
    const/4 v3, 0x0

    .line 975
    :goto_0
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lgnu/expr/Compilation;->process(I)V

    .line 977
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 978
    .local v4, zar_file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 979
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 982
    :cond_0
    if-eqz v3, :cond_3

    .line 983
    new-instance v7, Ljava/util/jar/JarOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 988
    .local v7, zout:Ljava/util/zip/ZipOutputStream;
    :goto_1
    iget v8, p0, Lgnu/expr/Compilation;->numClasses:I

    new-array v1, v8, [[B

    .line 989
    .local v1, classBytes:[[B
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    .line 990
    .local v5, zcrc:Ljava/util/zip/CRC32;
    const/4 v2, 0x0

    .local v2, iClass:I
    :goto_2
    iget v8, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v8, :cond_4

    .line 992
    iget-object v8, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v8, v2

    .line 993
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v8

    aput-object v8, v1, v2

    .line 994
    new-instance v6, Ljava/util/zip/ZipEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 997
    .local v6, zent:Ljava/util/zip/ZipEntry;
    aget-object v8, v1, v2

    array-length v8, v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 998
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 999
    aget-object v8, v1, v2

    const/4 v9, 0x0

    aget-object v10, v1, v2

    array-length v10, v10

    invoke-virtual {v5, v8, v9, v10}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1000
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 1002
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1003
    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 967
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    .end local v1           #classBytes:[[B
    .end local v2           #iClass:I
    .end local v4           #zar_file:Ljava/io/File;
    .end local v5           #zcrc:Ljava/util/zip/CRC32;
    .end local v6           #zent:Ljava/util/zip/ZipEntry;
    .end local v7           #zout:Ljava/util/zip/ZipOutputStream;
    :cond_1
    const-string v8, ".jar"

    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 968
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 971
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 972
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 986
    .restart local v4       #zar_file:Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v7       #zout:Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_1

    .line 1005
    .restart local v1       #classBytes:[[B
    .restart local v2       #iClass:I
    .restart local v5       #zcrc:Ljava/util/zip/CRC32;
    :cond_4
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1006
    return-void
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 2322
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    return-object v0
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .locals 1

    .prologue
    .line 2330
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public currentScope()Lgnu/expr/ScopeExp;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "decl"
    .parameter "msg1"
    .parameter "msg2"

    .prologue
    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V

    .line 2492
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 2483
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    const-string v0, "warn-as-error"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2484
    const/16 p1, 0x65

    .line 2486
    :cond_0
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p0, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 2487
    return-void
.end method

.method public error(CLjava/lang/String;Lgnu/text/SourceLocator;)V
    .locals 6
    .parameter "severity"
    .parameter "message"
    .parameter "location"

    .prologue
    .line 2466
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2467
    .local v2, file:Ljava/lang/String;
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v3

    .line 2468
    .local v3, line:I
    invoke-interface {p3}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v4

    .line 2469
    .local v4, column:I
    if-eqz v2, :cond_0

    if-gtz v3, :cond_1

    .line 2471
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2472
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 2473
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v4

    .line 2476
    :cond_1
    const/16 v0, 0x77

    if-ne p1, v0, :cond_2

    const-string v0, "warn-as-error"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2477
    const/16 p1, 0x65

    .line 2478
    :cond_2
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 2479
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;Lgnu/expr/Declaration;)V
    .locals 8
    .parameter "severity"
    .parameter "message"
    .parameter "code"
    .parameter "decl"

    .prologue
    .line 2497
    const/16 v0, 0x77

    if-ne p1, v0, :cond_0

    const-string v0, "warn-as-error"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Compilation;->getBooleanOption(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2498
    const/16 p1, 0x65

    .line 2500
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2501
    .local v2, filename:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 2502
    .local v3, line:I
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v4

    .line 2503
    .local v4, column:I
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v7

    .line 2504
    .local v7, decl_line:I
    if-lez v7, :cond_1

    .line 2506
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 2507
    move v3, v7

    .line 2508
    invoke-virtual {p4}, Lgnu/expr/Declaration;->getColumnNumber()I

    move-result v4

    .line 2510
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 2511
    return-void
.end method

.method public findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "name"

    .prologue
    .line 542
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v0, v1, :cond_1

    .line 544
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v1, v1, v0

    .line 547
    :goto_1
    return-object v1

    .line 542
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public freeLocalField(Lgnu/bytecode/Field;)V
    .locals 0
    .parameter "field"

    .prologue
    .line 2310
    return-void
.end method

.method public generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V
    .locals 41
    .parameter "lexp"

    .prologue
    .line 1387
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v37, v0

    if-nez v37, :cond_0

    const/16 v37, 0x0

    move/from16 v21, v37

    .line 1389
    .local v21, numApplyMethods:I
    :goto_0
    if-nez v21, :cond_1

    .line 1546
    :goto_1
    return-void

    .line 1387
    .end local v21           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/Vector;->size()I

    move-result v37

    move/from16 v21, v37

    goto :goto_0

    .line 1391
    .restart local v21       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    .line 1392
    .local v31, save_class:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v37

    sget-object v38, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v37 .. v38}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v37

    if-nez v37, :cond_2

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1395
    :cond_2
    sget-object v27, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1396
    .local v27, procType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    .line 1397
    .local v32, save_method:Lgnu/bytecode/Method;
    const/4 v7, 0x0

    .line 1398
    .local v7, code:Lgnu/bytecode/CodeAttr;
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v5, v0

    const/16 v37, 0x0

    sget-object v38, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v38, v5, v37

    .line 1401
    .local v5, applyArgs:[Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    const-string v38, "apply"

    sget-object v39, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v40, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object v2, v5

    move-object/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 1405
    const/16 v37, 0x1

    move-object v0, v7

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 1407
    .local v9, ctxVar:Lgnu/bytecode/Variable;
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1408
    sget-object v37, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1409
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v6

    .line 1411
    .local v6, aswitch:Lgnu/bytecode/SwitchState;
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    .line 1413
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lgnu/expr/LambdaExp;

    .line 1414
    .local v34, source:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v26, v0

    .line 1415
    .local v26, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v22, v0

    .line 1417
    .local v22, numMethods:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 1421
    const/16 v37, 0x1

    sub-int v37, v22, v37

    move v0, v13

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v37, v0

    if-ltz v37, :cond_3

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v37, v0

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v38, v0

    add-int v38, v38, v22

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_b

    :cond_3
    const/16 v37, 0x1

    move/from16 v36, v37

    .line 1425
    .local v36, varArgs:Z
    :goto_4
    move/from16 v18, v13

    .line 1427
    .local v18, methodIndex:I
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v37

    add-int v37, v37, v13

    move-object v0, v6

    move/from16 v1, v37

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v29

    .line 1430
    .local v29, saveLoc1:Lgnu/text/SourceLocator;
    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v17

    .line 1431
    .local v17, line:I
    if-lez v17, :cond_4

    .line 1432
    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1434
    :cond_4
    aget-object v25, v26, v18

    .line 1435
    .local v25, primMethod:Lgnu/bytecode/Method;
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v24

    .line 1436
    .local v24, primArgTypes:[Lgnu/bytecode/Type;
    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v37, v0

    add-int v33, v37, v18

    .line 1437
    .local v33, singleArgs:I
    const/4 v8, 0x0

    .line 1438
    .local v8, counter:Lgnu/bytecode/Variable;
    const/16 v23, 0x0

    .line 1440
    .local v23, pendingIfEnds:I
    const/16 v37, 0x4

    move v0, v13

    move/from16 v1, v37

    if-le v0, v1, :cond_6

    const/16 v37, 0x1

    move/from16 v0, v22

    move/from16 v1, v37

    if-le v0, v1, :cond_6

    .line 1442
    sget-object v37, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 1443
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1444
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v38, "count"

    invoke-virtual/range {v37 .. v38}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1445
    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v37, v0

    if-eqz v37, :cond_5

    .line 1447
    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v37, v0

    move-object v0, v7

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1448
    sget-object v37, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1450
    :cond_5
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1453
    :cond_6
    invoke-virtual/range {v25 .. v25}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v37

    if-eqz v37, :cond_c

    const/16 v37, 0x0

    move/from16 v20, v37

    .line 1454
    .local v20, needsThis:I
    :goto_5
    if-eqz v36, :cond_d

    const/16 v37, 0x2

    :goto_6
    add-int v37, v37, v33

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_e

    const/16 v37, 0x1

    move/from16 v12, v37

    .line 1456
    .local v12, explicitFrameArg:I
    :goto_7
    add-int v37, v20, v12

    if-lez v37, :cond_7

    .line 1458
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_7

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v37, v0

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1463
    :cond_7
    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v35

    .line 1464
    .local v35, var:Lgnu/expr/Declaration;
    if-eqz v35, :cond_8

    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v37

    if-eqz v37, :cond_8

    .line 1465
    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    .line 1466
    :cond_8
    const/4 v15, 0x0

    .local v15, k:I
    :goto_8
    move v0, v15

    move/from16 v1, v33

    if-ge v0, v1, :cond_10

    .line 1468
    if-eqz v8, :cond_9

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v37, v0

    move v0, v15

    move/from16 v1, v37

    if-lt v0, v1, :cond_9

    .line 1470
    invoke-virtual {v7, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1471
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1472
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1473
    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v37, v0

    sub-int v37, v15, v37

    aget-object v37, v26, v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1474
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1475
    add-int/lit8 v23, v23, 0x1

    .line 1476
    const/16 v37, -0x1

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1479
    :cond_9
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1480
    const/16 v37, 0x4

    move v0, v15

    move/from16 v1, v37

    if-gt v0, v1, :cond_f

    if-nez v36, :cond_f

    move-object/from16 v0, v34

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v37, v0

    const/16 v38, 0x4

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_f

    .line 1481
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "value"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    add-int/lit8 v39, v15, 0x1

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1490
    :goto_9
    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v28

    .line 1491
    .local v28, ptype:Lgnu/bytecode/Type;
    sget-object v37, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_a

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v30

    .line 1494
    .local v30, saveLoc2:Lgnu/text/SourceLocator;
    add-int/lit8 v37, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v37

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1498
    .end local v30           #saveLoc2:Lgnu/text/SourceLocator;
    :cond_a
    invoke-virtual/range {v35 .. v35}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v35

    .line 1466
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 1421
    .end local v8           #counter:Lgnu/bytecode/Variable;
    .end local v12           #explicitFrameArg:I
    .end local v15           #k:I
    .end local v17           #line:I
    .end local v18           #methodIndex:I
    .end local v20           #needsThis:I
    .end local v23           #pendingIfEnds:I
    .end local v24           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v25           #primMethod:Lgnu/bytecode/Method;
    .end local v28           #ptype:Lgnu/bytecode/Type;
    .end local v29           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v33           #singleArgs:I
    .end local v35           #var:Lgnu/expr/Declaration;
    .end local v36           #varArgs:Z
    :cond_b
    const/16 v37, 0x0

    move/from16 v36, v37

    goto/16 :goto_4

    .line 1453
    .restart local v8       #counter:Lgnu/bytecode/Variable;
    .restart local v17       #line:I
    .restart local v18       #methodIndex:I
    .restart local v23       #pendingIfEnds:I
    .restart local v24       #primArgTypes:[Lgnu/bytecode/Type;
    .restart local v25       #primMethod:Lgnu/bytecode/Method;
    .restart local v29       #saveLoc1:Lgnu/text/SourceLocator;
    .restart local v33       #singleArgs:I
    .restart local v36       #varArgs:Z
    :cond_c
    const/16 v37, 0x1

    move/from16 v20, v37

    goto/16 :goto_5

    .line 1454
    .restart local v20       #needsThis:I
    :cond_d
    const/16 v37, 0x1

    goto/16 :goto_6

    :cond_e
    const/16 v37, 0x0

    move/from16 v12, v37

    goto/16 :goto_7

    .line 1485
    .restart local v12       #explicitFrameArg:I
    .restart local v15       #k:I
    .restart local v35       #var:Lgnu/expr/Declaration;
    :cond_f
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v38, "values"

    invoke-virtual/range {v37 .. v38}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1487
    invoke-virtual {v7, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1488
    sget-object v37, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_9

    .line 1501
    :cond_10
    if-eqz v36, :cond_12

    .line 1503
    add-int v37, v12, v33

    aget-object v16, v24, v37

    .line 1504
    .local v16, lastArgType:Lgnu/bytecode/Type;
    move-object/from16 v0, v16

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v37, v0

    if-eqz v37, :cond_14

    .line 1506
    check-cast v16, Lgnu/bytecode/ArrayType;

    .end local v16           #lastArgType:Lgnu/bytecode/Type;
    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 1508
    .local v10, elType:Lgnu/bytecode/Type;
    const-string v37, "java.lang.Object"

    invoke-virtual {v10}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_13

    const/16 v37, 0x1

    move/from16 v19, v37

    .line 1510
    .local v19, mustConvert:Z
    :goto_a
    if-eqz v19, :cond_11

    .line 1511
    new-instance v37, Ljava/lang/Error;

    const-string v38, "not implemented mustConvert restarg"

    invoke-direct/range {v37 .. v38}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 1512
    :cond_11
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1513
    move-object v0, v7

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1514
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v38, "getRestArgsArray"

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1528
    .end local v10           #elType:Lgnu/bytecode/Type;
    .end local v19           #mustConvert:Z
    :cond_12
    :goto_b
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1529
    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1530
    :goto_c
    add-int/lit8 v23, v23, -0x1

    if-ltz v23, :cond_17

    .line 1531
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_c

    .line 1508
    .restart local v10       #elType:Lgnu/bytecode/Type;
    :cond_13
    const/16 v37, 0x0

    move/from16 v19, v37

    goto :goto_a

    .line 1516
    .end local v10           #elType:Lgnu/bytecode/Type;
    .restart local v16       #lastArgType:Lgnu/bytecode/Type;
    :cond_14
    const-string v37, "gnu.lists.LList"

    invoke-virtual/range {v16 .. v16}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_15

    .line 1519
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1520
    move-object v0, v7

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1521
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v38, "getRestArgsList"

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v37

    move-object v0, v7

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_b

    .line 1523
    :cond_15
    sget-object v37, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 1524
    invoke-virtual {v7, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_b

    .line 1526
    :cond_16
    new-instance v37, Ljava/lang/RuntimeException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "unsupported #!rest type:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1532
    .end local v16           #lastArgType:Lgnu/bytecode/Type;
    :cond_17
    sget v37, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_18

    .line 1533
    sget-object v37, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1535
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1536
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1417
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1411
    .end local v8           #counter:Lgnu/bytecode/Variable;
    .end local v12           #explicitFrameArg:I
    .end local v15           #k:I
    .end local v17           #line:I
    .end local v18           #methodIndex:I
    .end local v20           #needsThis:I
    .end local v23           #pendingIfEnds:I
    .end local v24           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v25           #primMethod:Lgnu/bytecode/Method;
    .end local v29           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v33           #singleArgs:I
    .end local v35           #var:Lgnu/expr/Declaration;
    .end local v36           #varArgs:Z
    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1539
    .end local v13           #i:I
    .end local v22           #numMethods:I
    .end local v26           #primMethods:[Lgnu/bytecode/Method;
    .end local v34           #source:Lgnu/expr/LambdaExp;
    :cond_1a
    invoke-virtual {v6, v7}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1540
    sget-object v37, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v38, "applyError"

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    .line 1541
    .local v11, errMethod:Lgnu/bytecode/Method;
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1542
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1543
    invoke-virtual {v6, v7}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1544
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1545
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method public generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V
    .locals 47
    .parameter "lexp"

    .prologue
    .line 1554
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move/from16 v29, v5

    .line 1556
    .local v29, numApplyMethods:I
    :goto_0
    if-nez v29, :cond_1

    .line 1811
    :goto_1
    return-void

    .line 1554
    .end local v29           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v29, v5

    goto :goto_0

    .line 1558
    .restart local v29       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v40, v0

    .line 1559
    .local v40, save_class:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1560
    sget-object v35, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1561
    .local v35, procType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1563
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v41, v0

    .line 1564
    .local v41, save_method:Lgnu/bytecode/Method;
    const/4 v13, 0x0

    .line 1565
    .local v13, code:Lgnu/bytecode/CodeAttr;
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    const/4 v5, 0x5

    move/from16 v17, v5

    .line 1567
    .local v17, i:I
    :goto_2
    const/4 v5, 0x6

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2c

    .line 1571
    const/16 v27, 0x0

    .line 1572
    .local v27, needThisApply:Z
    const/4 v12, 0x0

    .line 1573
    .local v12, aswitch:Lgnu/bytecode/SwitchState;
    const/16 v24, 0x0

    .line 1574
    .local v24, mname:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1576
    .local v11, applyArgs:[Lgnu/bytecode/Type;
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 1578
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/LambdaExp;

    .line 1581
    .local v6, source:Lgnu/expr/LambdaExp;
    move-object v0, v6

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v34, v0

    .line 1582
    .local v34, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v30, v0

    .line 1583
    .local v30, numMethods:I
    iget v5, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v5, :cond_3

    iget v5, v6, Lgnu/expr/LambdaExp;->max_args:I

    iget v7, v6, Lgnu/expr/LambdaExp;->min_args:I

    add-int v7, v7, v30

    if-lt v5, v7, :cond_7

    :cond_3
    const/4 v5, 0x1

    move/from16 v46, v5

    .line 1586
    .local v46, varArgs:Z
    :goto_4
    const/16 v43, 0x0

    .line 1587
    .local v43, skipThisProc:Z
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 1589
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v23, v17, v5

    .line 1590
    .local v23, methodIndex:I
    if-ltz v23, :cond_4

    move/from16 v0, v23

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    const/4 v5, 0x1

    sub-int v5, v30, v5

    move/from16 v0, v23

    move v1, v5

    if-ne v0, v1, :cond_5

    if-eqz v46, :cond_5

    .line 1592
    :cond_4
    const/16 v43, 0x1

    .line 1593
    :cond_5
    const/16 v30, 0x1

    .line 1594
    const/16 v46, 0x0

    .line 1603
    :goto_5
    if-eqz v43, :cond_a

    .line 1576
    .end local v6           #source:Lgnu/expr/LambdaExp;
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1565
    .end local v11           #applyArgs:[Lgnu/bytecode/Type;
    .end local v12           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v17           #i:I
    .end local v18           #j:I
    .end local v23           #methodIndex:I
    .end local v24           #mname:Ljava/lang/String;
    .end local v27           #needThisApply:Z
    .end local v30           #numMethods:I
    .end local v34           #primMethods:[Lgnu/bytecode/Method;
    .end local v43           #skipThisProc:Z
    .end local v46           #varArgs:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_2

    .line 1583
    .restart local v6       #source:Lgnu/expr/LambdaExp;
    .restart local v11       #applyArgs:[Lgnu/bytecode/Type;
    .restart local v12       #aswitch:Lgnu/bytecode/SwitchState;
    .restart local v17       #i:I
    .restart local v18       #j:I
    .restart local v24       #mname:Ljava/lang/String;
    .restart local v27       #needThisApply:Z
    .restart local v30       #numMethods:I
    .restart local v34       #primMethods:[Lgnu/bytecode/Method;
    :cond_7
    const/4 v5, 0x0

    move/from16 v46, v5

    goto :goto_4

    .line 1598
    .restart local v43       #skipThisProc:Z
    .restart local v46       #varArgs:Z
    :cond_8
    const/4 v5, 0x5

    iget v7, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v23, v5, v7

    .line 1599
    .restart local v23       #methodIndex:I
    if-lez v23, :cond_9

    move/from16 v0, v30

    move/from16 v1, v23

    if-gt v0, v1, :cond_9

    if-nez v46, :cond_9

    .line 1600
    const/16 v43, 0x1

    .line 1601
    :cond_9
    const/4 v5, 0x1

    sub-int v23, v30, v5

    goto :goto_5

    .line 1605
    :cond_a
    if-nez v27, :cond_d

    .line 1608
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_b

    .line 1610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apply"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1611
    add-int/lit8 v5, v17, 0x1

    new-array v11, v5, [Lgnu/bytecode/Type;

    .line 1612
    move/from16 v19, v17

    .local v19, k:I
    :goto_7
    if-lez v19, :cond_c

    .line 1613
    sget-object v5, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v5, v11, v19

    .line 1612
    add-int/lit8 v19, v19, -0x1

    goto :goto_7

    .line 1617
    .end local v19           #k:I
    :cond_b
    const-string v24, "applyN"

    .line 1618
    const/4 v5, 0x2

    new-array v11, v5, [Lgnu/bytecode/Type;

    .line 1619
    const/4 v5, 0x1

    sget-object v7, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v7, v11, v5

    .line 1621
    :cond_c
    const/4 v5, 0x0

    aput-object v35, v11, v5

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    sget v7, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_15

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_8
    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v11

    move-object v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v13

    .line 1627
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1628
    const-string v5, "selector"

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1629
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v12

    .line 1631
    const/16 v27, 0x1

    .line 1634
    :cond_d
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v5

    invoke-virtual {v12, v5, v13}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v38

    .line 1637
    .local v38, saveLoc1:Lgnu/text/SourceLocator;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v21

    .line 1638
    .local v21, line:I
    if-lez v21, :cond_e

    .line 1639
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v13

    move-object v1, v5

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1641
    :cond_e
    aget-object v33, v34, v23

    .line 1642
    .local v33, primMethod:Lgnu/bytecode/Method;
    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v32

    .line 1643
    .local v32, primArgTypes:[Lgnu/bytecode/Type;
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    add-int v42, v5, v23

    .line 1644
    .local v42, singleArgs:I
    const/4 v14, 0x0

    .line 1645
    .local v14, counter:Lgnu/bytecode/Variable;
    const/16 v31, 0x0

    .line 1647
    .local v31, pendingIfEnds:I
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_10

    const/4 v5, 0x1

    move/from16 v0, v30

    move v1, v5

    if-le v0, v1, :cond_10

    .line 1649
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v14

    .line 1650
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1651
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1652
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    if-eqz v5, :cond_f

    .line 1654
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1655
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1657
    :cond_f
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1660
    :cond_10
    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    move/from16 v28, v5

    .line 1661
    .local v28, needsThis:I
    :goto_9
    if-eqz v46, :cond_17

    const/4 v5, 0x1

    :goto_a
    add-int v5, v5, v42

    move-object/from16 v0, v32

    array-length v0, v0

    move v7, v0

    if-ge v5, v7, :cond_18

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 1663
    .local v16, explicitFrameArg:I
    :goto_b
    add-int v5, v28, v16

    if-lez v5, :cond_11

    .line 1665
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v7, v0

    if-ne v5, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object v7, v0

    if-eq v5, v7, :cond_11

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object v5, v0

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1670
    :cond_11
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v45

    .line 1671
    .local v45, var:Lgnu/expr/Declaration;
    if-eqz v45, :cond_12

    invoke-virtual/range {v45 .. v45}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1672
    invoke-virtual/range {v45 .. v45}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v45

    .line 1673
    :cond_12
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_c
    move/from16 v0, v19

    move/from16 v1, v42

    if-ge v0, v1, :cond_1a

    .line 1675
    if-eqz v14, :cond_13

    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_13

    .line 1677
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1678
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitIfIntLEqZero()V

    .line 1679
    iget v5, v6, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v5, v19, v5

    aget-object v5, v34, v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1680
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1681
    add-int/lit8 v31, v31, 0x1

    .line 1682
    const/4 v5, -0x1

    invoke-virtual {v13, v14, v5}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1685
    :cond_13
    const/16 v37, 0x0

    .line 1686
    .local v37, pvar:Lgnu/bytecode/Variable;
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-gt v0, v1, :cond_19

    .line 1688
    add-int/lit8 v5, v19, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v37

    .line 1689
    move-object v0, v13

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1698
    :goto_d
    invoke-virtual/range {v45 .. v45}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v36

    .line 1699
    .local v36, ptype:Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v36

    move-object v1, v5

    if-eq v0, v1, :cond_14

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v39

    .line 1702
    .local v39, saveLoc2:Lgnu/text/SourceLocator;
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-static {v0, v1, v2, v3, v4}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1706
    .end local v39           #saveLoc2:Lgnu/text/SourceLocator;
    :cond_14
    invoke-virtual/range {v45 .. v45}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v45

    .line 1673
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 1622
    .end local v14           #counter:Lgnu/bytecode/Variable;
    .end local v16           #explicitFrameArg:I
    .end local v19           #k:I
    .end local v21           #line:I
    .end local v28           #needsThis:I
    .end local v31           #pendingIfEnds:I
    .end local v32           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v33           #primMethod:Lgnu/bytecode/Method;
    .end local v36           #ptype:Lgnu/bytecode/Type;
    .end local v37           #pvar:Lgnu/bytecode/Variable;
    .end local v38           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v42           #singleArgs:I
    .end local v45           #var:Lgnu/expr/Declaration;
    :cond_15
    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto/16 :goto_8

    .line 1660
    .restart local v14       #counter:Lgnu/bytecode/Variable;
    .restart local v21       #line:I
    .restart local v31       #pendingIfEnds:I
    .restart local v32       #primArgTypes:[Lgnu/bytecode/Type;
    .restart local v33       #primMethod:Lgnu/bytecode/Method;
    .restart local v38       #saveLoc1:Lgnu/text/SourceLocator;
    .restart local v42       #singleArgs:I
    :cond_16
    const/4 v5, 0x1

    move/from16 v28, v5

    goto/16 :goto_9

    .line 1661
    .restart local v28       #needsThis:I
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_18
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_b

    .line 1694
    .restart local v16       #explicitFrameArg:I
    .restart local v19       #k:I
    .restart local v37       #pvar:Lgnu/bytecode/Variable;
    .restart local v45       #var:Lgnu/expr/Declaration;
    :cond_19
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1695
    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1696
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    goto :goto_d

    .line 1709
    .end local v37           #pvar:Lgnu/bytecode/Variable;
    :cond_1a
    if-eqz v46, :cond_1b

    .line 1711
    add-int v5, v16, v42

    aget-object v20, v32, v5

    .line 1712
    .local v20, lastArgType:Lgnu/bytecode/Type;
    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move v5, v0

    if-eqz v5, :cond_22

    .line 1714
    check-cast v20, Lgnu/bytecode/ArrayType;

    .end local v20           #lastArgType:Lgnu/bytecode/Type;
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 1716
    .local v9, elType:Lgnu/bytecode/Type;
    const-string v5, "java.lang.Object"

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 1718
    .local v25, mustConvert:Z
    :goto_e
    if-nez v42, :cond_1d

    if-nez v25, :cond_1d

    .line 1719
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1779
    .end local v9           #elType:Lgnu/bytecode/Type;
    .end local v25           #mustConvert:Z
    :cond_1b
    :goto_f
    move-object v0, v13

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 1780
    :goto_10
    add-int/lit8 v31, v31, -0x1

    if-ltz v31, :cond_25

    .line 1781
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_10

    .line 1716
    .restart local v9       #elType:Lgnu/bytecode/Type;
    :cond_1c
    const/4 v5, 0x0

    move/from16 v25, v5

    goto :goto_e

    .line 1722
    .restart local v25       #mustConvert:Z
    :cond_1d
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 1723
    if-nez v14, :cond_1f

    .line 1725
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v14

    .line 1726
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1727
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1728
    if-eqz v42, :cond_1e

    .line 1730
    move-object v0, v13

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1731
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 1733
    :cond_1e
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1735
    :cond_1f
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1736
    invoke-virtual {v13, v9}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 1737
    new-instance v44, Lgnu/bytecode/Label;

    move-object/from16 v0, v44

    move-object v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1738
    .local v44, testLabel:Lgnu/bytecode/Label;
    new-instance v22, Lgnu/bytecode/Label;

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1739
    .local v22, loopTopLabel:Lgnu/bytecode/Label;
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1740
    move-object v0, v13

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1741
    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1743
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1744
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1745
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1746
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1747
    if-eqz v42, :cond_20

    .line 1749
    move-object v0, v13

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1750
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitAdd(Lgnu/bytecode/PrimType;)V

    .line 1752
    :cond_20
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1753
    if-eqz v25, :cond_21

    .line 1755
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 1759
    :cond_21
    invoke-virtual {v13, v9}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 1760
    move-object/from16 v0, v44

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1761
    const/4 v5, -0x1

    invoke-virtual {v13, v14, v5}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 1762
    invoke-virtual {v13, v14}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1763
    move-object v0, v13

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V

    .line 1764
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_f

    .line 1767
    .end local v9           #elType:Lgnu/bytecode/Type;
    .end local v22           #loopTopLabel:Lgnu/bytecode/Label;
    .end local v25           #mustConvert:Z
    .end local v44           #testLabel:Lgnu/bytecode/Label;
    .restart local v20       #lastArgType:Lgnu/bytecode/Type;
    :cond_22
    const-string v5, "gnu.lists.LList"

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1770
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1771
    move-object v0, v13

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1772
    sget-object v5, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_f

    .line 1774
    :cond_23
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v20

    move-object v1, v5

    if-ne v0, v1, :cond_24

    .line 1775
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_f

    .line 1777
    :cond_24
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #source:Lgnu/expr/LambdaExp;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported #!rest type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1782
    .end local v20           #lastArgType:Lgnu/bytecode/Type;
    .restart local v6       #source:Lgnu/expr/LambdaExp;
    :cond_25
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v7, 0x2

    if-ge v5, v7, :cond_26

    .line 1783
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    .end local v6           #source:Lgnu/expr/LambdaExp;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1785
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 1786
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_6

    .line 1788
    .end local v14           #counter:Lgnu/bytecode/Variable;
    .end local v16           #explicitFrameArg:I
    .end local v19           #k:I
    .end local v21           #line:I
    .end local v23           #methodIndex:I
    .end local v28           #needsThis:I
    .end local v30           #numMethods:I
    .end local v31           #pendingIfEnds:I
    .end local v32           #primArgTypes:[Lgnu/bytecode/Type;
    .end local v33           #primMethod:Lgnu/bytecode/Method;
    .end local v34           #primMethods:[Lgnu/bytecode/Method;
    .end local v38           #saveLoc1:Lgnu/text/SourceLocator;
    .end local v42           #singleArgs:I
    .end local v43           #skipThisProc:Z
    .end local v45           #var:Lgnu/expr/Declaration;
    .end local v46           #varArgs:Z
    :cond_27
    if-eqz v27, :cond_28

    .line 1790
    invoke-virtual {v12, v13}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1791
    sget v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_29

    .line 1793
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    const-string v6, "applyError"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v15

    .line 1795
    .local v15, errMethod:Lgnu/bytecode/Method;
    invoke-virtual {v13, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1805
    .end local v15           #errMethod:Lgnu/bytecode/Method;
    :goto_11
    invoke-virtual {v13}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1806
    invoke-virtual {v12, v13}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1567
    :cond_28
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 1799
    :cond_29
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_2a

    const/4 v5, 0x2

    move/from16 v26, v5

    .line 1800
    .local v26, nargs:I
    :goto_12
    add-int/lit8 v26, v26, 0x1

    .line 1801
    const/16 v19, 0x0

    .restart local v19       #k:I
    :goto_13
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_2b

    .line 1802
    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1801
    add-int/lit8 v19, v19, 0x1

    goto :goto_13

    .line 1799
    .end local v19           #k:I
    .end local v26           #nargs:I
    :cond_2a
    add-int/lit8 v5, v17, 0x1

    move/from16 v26, v5

    goto :goto_12

    .line 1803
    .restart local v19       #k:I
    .restart local v26       #nargs:I
    :cond_2b
    sget-object v5, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v13, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto :goto_11

    .line 1809
    .end local v11           #applyArgs:[Lgnu/bytecode/Type;
    .end local v12           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v18           #j:I
    .end local v19           #k:I
    .end local v24           #mname:Ljava/lang/String;
    .end local v26           #nargs:I
    .end local v27           #needThisApply:Z
    :cond_2c
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1810
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method generateBytecode()V
    .locals 53

    .prologue
    .line 1910
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v31

    .line 1911
    .local v31, module:Lgnu/expr/ModuleExp;
    sget-boolean v48, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v48, :cond_0

    .line 1913
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v15

    .line 1914
    .local v15, dout:Lgnu/mapping/OutPort;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "[Compiling final "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " to "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ":"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object v0, v15

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 1916
    move-object/from16 v0, v31

    move-object v1, v15

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 1917
    const/16 v48, 0x5d

    move-object v0, v15

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 1918
    invoke-virtual {v15}, Lgnu/mapping/OutPort;->flush()V

    .line 1921
    .end local v15           #dout:Lgnu/mapping/OutPort;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v34

    .line 1922
    .local v34, neededSuper:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v48

    if-eqz v48, :cond_7

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 1932
    :goto_0
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v38, v0

    .line 1935
    .local v38, saveLambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1937
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v48

    if-eqz v48, :cond_8

    .line 1939
    const/4 v7, 0x1

    .line 1940
    .local v7, arg_count:I
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v8, v0

    .line 1941
    .local v8, arg_types:[Lgnu/bytecode/Type;
    const/16 v48, 0x0

    sget-object v49, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v49, v8, v48

    .line 1959
    :cond_1
    :goto_1
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v19, v0

    .line 1960
    .local v19, heapFrame:Lgnu/bytecode/Variable;
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v43

    .line 1963
    .local v43, staticModule:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "run"

    sget-object v50, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v51, 0x11

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object v2, v8

    move-object/from16 v3, v50

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v6

    .line 1965
    .local v6, apply_method:Lgnu/bytecode/Method;
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->initCode()V

    .line 1971
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 1974
    .local v11, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v48

    if-eqz v48, :cond_b

    const/16 v48, 0x0

    :goto_2
    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    .line 1975
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1976
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v48

    if-eqz v48, :cond_c

    const/16 v48, 0x0

    :goto_3
    move-object/from16 v0, v48

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 1977
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1979
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->isHandlingTailCalls()Z

    move-result v48

    if-nez v48, :cond_2

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-eqz v48, :cond_3

    .line 1981
    :cond_2
    new-instance v48, Lgnu/bytecode/Variable;

    const-string v49, "$ctx"

    sget-object v50, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct/range {v48 .. v50}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1982
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->thisDecl:Lgnu/bytecode/Variable;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v50, v0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1986
    :cond_3
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getLineNumber()I

    move-result v23

    .line 1987
    .local v23, line:I
    if-lez v23, :cond_4

    .line 1988
    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1990
    :cond_4
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1991
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-eqz v48, :cond_5

    .line 1994
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 1995
    sget-object v48, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1996
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2000
    :cond_5
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 2002
    const/16 v42, 0x0

    .line 2003
    .local v42, startLiterals:Lgnu/bytecode/Label;
    const/4 v5, 0x0

    .line 2004
    .local v5, afterLiterals:Lgnu/bytecode/Label;
    const/16 v22, 0x0

    .line 2006
    .local v22, initMethod:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_10

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v40, v0

    .line 2009
    .local v40, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v10, v0

    .line 2010
    .local v10, callContextSave:Lgnu/bytecode/Variable;
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2012
    invoke-direct/range {p0 .. p0}, Lgnu/expr/Compilation;->startClassInit()Lgnu/bytecode/Method;

    move-result-object v22

    .line 2013
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    .line 2014
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2016
    new-instance v42, Lgnu/bytecode/Label;

    .end local v42           #startLiterals:Lgnu/bytecode/Label;
    move-object/from16 v0, v42

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2017
    .restart local v42       #startLiterals:Lgnu/bytecode/Label;
    new-instance v5, Lgnu/bytecode/Label;

    .end local v5           #afterLiterals:Lgnu/bytecode/Label;
    invoke-direct {v5, v11}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2018
    .restart local v5       #afterLiterals:Lgnu/bytecode/Label;
    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2020
    if-eqz v43, :cond_6

    .line 2022
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "$instance"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v50, v0

    const/16 v51, 0x19

    invoke-virtual/range {v48 .. v51}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 2033
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    move-object/from16 v21, v0

    .local v21, init:Lgnu/expr/Initializer;
    if-eqz v21, :cond_d

    .line 2035
    const/16 v48, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 2036
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_4

    .line 1926
    .end local v5           #afterLiterals:Lgnu/bytecode/Label;
    .end local v6           #apply_method:Lgnu/bytecode/Method;
    .end local v7           #arg_count:I
    .end local v8           #arg_types:[Lgnu/bytecode/Type;
    .end local v10           #callContextSave:Lgnu/bytecode/Variable;
    .end local v11           #code:Lgnu/bytecode/CodeAttr;
    .end local v19           #heapFrame:Lgnu/bytecode/Variable;
    .end local v21           #init:Lgnu/expr/Initializer;
    .end local v22           #initMethod:Lgnu/bytecode/Method;
    .end local v23           #line:I
    .end local v38           #saveLambda:Lgnu/expr/LambdaExp;
    .end local v40           #save_method:Lgnu/bytecode/Method;
    .end local v42           #startLiterals:Lgnu/bytecode/Label;
    .end local v43           #staticModule:Z
    :cond_7
    new-instance v48, Lgnu/bytecode/ClassType;

    const-string v49, "frame"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    goto/16 :goto_0

    .line 1943
    .restart local v38       #saveLambda:Lgnu/expr/LambdaExp;
    :cond_8
    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v48, v0

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->max_args:I

    move/from16 v49, v0

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move/from16 v48, v0

    const/16 v49, 0x4

    move/from16 v0, v48

    move/from16 v1, v49

    if-gt v0, v1, :cond_9

    sget-boolean v48, Lgnu/expr/Compilation;->fewerClasses:Z

    if-eqz v48, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_a

    .line 1946
    :cond_9
    const/4 v7, 0x1

    .line 1947
    .restart local v7       #arg_count:I
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v8, v0

    .line 1948
    .restart local v8       #arg_types:[Lgnu/bytecode/Type;
    const/16 v48, 0x0

    new-instance v49, Lgnu/bytecode/ArrayType;

    sget-object v50, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    invoke-direct/range {v49 .. v50}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v49, v8, v48

    goto/16 :goto_1

    .line 1952
    .end local v7           #arg_count:I
    .end local v8           #arg_types:[Lgnu/bytecode/Type;
    :cond_a
    move-object/from16 v0, v31

    iget v0, v0, Lgnu/expr/ModuleExp;->min_args:I

    move v7, v0

    .line 1953
    .restart local v7       #arg_count:I
    new-array v8, v7, [Lgnu/bytecode/Type;

    .line 1954
    .restart local v8       #arg_types:[Lgnu/bytecode/Type;
    move/from16 v20, v7

    .local v20, i:I
    :goto_5
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1

    .line 1955
    sget-object v48, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v48, v8, v20

    goto :goto_5

    .line 1974
    .end local v20           #i:I
    .restart local v6       #apply_method:Lgnu/bytecode/Method;
    .restart local v11       #code:Lgnu/bytecode/CodeAttr;
    .restart local v19       #heapFrame:Lgnu/bytecode/Variable;
    .restart local v43       #staticModule:Z
    :cond_b
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v48

    goto/16 :goto_2

    .line 1976
    :cond_c
    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    goto/16 :goto_3

    .line 2039
    .restart local v5       #afterLiterals:Lgnu/bytecode/Label;
    .restart local v10       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v21       #init:Lgnu/expr/Initializer;
    .restart local v22       #initMethod:Lgnu/bytecode/Method;
    .restart local v23       #line:I
    .restart local v40       #save_method:Lgnu/bytecode/Method;
    .restart local v42       #startLiterals:Lgnu/bytecode/Label;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v48, v0

    if-nez v48, :cond_e

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/ModuleExp;->staticInitRun()Z

    move-result v48

    if-eqz v48, :cond_e

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2042
    sget-object v48, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string v49, "run"

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 2044
    :cond_e
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-eq v0, v1, :cond_f

    if-nez v43, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v48, v0

    if-nez v48, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v48, v0

    if-nez v48, :cond_f

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "run"

    const/16 v50, 0x1

    sget-object v51, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v52, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual/range {v48 .. v52}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2052
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2053
    sget-object v48, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v13

    .line 2054
    .local v13, ctxVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v39

    .line 2055
    .local v39, saveVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v18

    .line 2057
    .local v18, exceptionVar:Lgnu/bytecode/Variable;
    sget-object v48, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2058
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2059
    sget-object v48, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v49, "consumer"

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v12

    .line 2061
    .local v12, consumerFld:Lgnu/bytecode/Field;
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2062
    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 2063
    move-object v0, v11

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2065
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2066
    const-string v48, "gnu.lists.VoidConsumer"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "instance"

    invoke-virtual/range {v48 .. v49}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2068
    invoke-virtual {v11, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 2070
    const/16 v48, 0x0

    sget-object v49, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object v0, v11

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2072
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2073
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2074
    move-object v0, v11

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2076
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2077
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2079
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2080
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2081
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2082
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2084
    invoke-virtual {v11, v13}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2085
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2086
    move-object v0, v11

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2087
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "runCleanup"

    const/16 v50, 0x3

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2089
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2092
    .end local v12           #consumerFld:Lgnu/bytecode/Field;
    .end local v13           #ctxVar:Lgnu/bytecode/Variable;
    .end local v18           #exceptionVar:Lgnu/bytecode/Variable;
    .end local v39           #saveVar:Lgnu/bytecode/Variable;
    :cond_f
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2093
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2096
    .end local v10           #callContextSave:Lgnu/bytecode/Variable;
    .end local v21           #init:Lgnu/expr/Initializer;
    .end local v40           #save_method:Lgnu/bytecode/Method;
    :cond_10
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 2098
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 2100
    sget-boolean v48, Lgnu/expr/Compilation;->fewerClasses:Z

    if-eqz v48, :cond_11

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->popScope()Lgnu/bytecode/Scope;

    .line 2103
    :cond_11
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    iput-object v0, v1, Lgnu/expr/ModuleExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 2104
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v48

    if-nez v48, :cond_12

    sget-boolean v48, Lgnu/expr/Compilation;->fewerClasses:Z

    if-eqz v48, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_13

    .line 2106
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->fswitch:Lgnu/bytecode/SwitchState;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2110
    :cond_13
    if-nez v42, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_16

    .line 2112
    :cond_14
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2115
    new-instance v16, Lgnu/bytecode/Label;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2116
    .local v16, endLiterals:Lgnu/bytecode/Label;
    move-object v0, v11

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    if-eqz v48, :cond_15

    .line 2120
    sget-object v48, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2126
    :cond_15
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v48, v0

    if-eqz v48, :cond_1c

    .line 2128
    invoke-static/range {p0 .. p0}, Lgnu/expr/Compilation;->registerForImmediateLiterals(Lgnu/expr/Compilation;)I

    move-result v48

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2129
    const-string v48, "gnu.expr.Compilation"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "setupLiterals"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    :goto_6
    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 2142
    .end local v16           #endLiterals:Lgnu/bytecode/Label;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/expr/Compilation;->generateMain:Z

    move/from16 v48, v0

    if-eqz v48, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    if-ne v0, v1, :cond_18

    .line 2144
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v9, v0

    const/16 v48, 0x0

    new-instance v49, Lgnu/bytecode/ArrayType;

    sget-object v50, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    invoke-direct/range {v49 .. v50}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    aput-object v49, v9, v48

    .line 2145
    .local v9, args:[Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    const-string v49, "main"

    const/16 v50, 0x9

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move/from16 v2, v50

    move-object v3, v9

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2148
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2150
    sget-object v48, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    if-eqz v48, :cond_17

    .line 2152
    sget-object v48, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2153
    const-string v48, "kawa.Shell"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v48

    const-string v49, "setDefaultFormat"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2156
    :cond_17
    const/16 v48, 0x0

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2157
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "processArgs"

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1d

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2166
    :goto_7
    sget-object v48, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    const-string v49, "runAsMain"

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2167
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2171
    .end local v9           #args:[Lgnu/bytecode/Type;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    if-eqz v48, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v47

    .local v47, uri:Ljava/lang/String;
    if-eqz v47, :cond_20

    .line 2175
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v26

    .line 2176
    .local v26, manager:Lgnu/expr/ModuleManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2177
    .local v25, mainPrefix:Ljava/lang/String;
    const/16 v48, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2178
    .local v14, dot:I
    if-gez v14, :cond_1e

    .line 2180
    const-string v25, ""

    .line 2199
    :goto_8
    new-instance v27, Lgnu/bytecode/ClassType;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "$ModulesMap$"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 2200
    .local v27, mapClass:Lgnu/bytecode/ClassType;
    const-string v48, "gnu.expr.ModuleSet"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v46

    .line 2201
    .local v46, typeModuleSet:Lgnu/bytecode/ClassType;
    move-object/from16 v0, v27

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 2202
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->registerClass(Lgnu/bytecode/ClassType;)V

    .line 2204
    const-string v48, "<init>"

    const/16 v49, 0x1

    sget-object v50, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    move/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2206
    const-string v48, "<init>"

    const/16 v49, 0x1

    sget-object v50, Lgnu/expr/Compilation;->apply0args:[Lgnu/bytecode/Type;

    sget-object v51, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    move/from16 v2, v49

    move-object/from16 v3, v50

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v44

    .line 2209
    .local v44, superConstructor:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2210
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 2211
    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 2212
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2214
    const-string v48, "gnu.expr.ModuleManager"

    invoke-static/range {v48 .. v48}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v45

    .line 2215
    .local v45, typeModuleManager:Lgnu/bytecode/ClassType;
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v28, v0

    const/16 v48, 0x0

    aput-object v45, v28, v48

    .line 2216
    .local v28, margs:[Lgnu/bytecode/Type;
    const-string v48, "register"

    sget-object v49, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const/16 v50, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v48

    move-object/from16 v2, v28

    move-object/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v11

    .line 2219
    const-string v48, "register"

    const/16 v49, 0x3

    move-object/from16 v0, v45

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v37

    .line 2221
    .local v37, reg:Lgnu/bytecode/Method;
    move-object/from16 v0, v26

    iget v0, v0, Lgnu/expr/ModuleManager;->numModules:I

    move/from16 v20, v0

    .restart local v20       #i:I
    :cond_19
    :goto_9
    add-int/lit8 v20, v20, -0x1

    if-ltz v20, :cond_1f

    .line 2223
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/expr/ModuleManager;->modules:[Lgnu/expr/ModuleInfo;

    move-object/from16 v48, v0

    aget-object v29, v48, v20

    .line 2224
    .local v29, mi:Lgnu/expr/ModuleInfo;
    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2225
    .local v30, miClassName:Ljava/lang/String;
    if-eqz v30, :cond_19

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_19

    .line 2228
    move-object/from16 v0, v29

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 2229
    .local v32, moduleSource:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v33

    .line 2230
    .local v33, moduleUri:Ljava/lang/String;
    const/16 v48, 0x1

    move-object v0, v11

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v48

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2231
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2232
    invoke-static/range {v32 .. v32}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Lgnu/text/Path;->isAbsolute()Z

    move-result v48

    if-nez v48, :cond_1b

    .line 2238
    :try_start_1
    sget-char v41, Ljava/io/File;->separatorChar:C

    .line 2239
    .local v41, sep:C
    invoke-virtual/range {v26 .. v26}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v35

    .line 2240
    .local v35, path:Ljava/lang/String;
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const/16 v49, 0x2e

    move-object/from16 v0, v25

    move/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2241
    invoke-static/range {v35 .. v35}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2242
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v36

    .line 2243
    .local v36, plen:I
    if-lez v36, :cond_1a

    const/16 v48, 0x1

    sub-int v48, v36, v48

    move-object/from16 v0, v35

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    move/from16 v0, v48

    move/from16 v1, v41

    if-eq v0, v1, :cond_1a

    .line 2244
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 2245
    :cond_1a
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/ModuleInfo;->getSourceAbsPathname()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v32

    .line 2254
    .end local v35           #path:Ljava/lang/String;
    .end local v36           #plen:I
    .end local v41           #sep:C
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2255
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 2256
    move-object v0, v11

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_9

    .line 2133
    .end local v14           #dot:I
    .end local v20           #i:I
    .end local v25           #mainPrefix:Ljava/lang/String;
    .end local v26           #manager:Lgnu/expr/ModuleManager;
    .end local v27           #mapClass:Lgnu/bytecode/ClassType;
    .end local v28           #margs:[Lgnu/bytecode/Type;
    .end local v29           #mi:Lgnu/expr/ModuleInfo;
    .end local v30           #miClassName:Ljava/lang/String;
    .end local v32           #moduleSource:Ljava/lang/String;
    .end local v33           #moduleUri:Ljava/lang/String;
    .end local v37           #reg:Lgnu/bytecode/Method;
    .end local v44           #superConstructor:Lgnu/bytecode/Method;
    .end local v45           #typeModuleManager:Lgnu/bytecode/ClassType;
    .end local v46           #typeModuleSet:Lgnu/bytecode/ClassType;
    .end local v47           #uri:Ljava/lang/String;
    .restart local v16       #endLiterals:Lgnu/bytecode/Label;
    :cond_1c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lgnu/expr/LitTable;->emit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 2135
    :catch_0
    move-exception v48

    move-object/from16 v17, v48

    .line 2137
    .local v17, ex:Ljava/lang/Throwable;
    const/16 v48, 0x65

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Literals: Internal error:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_6

    .line 2162
    .end local v16           #endLiterals:Lgnu/bytecode/Label;
    .end local v17           #ex:Ljava/lang/Throwable;
    .restart local v9       #args:[Lgnu/bytecode/Type;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    move-object/from16 v48, v0

    move-object v0, v11

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    goto/16 :goto_7

    .line 2184
    .end local v9           #args:[Lgnu/bytecode/Type;
    .restart local v14       #dot:I
    .restart local v25       #mainPrefix:Ljava/lang/String;
    .restart local v26       #manager:Lgnu/expr/ModuleManager;
    .restart local v47       #uri:Ljava/lang/String;
    :cond_1e
    const/16 v48, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v48

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 2187
    .local v24, mainPackage:Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 2197
    :goto_a
    const/16 v48, 0x0

    add-int/lit8 v49, v14, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_8

    .line 2193
    :catch_1
    move-exception v17

    .line 2195
    .restart local v17       #ex:Ljava/lang/Throwable;
    const/16 v48, 0x65

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "error loading map for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_a

    .line 2248
    .end local v17           #ex:Ljava/lang/Throwable;
    .end local v24           #mainPackage:Ljava/lang/String;
    .restart local v20       #i:I
    .restart local v27       #mapClass:Lgnu/bytecode/ClassType;
    .restart local v28       #margs:[Lgnu/bytecode/Type;
    .restart local v29       #mi:Lgnu/expr/ModuleInfo;
    .restart local v30       #miClassName:Ljava/lang/String;
    .restart local v32       #moduleSource:Ljava/lang/String;
    .restart local v33       #moduleUri:Ljava/lang/String;
    .restart local v37       #reg:Lgnu/bytecode/Method;
    .restart local v44       #superConstructor:Lgnu/bytecode/Method;
    .restart local v45       #typeModuleManager:Lgnu/bytecode/ClassType;
    .restart local v46       #typeModuleSet:Lgnu/bytecode/ClassType;
    :catch_2
    move-exception v48

    move-object/from16 v17, v48

    .line 2250
    .restart local v17       #ex:Ljava/lang/Throwable;
    new-instance v48, Lgnu/mapping/WrappedException;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "exception while fixing up \'"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v50, 0x27

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v48

    .line 2258
    .end local v17           #ex:Ljava/lang/Throwable;
    .end local v29           #mi:Lgnu/expr/ModuleInfo;
    .end local v30           #miClassName:Ljava/lang/String;
    .end local v32           #moduleSource:Ljava/lang/String;
    .end local v33           #moduleUri:Ljava/lang/String;
    :cond_1f
    invoke-virtual {v11}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2260
    .end local v14           #dot:I
    .end local v20           #i:I
    .end local v25           #mainPrefix:Ljava/lang/String;
    .end local v26           #manager:Lgnu/expr/ModuleManager;
    .end local v27           #mapClass:Lgnu/bytecode/ClassType;
    .end local v28           #margs:[Lgnu/bytecode/Type;
    .end local v37           #reg:Lgnu/bytecode/Method;
    .end local v44           #superConstructor:Lgnu/bytecode/Method;
    .end local v45           #typeModuleManager:Lgnu/bytecode/ClassType;
    .end local v46           #typeModuleSet:Lgnu/bytecode/ClassType;
    .end local v47           #uri:Ljava/lang/String;
    :cond_20
    return-void

    .line 2189
    .restart local v14       #dot:I
    .restart local v24       #mainPackage:Ljava/lang/String;
    .restart local v25       #mainPrefix:Ljava/lang/String;
    .restart local v26       #manager:Lgnu/expr/ModuleManager;
    .restart local v47       #uri:Ljava/lang/String;
    :catch_3
    move-exception v48

    goto :goto_a
.end method

.method public generateClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "hint"

    .prologue
    .line 889
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 890
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 894
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, p1

    .line 900
    :goto_1
    return-object v2

    .line 892
    :cond_1
    iget-object v2, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 893
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 896
    :cond_2
    const/4 v0, 0x0

    .line 898
    .local v0, i:I
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, new_hint:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgnu/expr/Compilation;->findNamedClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 900
    goto :goto_1

    .line 896
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V
    .locals 16
    .parameter "clas"
    .parameter "lexp"

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x1

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object v10, v0

    .line 1102
    .local v10, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v3, v0

    .line 1103
    .local v3, callContextSave:Lgnu/bytecode/Variable;
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v9, v0

    .line 1105
    .local v9, save_class:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1106
    invoke-static/range {p1 .. p2}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v6

    .line 1107
    .local v6, constructor_method:Lgnu/bytecode/Method;
    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    .line 1108
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1109
    invoke-virtual {v6}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 1111
    .local v5, code:Lgnu/bytecode/CodeAttr;
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v12, v0

    if-eqz v12, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object v12, v0

    if-eqz v12, :cond_0

    .line 1113
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1114
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v12

    invoke-virtual {v12, v14}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1115
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object v12, v0

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1117
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v11

    .line 1118
    .local v11, superClass:Lgnu/bytecode/ClassType;
    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lgnu/expr/ClassExp;->invokeDefaultSuperConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v13, v0

    if-ne v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object v12, v0

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object v12, v0

    iget-object v12, v12, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1125
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1126
    const-string v12, "gnu.expr.ModuleInfo"

    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    const-string v13, "register"

    invoke-virtual {v12, v13, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    invoke-virtual {v5, v12}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1130
    :cond_1
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object v12, v0

    if-eqz v12, :cond_3

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v8, v0

    .line 1135
    .local v8, save:Lgnu/expr/LambdaExp;
    new-instance v12, Lgnu/expr/LambdaExp;

    invoke-direct {v12}, Lgnu/expr/LambdaExp;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object v12, v0

    iput-object v8, v12, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 1139
    :goto_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    move-object v7, v0

    .local v7, init:Lgnu/expr/Initializer;
    if-eqz v7, :cond_2

    .line 1141
    move-object v0, v15

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 1142
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/Compilation;->dumpInitializers(Lgnu/expr/Initializer;)V

    goto :goto_0

    .line 1144
    :cond_2
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1147
    .end local v7           #init:Lgnu/expr/Initializer;
    .end local v8           #save:Lgnu/expr/LambdaExp;
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v12, v0

    if-eqz v12, :cond_4

    .line 1149
    move-object/from16 v0, p2

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v4, v0

    .line 1150
    .local v4, cexp:Lgnu/expr/ClassExp;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v12

    new-instance v13, Ljava/util/Vector;

    const/16 v14, 0xa

    invoke-direct {v13, v14}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->callInitMethods(Lgnu/bytecode/ClassType;Ljava/util/Vector;)V

    .line 1153
    .end local v4           #cexp:Lgnu/expr/ClassExp;
    :cond_4
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1154
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1155
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1156
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1157
    return-void
.end method

.method public final generateConstructor(Lgnu/expr/LambdaExp;)V
    .locals 1
    .parameter "lexp"

    .prologue
    .line 1096
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 1097
    return-void
.end method

.method public generateMatchMethods(Lgnu/expr/LambdaExp;)V
    .locals 34
    .parameter "lexp"

    .prologue
    .line 1220
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    const/16 v31, 0x0

    move/from16 v20, v31

    .line 1222
    .local v20, numApplyMethods:I
    :goto_0
    if-nez v20, :cond_1

    .line 1380
    :goto_1
    return-void

    .line 1220
    .end local v20           #numApplyMethods:I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v31

    move/from16 v20, v31

    goto :goto_0

    .line 1224
    .restart local v20       #numApplyMethods:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v26, v0

    .line 1225
    .local v26, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v25, v0

    .line 1226
    .local v25, save_class:Lgnu/bytecode/ClassType;
    sget-object v23, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 1227
    .local v23, procType:Lgnu/bytecode/ClassType;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v31

    sget-object v32, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v31

    if-nez v31, :cond_2

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 1230
    :cond_2
    const/4 v6, 0x0

    .line 1231
    .local v6, code:Lgnu/bytecode/CodeAttr;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-gt v0, v1, :cond_18

    .line 1233
    const/16 v19, 0x0

    .line 1234
    .local v19, needThisMatch:Z
    const/4 v5, 0x0

    .line 1235
    .local v5, aswitch:Lgnu/bytecode/SwitchState;
    const/16 v17, 0x0

    .line 1236
    .local v17, mname:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1237
    .local v15, matchArgs:[Lgnu/bytecode/Type;
    move/from16 v12, v20

    .local v12, j:I
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_14

    .line 1239
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lgnu/expr/LambdaExp;

    .line 1242
    .local v27, source:Lgnu/expr/LambdaExp;
    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v22, v0

    .line 1243
    .local v22, primMethods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v21, v0

    .line 1244
    .local v21, numMethods:I
    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v31, v0

    if-ltz v31, :cond_4

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_6

    :cond_4
    const/16 v31, 0x1

    move/from16 v30, v31

    .line 1247
    .local v30, varArgs:Z
    :goto_4
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 1249
    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v31, v0

    sub-int v16, v11, v31

    .line 1250
    .local v16, methodIndex:I
    if-ltz v16, :cond_3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    const/16 v31, 0x1

    sub-int v31, v21, v31

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    if-nez v30, :cond_3

    .line 1253
    :cond_5
    const/16 v21, 0x1

    .line 1254
    const/16 v30, 0x0

    .line 1263
    :goto_5
    if-nez v19, :cond_a

    .line 1266
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_d

    .line 1268
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "match"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1269
    add-int/lit8 v31, v11, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v15, v0

    .line 1270
    move v13, v11

    .local v13, k:I
    :goto_6
    if-ltz v13, :cond_9

    .line 1271
    add-int/lit8 v31, v13, 0x1

    sget-object v32, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    .line 1270
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1244
    .end local v13           #k:I
    .end local v16           #methodIndex:I
    .end local v30           #varArgs:Z
    :cond_6
    const/16 v31, 0x0

    move/from16 v30, v31

    goto :goto_4

    .line 1258
    .restart local v30       #varArgs:Z
    :cond_7
    const/16 v31, 0x5

    move-object/from16 v0, v27

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v32, v0

    sub-int v16, v31, v32

    .line 1259
    .restart local v16       #methodIndex:I
    if-lez v16, :cond_8

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    if-eqz v30, :cond_3

    .line 1261
    :cond_8
    const/16 v31, 0x1

    sub-int v16, v21, v31

    goto :goto_5

    .line 1272
    .restart local v13       #k:I
    :cond_9
    add-int/lit8 v31, v11, 0x1

    sget-object v32, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    .line 1281
    .end local v13           #k:I
    :goto_7
    const/16 v31, 0x0

    aput-object v23, v15, v31

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    sget-object v32, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move-object v2, v15

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 1286
    const/16 v31, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1287
    const-string v31, "selector"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1288
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v5

    .line 1290
    const/16 v19, 0x1

    .line 1293
    :cond_a
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v31

    move-object v0, v5

    move/from16 v1, v31

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 1295
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v14

    .line 1296
    .local v14, line:I
    if-lez v14, :cond_b

    .line 1297
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1299
    :cond_b
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    const/16 v31, 0x3

    :goto_8
    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 1301
    .local v8, ctxVar:Lgnu/bytecode/Variable;
    const/16 v31, 0x5

    move v0, v11

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 1303
    invoke-virtual/range {v27 .. v27}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v29

    .line 1304
    .local v29, var:Lgnu/expr/Declaration;
    const/4 v13, 0x1

    .restart local v13       #k:I
    :goto_9
    if-gt v13, v11, :cond_11

    .line 1306
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1307
    add-int/lit8 v31, v13, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1308
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    .line 1309
    .local v24, ptype:Lgnu/bytecode/Type;
    sget-object v31, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 1311
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/TypeValue;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 1313
    new-instance v28, Lgnu/bytecode/Label;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1314
    .local v28, trueLabel:Lgnu/bytecode/Label;
    new-instance v10, Lgnu/bytecode/Label;

    invoke-direct {v10, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1315
    .local v10, falseLabel:Lgnu/bytecode/Label;
    new-instance v7, Lgnu/expr/ConditionalTarget;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v28

    move-object v2, v10

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    .line 1318
    .local v7, ctarget:Lgnu/expr/ConditionalTarget;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1319
    check-cast v24, Lgnu/expr/TypeValue;

    .end local v24           #ptype:Lgnu/bytecode/Type;
    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, p0

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Lgnu/expr/TypeValue;->emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1321
    invoke-virtual {v10, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1322
    const/high16 v31, -0xc

    or-int v31, v31, v13

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1323
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1324
    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1338
    .end local v7           #ctarget:Lgnu/expr/ConditionalTarget;
    .end local v10           #falseLabel:Lgnu/bytecode/Label;
    .end local v28           #trueLabel:Lgnu/bytecode/Label;
    :cond_c
    :goto_a
    sget-object v31, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "value"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1339
    invoke-virtual/range {v29 .. v29}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v29

    .line 1304
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_9

    .line 1276
    .end local v8           #ctxVar:Lgnu/bytecode/Variable;
    .end local v13           #k:I
    .end local v14           #line:I
    .end local v29           #var:Lgnu/expr/Declaration;
    :cond_d
    const-string v17, "matchN"

    .line 1277
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v15, v0

    .line 1278
    const/16 v31, 0x1

    sget-object v32, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v32, v15, v31

    .line 1279
    const/16 v31, 0x2

    sget-object v32, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v32, v15, v31

    goto/16 :goto_7

    .line 1299
    .restart local v14       #line:I
    :cond_e
    add-int/lit8 v31, v11, 0x2

    goto/16 :goto_8

    .line 1326
    .restart local v8       #ctxVar:Lgnu/bytecode/Variable;
    .restart local v13       #k:I
    .restart local v24       #ptype:Lgnu/bytecode/Type;
    .restart local v29       #var:Lgnu/expr/Declaration;
    :cond_f
    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v31, v0

    if-eqz v31, :cond_c

    sget-object v31, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    sget-object v31, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 1330
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 1331
    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 1332
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 1333
    const/high16 v31, -0xc

    or-int v31, v31, v13

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1334
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1335
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_a

    .line 1345
    .end local v13           #k:I
    .end local v24           #ptype:Lgnu/bytecode/Type;
    .end local v29           #var:Lgnu/expr/Declaration;
    :cond_10
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1346
    const/16 v31, 0x2

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1347
    sget-object v31, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v32, "values"

    invoke-virtual/range {v31 .. v32}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1349
    :cond_11
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1350
    sget v31, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 1351
    const/16 v31, 0x1

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1354
    :goto_b
    sget-object v31, Lgnu/expr/Compilation;->procCallContextField:Lgnu/bytecode/Field;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1355
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1356
    sget v31, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    .line 1357
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v31

    add-int v31, v31, v16

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1360
    :goto_c
    sget-object v31, Lgnu/expr/Compilation;->pcCallContextField:Lgnu/bytecode/Field;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1361
    const/16 v31, 0x0

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1362
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_3

    .line 1353
    :cond_12
    const/16 v31, 0x0

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_b

    .line 1359
    :cond_13
    invoke-virtual {v6, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_c

    .line 1364
    .end local v8           #ctxVar:Lgnu/bytecode/Variable;
    .end local v14           #line:I
    .end local v16           #methodIndex:I
    .end local v21           #numMethods:I
    .end local v22           #primMethods:[Lgnu/bytecode/Method;
    .end local v27           #source:Lgnu/expr/LambdaExp;
    .end local v30           #varArgs:Z
    :cond_14
    if-eqz v19, :cond_17

    .line 1366
    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 1367
    const/16 v31, 0x4

    move v0, v11

    move/from16 v1, v31

    if-le v0, v1, :cond_15

    const/16 v31, 0x2

    move/from16 v18, v31

    .line 1368
    .local v18, nargs:I
    :goto_d
    add-int/lit8 v18, v18, 0x1

    .line 1369
    const/4 v13, 0x0

    .restart local v13       #k:I
    :goto_e
    move v0, v13

    move/from16 v1, v18

    if-gt v0, v1, :cond_16

    .line 1370
    invoke-virtual {v6, v13}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1369
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1367
    .end local v13           #k:I
    .end local v18           #nargs:I
    :cond_15
    add-int/lit8 v31, v11, 0x1

    move/from16 v18, v31

    goto :goto_d

    .line 1371
    .restart local v13       #k:I
    .restart local v18       #nargs:I
    :cond_16
    sget-object v31, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    move-object v0, v15

    array-length v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    .line 1373
    .local v9, defMethod:Lgnu/bytecode/Method;
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1374
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1375
    invoke-virtual {v5, v6}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 1231
    .end local v9           #defMethod:Lgnu/bytecode/Method;
    .end local v13           #k:I
    .end local v18           #nargs:I
    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1378
    .end local v5           #aswitch:Lgnu/bytecode/SwitchState;
    .end local v12           #j:I
    .end local v15           #matchArgs:[Lgnu/bytecode/Type;
    .end local v17           #mname:Ljava/lang/String;
    .end local v19           #needThisMatch:Z
    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1379
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto/16 :goto_1
.end method

.method public final getBooleanOption(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getBooleanOption(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 127
    iget-object v0, p0, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    invoke-virtual {v0, p1, p2}, Lgnu/text/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    return-object v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public final getConstructor(Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;
    .locals 1
    .parameter "lexp"

    .prologue
    .line 1075
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForNameHelper()Lgnu/bytecode/Method;
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "forName"

    .line 2712
    iget-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    if-nez v2, :cond_0

    .line 2715
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2716
    .local v1, save_method:Lgnu/bytecode/Method;
    iget-object v2, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    const-string v3, "class$"

    const/16 v4, 0x9

    sget-object v5, Lgnu/expr/Compilation;->string1Arg:[Lgnu/bytecode/Type;

    sget-object v6, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3, v4, v5, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2718
    iget-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iput-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    .line 2719
    iget-object v2, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2720
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2721
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2722
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2723
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "forName"

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2724
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "getClassLoader"

    invoke-virtual {v2, v3, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2725
    sget-object v2, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    const-string v3, "forName"

    const/4 v3, 0x3

    invoke-virtual {v2, v8, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2726
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 2727
    iput-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 2732
    .end local v0           #code:Lgnu/bytecode/CodeAttr;
    .end local v1           #save_method:Lgnu/bytecode/Method;
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->forNameHelper:Lgnu/bytecode/Method;

    return-object v2
.end method

.method public getLanguage()Lgnu/expr/Language;
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public final getLineNumber()I
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public final getModule()Lgnu/expr/ModuleExp;
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-object v0
.end method

.method public final getModuleType()Lgnu/bytecode/ClassType;
    .locals 2

    .prologue
    .line 377
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typeModuleWithContext:Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lgnu/expr/Compilation;->state:I

    return v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2528
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inlineOk(Lgnu/expr/Expression;)Z
    .locals 1
    .parameter "proc"

    .prologue
    .line 409
    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Lgnu/expr/LambdaExp;

    .end local p1
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lgnu/expr/Compilation;->inlineOk:Z

    goto :goto_0
.end method

.method public inlineOk(Lgnu/mapping/Procedure;)Z
    .locals 1
    .parameter "proc"

    .prologue
    .line 421
    sget-boolean v0, Lgnu/expr/Compilation;->inlineOk:Z

    return v0
.end method

.method public isPedantic()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lgnu/expr/Compilation;->pedantic:Z

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 2529
    const/4 v0, 0x0

    return v0
.end method

.method public isStatic()Z
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    return v0
.end method

.method public letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;
    .locals 1
    .parameter "body"

    .prologue
    .line 2581
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LetExp;

    .line 2582
    .local v0, let:Lgnu/expr/LetExp;
    iput-object p1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 2583
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2584
    return-object v0
.end method

.method public letEnter()V
    .locals 7

    .prologue
    .line 2567
    iget-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v4, Lgnu/expr/LetExp;

    .line 2568
    .local v4, let:Lgnu/expr/LetExp;
    invoke-virtual {v4}, Lgnu/expr/LetExp;->countDecls()I

    move-result v5

    .line 2569
    .local v5, ndecls:I
    new-array v3, v5, [Lgnu/expr/Expression;

    .line 2570
    .local v3, inits:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 2571
    .local v1, i:I
    invoke-virtual {v4}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, decl:Lgnu/expr/Declaration;
    move v2, v1

    .line 2572
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-eqz v0, :cond_0

    .line 2574
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v3, v2

    .line 2573
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 2575
    :cond_0
    iput-object v3, v4, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 2576
    iget-object v6, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v6, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2577
    return-void
.end method

.method public letStart()V
    .locals 2

    .prologue
    .line 2554
    new-instance v0, Lgnu/expr/LetExp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2555
    return-void
.end method

.method public letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "init"

    .prologue
    .line 2559
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LetExp;

    .line 2560
    .local v1, let:Lgnu/expr/LetExp;
    invoke-virtual {v1, p1, p2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2561
    .local v0, decl:Lgnu/expr/Declaration;
    invoke-virtual {v0, p3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2562
    return-object v0
.end method

.method public final loadCallContext()V
    .locals 4

    .prologue
    const-string v3, "$ctx"

    .line 2278
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2279
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2280
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2305
    :goto_0
    return-void

    .line 2287
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    iget-object v2, p0, Lgnu/expr/Compilation;->clinitMethod:Lgnu/bytecode/Method;

    if-ne v1, v2, :cond_1

    .line 2290
    new-instance v1, Lgnu/bytecode/Variable;

    const-string v2, "$ctx"

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2293
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    .line 2294
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2295
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVarForInit:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 2299
    :cond_1
    sget-object v1, Lgnu/expr/Compilation;->getCallContextInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 2300
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 2301
    new-instance v1, Lgnu/bytecode/Variable;

    const-string v2, "$ctx"

    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-direct {v1, v3, v2}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 2302
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Variable;)V

    .line 2303
    iget-object v1, p0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method public loadClassRef(Lgnu/bytecode/ObjectType;)V
    .locals 5
    .parameter "clas"

    .prologue
    .line 2680
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 2682
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v2, p0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_0

    .line 2686
    iget-object v2, p0, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 2687
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const-string v3, "getClass"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 2698
    :goto_0
    return-void

    .line 2689
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v2

    const/high16 v3, 0x31

    if-lt v2, v3, :cond_1

    .line 2690
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushClass(Lgnu/bytecode/ObjectType;)V

    goto :goto_0

    .line 2693
    :cond_1
    instance-of v2, p1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2695
    .local v1, name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 2696
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getForNameHelper()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 2693
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 1
    .parameter "name"
    .parameter "namespace"

    .prologue
    .line 2438
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public loopBody(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 2644
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 2645
    .local v0, loopLambda:Lgnu/expr/LambdaExp;
    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2646
    return-void
.end method

.method public loopCond(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 2639
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2640
    iget-object v0, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    return-void
.end method

.method public loopEnter()V
    .locals 8

    .prologue
    .line 2625
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2626
    iget-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v4, Lgnu/expr/LambdaExp;

    .line 2627
    .local v4, loopLambda:Lgnu/expr/LambdaExp;
    iget v5, v4, Lgnu/expr/LambdaExp;->min_args:I

    .line 2628
    .local v5, ninits:I
    iput v5, v4, Lgnu/expr/LambdaExp;->max_args:I

    .line 2629
    new-array v2, v5, [Lgnu/expr/Expression;

    .line 2630
    .local v2, inits:[Lgnu/expr/Expression;
    move v1, v5

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 2631
    iget-object v6, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    aput-object v6, v2, v1

    goto :goto_0

    .line 2632
    :cond_0
    iget-object v3, v4, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LetExp;

    .line 2633
    .local v3, let:Lgnu/expr/LetExp;
    invoke-virtual {v3}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 2634
    .local v0, fdecl:Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v6, v7, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v3, v6}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 2635
    iget-object v6, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v6, v4}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2636
    return-void
.end method

.method public loopRepeat()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 2664
    sget-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public loopRepeat(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 2669
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2670
    .local v0, args:[Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public loopRepeat([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 8
    .parameter "exps"

    .prologue
    .line 2649
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v3, Lgnu/expr/LambdaExp;

    .line 2650
    .local v3, loopLambda:Lgnu/expr/LambdaExp;
    iget-object v2, v3, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2651
    .local v2, let:Lgnu/expr/ScopeExp;
    invoke-virtual {v2}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 2652
    .local v1, fdecl:Lgnu/expr/Declaration;
    iget-object v5, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 2653
    .local v0, cond:Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v4, v5, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2654
    .local v4, recurse:Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    new-instance v6, Lgnu/expr/BeginExp;

    iget-object v7, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-direct {v6, v7, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object v7, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v5, v0, v6, v7}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v5, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2657
    iget-object v5, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v5, v3}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2658
    iget-object v5, v2, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2659
    return-object v2
.end method

.method public loopStart()V
    .locals 6

    .prologue
    .line 2597
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4}, Lgnu/expr/LambdaExp;-><init>()V

    .line 2598
    .local v4, loopLambda:Lgnu/expr/LambdaExp;
    const/4 v5, 0x1

    new-array v2, v5, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2599
    .local v2, inits:[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/LetExp;

    invoke-direct {v3, v2}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 2600
    .local v3, let:Lgnu/expr/LetExp;
    const-string v1, "%do%loop"

    .line 2601
    .local v1, fname:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2602
    .local v0, fdecl:Lgnu/expr/Declaration;
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2603
    invoke-virtual {v4, v1}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 2604
    iget-object v5, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v5, v3, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 2605
    iput-object v3, v4, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 2606
    iput-object v4, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2607
    return-void
.end method

.method public loopVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;
    .locals 3
    .parameter "name"
    .parameter "type"
    .parameter "init"

    .prologue
    .line 2611
    invoke-direct {p0}, Lgnu/expr/Compilation;->checkLoop()V

    .line 2612
    iget-object v1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 2613
    .local v1, loopLambda:Lgnu/expr/LambdaExp;
    invoke-virtual {v1, p1, p2}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 2614
    .local v0, decl:Lgnu/expr/Declaration;
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v2, :cond_0

    .line 2615
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 2616
    :cond_0
    iget-object v2, p0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2617
    iget v2, v1, Lgnu/expr/LambdaExp;->min_args:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/expr/LambdaExp;->min_args:I

    .line 2618
    return-object v0
.end method

.method public mustCompileHere()V
    .locals 1

    .prologue
    .line 2338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    .line 2339
    return-void
.end method

.method public outputClass(Ljava/lang/String;)V
    .locals 8
    .parameter "directory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 932
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 933
    .local v1, dirSep:C
    const/4 v2, 0x0

    .local v2, iClass:I
    :goto_0
    iget v5, p0, Lgnu/expr/Compilation;->numClasses:I

    if-ge v2, v5, :cond_1

    .line 935
    iget-object v5, p0, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v0, v5, v2

    .line 936
    .local v0, clas:Lgnu/bytecode/ClassType;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, out_name:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, parent:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 941
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 942
    :cond_0
    invoke-virtual {v0, v3}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 933
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    .end local v0           #clas:Lgnu/bytecode/ClassType;
    .end local v3           #out_name:Ljava/lang/String;
    .end local v4           #parent:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 945
    const/4 v5, 0x0

    iput-object v5, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 946
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 2
    .parameter "input"

    .prologue
    .line 2316
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unimeplemented parse"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pop()V
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2429
    return-void
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2422
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V

    .line 2423
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    iput-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2424
    return-void
.end method

.method public process(I)V
    .locals 11
    .parameter "wantedState"

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/16 v6, 0x64

    .line 1839
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v3

    .line 1842
    .local v3, saveCompilation:Lgnu/expr/Compilation;
    :try_start_0
    invoke-static {p0}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 1843
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 1844
    .local v2, mexp:Lgnu/expr/ModuleExp;
    const/4 v4, 0x4

    if-lt p1, v4, :cond_1

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1846
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1847
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lgnu/expr/Language;->parse(Lgnu/expr/Compilation;I)Z

    .line 1848
    iget-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    invoke-virtual {v4}, Lgnu/text/Lexer;->close()V

    .line 1849
    const/4 v4, 0x0

    iput-object v4, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 1850
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    :goto_0
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1851
    iget-object v4, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 1901
    invoke-static {v3}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    .line 1903
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    :goto_1
    return-void

    .line 1850
    .restart local v2       #mexp:Lgnu/expr/ModuleExp;
    :cond_0
    const/4 v4, 0x4

    goto :goto_0

    .line 1854
    :cond_1
    if-lt p1, v7, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v7, :cond_2

    .line 1856
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->addMainClass(Lgnu/expr/ModuleExp;)V

    .line 1857
    iget-object v4, p0, Lgnu/expr/Compilation;->language:Lgnu/expr/Language;

    invoke-virtual {v4, p0}, Lgnu/expr/Language;->resolve(Lgnu/expr/Compilation;)V

    .line 1858
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    :goto_2
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1860
    :cond_2
    if-lt p1, v8, :cond_3

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v8, :cond_3

    .line 1862
    invoke-virtual {p0, v2}, Lgnu/expr/Compilation;->walkModule(Lgnu/expr/ModuleExp;)V

    .line 1863
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v6

    :goto_3
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1865
    :cond_3
    if-lt p1, v9, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v9, :cond_4

    .line 1867
    new-instance v4, Lgnu/expr/LitTable;

    invoke-direct {v4, p0}, Lgnu/expr/LitTable;-><init>(Lgnu/expr/Compilation;)V

    iput-object v4, p0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    .line 1868
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lgnu/expr/ModuleExp;->setCanRead(Z)V

    .line 1869
    invoke-static {v2, p0}, Lgnu/expr/FindCapturedVars;->findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 1870
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocFields(Lgnu/expr/Compilation;)V

    .line 1871
    invoke-virtual {v2, p0}, Lgnu/expr/ModuleExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1872
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    :goto_4
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1874
    :cond_4
    if-lt p1, v10, :cond_5

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    if-ge v4, v10, :cond_5

    .line 1876
    invoke-virtual {p0}, Lgnu/expr/Compilation;->generateBytecode()V

    .line 1877
    iget-object v4, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    :goto_5
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1879
    :cond_5
    const/16 v4, 0xe

    if-lt p1, v4, :cond_6

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getState()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_6

    .line 1881
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v1

    .line 1882
    .local v1, manager:Lgnu/expr/ModuleManager;
    invoke-virtual {v1}, Lgnu/expr/ModuleManager;->getCompilationDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->outputClass(Ljava/lang/String;)V

    .line 1883
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lgnu/text/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1901
    .end local v1           #manager:Lgnu/expr/ModuleManager;
    :cond_6
    invoke-static {v3}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1

    :cond_7
    move v4, v7

    .line 1858
    goto :goto_2

    :cond_8
    move v4, v8

    .line 1863
    goto :goto_3

    :cond_9
    move v4, v9

    .line 1872
    goto :goto_4

    :cond_a
    move v4, v10

    .line 1877
    goto :goto_5

    .line 1886
    .end local v2           #mexp:Lgnu/expr/ModuleExp;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1888
    .local v0, ex:Lgnu/text/SyntaxException;
    const/16 v4, 0x64

    :try_start_2
    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 1889
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    if-eq v4, v5, :cond_b

    .line 1890
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confussing syntax error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1901
    .end local v0           #ex:Lgnu/text/SyntaxException;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    throw v4

    .restart local v0       #ex:Lgnu/text/SyntaxException;
    :cond_b
    invoke-static {v3}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1

    .line 1893
    .end local v0           #ex:Lgnu/text/SyntaxException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 1895
    .local v0, ex:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1896
    const/16 v4, 0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 1897
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lgnu/expr/Compilation;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1901
    invoke-static {v3}, Lgnu/expr/Compilation;->setCurrent(Lgnu/expr/Compilation;)V

    goto/16 :goto_1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "decl"

    .prologue
    .line 2433
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 2434
    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2404
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2405
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2406
    return-void
.end method

.method pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"
    .parameter "limit"

    .prologue
    .line 2371
    if-eq p1, p2, :cond_0

    .line 2373
    iget-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2374
    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->pushScope(Lgnu/expr/ScopeExp;)V

    .line 2375
    iget-object v0, p0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    invoke-virtual {v0, p1}, Lgnu/expr/NameLookup;->push(Lgnu/expr/ScopeExp;)V

    .line 2377
    :cond_0
    return-void
.end method

.method public pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;
    .locals 1
    .parameter "lexer"

    .prologue
    .line 2381
    iput-object p1, p0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    .line 2382
    invoke-virtual {p1}, Lgnu/text/Lexer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    move-result-object v0

    return-object v0
.end method

.method public pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;
    .locals 2
    .parameter "filename"

    .prologue
    .line 2387
    new-instance v0, Lgnu/expr/ModuleExp;

    invoke-direct {v0}, Lgnu/expr/ModuleExp;-><init>()V

    .line 2388
    .local v0, module:Lgnu/expr/ModuleExp;
    if-eqz p1, :cond_0

    .line 2389
    invoke-virtual {v0, p1}, Lgnu/expr/ModuleExp;->setFile(Ljava/lang/String;)V

    .line 2390
    :cond_0
    sget-boolean v1, Lgnu/expr/Compilation;->generateAppletDefault:Z

    if-eqz v1, :cond_1

    .line 2391
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2392
    :cond_1
    iget-boolean v1, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_2

    .line 2394
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 2395
    new-instance v1, Lgnu/expr/ModuleInfo;

    invoke-direct {v1}, Lgnu/expr/ModuleInfo;-><init>()V

    invoke-virtual {v1, p0}, Lgnu/expr/ModuleInfo;->setCompilation(Lgnu/expr/Compilation;)V

    .line 2397
    :cond_2
    iput-object v0, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 2398
    invoke-virtual {p0, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2399
    return-object v0
.end method

.method public pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;)V
    .locals 2
    .parameter "info"
    .parameter "defs"

    .prologue
    .line 94
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    .line 96
    :cond_0
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 99
    .local v0, posExp:Lgnu/expr/Expression;
    invoke-virtual {v0, p0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 100
    iget-object v1, p0, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public final pushScope(Lgnu/expr/ScopeExp;)V
    .locals 1
    .parameter "scope"

    .prologue
    .line 2410
    iget-boolean v0, p0, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    .line 2415
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 2416
    :cond_1
    iget-object v0, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v0, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2417
    iput-object p1, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    .line 2418
    return-void
.end method

.method public resolve(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .parameter "name"
    .parameter "function"

    .prologue
    const/4 v4, 0x0

    .line 2737
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 2739
    .local v1, env:Lgnu/mapping/Environment;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2740
    invoke-virtual {v1}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {v3, p1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 2743
    .local v2, symbol:Lgnu/mapping/Symbol;
    :goto_0
    if-nez v2, :cond_1

    move-object v3, v4

    .line 2747
    :goto_1
    return-object v3

    .line 2742
    .end local v2           #symbol:Lgnu/mapping/Symbol;
    .restart local p1
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .restart local v2       #symbol:Lgnu/mapping/Symbol;
    goto :goto_0

    .line 2745
    .end local p1
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2746
    invoke-virtual {v1, v2, v4}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 2747
    :cond_2
    invoke-virtual {v1, v2, v4}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method public setColumn(I)V
    .locals 1
    .parameter "column"

    .prologue
    .line 2533
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setColumn(I)V

    return-void
.end method

.method public setCurrentScope(Lgnu/expr/ScopeExp;)V
    .locals 4
    .parameter "scope"

    .prologue
    .line 2348
    invoke-static {p1}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v2

    .line 2349
    .local v2, scope_nesting:I
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-static {v3}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2350
    .local v0, current_nesting:I
    :goto_0
    if-le v0, v2, :cond_0

    .line 2352
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2353
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2355
    :cond_0
    move-object v1, p1

    .line 2356
    .local v1, sc:Lgnu/expr/ScopeExp;
    :goto_1
    if-le v2, v0, :cond_1

    .line 2358
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 2359
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2361
    :cond_1
    :goto_2
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v1, v3, :cond_2

    .line 2363
    iget-object v3, p0, Lgnu/expr/Compilation;->current_scope:Lgnu/expr/ScopeExp;

    invoke-virtual {p0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2364
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    .line 2366
    :cond_2
    invoke-virtual {p0, p1, v1}, Lgnu/expr/Compilation;->pushChain(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)V

    .line 2367
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 2531
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setLine(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 2532
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLine(I)V

    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2535
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setLine(Ljava/lang/Object;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 2538
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    .line 2540
    :cond_0
    return-void
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 2546
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 2547
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2542
    iget-object v0, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1}, Lgnu/text/SourceMessages;->setLocation(Lgnu/text/SourceLocator;)V

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "messages"

    .prologue
    .line 2462
    iput-object p1, p0, Lgnu/expr/Compilation;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setModule(Lgnu/expr/ModuleExp;)V
    .locals 0
    .parameter "mexp"

    .prologue
    .line 2325
    iput-object p1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 50
    iput p1, p0, Lgnu/expr/Compilation;->state:I

    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .parameter "message"

    .prologue
    .line 2520
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 2521
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<compilation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usedClass(Lgnu/bytecode/Type;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 2449
    :goto_0
    instance-of v2, p1, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_0

    .line 2450
    check-cast p1, Lgnu/bytecode/ArrayType;

    .end local p1
    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    .restart local p1
    goto :goto_0

    .line 2451
    :cond_0
    iget-boolean v2, p0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Lgnu/bytecode/ClassType;

    if-nez v2, :cond_2

    .line 2458
    :cond_1
    :goto_1
    return-void

    .line 2453
    :cond_2
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v1, v0

    .line 2454
    .local v1, clas:Lgnu/bytecode/ClassType;
    iget-object v2, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    if-eqz v2, :cond_1

    .line 2456
    iget-object v2, p0, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v2, v1}, Lgnu/bytecode/ArrayClassLoader;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_1
.end method

.method public usingCPStyle()Z
    .locals 2

    .prologue
    .line 162
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public usingTailCalls()Z
    .locals 2

    .prologue
    .line 164
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public walkModule(Lgnu/expr/ModuleExp;)V
    .locals 3
    .parameter "mexp"

    .prologue
    .line 915
    sget-boolean v1, Lgnu/expr/Compilation;->debugPrintExpr:Z

    if-eqz v1, :cond_0

    .line 917
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 918
    .local v0, dout:Lgnu/mapping/OutPort;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p1, v0}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 920
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(C)V

    .line 921
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->flush()V

    .line 924
    .end local v0           #dout:Lgnu/mapping/OutPort;
    :cond_0
    invoke-static {p1, p0}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 925
    invoke-static {p1}, Lgnu/expr/PushApply;->pushApply(Lgnu/expr/Expression;)V

    .line 926
    invoke-static {p1, p0}, Lgnu/expr/ChainLambdas;->chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 927
    invoke-static {p1, p0}, Lgnu/expr/FindTailCalls;->findTailCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 928
    return-void
.end method
