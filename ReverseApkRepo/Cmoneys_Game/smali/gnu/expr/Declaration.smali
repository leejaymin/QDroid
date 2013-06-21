.class public Lgnu/expr/Declaration;
.super Ljava/lang/Object;
.source "Declaration.java"

# interfaces
.implements Lgnu/text/SourceLocator;


# static fields
.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CAN_WRITE:I = 0x8

.field public static final EARLY_INIT:I = 0x20000000

.field public static final EXPORT_SPECIFIED:I = 0x400

.field public static final EXTERNAL_ACCESS:I = 0x80000

.field public static final FIELD_OR_METHOD:I = 0x100000

.field static final INDIRECT_BINDING:I = 0x1

.field public static final IS_ALIAS:I = 0x100

.field public static final IS_CONSTANT:I = 0x4000

.field public static final IS_DYNAMIC:I = 0x10000000

.field static final IS_FLUID:I = 0x10

.field public static final IS_IMPORTED:I = 0x20000

.field public static final IS_NAMESPACE_PREFIX:I = 0x200000

.field static final IS_SIMPLE:I = 0x40

.field public static final IS_SINGLE_VALUE:I = 0x40000

.field public static final IS_SYNTAX:I = 0x8000

.field public static final IS_UNKNOWN:I = 0x10000

.field public static final MODULE_REFERENCE:I = 0x40000000

.field public static final NONSTATIC_SPECIFIED:I = 0x1000

.field public static final NOT_DEFINING:I = 0x200

.field public static final PACKAGE_ACCESS:I = 0x8000000

.field static final PRIVATE:I = 0x20

.field public static final PRIVATE_ACCESS:I = 0x1000000

.field public static final PRIVATE_PREFIX:Ljava/lang/String; = "$Prvt$"

.field public static final PRIVATE_SPECIFIED:I = 0x1000000

.field static final PROCEDURE:I = 0x80

.field public static final PROTECTED_ACCESS:I = 0x2000000

.field public static final PUBLIC_ACCESS:I = 0x4000000

.field public static final STATIC_SPECIFIED:I = 0x800

.field public static final TYPE_SPECIFIED:I = 0x2000

.field static final UNKNOWN_PREFIX:Ljava/lang/String; = "loc$"

.field static counter:I


# instance fields
.field public base:Lgnu/expr/Declaration;

.field public context:Lgnu/expr/ScopeExp;

.field evalIndex:I

.field public field:Lgnu/bytecode/Field;

.field filename:Ljava/lang/String;

.field public firstCall:Lgnu/expr/ApplyExp;

.field protected flags:I

.field protected id:I

.field makeLocationMethod:Lgnu/bytecode/Method;

.field next:Lgnu/expr/Declaration;

.field nextCapturedVar:Lgnu/expr/Declaration;

.field position:I

.field symbol:Ljava/lang/Object;

.field protected type:Lgnu/bytecode/Type;

.field protected typeExp:Lgnu/expr/Expression;

.field protected value:Lgnu/expr/Expression;

