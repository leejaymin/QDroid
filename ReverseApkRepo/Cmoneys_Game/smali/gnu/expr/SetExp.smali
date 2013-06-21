.class public Lgnu/expr/SetExp;
.super Lgnu/expr/AccessExp;
.source "SetExp.java"


# static fields
.field public static final BAD_SHORT:I = 0x10000

.field public static final DEFINING_FLAG:I = 0x1

.field public static final GLOBAL_FLAG:I = 0x2

.field public static final HAS_VALUE:I = 0x20

.field public static final PREFER_BINDING2:I = 0x4

.field public static final PROCEDURE:I = 0x8

.field public static final SET_IF_UNBOUND:I = 0x10


# instance fields
.field new_value:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 1
    .parameter "decl"
    .parameter "val"

    .prologue
    .line 24
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 26
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Expression;)V
    .locals 0
    .parameter "symbol"
    .parameter "val"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method

.method public static canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I
    .locals 6
    .parameter "rhs"
    .parameter "target"

    .prologue
    .line 345
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    .line 347
    .local v1, var:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .end local v1           #var:Lgnu/bytecode/Variable;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v1, v2, :cond_0

    instance-of v1, p0, Lgnu/expr/ApplyExp;

    if-eqz v1, :cond_0

    check-cast p0, Lgnu/expr/ApplyExp;

    .local p0, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 352
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    .line 353
    .local v1, funcExp:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    .line 355
    .local v1, func:Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    if-ne v1, v2, :cond_1

    .line 356
    const/4 v1, 0x1

    .local v1, sign:I
    move v2, v1

    .line 361
    .end local v1           #sign:I
    .local v2, sign:I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 362
    .local v1, arg0:Lgnu/expr/Expression;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object p0

    .line 363
    .local p0, arg1:Lgnu/expr/Expression;
    instance-of v3, v1, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_6

    if-lez v2, :cond_6

    .line 365
    move-object p0, p0

    .line 366
    .local p0, tmp:Lgnu/expr/Expression;
    move-object v1, v1

    .line 367
    .local v1, arg1:Lgnu/expr/Expression;
    move-object p0, p0

    .line 369
    .local p0, arg0:Lgnu/expr/Expression;
    :goto_1
    instance-of v3, p0, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_0

    .line 371
    check-cast p0, Lgnu/expr/ReferenceExp;

    .line 372
    .local p0, ref0:Lgnu/expr/ReferenceExp;
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result p0

    .end local p0           #ref0:Lgnu/expr/ReferenceExp;
    if-eqz p0, :cond_2

    .line 399
    .end local v1           #arg1:Lgnu/expr/Expression;
    .end local v2           #sign:I
    .end local p1
    :cond_0
    const/high16 p0, 0x1

    :goto_2
    return p0

    .line 357
    .local v1, func:Ljava/lang/Object;
    .local p0, aexp:Lgnu/expr/ApplyExp;
    .restart local p1
    :cond_1
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    if-ne v1, v2, :cond_0

    .line 358
    const/4 v1, -0x1

    .local v1, sign:I
    move v2, v1

    .end local v1           #sign:I
    .restart local v2       #sign:I
    goto :goto_0

    .line 374
    .end local p0           #aexp:Lgnu/expr/ApplyExp;
    .local v1, arg1:Lgnu/expr/Expression;
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object p0

    .line 376
    .local p0, value1:Ljava/lang/Object;
    instance-of p1, p0, Ljava/lang/Integer;

    .end local p1
    if-eqz p1, :cond_4

    .line 378
    check-cast p0, Ljava/lang/Integer;

    .end local p0           #value1:Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 379
    .local p0, val1:I
    if-gez v2, :cond_3

    .line 380
    neg-int p0, p0

    .line 381
    :cond_3
    int-to-short p1, p0

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 384
    .local p0, value1:Ljava/lang/Object;
    :cond_4
    instance-of p1, p0, Lgnu/math/IntNum;

    if-eqz p1, :cond_0

    .line 386
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    move-object p1, v0

    .line 387
    .local p1, int1:Lgnu/math/IntNum;
    const/16 p0, 0x7fff

    .line 388
    .local p0, hi:I
    neg-int v1, p0

    .line 389
    .local v1, lo:I
    if-lez v2, :cond_5

    .line 390
    add-int/lit8 v1, v1, -0x1

    .line 393
    :goto_3
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v1

    .end local v1           #lo:I
    if-ltz v1, :cond_0

    int-to-long v3, p0

    invoke-static {p1, v3, v4}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result p0

    .end local p0           #hi:I
    if-gtz p0, :cond_0

    .line 395
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result p0

    mul-int/2addr p0, v2

    goto :goto_2

    .line 392
    .restart local v1       #lo:I
    .restart local p0       #hi:I
    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .local v1, arg0:Lgnu/expr/Expression;
    .local p0, arg1:Lgnu/expr/Expression;
    .local p1, target:Lgnu/expr/Declaration;
    :cond_6
    move-object v5, p0

    .end local p0           #arg1:Lgnu/expr/Expression;
    .local v5, arg1:Lgnu/expr/Expression;
    move-object p0, v1

    .end local v1           #arg0:Lgnu/expr/Expression;
    .local p0, arg0:Lgnu/expr/Expression;
    move-object v1, v5

    .end local v5           #arg1:Lgnu/expr/Expression;
    .local v1, arg1:Lgnu/expr/Expression;
    goto :goto_1
