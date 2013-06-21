.class public Lgnu/expr/ReferenceExp;
.super Lgnu/expr/AccessExp;
.source "ReferenceExp.java"


# static fields
.field public static final CREATE_FIELD_REFERENCE:I = 0x8

.field public static final DONT_DEREFERENCE:I = 0x1

.field public static final PREFER_BINDING2:I = 0x4

.field public static final PROCEDURE_NAME:I = 0x2

.field public static final TYPE_NAME:I = 0x10

.field static counter:I


# instance fields
.field id:I


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "binding"

    .prologue
    .line 68
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "symbol"

    .prologue
    .line 56
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 57
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "symbol"
    .parameter "binding"

    .prologue
    .line 61
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 17
    sget v0, Lgnu/expr/ReferenceExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ReferenceExp;->counter:I

    iput v0, p0, Lgnu/expr/ReferenceExp;->id:I

    .line 62
    iput-object p1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 64
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 13
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 88
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/ReferenceExp;

    if-eqz v10, :cond_3

    .line 91
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v5, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v5, Lgnu/expr/ReferenceExp;

    .line 92
    .local v5, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_1

    .line 94
    iget-object v10, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    .line 95
    .local v8, v:Lgnu/expr/Expression;
    instance-of v10, v8, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_0

    instance-of v10, v8, Lgnu/expr/ReferenceExp;

    if-nez v10, :cond_0

    instance-of v10, v8, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_1

    .line 98
    :cond_0
    invoke-virtual {v8, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 159
    .end local v5           #rexp:Lgnu/expr/ReferenceExp;
    .end local v8           #v:Lgnu/expr/Expression;
    :goto_0
    return-void

    .line 102
    .restart local v5       #rexp:Lgnu/expr/ReferenceExp;
    :cond_1
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v9

    .line 156
    .end local v5           #rexp:Lgnu/expr/ReferenceExp;
    .local v9, value:Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 157
    check-cast v9, Lgnu/mapping/Location;

    .end local v9           #value:Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v9

    .line 158
    .restart local v9       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    .end local v9           #value:Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 110
    :cond_4
    :try_start_0
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v2, v12

    .line 112
    .local v2, instance:Ljava/lang/Object;
    :goto_2
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #value:Ljava/lang/Object;
    goto :goto_1

    .line 110
    .end local v2           #instance:Ljava/lang/Object;
    .end local v9           #value:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v10

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v2, v10

    goto :goto_2

    .line 114
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 116
    .local v1, ex:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception evaluating "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, msg:Ljava/lang/String;
    new-instance v10, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v10, v3, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v10

    .line 124
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #msg:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/QuoteExp;

    if-nez v10, :cond_7

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v10, v10, Lgnu/expr/LambdaExp;

    if-eqz v10, :cond_9

    :cond_7
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    sget-object v11, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v10, v11, :cond_9

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 130
    :cond_8
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9       #value:Ljava/lang/Object;
    goto/16 :goto_1

    .line 132
    .end local v9           #value:Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v10, v10, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v10, v10, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v10

    if-nez v10, :cond_f

    .line 136
    :cond_a
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    .line 137
    .local v0, env:Lgnu/mapping/Environment;
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    instance-of v10, v10, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    check-cast v10, Lgnu/mapping/Symbol;

    move-object v6, v10

    .line 139
    .local v6, sym:Lgnu/mapping/Symbol;
    :goto_3
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lgnu/expr/ReferenceExp;->getFlag(I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v10

    if-eqz v10, :cond_d

    sget-object v10, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    move-object v4, v10

    .line 142
    .local v4, property:Ljava/lang/Object;
    :goto_4
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 143
    invoke-virtual {v0, v6, v4}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v9

    .line 151
    :cond_b
    invoke-virtual {p1, v9}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 137
    .end local v4           #property:Ljava/lang/Object;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    :cond_c
    iget-object v10, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    move-object v6, v10

    goto :goto_3

    .restart local v6       #sym:Lgnu/mapping/Symbol;
    :cond_d
    move-object v4, v12

    .line 139
    goto :goto_4

    .line 146
    .restart local v4       #property:Ljava/lang/Object;
    :cond_e
    sget-object v7, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 147
    .local v7, unb:Ljava/lang/String;
    invoke-virtual {v0, v6, v4, v7}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 148
    .restart local v9       #value:Ljava/lang/Object;
    if-ne v9, v7, :cond_b

    .line 149
    new-instance v10, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v10, v6, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V

    throw v10

    .line 155
    .end local v0           #env:Lgnu/mapping/Environment;
    .end local v4           #property:Ljava/lang/Object;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    .end local v7           #unb:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_f
    iget-object v10, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v11}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v11

    aget-object v10, v10, v11

    iget-object v11, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v11, v11, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v9, v10, v11

    .restart local v9       #value:Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 163
    instance-of v1, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v1, v0

    invoke-virtual {v1, p0, p1}, Lgnu/expr/ConsumerTarget;->compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget v2, p0, Lgnu/expr/ReferenceExp;->flags:I

    invoke-virtual {v1, p0, v2, p1, p2}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 166
    :cond_1
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 5
    .parameter "mapper"

    .prologue
    .line 170
    iget-object v3, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    iget-object v4, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v3, v4}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    .line 171
    .local v1, d:Lgnu/expr/Declaration;
    iget-object v3, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    iget-object v4, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v3, v4}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, s:Ljava/lang/Object;
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 173
    .local v0, copy:Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getFlags()I

    move-result v3

    iput v3, v0, Lgnu/expr/ReferenceExp;->flags:I

    .line 174
    return-object v0
