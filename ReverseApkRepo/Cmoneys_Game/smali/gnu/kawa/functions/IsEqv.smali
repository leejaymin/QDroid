.class public Lgnu/kawa/functions/IsEqv;
.super Lgnu/mapping/Procedure2;
.source "IsEqv.java"

# interfaces
.implements Lgnu/expr/CanInline;


# instance fields
.field isEq:Lgnu/kawa/functions/IsEq;

.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V
    .locals 0
    .parameter "language"
    .parameter "name"
    .parameter "isEq"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    .line 17
    iput-object p3, p0, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    .line 18
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqv;->setName(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 23
    if-ne p0, p1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 25
    :cond_0
    instance-of v0, p0, Lgnu/text/Char;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 29
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static nonNumeric(Lgnu/expr/Expression;)Z
    .locals 3
    .parameter "exp"

    .prologue
    const/4 v2, 0x0

    .line 39
    instance-of v1, p0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    .line 41
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lgnu/math/Numeric;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/text/Char;

    if-nez v1, :cond_0

    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 45
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    move v1, v2

    .line 42
    goto :goto_0

    .end local v0           #value:Ljava/lang/Object;
    .restart local p0
    :cond_1
    move v1, v2

    .line 45
    goto :goto_0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/kawa/functions/IsEqv;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqv;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 51
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 52
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 53
    .local v0, args:[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/IsEqv;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lgnu/kawa/functions/IsEqv;->nonNumeric(Lgnu/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    new-instance v1, Lgnu/expr/ApplyExp;

    iget-object v2, p0, Lgnu/kawa/functions/IsEqv;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 55
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method
