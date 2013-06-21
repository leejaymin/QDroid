.class public Lgnu/kawa/functions/ConstantFunction0;
.super Lgnu/mapping/Procedure0;
.source "ConstantFunction0.java"

# interfaces
.implements Lgnu/expr/CanInline;


# instance fields
.field final constant:Lgnu/expr/QuoteExp;

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V
    .locals 1
    .parameter "name"
    .parameter "constant"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure0;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure0;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    .line 21
    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/kawa/functions/ConstantFunction0;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 35
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 36
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    .line 37
    .local v1, nargs:I
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 39
    invoke-static {p0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 42
    .end local v0           #message:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lgnu/kawa/functions/ConstantFunction0;->constant:Lgnu/expr/QuoteExp;

    goto :goto_0
.end method