.end method

.method public static makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 2
    .parameter "decl"
    .parameter "val"

    .prologue
    .line 39
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 40
    .local v0, sexp:Lgnu/expr/SetExp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 41
    return-object v0
.end method

.method public static makeDefinition(Ljava/lang/Object;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 2
    .parameter "symbol"
    .parameter "val"

    .prologue
    .line 32
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 33
    .local v0, sexp:Lgnu/expr/SetExp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    .line 89
    .local v0, env:Lgnu/mapping/Environment;
    iget-object v7, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    check-cast v7, Lgnu/mapping/Symbol;

    move-object v6, v7

    .line 91
    .local v6, sym:Lgnu/mapping/Symbol;
    :goto_0
    const/4 v5, 0x0

    .line 92
    .local v5, property:Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 93
    .local v2, language:Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 95
    .end local v5           #property:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    invoke-virtual {v0, v6, v5}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v3

    .line 98
    .local v3, loc:Lgnu/mapping/Location;
    invoke-virtual {v3}, Lgnu/mapping/Location;->isBound()Z

    move-result v7

    if-nez v7, :cond_1

    .line 99
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v7, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 135
    .end local v3           #loc:Lgnu/mapping/Location;
    :cond_2
    :goto_1
    return-void

    .line 89
    .end local v2           #language:Lgnu/expr/Language;
    .end local v6           #sym:Lgnu/mapping/Symbol;
    :cond_3
    iget-object v7, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v6, v7

    goto :goto_0

    .line 105
    .restart local v2       #language:Lgnu/expr/Language;
    .restart local v6       #sym:Lgnu/mapping/Symbol;
    :cond_4
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v7, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, new_val:Ljava/lang/Object;
    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-nez v7, :cond_7

    .line 108
    iget-object v7, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v8, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v8, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v8}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v8

    aget-object v1, v7, v8

    .line 109
    .local v1, evalFrame:[Ljava/lang/Object;
    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 112
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 113
    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v7, v7, Lgnu/expr/Declaration;->evalIndex:I

    invoke-static {v6}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v8

    aput-object v8, v1, v7

    .line 114
    :cond_5
    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v7, v7, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v3, v1, v7

    check-cast v3, Lgnu/mapping/Location;

    .line 115
    .restart local v3       #loc:Lgnu/mapping/Location;
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v3, v7}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 133
    .end local v1           #evalFrame:[Ljava/lang/Object;
    .end local v3           #loc:Lgnu/mapping/Location;
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    invoke-virtual {p1, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .restart local v1       #evalFrame:[Ljava/lang/Object;
    :cond_6
    iget-object v7, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v7, v7, Lgnu/expr/Declaration;->evalIndex:I

    aput-object v4, v1, v7

    goto :goto_2

    .line 120
    .end local v1           #evalFrame:[Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 127
    invoke-virtual {v0, v6, v5, v4}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_8
    invoke-virtual {v0, v6, v5, v4}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 28
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v5, v0

    check-cast v5, Lgnu/expr/LambdaExp;

    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 334
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 146
    .local v7, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v25, v0

    if-nez v25, :cond_2

    const/16 v25, 0x1

    move/from16 v14, v25

    .line 151
    .local v14, needValue:Z
    :goto_1
    const/16 v23, 0x0

    .line 159
    .local v23, valuePushed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    move-object v8, v0

    .line 160
    .local v8, decl:Lgnu/expr/Declaration;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    .line 161
    .local v9, declValue:Lgnu/expr/Expression;
    const/high16 v25, 0x2000

    move-object v0, v8

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual {v8}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v25

    if-nez v25, :cond_3

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object v0, v8

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 327
    :cond_1
    :goto_2
    if-eqz v14, :cond_1b

    if-nez v23, :cond_1b

    .line 328
    new-instance v25, Ljava/lang/Error;

    const-string v26, "SetExp.compile: not implemented - return value"

    invoke-direct/range {v25 .. v26}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v25

    .line 146
    .end local v8           #decl:Lgnu/expr/Declaration;
    .end local v9           #declValue:Lgnu/expr/Expression;
    .end local v14           #needValue:Z
    .end local v23           #valuePushed:Z
    :cond_2
    const/16 v25, 0x0

    move/from16 v14, v25

    goto :goto_1

    .line 166
    .restart local v8       #decl:Lgnu/expr/Declaration;
    .restart local v9       #declValue:Lgnu/expr/Expression;
    .restart local v14       #needValue:Z
    .restart local v23       #valuePushed:Z
    :cond_3
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    :cond_4
    move-object v0, v9

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v10, v0

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object v0, v9

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object v5, v0

    check-cast v5, Lgnu/expr/LambdaExp;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_2

    .line 174
    :cond_5
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v25, v0

    if-eqz v25, :cond_7

    const/16 v25, 0x4000

    move-object v0, v8

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v25

    if-nez v25, :cond_6

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v25

    if-eqz v25, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v25

    if-eqz v25, :cond_7

    if-eqz v9, :cond_7

    .line 179
    if-eqz v14, :cond_1

    .line 181
    const/16 v25, 0x0

    sget-object v26, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 182
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 187
    :cond_7
    move-object/from16 v5, p0

    .line 188
    .local v5, access:Lgnu/expr/AccessExp;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v16

    .line 189
    .local v16, owner:Lgnu/expr/Declaration;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v25

    if-nez v25, :cond_8

    .line 191
    :goto_3
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 193
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v9

    .line 194
    move-object v0, v9

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v25, v0

    if-nez v25, :cond_9

    .line 207
    :cond_8
    invoke-virtual {v8}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    sget-object v26, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_2

    .line 196
    :cond_9
    move-object v0, v9

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object/from16 v17, v0

    .line 197
    .local v17, rexp:Lgnu/expr/ReferenceExp;
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    move-object v15, v0

    .line 198
    .local v15, orig:Lgnu/expr/Declaration;
    if-eqz v15, :cond_8

    .line 200
    if-eqz v16, :cond_a

    invoke-virtual {v15}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v25

    if-nez v25, :cond_8

    .line 202
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v16

    .line 203
    move-object/from16 v5, v17

    .line 204
    move-object v8, v15

    .line 205
    goto :goto_3

    .line 209
    .end local v15           #orig:Lgnu/expr/Declaration;
    .end local v17           #rexp:Lgnu/expr/ReferenceExp;
    :cond_b
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 211
    const/16 v25, 0x1

    sget-object v26, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, v25

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 213
    const-string v25, "gnu.mapping.IndirectableLocation"

    invoke-static/range {v25 .. v25}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    .line 215
    .local v12, locType:Lgnu/bytecode/ClassType;
    invoke-virtual {v7, v12}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    sget-object v26, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 217
    const-string v25, "setAlias"

    const/16 v26, 0x1

    move-object v0, v12

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    .line 218
    .local v13, meth:Lgnu/bytecode/Method;
    invoke-virtual {v7, v13}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_2

    .line 220
    .end local v12           #locType:Lgnu/bytecode/ClassType;
    .end local v13           #meth:Lgnu/bytecode/Method;
    :cond_c
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 222
    const/16 v25, 0x1

    sget-object v26, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v0, v8

    move-object v1, v5

    move/from16 v2, v25

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 226
    if-eqz v14, :cond_d

    .line 228
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 229
    const/16 v23, 0x1

    .line 231
    :cond_d
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 232
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 233
    sget-object v25, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v21

    .line 234
    .local v21, symLoc:Lgnu/bytecode/Variable;
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 235
    sget-object v25, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v26, "isBound"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 237
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 238
    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 240
    .end local v21           #symLoc:Lgnu/bytecode/Variable;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    sget-object v26, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 241
    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v25

    if-nez v25, :cond_f

    .line 243
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 244
    const/16 v23, 0x1

    .line 246
    :cond_f
    const-string v20, "set"

    .line 247
    .local v20, setterName:Ljava/lang/String;
    sget-object v25, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 251
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 252
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_2

    .line 255
    .end local v20           #setterName:Ljava/lang/String;
    :cond_10
    invoke-virtual {v8}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 257
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v22

    .line 258
    .local v22, type:Lgnu/bytecode/Type;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v24

    .line 259
    .local v24, var:Lgnu/bytecode/Variable;
    if-nez v24, :cond_11

    .line 260
    invoke-virtual {v8, v7}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v24

    .line 261
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-static {v0, v1}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v10

    .line 262
    .local v10, delta:I
    const/high16 v25, 0x1

    move v0, v10

    move/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 264
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v25

    move v0, v10

    int-to-short v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 265
    if-eqz v14, :cond_1

    .line 267
    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 268
    const/16 v23, 0x1

    goto/16 :goto_2

    .line 273
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 274
    if-eqz v14, :cond_13

    .line 276
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 277
    const/16 v23, 0x1

    .line 279
    :cond_13
    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto/16 :goto_2

    .line 282
    .end local v10           #delta:I
    .end local v22           #type:Lgnu/bytecode/Type;
    .end local v24           #var:Lgnu/bytecode/Variable;
    :cond_14
    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    move-object v0, v8

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v25, v0

    if-nez v25, :cond_16

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/SetExp;->getFlag(I)Z

    move-result v25

    if-nez v25, :cond_16

    iget-object v5, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .end local v5           #access:Lgnu/expr/AccessExp;
    check-cast v5, Lgnu/expr/ClassExp;

    invoke-virtual {v5}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v25

    if-eqz v25, :cond_16

    .line 286
    const-string v25, "set"

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 287
    .local v18, setName:Ljava/lang/String;
    iget-object v6, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/ClassExp;

    .line 288
    .local v6, cl:Lgnu/expr/ClassExp;
    move-object v0, v6

    iget-object v0, v0, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v19

    .line 289
    .local v19, setter:Lgnu/bytecode/Method;
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 291
    if-eqz v14, :cond_15

    .line 293
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 294
    const/16 v23, 0x1

    .line 296
    :cond_15
    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_2

    .line 300
    .end local v6           #cl:Lgnu/expr/ClassExp;
    .end local v18           #setName:Ljava/lang/String;
    .end local v19           #setter:Lgnu/bytecode/Method;
    :cond_16
    iget-object v11, v8, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 301
    .local v11, field:Lgnu/bytecode/Field;
    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v25

    if-nez v25, :cond_17

    .line 302
    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 303
    :cond_17
    invoke-virtual {v11}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v22

    .line 304
    .restart local v22       #type:Lgnu/bytecode/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 305
    invoke-virtual {v11}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 306
    invoke-virtual {v11}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 308
    if-eqz v14, :cond_18

    .line 310
    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 311
    const/16 v23, 0x1

    .line 313
    :cond_18
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_2

    .line 317
    :cond_19
    if-eqz v14, :cond_1a

    .line 319
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 320
    const/16 v23, 0x1

    .line 322
    :cond_1a
    invoke-virtual {v7, v11}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_2

    .line 330
    .end local v11           #field:Lgnu/bytecode/Field;
    .end local v16           #owner:Lgnu/expr/Declaration;
    .end local v22           #type:Lgnu/bytecode/Type;
    :cond_1b
    if-eqz v14, :cond_1c

    .line 331
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/SetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_0

    .line 333
    :cond_1c
    sget-object v25, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto/16 :goto_0
.end method

.method public final getHasValue()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNewValue()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public final isDefining()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFuncDef()Z
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSetIfUnbound()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "out"

    .prologue
    const/16 v2, 0x2f

    const-string v3, ")"

    .line 420
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "(Define"

    :goto_0
    const-string v1, ")"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v3, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 421
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 422
    invoke-virtual {p0, p1}, Lgnu/expr/SetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 423
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 425
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 426
    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 431
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 433
    :cond_2
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 434
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 435
    const-string v0, ")"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 436
    return-void

    .line 420
    :cond_3
    const-string v0, "(Set"

    goto :goto_0
.end method

.method public final setDefining(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setFuncDef(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setHasValue(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public final setSetIfUnbound(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgnu/expr/SetExp;->flags:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 410
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkSetExp(Lgnu/expr/SetExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 1
    .parameter "walker"

    .prologue
    .line 415
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p1, v0}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 416
    return-void
.end method
