.class public Lgnu/kawa/functions/AppendValues;
.super Lgnu/mapping/MethodProc;
.source "AppendValues.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final appendValues:Lgnu/kawa/functions/AppendValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lgnu/kawa/functions/AppendValues;

    invoke-direct {v0}, Lgnu/kawa/functions/AppendValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 16
    sget-object v1, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    .line 19
    .local v1, endMarker:Lgnu/expr/Special;
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, arg:Ljava/lang/Object;
    if-ne v0, v1, :cond_0

    .line 27
    return-void

    .line 22
    :cond_0
    instance-of v2, v0, Lgnu/lists/Consumable;

    if-eqz v2, :cond_1

    .line 23
    check-cast v0, Lgnu/lists/Consumable;

    .end local v0           #arg:Ljava/lang/Object;
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-interface {v0, v2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 25
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 46
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 47
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    .line 48
    .local v2, nargs:I
    instance-of v3, p3, Lgnu/expr/ConsumerTarget;

    if-nez v3, :cond_0

    instance-of v3, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 51
    aget-object v3, v0, v1

    invoke-virtual {v3, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1           #i:I
    :cond_1
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 70
    :cond_2
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 74
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 32
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 33
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 34
    .local v0, args:[Lgnu/expr/Expression;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 35
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 41
    :goto_0
    return-object v2

    .line 36
    :cond_0
    array-length v2, v0

    if-nez v2, :cond_1

    .line 37
    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;

    move-result-object v1

    .line 39
    .local v1, folded:Lgnu/expr/Expression;
    if-eq v1, p1, :cond_2

    move-object v2, v1

    .line 40
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 41
    goto :goto_0
.end method
