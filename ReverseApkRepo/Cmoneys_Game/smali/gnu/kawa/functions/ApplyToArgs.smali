.class public Lgnu/kawa/functions/ApplyToArgs;
.super Lgnu/mapping/ProcedureN;
.source "ApplyToArgs.java"

# interfaces
.implements Lgnu/expr/CanInline;


# static fields
.field static final typeList:Lgnu/bytecode/ClassType;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "java.util.List"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/ApplyToArgs;->typeList:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/expr/Language;)V
    .locals 0
    .parameter "name"
    .parameter "language"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 128
    iput-object p2, p0, Lgnu/kawa/functions/ApplyToArgs;->language:Lgnu/expr/Language;

    .line 129
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    aget-object v2, p1, v6

    .line 210
    .local v2, proc:Ljava/lang/Object;
    instance-of v4, v2, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_0

    .line 212
    array-length v4, p1

    sub-int/2addr v4, v5

    new-array v3, v4, [Ljava/lang/Object;

    .line 213
    .local v3, rargs:[Ljava/lang/Object;
    array-length v4, v3

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    check-cast v2, Lgnu/mapping/Procedure;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 243
    .end local v3           #rargs:[Ljava/lang/Object;
    .end local p0
    :goto_0
    return-object v4

    .line 216
    .restart local v2       #proc:Ljava/lang/Object;
    .restart local p0
    :cond_0
    instance-of v4, v2, Lgnu/bytecode/Type;

    if-nez v4, :cond_1

    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 219
    :cond_1
    sget-object v4, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v4, p1}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 221
    :cond_2
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 229
    array-length v4, p1

    if-eq v4, v7, :cond_3

    .line 230
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 231
    :cond_3
    aget-object p0, p1, v5

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 233
    .local v0, index:I
    check-cast v2, Ljava/util/List;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 238
    .end local v0           #index:I
    .restart local v2       #proc:Ljava/lang/Object;
    .restart local p0
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 239
    .local v1, pclass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    array-length v4, p1

    if-eq v4, v7, :cond_5

    .line 242
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 243
    :cond_5
    aget-object p0, p1, v5

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 245
    .restart local p0
    :cond_6
    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "procedure"

    invoke-direct {v4, p0, v6, v2, v5}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 77
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 81
    :goto_0
    return-void

    .line 80
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 85
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 89
    :goto_0
    return-void

    .line 88
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 93
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 97
    :goto_0
    return-void

    .line 96
    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 102
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 103
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 106
    :goto_0
    return-void

    .line 105
    .restart local p1
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/ApplyToArgs;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 111
    .local v0, code:I
    if-eqz v0, :cond_1

    .line 113
    move-object v1, p0

    .line 114
    .local v1, proc:Lgnu/mapping/Procedure;
    array-length v3, p1

    if-lez v3, :cond_0

    aget-object v3, p1, v4

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_0

    .line 116
    aget-object v1, p1, v4

    .end local v1           #proc:Lgnu/mapping/Procedure;
    check-cast v1, Lgnu/mapping/Procedure;

    .line 117
    .restart local v1       #proc:Lgnu/mapping/Procedure;
    array-length v3, p1

    sub-int/2addr v3, v5

    new-array v2, v3, [Ljava/lang/Object;

    .line 118
    .local v2, xargs:[Ljava/lang/Object;
    array-length v3, v2

    invoke-static {p1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    move-object p1, v2

    .line 121
    .end local v2           #xargs:[Ljava/lang/Object;
    :cond_0
    invoke-static {v0, v1, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 123
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :cond_1
    return-void
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 21
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 136
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 137
    .local v5, args:[Lgnu/expr/Expression;
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v12, v17, v18

    .line 138
    .local v12, nargs:I
    if-ltz v12, :cond_9

    .line 140
    const/16 v17, 0x0

    aget-object v13, v5, v17

    .line 141
    .local v13, proc:Lgnu/expr/Expression;
    if-nez p3, :cond_1

    .line 143
    move-object v0, v13

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 145
    new-array v15, v12, [Lgnu/expr/Expression;

    .line 146
    .local v15, rargs:[Lgnu/expr/Expression;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move-object v2, v15

    move/from16 v3, v18

    move v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    new-instance v17, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v17

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v17

    .line 197
    .end local v13           #proc:Lgnu/expr/Expression;
    .end local v15           #rargs:[Lgnu/expr/Expression;
    :goto_0
    return-object v17

    .line 149
    .restart local v13       #proc:Lgnu/expr/Expression;
    :cond_0
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v13

    .line 150
    const/16 v17, 0x0

    aput-object v13, v5, v17

    .line 152
    :cond_1
    invoke-virtual {v13}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    .line 154
    .local v14, ptype:Lgnu/bytecode/Type;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    .line 155
    .local v6, comp:Lgnu/expr/Compilation;
    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    .line 156
    .local v11, language:Lgnu/expr/Language;
    sget-object v17, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 158
    new-array v15, v12, [Lgnu/expr/Expression;

    .line 159
    .restart local v15       #rargs:[Lgnu/expr/Expression;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v17

    move-object v2, v15

    move/from16 v3, v18

    move v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    new-instance v17, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v17

    move-object v1, v13

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/16 v18, 0x0

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/expr/Expression;->inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;

    move-result-object v17

    goto :goto_0

    .line 163
    .end local v15           #rargs:[Lgnu/expr/Expression;
    :cond_2
    if-nez p3, :cond_3

    .line 165
    const/4 v10, 0x1

    .local v10, i:I
    :goto_1
    if-gt v10, v12, :cond_3

    .line 166
    aget-object v17, v5, v10

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v17

    aput-object v17, v5, v10

    .line 165
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 169
    .end local v10           #i:I
    :cond_3
    invoke-static {v14, v6}, Lgnu/kawa/reflect/Invoke;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v17

    if-gez v17, :cond_4

    move-object/from16 v17, p1

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    sget-object v17, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v17

    if-nez v17, :cond_5

    const/16 v17, 0x0

    move-object v0, v11

    move-object v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;Z)Lgnu/bytecode/Type;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 175
    :cond_5
    new-instance v16, Lgnu/expr/ApplyExp;

    sget-object v17, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 194
    .end local v14           #ptype:Lgnu/bytecode/Type;
    .local v16, result:Lgnu/expr/ApplyExp;
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v17

    goto/16 :goto_0

    .line 177
    .end local v16           #result:Lgnu/expr/ApplyExp;
    .restart local v14       #ptype:Lgnu/bytecode/Type;
    :cond_6
    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 179
    check-cast v14, Lgnu/bytecode/ArrayType;

    .end local v14           #ptype:Lgnu/bytecode/Type;
    invoke-virtual {v14}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 180
    .local v8, elementType:Lgnu/bytecode/Type;
    new-instance v16, Lgnu/expr/ApplyExp;

    new-instance v17, Lgnu/kawa/reflect/ArrayGet;

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/ArrayGet;-><init>(Lgnu/bytecode/Type;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 181
    .restart local v16       #result:Lgnu/expr/ApplyExp;
    goto :goto_2

    .line 182
    .end local v8           #elementType:Lgnu/bytecode/Type;
    .end local v16           #result:Lgnu/expr/ApplyExp;
    .restart local v14       #ptype:Lgnu/bytecode/Type;
    :cond_7
    move-object v0, v14

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object v0, v14

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v7, v0

    .local v7, ctype:Lgnu/bytecode/ClassType;
    sget-object v17, Lgnu/kawa/functions/ApplyToArgs;->typeList:Lgnu/bytecode/ClassType;

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 189
    const-string v17, "get"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v20, v18, v19

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v9

    .line 190
    .local v9, get:Lgnu/bytecode/Method;
    new-instance v16, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 191
    .restart local v16       #result:Lgnu/expr/ApplyExp;
    goto :goto_2

    .end local v7           #ctype:Lgnu/bytecode/ClassType;
    .end local v9           #get:Lgnu/bytecode/Method;
    .end local v16           #result:Lgnu/expr/ApplyExp;
    :cond_8
    move-object/from16 v17, p1

    .line 193
    goto/16 :goto_0

    .end local v6           #comp:Lgnu/expr/Compilation;
    .end local v11           #language:Lgnu/expr/Language;
    .end local v13           #proc:Lgnu/expr/Expression;
    .end local v14           #ptype:Lgnu/bytecode/Type;
    :cond_9
    move-object/from16 v17, p1

    .line 197
    goto/16 :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    .line 17
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 18
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 20
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    .line 25
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 28
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    .line 33
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 36
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/mapping/ProcedureN;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    .line 42
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lgnu/mapping/Procedure;

    .end local p1
    invoke-virtual {p1, p2, p3, p4, p5}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 45
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/mapping/ProcedureN;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 8
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    array-length v6, p1

    .line 51
    .local v6, n:I
    if-lez v6, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    .line 53
    aget-object v0, p1, v3

    check-cast v0, Lgnu/mapping/Procedure;

    .line 54
    .local v0, proc:Lgnu/mapping/Procedure;
    packed-switch v6, :pswitch_data_0

    .line 67
    sub-int v1, v6, v2

    new-array v7, v1, [Ljava/lang/Object;

    .line 68
    .local v7, xargs:[Ljava/lang/Object;
    sub-int v1, v6, v2

    invoke-static {p1, v2, v7, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {v0, v7, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 72
    .end local v0           #proc:Lgnu/mapping/Procedure;
    .end local v7           #xargs:[Ljava/lang/Object;
    :goto_0
    return v1

    .line 57
    .restart local v0       #proc:Lgnu/mapping/Procedure;
    :pswitch_0
    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 59
    :pswitch_1
    aget-object v1, p1, v2

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 61
    :pswitch_2
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    invoke-virtual {v0, v1, v2, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 63
    :pswitch_3
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    invoke-virtual {v0, v1, v2, v3, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 65
    :pswitch_4
    aget-object v1, p1, v2

    aget-object v2, p1, v4

    aget-object v3, p1, v5

    const/4 v4, 0x4

    aget-object v4, p1, v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 72
    .end local v0           #proc:Lgnu/mapping/Procedure;
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