.field var:Lgnu/bytecode/Variable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 334
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 469
    const/16 v0, 0x40

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 655
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 2
    .parameter "var"

    .prologue
    .line 659
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 660
    iput-object p1, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 661
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 665
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 666
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V
    .locals 1
    .parameter "name"
    .parameter "field"

    .prologue
    .line 676
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 677
    iput-object p2, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 679
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "s"
    .parameter "type"

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lgnu/expr/Declaration;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/Declaration;->counter:I

    iput v0, p0, Lgnu/expr/Declaration;->id:I

    .line 334
    sget-object v0, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 469
    const/16 v0, 0x40

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 670
    invoke-virtual {p0, p1}, Lgnu/expr/Declaration;->setName(Ljava/lang/Object;)V

    .line 671
    invoke-virtual {p0, p2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 672
    return-void
.end method

.method public static followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;
    .locals 5
    .parameter "decl"

    .prologue
    .line 854
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 856
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 857
    .local v1, declValue:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/ReferenceExp;

    if-nez v4, :cond_1

    .line 865
    .end local v1           #declValue:Lgnu/expr/Expression;
    :cond_0
    return-object p0

    .line 859
    .restart local v1       #declValue:Lgnu/expr/Expression;
    :cond_1
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v3, v0

    .line 860
    .local v3, rexp:Lgnu/expr/ReferenceExp;
    iget-object v2, v3, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 861
    .local v2, orig:Lgnu/expr/Declaration;
    if-eqz v2, :cond_0

    .line 863
    move-object p0, v2

    .line 864
    goto :goto_0
.end method

.method public static getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;
    .locals 1
    .parameter "proc"

    .prologue
    .line 1005
    invoke-interface {p0}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/expr/Declaration;->getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaration(Ljava/lang/Object;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 7
    .parameter "proc"
    .parameter "name"

    .prologue
    .line 1010
    const/4 v4, 0x0

    .line 1011
    .local v4, procField:Lgnu/bytecode/Field;
    if-eqz p1, :cond_0

    .line 1038
    invoke-static {p0}, Lgnu/expr/PrimProcedure;->getProcedureClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .line 1039
    .local v3, procClass:Ljava/lang/Class;
    if-eqz v3, :cond_0

    .line 1041
    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    .line 1042
    .local v5, procType:Lgnu/bytecode/ClassType;
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, fname:Ljava/lang/String;
    invoke-virtual {v5, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    .line 1047
    .end local v2           #fname:Ljava/lang/String;
    .end local v3           #procClass:Ljava/lang/Class;
    .end local v5           #procType:Lgnu/bytecode/ClassType;
    :cond_0
    if-eqz v4, :cond_2

    .line 1049
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    .line 1050
    .local v1, fflags:I
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_2

    .line 1052
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 1053
    .local v0, decl:Lgnu/expr/Declaration;
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, p0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1054
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_1

    .line 1055
    const/16 v6, 0x4000

    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setFlag(I)V

    :cond_1
    move-object v6, v0

    .line 1059
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #fflags:I
    :goto_0
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 4
    .parameter "cname"
    .parameter "fname"

    .prologue
    .line 969
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 970
    .local v0, clas:Lgnu/bytecode/ClassType;
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v2

    .line 971
    .local v2, fld:Lgnu/bytecode/Field;
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, p1, v2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 972
    .local v1, decl:Lgnu/expr/Declaration;
    const/16 v3, 0x4800

    invoke-virtual {v1, v3}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 973
    return-object v1
.end method

.method public static getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;
    .locals 6
    .parameter "className"
    .parameter "fieldName"
    .parameter "name"

    .prologue
    .line 985
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 986
    .local v0, cls:Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 987
    .local v3, fld:Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 989
    .local v4, value:Ljava/lang/Object;
    new-instance v1, Lgnu/expr/Declaration;

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v5

    invoke-direct {v1, p2, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    .line 993
    .local v1, decl:Lgnu/expr/Declaration;
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 994
    const/16 v5, 0x4800

    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->setFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    return-object v1

    .line 997
    .end local v0           #cls:Ljava/lang/Class;
    .end local v1           #decl:Lgnu/expr/Declaration;
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 999
    .local v2, ex:Ljava/lang/Exception;
    new-instance v5, Lgnu/mapping/WrappedException;

    invoke-direct {v5, v2}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static final isUnknown(Lgnu/expr/Declaration;)Z
    .locals 1
    .parameter "decl"

    .prologue
    .line 628
    if-eqz p0, :cond_0

    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;
    .locals 4
    .parameter "code"

    .prologue
    .line 705
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-nez v3, :cond_2

    .line 707
    :cond_0
    const/4 v2, 0x0

    .line 708
    .local v2, vname:Ljava/lang/String;
    iget-object v3, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_4

    .line 712
    invoke-static {p0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 713
    .local v0, base:Lgnu/expr/Declaration;
    if-nez v0, :cond_3

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 722
    .end local v0           #base:Lgnu/expr/Declaration;
    .end local v2           #vname:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v3

    .line 713
    .restart local v0       #base:Lgnu/expr/Declaration;
    .restart local v2       #vname:Ljava/lang/String;
    :cond_3
    iget-object v3, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_0

    .line 717
    .end local v0           #base:Lgnu/expr/Declaration;
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    move-object v1, v3

    .line 719
    .local v1, type:Lgnu/bytecode/Type;
    :goto_2
    iget-object v3, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v3}, Lgnu/expr/ScopeExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v3

    iput-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 717
    .end local v1           #type:Lgnu/bytecode/Type;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v3

    move-object v1, v3

    goto :goto_2
.end method

.method public compileStore(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 316
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 317
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 330
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 324
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 325
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public getAccessFlags(S)S
    .locals 1
    .parameter "defaultFlags"

    .prologue
    .line 499
    const/high16 v0, 0x100

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x2

    .line 507
    :goto_0
    return v0

    .line 501
    :cond_0
    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x4

    goto :goto_0

    .line 503
    :cond_1
    const/high16 v0, 0x800

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 504
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :cond_2
    const/high16 v0, 0x400

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, p1

    .line 507
    goto :goto_0
.end method

.method public final getCanCall()Z
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCanRead()Z
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCanWrite()Z
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lgnu/expr/Declaration;->id:I

    return v0
.end method

.method public final getColumnNumber()I
    .locals 2

    .prologue
    .line 778
    iget v1, p0, Lgnu/expr/Declaration;->position:I

    and-int/lit16 v0, v1, 0xfff

    .line 779
    .local v0, column:I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public final getConstantValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 374
    .local v0, v:Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_1

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 376
    .end local v0           #v:Lgnu/expr/Expression;
    :goto_0
    return-object v1

    .restart local v0       #v:Lgnu/expr/Expression;
    :cond_1
    check-cast v0, Lgnu/expr/QuoteExp;

    .end local v0           #v:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getContext()Lgnu/expr/ScopeExp;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlag(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 473
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLineNumber()I
    .locals 2

    .prologue
    .line 772
    iget v1, p0, Lgnu/expr/Declaration;->position:I

    shr-int/lit8 v0, v1, 0xc

    .line 773
    .local v0, line:I
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getTypeExp()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getValue()Lgnu/expr/Expression;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    :try_start_0
    new-instance v0, Lgnu/expr/QuoteExp;

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-object v0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVariable()Lgnu/bytecode/Variable;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public final hasConstantValue()Z
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 382
    .local v0, v:Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignorable()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 587
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 597
    :goto_0
    return v3

    .line 589
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x1

    invoke-virtual {p0, v3}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 590
    goto :goto_0

    .line 591
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 592
    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 594
    .local v2, value:Lgnu/expr/Expression;
    if-eqz v2, :cond_4

    instance-of v3, v2, Lgnu/expr/LambdaExp;

    if-nez v3, :cond_5

    :cond_4
    move v3, v4

    .line 595
    goto :goto_0

    .line 596
    :cond_5
    move-object v0, v2

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v1, v0

    .line 597
    .local v1, lexp:Lgnu/expr/LambdaExp;
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v3, v5

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_0
.end method

.method public final isAlias()Z
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFluid()Z
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIndirectBinding()Z
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLexical()Z
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    const v1, 0x10010010

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNamespaceDecl()Z
    .locals 2

    .prologue
    .line 524
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPrivate()Z
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isProcedureDecl()Z
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPublic()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSimple()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public isStatic()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 612
    const/16 v1, 0x800

    invoke-virtual {p0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 617
    :goto_0
    return v1

    .line 614
    :cond_0
    const/16 v1, 0x1000

    invoke-virtual {p0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 615
    goto :goto_0

    .line 616
    :cond_1
    iget-object v1, p0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 617
    .local v0, lambda:Lgnu/expr/LambdaExp;
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_2

    check-cast v0, Lgnu/expr/ModuleExp;

    .end local v0           #lambda:Lgnu/expr/LambdaExp;
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final isThisParameter()Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    sget-object v1, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 34
    .parameter "access"
    .parameter "flags"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 158
    move-object/from16 v0, p4

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 310
    :goto_0
    return-void

    .line 160
    :cond_0
    if-nez p1, :cond_3

    const/16 v31, 0x0

    move-object/from16 v22, v31

    .line 161
    .local v22, owner:Lgnu/expr/Declaration;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v31

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object/from16 v24, v0

    check-cast v24, Lgnu/expr/ReferenceExp;

    .line 164
    .local v24, rexp:Lgnu/expr/ReferenceExp;
    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object/from16 v21, v0

    .line 165
    .local v21, orig:Lgnu/expr/Declaration;
    if-eqz v21, :cond_4

    and-int/lit8 v31, p2, 0x1

    if-eqz v31, :cond_1

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v31

    if-eqz v31, :cond_4

    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v21 .. v21}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v31

    if-nez v31, :cond_4

    .line 170
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 160
    .end local v21           #orig:Lgnu/expr/Declaration;
    .end local v22           #owner:Lgnu/expr/Declaration;
    .end local v24           #rexp:Lgnu/expr/ReferenceExp;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v31

    move-object/from16 v22, v31

    goto :goto_1

    .line 174
    .restart local v22       #owner:Lgnu/expr/Declaration;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 175
    .local v6, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v25

    .line 176
    .local v25, rtype:Lgnu/bytecode/Type;
    and-int/lit8 v31, p2, 0x8

    if-eqz v31, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    if-nez v31, :cond_5

    .line 179
    new-instance v31, Ljava/lang/Error;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "internal error: cannot take location of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v31

    .line 182
    :cond_5
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move v15, v0

    .line 183
    .local v15, immediate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v31

    if-eqz v31, :cond_8

    .line 185
    const-string v31, "gnu.kawa.reflect.StaticFieldLocation"

    invoke-static/range {v31 .. v31}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v19

    .line 186
    .local v19, ltype:Lgnu/bytecode/ClassType;
    const-string v31, "make"

    if-eqz v15, :cond_7

    const/16 v32, 0x1

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    .line 195
    .local v20, meth:Lgnu/bytecode/Method;
    :goto_3
    if-eqz v15, :cond_a

    .line 196
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 202
    :goto_4
    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 203
    move-object/from16 v25, v19

    .line 309
    .end local v15           #immediate:Z
    .end local v19           #ltype:Lgnu/bytecode/ClassType;
    .end local v20           #meth:Lgnu/bytecode/Method;
    :cond_6
    :goto_5
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 186
    .restart local v15       #immediate:Z
    .restart local v19       #ltype:Lgnu/bytecode/ClassType;
    :cond_7
    const/16 v32, 0x2

    goto :goto_2

    .line 190
    .end local v19           #ltype:Lgnu/bytecode/ClassType;
    :cond_8
    const-string v31, "gnu.kawa.reflect.FieldLocation"

    invoke-static/range {v31 .. v31}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v19

    .line 191
    .restart local v19       #ltype:Lgnu/bytecode/ClassType;
    const-string v31, "make"

    if-eqz v15, :cond_9

    const/16 v32, 0x2

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v20

    .line 193
    .restart local v20       #meth:Lgnu/bytecode/Method;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_3

    .line 191
    .end local v20           #meth:Lgnu/bytecode/Method;
    :cond_9
    const/16 v32, 0x3

    goto :goto_6

    .line 199
    .restart local v20       #meth:Lgnu/bytecode/Method;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_4

    .line 208
    .end local v15           #immediate:Z
    .end local v19           #ltype:Lgnu/bytecode/ClassType;
    .end local v20           #meth:Lgnu/bytecode/Method;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v31

    if-nez v31, :cond_d

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 258
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v31

    if-eqz v31, :cond_6

    and-int/lit8 v31, p2, 0x1

    if-nez v31, :cond_6

    .line 264
    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getFileName()Ljava/lang/String;

    move-result-object v11

    .local v11, filename:Ljava/lang/String;
    if-eqz v11, :cond_17

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getLineNumber()I

    move-result v17

    .local v17, line:I
    if-lez v17, :cond_17

    .line 270
    const-string v31, "gnu.mapping.UnboundLocationException"

    invoke-static/range {v31 .. v31}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v28

    .line 273
    .local v28, typeUnboundLocationException:Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v16

    .line 274
    .local v16, isInTry:Z
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/AccessExp;->getColumnNumber()I

    move-result v7

    .line 275
    .local v7, column:I
    new-instance v26, Lgnu/bytecode/Label;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 276
    .local v26, startTry:Lgnu/bytecode/Label;
    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 277
    sget-object v31, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 278
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 279
    .local v9, endTry:Lgnu/bytecode/Label;
    invoke-virtual {v9, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 280
    new-instance v8, Lgnu/bytecode/Label;

    invoke-direct {v8, v6}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 281
    .local v8, endLabel:Lgnu/bytecode/Label;
    invoke-virtual {v8, v6}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 282
    if-eqz v16, :cond_15

    .line 283
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 286
    :goto_8
    const/4 v12, 0x0

    .line 287
    .local v12, fragment_cookie:I
    if-nez v16, :cond_c

    .line 288
    invoke-virtual {v6, v8}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v12

    .line 289
    :cond_c
    move-object v0, v6

    move-object/from16 v1, v26

    move-object v2, v9

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 291
    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 292
    invoke-virtual {v6, v11}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 293
    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 294
    invoke-virtual {v6, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 295
    const-string v31, "setLine"

    const/16 v32, 0x3

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v31

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 297
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 298
    if-eqz v16, :cond_16

    .line 299
    invoke-virtual {v8, v6}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 306
    .end local v7           #column:I
    .end local v8           #endLabel:Lgnu/bytecode/Label;
    .end local v9           #endTry:Lgnu/bytecode/Label;
    .end local v11           #filename:Ljava/lang/String;
    .end local v12           #fragment_cookie:I
    .end local v16           #isInTry:Z
    .end local v17           #line:I
    .end local v26           #startTry:Lgnu/bytecode/Label;
    .end local v28           #typeUnboundLocationException:Lgnu/bytecode/ClassType;
    :goto_9
    sget-object v25, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto/16 :goto_5

    .line 218
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v31, v0

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_7

    .line 220
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v31

    if-nez v31, :cond_11

    .line 223
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v10

    .line 224
    .local v10, env:Lgnu/mapping/Environment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lgnu/mapping/Symbol;

    move-object/from16 v27, v5

    .line 226
    .local v27, sym:Lgnu/mapping/Symbol;
    :goto_a
    const/16 v23, 0x0

    .line 227
    .local v23, property:Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v31

    if-eqz v31, :cond_f

    .line 229
    sget-object v23, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 230
    .end local v23           #property:Ljava/lang/Object;
    :cond_f
    move-object v0, v10

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v18

    .line 231
    .local v18, loc:Lgnu/mapping/Location;
    sget-object v31, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-static/range {v31 .. v31}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_7

    .line 224
    .end local v18           #loc:Lgnu/mapping/Location;
    .end local v27           #sym:Lgnu/mapping/Symbol;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v27, v31

    goto :goto_a

    .line 233
    .end local v10           #env:Lgnu/mapping/Environment;
    :cond_11
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v31, v0

    if-eqz v31, :cond_12

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v29

    .local v29, val:Ljava/lang/Object;
    if-eqz v29, :cond_12

    .line 235
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_0

    .line 240
    .end local v29           #val:Ljava/lang/Object;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v30

    .line 242
    .local v30, var:Lgnu/bytecode/Variable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v31, v0

    if-eqz v31, :cond_13

    if-nez v30, :cond_13

    const/16 v31, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v31

    if-nez v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v5, v0

    check-cast v5, Lgnu/expr/ClassExp;

    .local v5, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v5}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v31

    if-eqz v31, :cond_13

    .line 246
    const-string v31, "get"

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 247
    .local v13, getName:Ljava/lang/String;
    move-object v0, v5

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object v1, v13

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v14

    .line 248
    .local v14, getter:Lgnu/bytecode/Method;
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 249
    invoke-virtual {v6, v14}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_7

    .line 253
    .end local v5           #cl:Lgnu/expr/ClassExp;
    .end local v13           #getName:Ljava/lang/String;
    .end local v14           #getter:Lgnu/bytecode/Method;
    :cond_13
    if-nez v30, :cond_14

    .line 254
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v30

    .line 255
    :cond_14
    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_7

    .line 285
    .end local v30           #var:Lgnu/bytecode/Variable;
    .restart local v7       #column:I
    .restart local v8       #endLabel:Lgnu/bytecode/Label;
    .restart local v9       #endTry:Lgnu/bytecode/Label;
    .restart local v11       #filename:Ljava/lang/String;
    .restart local v16       #isInTry:Z
    .restart local v17       #line:I
    .restart local v26       #startTry:Lgnu/bytecode/Label;
    .restart local v28       #typeUnboundLocationException:Lgnu/bytecode/ClassType;
    :cond_15
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto/16 :goto_8

    .line 301
    .restart local v12       #fragment_cookie:I
    :cond_16
    invoke-virtual {v6, v12}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    goto/16 :goto_9

    .line 304
    .end local v7           #column:I
    .end local v8           #endLabel:Lgnu/bytecode/Label;
    .end local v9           #endTry:Lgnu/bytecode/Label;
    .end local v11           #filename:Ljava/lang/String;
    .end local v12           #fragment_cookie:I
    .end local v16           #isInTry:Z
    .end local v17           #line:I
    .end local v26           #startTry:Lgnu/bytecode/Label;
    .end local v28           #typeUnboundLocationException:Lgnu/bytecode/ClassType;
    :cond_17
    sget-object v31, Lgnu/expr/Compilation;->getLocationMethod:Lgnu/bytecode/Method;

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_9
.end method

.method loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 3
    .parameter "owner"
    .parameter "comp"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 149
    :cond_0
    if-eqz p1, :cond_1

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v0, v1, p2, v2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    goto :goto_0
.end method

.method public makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 16
    .parameter "frameType"
    .parameter "comp"
    .parameter "value"

    .prologue
    .line 876
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v5

    .line 877
    .local v5, external_access:Z
    const/4 v6, 0x0

    .line 878
    .local v6, fflags:I
    const/16 v14, 0x4000

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v9

    .line 879
    .local v9, isConstant:Z
    const/16 v14, 0x2000

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v12

    .line 880
    .local v12, typeSpecified:Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v14

    if-eqz v14, :cond_0

    if-nez v9, :cond_0

    if-nez v12, :cond_0

    .line 881
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 885
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v14

    if-nez v14, :cond_1

    if-nez v5, :cond_1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 886
    :cond_1
    or-int/lit8 v6, v6, 0x1

    .line 887
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v14

    if-nez v14, :cond_5

    if-eqz v9, :cond_3

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v14, v0

    if-nez v14, :cond_5

    :cond_3
    const v14, 0x10010010

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v14, v0

    if-eqz v14, :cond_6

    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v14

    if-nez v14, :cond_6

    .line 896
    :cond_5
    or-int/lit8 v6, v6, 0x8

    .line 897
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v9, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v14, v0

    instance-of v14, v14, Lgnu/expr/ClassExp;

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v14, v0

    instance-of v14, v14, Lgnu/expr/ModuleExp;

    if-eqz v14, :cond_9

    .line 899
    :cond_8
    or-int/lit8 v6, v6, 0x10

    .line 900
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    invoke-virtual {v14}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 901
    .local v8, ftype:Lgnu/bytecode/Type;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 902
    const/high16 v14, 0x2000

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 903
    const-string v14, "gnu.kawa.reflect.FieldLocation"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    .line 906
    :cond_a
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    .line 908
    .local v7, fname:Ljava/lang/String;
    if-nez v7, :cond_c

    .line 910
    const-string v7, "$unnamed$0"

    .line 911
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    sub-int v11, v14, v15

    .line 922
    .local v11, nlength:I
    :goto_1
    const/4 v4, 0x0

    .line 923
    .local v4, counter:I
    :goto_2
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 924
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v7, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x24

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 905
    .end local v4           #counter:I
    .end local v7           #fname:Ljava/lang/String;
    .end local v11           #nlength:I
    :cond_b
    sget-object v8, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 915
    .restart local v7       #fname:Ljava/lang/String;
    :cond_c
    invoke-static {v7}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 916
    const/high16 v14, 0x1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 917
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loc$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 918
    :cond_d
    if-eqz v5, :cond_e

    const/high16 v14, 0x4000

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-nez v14, :cond_e

    .line 919
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "$Prvt$"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 920
    :cond_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    .restart local v11       #nlength:I
    goto :goto_1

    .line 926
    .restart local v4       #counter:I
    :cond_f
    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v8

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 927
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move v14, v0

    if-eqz v14, :cond_10

    .line 929
    move-object/from16 v0, p3

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v4, v0

    .end local v4           #counter:I
    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 930
    .local v13, val:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 932
    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object v14, v0

    invoke-virtual {v14, v13}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v10

    .line 933
    .local v10, literal:Lgnu/expr/Literal;
    iget-object v14, v10, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v14, :cond_10

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v14, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    move-object v15, v0

    invoke-virtual {v10, v14, v15}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 946
    .end local v10           #literal:Lgnu/expr/Literal;
    .end local v13           #val:Ljava/lang/Object;
    :cond_10
    const/high16 v14, 0x2000

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v14

    if-nez v14, :cond_11

    if-eqz p3, :cond_12

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move v14, v0

    if-nez v14, :cond_12

    .line 950
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 952
    :cond_12
    :goto_3
    return-void

    .line 936
    .restart local v13       #val:Ljava/lang/Object;
    :cond_13
    instance-of v14, v8, Lgnu/bytecode/PrimType;

    if-nez v14, :cond_14

    const-string v14, "java.lang.String"

    invoke-virtual {v8}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 939
    :cond_14
    instance-of v14, v13, Lgnu/text/Char;

    if-eqz v14, :cond_15

    .line 940
    check-cast v13, Lgnu/text/Char;

    .end local v13           #val:Ljava/lang/Object;
    invoke-virtual {v13}, Lgnu/text/Char;->intValue()I

    move-result v14

    invoke-static {v14}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v13

    .line 941
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object v14, v0

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Field;->setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V

    goto :goto_3
.end method

.method public makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V
    .locals 1
    .parameter "comp"
    .parameter "value"

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 871
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 872
    return-void
.end method

.method makeIndirectLocationFor()Lgnu/mapping/Location;
    .locals 3

    .prologue
    .line 957
    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/mapping/Symbol;

    move-object v0, p0

    .line 959
    .local v0, sym:Lgnu/mapping/Symbol;
    :goto_0
    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v1

    return-object v1

    .line 957
    .end local v0           #sym:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_0
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    iget-object v2, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final needsContext()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final needsExternalAccess()Z
    .locals 3

    .prologue
    const v2, 0x200020

    const v1, 0x80020

    .line 438
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInit()Z
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextDecl()Lgnu/expr/Declaration;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public noteValue(Lgnu/expr/Expression;)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 639
    iget-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_2

    .line 641
    instance-of v1, p1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    .line 642
    move-object v0, p1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v1, v0

    iput-object p0, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 643
    :cond_0
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 651
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    iget-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-eq v1, p1, :cond_1

    .line 647
    iget-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_3

    .line 648
    iget-object v1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/LambdaExp;

    iput-object v3, v1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 649
    :cond_3
    iput-object v3, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    goto :goto_0
.end method

.method public printInfo(Lgnu/mapping/OutPort;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 787
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->printInfo(Ljava/lang/StringBuffer;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public printInfo(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "sbuf"

    .prologue
    const-string v3, "::"

    .line 793
    iget-object v2, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 805
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 806
    iget v2, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 821
    const-string v2, "/fl:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    iget v2, p0, Lgnu/expr/Declaration;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const-string v2, "(ignorable)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :cond_0
    iget-object v1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 826
    .local v1, tx:Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 827
    .local v0, t:Lgnu/bytecode/Type;
    if-eqz v1, :cond_2

    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_2

    .line 829
    const-string v2, "::"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    iget-object v2, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v2, :cond_1

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v2, :cond_1

    .line 834
    const-string v2, "::"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public pushIndirectBinding(Lgnu/expr/Compilation;)V
    .locals 6
    .parameter "comp"

    .prologue
    .line 688
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 689
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    if-nez v2, :cond_0

    .line 692
    const/4 v2, 0x2

    new-array v0, v2, [Lgnu/bytecode/Type;

    .line 693
    .local v0, args:[Lgnu/bytecode/Type;
    const/4 v2, 0x0

    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v3, v0, v2

    .line 694
    const/4 v2, 0x1

    sget-object v3, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v3, v0, v2

    .line 695
    sget-object v2, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v3, "make"

    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v0, v4, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    .line 700
    .end local v0           #args:[Lgnu/bytecode/Type;
    :cond_0
    iget-object v2, p0, Lgnu/expr/Declaration;->makeLocationMethod:Lgnu/bytecode/Method;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 701
    return-void
.end method

.method public final setAlias(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 511
    const/16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    return-void
.end method

.method public final setCanCall()V
    .locals 2

    .prologue
    .line 556
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 557
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 559
    :cond_0
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 1
    .parameter "called"

    .prologue
    .line 553
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    return-void
.end method

.method public final setCanRead()V
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 548
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 550
    :cond_0
    return-void
.end method

.method public final setCanRead(Z)V
    .locals 1
    .parameter "read"

    .prologue
    .line 543
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 544
    return-void
.end method

.method public final setCanWrite()V
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 573
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->setCanRead()V

    .line 575
    :cond_0
    return-void
.end method

.method public final setCanWrite(Z)V
    .locals 1
    .parameter "written"

    .prologue
    .line 566
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 51
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/Error;

    const-string v1, "code must be negative"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput p1, p0, Lgnu/expr/Declaration;->id:I

    .line 53
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 736
    iput-object p1, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public final setFlag(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 484
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 485
    return-void
.end method

.method public final setFlag(ZI)V
    .locals 2
    .parameter "setting"
    .parameter "flag"

    .prologue
    .line 478
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    or-int/2addr v0, p2

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    iget v0, p0, Lgnu/expr/Declaration;->flags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/expr/Declaration;->flags:I

    goto :goto_0
.end method

.method public final setFluid(Z)V
    .locals 1
    .parameter "fluid"

    .prologue
    .line 516
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    return-void
.end method

.method public final setIndirectBinding(Z)V
    .locals 1
    .parameter "indirectBinding"

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 537
    return-void
.end method

.method public final setLine(I)V
    .locals 1
    .parameter "lineno"

    .prologue
    .line 750
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setLine(II)V

    .line 751
    return-void
.end method

.method public final setLine(II)V
    .locals 1
    .parameter "lineno"
    .parameter "colno"

    .prologue
    .line 741
    if-gez p1, :cond_0

    .line 742
    const/4 p1, 0x0

    .line 743
    :cond_0
    if-gez p2, :cond_1

    .line 744
    const/4 p2, 0x0

    .line 745
    :cond_1
    shl-int/lit8 v0, p1, 0xc

    add-int/2addr v0, p2

    iput v0, p0, Lgnu/expr/Declaration;->position:I

    .line 746
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 730
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->filename:Ljava/lang/String;

    .line 731
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/Declaration;->setLine(II)V

    .line 732
    return-void
.end method

.method public final setName(Ljava/lang/Object;)V
    .locals 0
    .parameter "symbol"

    .prologue
    .line 99
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public final setNext(Lgnu/expr/Declaration;)V
    .locals 0
    .parameter "next"

    .prologue
    .line 109
    iput-object p1, p0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    return-void
.end method

.method public final setPrivate(Z)V
    .locals 1
    .parameter "isPrivate"

    .prologue
    .line 494
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 495
    return-void
.end method

.method public final setProcedureDecl(Z)V
    .locals 1
    .parameter "val"

    .prologue
    .line 520
    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    return-void
.end method

.method public final setSimple(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 122
    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Lgnu/expr/Declaration;->setFlag(ZI)V

    .line 123
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setSimple(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 0
    .parameter "symbol"

    .prologue
    .line 103
    iput-object p1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public final setSyntax()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 129
    const v0, 0xc000

    invoke-virtual {p0, v0}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 130
    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 65
    iput-object p1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 66
    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 67
    :cond_0
    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 68
    return-void
.end method

.method public final setTypeExp(Lgnu/expr/Expression;)V
    .locals 4
    .parameter "typeExp"

    .prologue
    .line 72
    iput-object p1, p0, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 74
    instance-of v3, p1, Lgnu/expr/TypeValue;

    if-eqz v3, :cond_1

    .line 75
    check-cast p1, Lgnu/expr/TypeValue;

    .end local p1
    invoke-interface {p1}, Lgnu/expr/TypeValue;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 88
    .local v1, t:Lgnu/bytecode/Type;
    :goto_0
    iput-object v1, p0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 89
    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 90
    :cond_0
    return-void

    .line 76
    .end local v1           #t:Lgnu/bytecode/Type;
    .restart local p1
    :cond_1
    instance-of v3, p1, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_4

    .line 78
    check-cast p1, Lgnu/expr/QuoteExp;

    .end local p1
    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, typeValue:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/bytecode/Type;

    if-eqz v3, :cond_2

    .line 80
    move-object v0, v2

    check-cast v0, Lgnu/bytecode/Type;

    move-object v1, v0

    .restart local v1       #t:Lgnu/bytecode/Type;
    goto :goto_0

    .line 81
    .end local v1           #t:Lgnu/bytecode/Type;
    :cond_2
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 82
    check-cast v2, Ljava/lang/Class;

    .end local v2           #typeValue:Ljava/lang/Object;
    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    .restart local v1       #t:Lgnu/bytecode/Type;
    goto :goto_0

    .line 84
    .end local v1           #t:Lgnu/bytecode/Type;
    .restart local v2       #typeValue:Ljava/lang/Object;
    :cond_3
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .restart local v1       #t:Lgnu/bytecode/Type;
    goto :goto_0

    .line 87
    .end local v1           #t:Lgnu/bytecode/Type;
    .end local v2           #typeValue:Ljava/lang/Object;
    .restart local p1
    :cond_4
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .restart local v1       #t:Lgnu/bytecode/Type;
    goto :goto_0
.end method

.method public final setValue(Lgnu/expr/Expression;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 368
    iput-object p1, p0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Declaration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/Declaration;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
