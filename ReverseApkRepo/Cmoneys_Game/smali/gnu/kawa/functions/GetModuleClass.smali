.class public Lgnu/kawa/functions/GetModuleClass;
.super Lgnu/mapping/Procedure0;
.source "GetModuleClass.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field private static CLASS_RESOURCE_NAME:Ljava/lang/String;

.field public static final getModuleClass:Lgnu/kawa/functions/GetModuleClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/functions/GetModuleClass;

    invoke-direct {v0}, Lgnu/kawa/functions/GetModuleClass;-><init>()V

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    .line 33
    const-string v0, "$class_resource_URI$"

    sput-object v0, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static getModuleClassURI(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 6
    .parameter "comp"

    .prologue
    const/4 v5, 0x1

    .line 41
    iget-object v3, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    sget-object v4, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 42
    .local v1, decl:Lgnu/expr/Declaration;
    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 45
    new-instance v1, Lgnu/expr/Declaration;

    .end local v1           #decl:Lgnu/expr/Declaration;
    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->CLASS_RESOURCE_NAME:Ljava/lang/String;

    invoke-direct {v1, v3}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 46
    .restart local v1       #decl:Lgnu/expr/Declaration;
    const/16 v3, 0x4800

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 47
    const-string v3, "gnu.text.URLPath"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "classResourcePath"

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 49
    .local v2, maker:Lgnu/bytecode/Method;
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/GetModuleClass;->getModuleClass:Lgnu/kawa/functions/GetModuleClass;

    sget-object v4, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v0, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 52
    .local v0, clas:Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    new-array v4, v5, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v3, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 53
    iget-object v3, p0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lgnu/expr/ModuleExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 55
    .end local v0           #clas:Lgnu/expr/Expression;
    .end local v2           #maker:Lgnu/bytecode/Method;
    :cond_0
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    return-object v3
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "get-module-class must be inlined"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 24
    iget-object v0, p2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v0}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 25
    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 26
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 30
    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method
