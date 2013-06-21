.class public Lgnu/kawa/functions/SetNamedPart;
.super Lgnu/mapping/Procedure3;
.source "SetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Lgnu/expr/CanInline;


# static fields
.field public static final setNamedPart:Lgnu/kawa/functions/SetNamedPart;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lgnu/kawa/functions/SetNamedPart;

    invoke-direct {v0}, Lgnu/kawa/functions/SetNamedPart;-><init>()V

    sput-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    .line 12
    sget-object v0, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    const-string v1, "setNamedPart"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/SetNamedPart;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "container"
    .parameter "part"
    .parameter "value"

    .prologue
    .line 52
    instance-of v5, p1, Lgnu/mapping/Namespace;

    if-eqz v5, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Namespace;

    move-object v2, v0

    .line 55
    .local v2, ns:Lgnu/mapping/Namespace;
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, uri:Ljava/lang/String;
    const-string v5, "class:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 66
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v4           #uri:Ljava/lang/String;
    .end local p1
    :cond_0
    instance-of v5, p1, Ljava/lang/Class;

    if-eqz v5, :cond_3

    .line 67
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    .local p1, container:Lgnu/bytecode/ClassType;
    move-object v5, p1

    .line 68
    .end local p1           #container:Lgnu/bytecode/ClassType;
    :goto_0
    instance-of v6, v5, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_2

    .line 72
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    return-object v5

    .line 60
    .restart local v2       #ns:Lgnu/mapping/Namespace;
    .restart local v4       #uri:Ljava/lang/String;
    .local p1, container:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 61
    .local v3, sym:Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 62
    .local v1, env:Lgnu/mapping/Environment;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    invoke-virtual {v5, v3, p3}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 63
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 75
    .end local v1           #env:Lgnu/mapping/Environment;
    .end local v2           #ns:Lgnu/mapping/Namespace;
    .end local v3           #sym:Lgnu/mapping/Symbol;
    .end local v4           #uri:Ljava/lang/String;
    .end local p1           #container:Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 81
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p3}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    :cond_3
    move-object v5, p1

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 12
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v11, 0x1

    .line 17
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 18
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 19
    .local v0, args:[Lgnu/expr/Expression;
    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    aget-object v9, v0, v11

    instance-of v9, v9, Lgnu/expr/QuoteExp;

    if-nez v9, :cond_1

    :cond_0
    move-object v9, p1

    .line 43
    .end local p0
    :goto_0
    return-object v9

    .line 21
    .restart local p0
    :cond_1
    const/4 v9, 0x0

    aget-object v3, v0, v9

    .line 22
    .local v3, context:Lgnu/expr/Expression;
    aget-object p0, v0, v11

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, mname:Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 24
    .local v7, type:Lgnu/bytecode/Type;
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    .line 25
    .local v2, comp:Lgnu/expr/Compilation;
    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 26
    .local v4, language:Lgnu/expr/Language;
    invoke-virtual {v4, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v8

    .line 27
    .local v8, typeval:Lgnu/bytecode/Type;
    if-nez v2, :cond_2

    const/4 v9, 0x0

    move-object v1, v9

    .line 30
    .local v1, caller:Lgnu/bytecode/ClassType;
    :goto_1
    instance-of v9, v8, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_4

    .line 31
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v9, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0

    .line 27
    .end local v1           #caller:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v9, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    move-object v1, v9

    goto :goto_1

    :cond_3
    iget-object v9, v2, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v1, v9

    goto :goto_1

    .line 33
    .restart local v1       #caller:Lgnu/bytecode/ClassType;
    :cond_4
    instance-of v9, v7, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_5

    .line 35
    check-cast v7, Lgnu/bytecode/ClassType;

    .end local v7           #type:Lgnu/bytecode/Type;
    invoke-static {v7, v5, v1}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v6

    .line 36
    .local v6, part:Lgnu/bytecode/Member;
    if-eqz v6, :cond_5

    .line 40
    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v9, v10, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_0

    .end local v6           #part:Lgnu/bytecode/Member;
    :cond_5
    move-object v9, p1

    .line 43
    goto :goto_0
.end method
