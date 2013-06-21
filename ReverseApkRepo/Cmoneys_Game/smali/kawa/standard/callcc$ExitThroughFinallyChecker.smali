.class Lkawa/standard/callcc$ExitThroughFinallyChecker;
.super Lgnu/expr/ExpWalker;
.source "callcc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/standard/callcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExitThroughFinallyChecker"
.end annotation


# instance fields
.field currentTry:Lgnu/expr/TryExp;

.field decl:Lgnu/expr/Declaration;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lgnu/expr/ExpWalker;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->currentTry:Lgnu/expr/TryExp;

    return-void
.end method

.method public static check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z
    .locals 2
    .parameter "decl"
    .parameter "body"

    .prologue
    .line 171
    new-instance v0, Lkawa/standard/callcc$ExitThroughFinallyChecker;

    invoke-direct {v0}, Lkawa/standard/callcc$ExitThroughFinallyChecker;-><init>()V

    .line 172
    .local v0, walker:Lkawa/standard/callcc$ExitThroughFinallyChecker;
    iput-object p0, v0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    .line 173
    invoke-virtual {v0, p1}, Lkawa/standard/callcc$ExitThroughFinallyChecker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 174
    iget-object v1, v0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 179
    iget-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->currentTry:Lgnu/expr/TryExp;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    .line 181
    :cond_0
    return-object p1
.end method

.method protected walkTryExp(Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 2
    .parameter "exp"

    .prologue
    .line 186
    iget-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->currentTry:Lgnu/expr/TryExp;

    .line 187
    .local v0, saveTry:Lgnu/expr/TryExp;
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iput-object p1, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->currentTry:Lgnu/expr/TryExp;

    .line 189
    :cond_0
    invoke-virtual {p0, p1}, Lkawa/standard/callcc$ExitThroughFinallyChecker;->walkExpression(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 190
    iput-object v0, p0, Lkawa/standard/callcc$ExitThroughFinallyChecker;->currentTry:Lgnu/expr/TryExp;

    .line 191
    return-object p1
.end method
