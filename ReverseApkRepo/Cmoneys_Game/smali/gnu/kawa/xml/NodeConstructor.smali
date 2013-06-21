.class public abstract Lgnu/kawa/xml/NodeConstructor;
.super Lgnu/mapping/MethodProc;
.source "NodeConstructor.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final popNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final popNodeContextMethod:Lgnu/bytecode/Method;

.field static final pushNodeConsumerMethod:Lgnu/bytecode/Method;

.field static final pushNodeContextMethod:Lgnu/bytecode/Method;

.field static final typeKNode:Lgnu/bytecode/ClassType;

.field static final typeNodeConstructor:Lgnu/bytecode/ClassType;

.field static final typeXMLFilter:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 168
    const-string v0, "gnu.xml.XMLFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    .line 170
    const-string v0, "gnu.kawa.xml.KNode"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeKNode:Lgnu/bytecode/ClassType;

    .line 172
    const-string v0, "gnu.kawa.xml.NodeConstructor"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    .line 174
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "pushNodeContext"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    .line 176
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "popNodeContext"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    .line 178
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "pushNodeConsumer"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    .line 180
    sget-object v0, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v1, "popNodeConsumer"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static compileChild(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
    .locals 5
    .parameter "arg"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 61
    instance-of v4, p0, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v1, v0

    .line 64
    .local v1, app:Lgnu/expr/ApplyExp;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    .line 65
    .local v2, func:Lgnu/expr/Expression;
    instance-of v4, v2, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 67
    check-cast v2, Lgnu/expr/QuoteExp;

    .end local v2           #func:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, proc:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/kawa/xml/NodeConstructor;

    if-eqz v4, :cond_0

    .line 70
    check-cast v3, Lgnu/kawa/xml/NodeConstructor;

    .end local v3           #proc:Ljava/lang/Object;
    invoke-virtual {v3, v1, p1, p2}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 76
    .end local v1           #app:Lgnu/expr/ApplyExp;
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0
.end method

.method public static compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 84
    sget-object v2, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v3, "makeNode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 85
    .local v1, makeMethod:Lgnu/bytecode/Method;
    sget-object v2, Lgnu/kawa/xml/NodeConstructor;->typeNodeConstructor:Lgnu/bytecode/ClassType;

    const-string v3, "finishNode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 86
    .local v0, makeKNodeMethod:Lgnu/bytecode/Method;
    invoke-static {p0, p1, p2, v1, v0}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    .line 88
    return-void
.end method

.method public static finishNode(Lgnu/xml/XMLFilter;)Lgnu/kawa/xml/KNode;
    .locals 1
    .parameter "filter"

    .prologue
    .line 97
    iget-object p0, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/xml/NodeTree;

    invoke-static {p0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public static makeNode()Lgnu/xml/XMLFilter;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    return-object v0
.end method

.method public static popNodeConsumer(Lgnu/lists/Consumer;Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "saved"
    .parameter "current"

    .prologue
    .line 27
    if-eq p0, p1, :cond_0

    .line 28
    instance-of v0, p1, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_1

    check-cast p1, Lgnu/xml/XMLFilter;

    .end local p1
    iget-object v0, p1, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-static {v0}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 31
    :cond_0
    return-void

    .restart local p1
    :cond_1
    move-object v0, p1

    .line 28
    goto :goto_0
.end method

.method public static popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "saved"
    .parameter "ctx"

    .prologue
    .line 48
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 49
    .local v0, current:Lgnu/lists/Consumer;
    if-eq p0, v0, :cond_1

    .line 51
    instance-of v1, v0, Lgnu/xml/XMLFilter;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lgnu/xml/XMLFilter;

    .end local v0           #current:Lgnu/lists/Consumer;
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 53
    :cond_0
    invoke-interface {p0, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 54
    iput-object p0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 56
    :cond_1
    return-void
.end method

.method public static pushNodeConsumer(Lgnu/lists/Consumer;)Lgnu/xml/XMLFilter;
    .locals 2
    .parameter "out"

    .prologue
    .line 19
    instance-of v0, p0, Lgnu/xml/XMLFilter;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Lgnu/xml/XMLFilter;

    .end local p0
    move-object v0, p0

    .line 22
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v1, Lgnu/xml/NodeTree;

    invoke-direct {v1}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v1}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public static pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 35
    iget-object v1, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 36
    .local v1, out:Lgnu/lists/Consumer;
    instance-of v2, v1, Lgnu/xml/XMLFilter;

    if-eqz v2, :cond_0

    .line 37
    check-cast v1, Lgnu/xml/XMLFilter;

    .end local v1           #out:Lgnu/lists/Consumer;
    move-object v2, v1

    .line 42
    :goto_0
    return-object v2

    .line 40
    .restart local v1       #out:Lgnu/lists/Consumer;
    :cond_0
    new-instance v0, Lgnu/xml/XMLFilter;

    new-instance v2, Lgnu/xml/NodeTree;

    invoke-direct {v2}, Lgnu/xml/NodeTree;-><init>()V

    invoke-direct {v0, v2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 41
    .local v0, filter:Lgnu/xml/XMLFilter;
    iput-object v0, p0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v0

    .line 42
    goto :goto_0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 102
    instance-of v10, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v10, :cond_0

    .line 103
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 161
    :goto_0
    return-void

    .line 104
    :cond_0
    instance-of v10, p3, Lgnu/expr/ConsumerTarget;

    if-nez v10, :cond_1

    .line 105
    invoke-static {p1, p2, p3}, Lgnu/kawa/xml/NodeConstructor;->compileUsingNodeTree(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_0

    .line 108
    :cond_1
    move-object v0, p3

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v3, v0

    .line 109
    .local v3, ctarget:Lgnu/expr/ConsumerTarget;
    invoke-virtual {v3}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 110
    .local v5, cvar:Lgnu/bytecode/Variable;
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 111
    .local v4, ctype:Lgnu/bytecode/Type;
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v10}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 112
    invoke-virtual {p0, p1, p2, v3}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 116
    .local v1, args:[Lgnu/expr/Expression;
    array-length v6, v1

    .line 117
    .local v6, nargs:I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 118
    .local v2, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v9

    .line 119
    .local v9, scope:Lgnu/bytecode/Scope;
    sget-object v10, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const/4 v11, 0x0

    invoke-virtual {v9, v2, v10, v11}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 121
    .local v8, saved:Lgnu/bytecode/Variable;
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 122
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 123
    invoke-virtual {v3}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 125
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 126
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->pushNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 133
    :goto_1
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 134
    const/4 v10, 0x1

    sget-object v11, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v10, v11}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 135
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 138
    .local v7, saveType:Lgnu/bytecode/Type;
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->typeXMLFilter:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v10}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 139
    invoke-virtual {p0, p1, p2, v3}, Lgnu/kawa/xml/NodeConstructor;->compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V

    .line 140
    invoke-virtual {v5, v7}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 141
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 142
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 143
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 144
    invoke-virtual {v3}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 146
    invoke-virtual {p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 147
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->popNodeContextMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 154
    :goto_2
    invoke-virtual {v2, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 155
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 156
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 157
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 158
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0

    .line 130
    .end local v7           #saveType:Lgnu/bytecode/Type;
    :cond_3
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 131
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->pushNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 151
    .restart local v7       #saveType:Lgnu/bytecode/Type;
    :cond_4
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 152
    sget-object v10, Lgnu/kawa/xml/NodeConstructor;->popNodeConsumerMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2
.end method

.method public abstract compileToNode(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/ConsumerTarget;)V
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 165
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method
