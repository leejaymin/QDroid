.class public Lgnu/kawa/functions/Setter;
.super Lgnu/mapping/Procedure1;
.source "Setter.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setter:Lgnu/kawa/functions/Setter;

.field public static final setterDecl:Lgnu/expr/Declaration;

.field static final setterField:Lgnu/bytecode/Field;

.field static final setterType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "setter"

    .line 13
    new-instance v0, Lgnu/kawa/functions/Setter;

    invoke-direct {v0}, Lgnu/kawa/functions/Setter;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    .line 14
    sget-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    const-string v1, "setter"

    invoke-virtual {v0, v2}, Lgnu/kawa/functions/Setter;->setName(Ljava/lang/String;)V

    .line 93
    const-string v0, "gnu.kawa.functions.Setter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Setter;->setterType:Lgnu/bytecode/ClassType;

    .line 94
    sget-object v0, Lgnu/kawa/functions/Setter;->setterType:Lgnu/bytecode/ClassType;

    const-string v1, "setter"

    invoke-virtual {v0, v2}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Setter;->setterField:Lgnu/bytecode/Field;

    .line 95
    new-instance v0, Lgnu/expr/Declaration;

    const-string v1, "setter"

    sget-object v1, Lgnu/kawa/functions/Setter;->setterField:Lgnu/bytecode/Field;

    invoke-direct {v0, v2, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;)V

    sput-object v0, Lgnu/kawa/functions/Setter;->setterDecl:Lgnu/expr/Declaration;

    .line 96
    sget-object v0, Lgnu/kawa/functions/Setter;->setterDecl:Lgnu/expr/Declaration;

    new-instance v1, Lgnu/expr/QuoteExp;

    sget-object v2, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static setter(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .parameter "arg"

    .prologue
    .line 18
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg"

    .prologue
    .line 23
    instance-of v1, p1, Lgnu/mapping/Procedure;

    if-nez v1, :cond_1

    .line 26
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 27
    new-instance v1, Lgnu/kawa/functions/SetList;

    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-direct {v1, p1}, Lgnu/kawa/functions/SetList;-><init>(Ljava/util/List;)V

    .line 36
    :goto_0
    return-object v1

    .line 32
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 33
    .local v0, cl:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Lgnu/kawa/functions/SetArray;

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lgnu/kawa/functions/SetArray;-><init>(Ljava/lang/Object;Lgnu/expr/Language;)V

    goto :goto_0

    .line 36
    .end local v0           #cl:Ljava/lang/Class;
    :cond_1
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v1

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 10
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 42
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 43
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 44
    .local v3, args:[Lgnu/expr/Expression;
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 46
    const/4 v8, 0x0

    aget-object v1, v3, v8

    .line 47
    .local v1, arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 49
    .local v2, argType:Lgnu/bytecode/Type;
    instance-of v8, v2, Lgnu/bytecode/ArrayType;

    if-eqz v8, :cond_0

    .line 51
    new-instance v8, Lgnu/kawa/functions/SetArrayExp;

    check-cast v2, Lgnu/bytecode/ArrayType;

    .end local v2           #argType:Lgnu/bytecode/Type;
    invoke-direct {v8, v1, v2}, Lgnu/kawa/functions/SetArrayExp;-><init>(Lgnu/expr/Expression;Lgnu/bytecode/ArrayType;)V

    .line 85
    .end local v1           #arg:Lgnu/expr/Expression;
    :goto_0
    return-object v8

    .line 53
    .restart local v1       #arg:Lgnu/expr/Expression;
    .restart local v2       #argType:Lgnu/bytecode/Type;
    :cond_0
    instance-of v8, v2, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_2

    move-object v0, v2

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v4, v0

    .local v4, ctype:Lgnu/bytecode/ClassType;
    sget-object v8, Lgnu/kawa/functions/ApplyToArgs;->typeList:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 56
    instance-of v8, p1, Lgnu/kawa/functions/SetListExp;

    if-eqz v8, :cond_1

    move-object v8, p1

    .line 57
    goto :goto_0

    .line 59
    :cond_1
    new-instance v8, Lgnu/kawa/functions/SetListExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lgnu/kawa/functions/SetListExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 61
    .end local v4           #ctype:Lgnu/bytecode/ClassType;
    :cond_2
    instance-of v8, v1, Lgnu/expr/ReferenceExp;

    if-eqz v8, :cond_3

    .line 63
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    .line 64
    .local v5, decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 67
    .end local v5           #decl:Lgnu/expr/Declaration;
    :cond_3
    instance-of v8, v1, Lgnu/expr/QuoteExp;

    if-eqz v8, :cond_5

    .line 69
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 70
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Lgnu/mapping/Procedure;

    if-eqz v8, :cond_5

    .line 72
    check-cast v7, Lgnu/mapping/Procedure;

    .end local v7           #value:Ljava/lang/Object;
    invoke-virtual {v7}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v6

    .line 73
    .local v6, setter:Lgnu/mapping/Procedure;
    instance-of v8, v6, Lgnu/mapping/Procedure;

    if-eqz v8, :cond_5

    .line 75
    instance-of v8, v6, Ljava/io/Externalizable;

    if-eqz v8, :cond_4

    .line 76
    new-instance v8, Lgnu/expr/QuoteExp;

    invoke-direct {v8, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_4
    check-cast v6, Lgnu/mapping/Procedure;

    .end local v6           #setter:Lgnu/mapping/Procedure;
    invoke-static {v6}, Lgnu/expr/Declaration;->getDeclaration(Lgnu/mapping/Named;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 79
    .restart local v5       #decl:Lgnu/expr/Declaration;
    if-eqz v5, :cond_5

    .line 80
    new-instance v8, Lgnu/expr/ReferenceExp;

    invoke-direct {v8, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_0

    .end local v2           #argType:Lgnu/bytecode/Type;
    .end local v5           #decl:Lgnu/expr/Declaration;
    :cond_5
    move-object v8, p1

    .line 85
    goto :goto_0
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "arg1"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    check-cast p2, Lgnu/mapping/Procedure;

    .end local p2
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->setSetter(Lgnu/mapping/Procedure;)V

    .line 91
    return-void
.end method
