.class public Lgnu/expr/LangExp;
.super Lgnu/expr/Expression;
.source "LangExp.java"


# instance fields
.field hook:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "compile called on LangExp"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLangValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 24
    const-string v0, "(LangExp ???)"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public setLangValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 14
    iput-object p1, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 29
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkLangExp(Lgnu/expr/LangExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