.end method

.method public final getDontDereference()Z
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 228
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    :cond_0
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 247
    :goto_0
    return-object v4

    .line 230
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 232
    :cond_2
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 234
    .local v2, type:Lgnu/bytecode/Type;
    if-eqz v2, :cond_3

    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v2, v4, :cond_4

    .line 236
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 237
    .local v3, value:Lgnu/expr/Expression;
    if-eqz v3, :cond_4

    .line 241
    iget-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 242
    .local v1, save:Lgnu/expr/Expression;
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 243
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 244
    iput-object v1, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .end local v1           #save:Lgnu/expr/Expression;
    .end local v3           #value:Lgnu/expr/Expression;
    :cond_4
    move-object v4, v2

    .line 247
    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;
    .locals 5
    .parameter "exp"
    .parameter "walker"
    .parameter "decl"
    .parameter "argsInlined"

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object p3, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 185
    if-eqz p3, :cond_0

    const/high16 v3, 0x1

    invoke-virtual {p3, v3}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-static {p3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p3

    .line 188
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 191
    .local v0, dval:Lgnu/expr/Expression;
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/expr/Expression;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;

    move-result-object v3

    .line 204
    .end local v0           #dval:Lgnu/expr/Expression;
    :goto_0
    return-object v3

    .line 195
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 197
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    .line 198
    .local v2, symbol:Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    .local v1, fval:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_1

    .line 200
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2, v4, p4}, Lgnu/expr/QuoteExp;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .line 202
    .end local v1           #fval:Ljava/lang/Object;
    .end local v2           #symbol:Lgnu/mapping/Symbol;
    :cond_1
    if-nez p4, :cond_2

    .line 203
    iget-object v3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v4, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v4, v4

    invoke-virtual {p2, v3, v4}, Lgnu/expr/InlineCalls;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v3

    iput-object v3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    :cond_2
    move-object v3, p1

    .line 204
    goto :goto_0
.end method

.method public final isProcedureName()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lgnu/expr/ReferenceExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleValue()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lgnu/expr/AccessExp;->isSingleValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final isUnknown()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v0}, Lgnu/expr/Declaration;->isUnknown(Lgnu/expr/Declaration;)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .parameter "ps"

    .prologue
    const/16 v2, 0x2f

    .line 209
    const-string v0, "(Ref/"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 210
    iget v0, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 211
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 215
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 220
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 222
    :cond_2
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final setDontDereference(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    return-void
.end method

.method public final setProcedureName(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ReferenceExp;->setFlag(ZI)V

    .line 53
    return-void
.end method

.method public side_effects()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isLexical()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ReferenceExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/ReferenceExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueIfConstant()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v0

    .line 78
    .local v0, dvalue:Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .end local v0           #dvalue:Lgnu/expr/Expression;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 179
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkReferenceExp(Lgnu/expr/ReferenceExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
