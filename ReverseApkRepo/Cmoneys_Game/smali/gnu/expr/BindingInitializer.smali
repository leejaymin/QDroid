.class public Lgnu/expr/BindingInitializer;
.super Lgnu/expr/Initializer;
.source "BindingInitializer.java"


# static fields
.field static final typeThreadLocation:Lgnu/bytecode/ClassType;


# instance fields
.field decl:Lgnu/expr/Declaration;

.field value:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "gnu.mapping.ThreadLocation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 1
    .parameter "decl"
    .parameter "value"

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    .line 32
    iput-object p2, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    .line 33
    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iput-object v0, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    .line 34
    return-void
.end method

.method public static create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "decl"
    .parameter "value"
    .parameter "comp"

    .prologue
    .line 16
    new-instance v0, Lgnu/expr/BindingInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/BindingInitializer;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 17
    .local v0, init:Lgnu/expr/BindingInitializer;
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 20
    iput-object v0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v1, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 25
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    goto :goto_0
.end method

.method public static makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v1, 0x1

    new-array v0, v1, [Lgnu/bytecode/Type;

    .line 130
    .local v0, atypes:[Lgnu/bytecode/Type;
    instance-of v1, p0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    .line 134
    :goto_0
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "make"

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    return-object v1

    .line 133
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    goto :goto_0
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 14
    .parameter "comp"

    .prologue
    .line 38
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 40
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/QuoteExp;

    if-eqz v11, :cond_0

    .line 42
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    check-cast v11, Lgnu/expr/QuoteExp;

    invoke-virtual {v11}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 43
    .local v9, val:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v11, v9, Ljava/lang/String;

    if-nez v11, :cond_0

    .line 45
    iget-object v11, p1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v11, v9}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v3

    .line 46
    .local v3, lit:Lgnu/expr/Literal;
    iget-object v11, v3, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    iget-object v12, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-ne v11, v12, :cond_0

    .line 122
    .end local v3           #lit:Lgnu/expr/Literal;
    .end local v9           #val:Ljava/lang/Object;
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v2

    .line 52
    .local v2, line:I
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    .line 53
    .local v4, messages:Lgnu/text/SourceMessages;
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4, v11}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v7

    .line 54
    .local v7, saveLoc:Lgnu/text/SourceLocator;
    if-lez v2, :cond_1

    .line 55
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v2}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 56
    :cond_1
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v11

    if-nez v11, :cond_2

    .line 57
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 59
    :cond_2
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-nez v11, :cond_8

    .line 61
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    .line 62
    .local v1, func:Z
    if-eqz v1, :cond_5

    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v11

    if-eqz v11, :cond_5

    sget-object v11, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v6, v11

    .line 65
    .local v6, property:Ljava/lang/Object;
    :goto_1
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    .line 67
    .local v5, name:Ljava/lang/Object;
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    const v12, 0x10010010

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 70
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 71
    sget-object v11, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    check-cast v5, Ljava/lang/String;

    .end local v5           #name:Ljava/lang/Object;
    invoke-virtual {v11, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    .line 72
    :cond_3
    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v5, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 73
    if-nez v6, :cond_6

    .line 74
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 77
    :goto_2
    sget-object v11, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v12, "getInstance"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 110
    .end local v1           #func:Z
    .end local v6           #property:Ljava/lang/Object;
    :goto_3
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v11, :cond_a

    .line 112
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v10

    .line 113
    .local v10, var:Lgnu/bytecode/Variable;
    if-nez v10, :cond_4

    .line 114
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v10

    .line 115
    :cond_4
    invoke-virtual {v0, v10}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 121
    .end local v10           #var:Lgnu/bytecode/Variable;
    :goto_4
    invoke-virtual {v4, v7}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    goto/16 :goto_0

    .line 62
    .restart local v1       #func:Z
    :cond_5
    const/4 v11, 0x0

    move-object v6, v11

    goto :goto_1

    .line 76
    .restart local v6       #property:Ljava/lang/Object;
    :cond_6
    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v6, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_2

    .line 99
    .restart local v5       #name:Ljava/lang/Object;
    :cond_7
    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v5, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 100
    invoke-static {v5}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 105
    .end local v1           #func:Z
    .end local v5           #name:Ljava/lang/Object;
    .end local v6           #property:Ljava/lang/Object;
    :cond_8
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v11, :cond_9

    iget-object v11, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v8, v11

    .line 106
    .local v8, type:Lgnu/bytecode/Type;
    :goto_5
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    invoke-static {v8}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_3

    .line 105
    .end local v8           #type:Lgnu/bytecode/Type;
    :cond_9
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    move-object v8, v11

    goto :goto_5

    .line 117
    :cond_a
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 118
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_4

    .line 120
    :cond_b
    iget-object v11, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_4
.end method
