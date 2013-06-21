.class public Lkawa/standard/thisRef;
.super Lkawa/lang/Syntax;
.source "thisRef.java"


# static fields
.field public static final thisSyntax:Lkawa/standard/thisRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lkawa/standard/thisRef;

    invoke-direct {v0}, Lkawa/standard/thisRef;-><init>()V

    sput-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    .line 10
    sget-object v0, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lkawa/standard/thisRef;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7
    .parameter "form"
    .parameter "tr"

    .prologue
    const/16 v6, 0x65

    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_6

    .line 16
    iget-object v2, p2, Lkawa/lang/Translator;->curMethodLambda:Lgnu/expr/LambdaExp;

    .line 17
    .local v2, method:Lgnu/expr/LambdaExp;
    if-nez v2, :cond_3

    move-object v1, v3

    .line 18
    .local v1, firstParam:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v4

    if-nez v4, :cond_2

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    if-eqz v2, :cond_1

    iget-object v4, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v4, :cond_4

    .line 22
    :cond_1
    const-string v3, "use of \'this\' not in a named method"

    invoke-virtual {p2, v6, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 32
    .end local p0
    :cond_2
    :goto_1
    new-instance v3, Lgnu/expr/ThisExp;

    invoke-direct {v3, v1}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    .line 35
    .end local v1           #firstParam:Lgnu/expr/Declaration;
    .end local v2           #method:Lgnu/expr/LambdaExp;
    :goto_2
    return-object v3

    .line 17
    .restart local v2       #method:Lgnu/expr/LambdaExp;
    .restart local p0
    :cond_3
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 23
    .restart local v1       #firstParam:Lgnu/expr/Declaration;
    :cond_4
    iget-object v4, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    const-string v3, "use of \'this\' in a static method"

    invoke-virtual {p2, v6, v3}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_5
    new-instance v1, Lgnu/expr/Declaration;

    .end local v1           #firstParam:Lgnu/expr/Declaration;
    sget-object v4, Lgnu/expr/ThisExp;->THIS_NAME:Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Lgnu/bytecode/Type;

    move-object p0, v0

    .end local p0
    invoke-direct {v1, v4, p0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 28
    .restart local v1       #firstParam:Lgnu/expr/Declaration;
    invoke-virtual {v2, v3, v1}, Lgnu/expr/LambdaExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 29
    iget-object v3, v2, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setFlag(I)V

    goto :goto_1

    .line 35
    .end local v1           #firstParam:Lgnu/expr/Declaration;
    .end local v2           #method:Lgnu/expr/LambdaExp;
    .restart local p0
    :cond_6
    const-string v3, "this with parameter not implemented"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_2
.end method
