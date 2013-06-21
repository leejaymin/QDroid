.class public Lkawa/standard/module_static;
.super Lkawa/lang/Syntax;
.source "module_static.java"


# static fields
.field public static final module_static:Lkawa/standard/module_static;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lkawa/standard/module_static;

    invoke-direct {v0}, Lkawa/standard/module_static;-><init>()V

    sput-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    .line 11
    sget-object v0, Lkawa/standard/module_static;->module_static:Lkawa/standard/module_static;

    const-string v1, "module-static"

    invoke-virtual {v0, v1}, Lkawa/standard/module_static;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .parameter "form"
    .parameter "tr"

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 11
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x27

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x65

    .line 16
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 17
    .local v2, list:Ljava/lang/Object;
    instance-of v4, p3, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_0

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not at module level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v6, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v4, v8

    .line 71
    .end local p3
    :goto_0
    return v4

    .line 22
    .restart local p3
    :cond_0
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_3

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 26
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_2

    .line 27
    check-cast p3, Lgnu/expr/ModuleExp;

    .end local p3
    const v4, 0x8000

    invoke-virtual {p3, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    :cond_1
    :goto_1
    move v4, v8

    .line 71
    goto :goto_0

    .line 29
    .restart local p3
    :cond_2
    check-cast p3, Lgnu/expr/ModuleExp;

    .end local p3
    invoke-virtual {p3, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_1

    .line 31
    .restart local p3
    :cond_3
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_5

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v4, v5, :cond_5

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/lists/Pair;

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/Pair;

    .restart local p1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "quote"

    invoke-virtual {p4, v4, v5}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/lists/Pair;

    .restart local p1
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v4, :cond_4

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/mapping/SimpleSymbol;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "init-run"

    if-ne v4, v5, :cond_4

    .line 41
    move-object v0, p3

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object v4, v0

    invoke-virtual {v4, v10}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 42
    check-cast p3, Lgnu/expr/ModuleExp;

    .end local p3
    const/high16 v4, 0x2

    invoke-virtual {p3, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    goto :goto_1

    .line 46
    .restart local p3
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid quoted symbol for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v6, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v4, v7

    .line 47
    goto/16 :goto_0

    .line 52
    :cond_5
    move-object v0, p3

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object v4, v0

    const v5, 0x8000

    invoke-virtual {v4, v5}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 55
    :goto_2
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v4, :cond_1

    .line 57
    instance-of v4, v2, Lgnu/lists/Pair;

    if-eqz v4, :cond_6

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object p1, v0

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lgnu/mapping/Symbol;

    if-nez v4, :cond_7

    .line 60
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid syntax in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lkawa/standard/module_static;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v6, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    move v4, v7

    .line 61
    goto/16 :goto_0

    .line 63
    :cond_7
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Symbol;

    .line 64
    .local v3, symbol:Lgnu/mapping/Symbol;
    invoke-virtual {p3, v3}, Lgnu/expr/ScopeExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 65
    .local v1, decl:Lgnu/expr/Declaration;
    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 66
    invoke-static {v1, p1}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 67
    :cond_8
    const/16 v4, 0x800

    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->setFlag(I)V

    .line 68
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 69
    goto :goto_2
.end method
