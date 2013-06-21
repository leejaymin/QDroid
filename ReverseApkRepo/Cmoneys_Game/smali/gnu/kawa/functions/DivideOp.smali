.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/mapping/ProcedureN;
.source "DivideOp.java"

# interfaces
.implements Lgnu/expr/CanInline;


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field static typeRatNum:Lgnu/bytecode/ClassType;


# instance fields
.field asInteger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    sget-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/functions/DivideOp;->asInteger:Z

    .line 78
    const-string v0, "gnu.math.RatNum"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/DivideOp;->typeRatNum:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "args"

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, i:I
    array-length v4, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 33
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    .line 36
    .local v3, result:Lgnu/math/Numeric;
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 37
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v3           #result:Lgnu/math/Numeric;
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v4, p1, v1

    check-cast v4, Lgnu/math/Numeric;

    move-object v0, v4

    check-cast v0, Lgnu/math/Numeric;

    move-object v3, v0

    .restart local v3       #result:Lgnu/math/Numeric;
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 38
    :cond_1
    iget-boolean v4, p0, Lgnu/kawa/functions/DivideOp;->asInteger:Z

    if-eqz v4, :cond_2

    .line 39
    check-cast v3, Lgnu/math/RealNum;

    .end local v3           #result:Lgnu/math/Numeric;
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 40
    .restart local v3       #result:Lgnu/math/Numeric;
    :cond_2
    return-object v3
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const-string v11, "divide"

    .line 46
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 47
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 48
    .local v1, folded:Lgnu/expr/Expression;
    if-eq v1, p1, :cond_0

    move-object v7, v1

    .line 75
    :goto_0
    return-object v7

    .line 50
    :cond_0
    iget-boolean v7, p0, Lgnu/kawa/functions/DivideOp;->asInteger:Z

    if-eqz v7, :cond_1

    move-object v7, p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 53
    .local v0, args:[Lgnu/expr/Expression;
    array-length v7, v0

    if-le v7, v10, :cond_2

    .line 54
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {p0, v7, v0, p2}, Lgnu/kawa/functions/AddOp;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_0

    .line 55
    :cond_2
    array-length v7, v0

    if-ne v7, v10, :cond_7

    .line 57
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 58
    .local v5, type0:Lgnu/bytecode/Type;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 59
    .local v6, type1:Lgnu/bytecode/Type;
    invoke-static {v5}, Lgnu/kawa/functions/AddOp;->classify(Lgnu/bytecode/Type;)I

    move-result v2

    .line 60
    .local v2, kind0:I
    invoke-static {v6}, Lgnu/kawa/functions/AddOp;->classify(Lgnu/bytecode/Type;)I

    move-result v3

    .line 61
    .local v3, kind1:I
    if-eq v2, v9, :cond_3

    sget-object v7, Lgnu/kawa/functions/DivideOp;->typeRatNum:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    if-eq v3, v9, :cond_4

    sget-object v7, Lgnu/kawa/functions/DivideOp;->typeRatNum:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v7}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 63
    :cond_4
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v8, Lgnu/kawa/functions/DivideOp;->typeRatNum:Lgnu/bytecode/ClassType;

    const-string v9, "divide"

    invoke-virtual {v8, v11, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 65
    :cond_5
    if-lt v2, v8, :cond_6

    if-lt v3, v8, :cond_6

    .line 67
    const/16 v7, 0x6c

    invoke-static {v7, p1}, Lgnu/kawa/functions/AddOp;->primInline(ILgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v4

    .line 68
    .local v4, opt:Lgnu/expr/Expression;
    if-eq v4, p1, :cond_6

    move-object v7, v4

    .line 69
    goto :goto_0

    .line 71
    .end local v4           #opt:Lgnu/expr/Expression;
    :cond_6
    if-lt v2, v10, :cond_7

    if-lt v3, v10, :cond_7

    .line 72
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v8, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/bytecode/ClassType;

    const-string v9, "divide"

    invoke-virtual {v8, v11, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    goto :goto_0

    .end local v2           #kind0:I
    .end local v3           #kind1:I
    .end local v5           #type0:Lgnu/bytecode/Type;
    .end local v6           #type1:Lgnu/bytecode/Type;
    :cond_7
    move-object v7, p1

    .line 75
    goto :goto_0
.end method
