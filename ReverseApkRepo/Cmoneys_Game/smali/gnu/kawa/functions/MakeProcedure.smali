.class public Lgnu/kawa/functions/MakeProcedure;
.super Lgnu/mapping/ProcedureN;
.source "MakeProcedure.java"

# interfaces
.implements Lgnu/expr/CanInline;


# static fields
.field public static final makeProcedure:Lgnu/kawa/functions/MakeProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lgnu/kawa/functions/MakeProcedure;

    invoke-direct {v0}, Lgnu/kawa/functions/MakeProcedure;-><init>()V

    sput-object v0, Lgnu/kawa/functions/MakeProcedure;->makeProcedure:Lgnu/kawa/functions/MakeProcedure;

    .line 8
    sget-object v0, Lgnu/kawa/functions/MakeProcedure;->makeProcedure:Lgnu/kawa/functions/MakeProcedure;

    const-string v1, "make-procedure"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/MakeProcedure;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static makeProcedure$V([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 1
    .parameter "args"

    .prologue
    .line 12
    invoke-static {p0}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 17
    invoke-static {p1}, Lgnu/expr/GenericProc;->make([Ljava/lang/Object;)Lgnu/expr/GenericProc;

    move-result-object v0

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 13
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 23
    invoke-virtual/range {p1 .. p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 24
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 25
    .local v3, args:[Lgnu/expr/Expression;
    array-length v1, v3

    .line 26
    .local v1, alen:I
    const/4 v8, 0x0

    .line 27
    .local v8, method:Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 28
    .local v4, countMethods:I
    const/4 v9, 0x0

    .line 29
    .local v9, name:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 31
    aget-object v2, v3, v5

    .line 33
    .local v2, arg:Lgnu/expr/Expression;
    instance-of v12, v2, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_2

    move-object v0, v2

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v6, v0

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, key:Ljava/lang/Object;
    instance-of v12, v6, Lgnu/expr/Keyword;

    if-eqz v12, :cond_2

    .line 36
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #key:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, keyword:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    aget-object v10, v3, v5

    .line 38
    .local v10, next:Lgnu/expr/Expression;
    const-string v12, "name"

    if-ne v7, v12, :cond_1

    .line 40
    instance-of v12, v10, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_0

    .line 41
    check-cast v10, Lgnu/expr/QuoteExp;

    .end local v10           #next:Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 29
    .end local v7           #keyword:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    .restart local v7       #keyword:Ljava/lang/String;
    .restart local v10       #next:Lgnu/expr/Expression;
    :cond_1
    const-string v12, "method"

    if-ne v7, v12, :cond_0

    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    move-object v8, v10

    goto :goto_1

    .line 53
    .end local v7           #keyword:Ljava/lang/String;
    .end local v10           #next:Lgnu/expr/Expression;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 54
    move-object v8, v2

    goto :goto_1

    .line 57
    .end local v2           #arg:Lgnu/expr/Expression;
    :cond_3
    const/4 v12, 0x1

    if-ne v4, v12, :cond_7

    instance-of v12, v8, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_7

    .line 59
    move-object v0, v8

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v11, v0

    .line 60
    .local v11, proc:Lgnu/expr/LambdaExp;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_6

    .line 62
    aget-object v2, v3, v5

    .line 64
    .restart local v2       #arg:Lgnu/expr/Expression;
    instance-of v12, v2, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_4

    check-cast v2, Lgnu/expr/QuoteExp;

    .end local v2           #arg:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #key:Ljava/lang/Object;
    instance-of v12, v6, Lgnu/expr/Keyword;

    if-eqz v12, :cond_4

    .line 67
    check-cast v6, Lgnu/expr/Keyword;

    .end local v6           #key:Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    .line 68
    .restart local v7       #keyword:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    aget-object v10, v3, v5

    .line 69
    .restart local v10       #next:Lgnu/expr/Expression;
    const-string v12, "name"

    if-ne v7, v12, :cond_5

    .line 70
    invoke-virtual {v11, v9}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 60
    .end local v7           #keyword:Ljava/lang/String;
    .end local v10           #next:Lgnu/expr/Expression;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 71
    .restart local v7       #keyword:Ljava/lang/String;
    .restart local v10       #next:Lgnu/expr/Expression;
    :cond_5
    const-string v12, "method"

    if-eq v7, v12, :cond_4

    .line 74
    sget-object v12, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v12, v7}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Lgnu/expr/LambdaExp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .end local v7           #keyword:Ljava/lang/String;
    .end local v10           #next:Lgnu/expr/Expression;
    :cond_6
    move-object v12, v8

    .line 79
    .end local v11           #proc:Lgnu/expr/LambdaExp;
    :goto_4
    return-object v12

    :cond_7
    move-object v12, p1

    goto :goto_4
.end method
