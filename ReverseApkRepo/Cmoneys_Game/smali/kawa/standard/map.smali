.class public Lkawa/standard/map;
.super Lgnu/mapping/ProcedureN;
.source "map.java"

# interfaces
.implements Lgnu/expr/CanInline;


# instance fields
.field final applyFieldDecl:Lgnu/expr/Declaration;

.field final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field collect:Z


# direct methods
.method public constructor <init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;)V
    .locals 1
    .parameter "collect"
    .parameter "applyToArgs"
    .parameter "applyFieldDecl"

    .prologue
    .line 25
    if-eqz p1, :cond_0

    const-string v0, "map"

    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p1, p0, Lkawa/standard/map;->collect:Z

    .line 27
    iput-object p2, p0, Lkawa/standard/map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 28
    iput-object p3, p0, Lkawa/standard/map;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 29
    return-void

    .line 25
    :cond_0
    const-string v0, "for-each"

    goto :goto_0
.end method

.method public static forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V
    .locals 3
    .parameter "proc"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .line 56
    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    .end local v1           #pair:Lgnu/lists/Pair;
    :cond_0
    return-void
.end method

.method public static map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "proc"
    .parameter "list"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 35
    .local v4, result:Lgnu/lists/LList;
    const/4 v1, 0x0

    .local v1, last:Lgnu/lists/Pair;
    move-object v5, v4

    .line 36
    .end local v4           #result:Lgnu/lists/LList;
    :goto_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v6, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 39
    .local v3, pair:Lgnu/lists/Pair;
    new-instance v2, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v6, v7}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .local v2, new_pair:Lgnu/lists/Pair;
    if-nez v1, :cond_0

    .line 41
    move-object v4, v2

    .local v4, result:Lgnu/lists/Pair;
    move-object v5, v4

    .line 44
    .end local v4           #result:Lgnu/lists/Pair;
    :goto_1
    move-object v1, v2

    .line 45
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 46
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    .end local v2           #new_pair:Lgnu/lists/Pair;
    .end local v3           #pair:Lgnu/lists/Pair;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    instance-of v2, p1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_1

    .line 65
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v1, v0

    .line 66
    .local v1, proc:Lgnu/mapping/Procedure;
    iget-boolean v2, p0, Lkawa/standard/map;->collect:Z

    if-eqz v2, :cond_0

    .line 67
    invoke-static {v1, p2}, Lkawa/standard/map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :goto_0
    return-object v2

    .line 68
    .restart local v1       #proc:Lgnu/mapping/Procedure;
    :cond_0
    invoke-static {v1, p2}, Lkawa/standard/map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 69
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 71
    .end local v1           #proc:Lgnu/mapping/Procedure;
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v2}, Lkawa/standard/map;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 76
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v5, v17, v18

    .line 77
    .local v5, arity:I
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 79
    const/16 v17, 0x0

    aget-object v5, p1, v17

    .end local v5           #arity:I
    check-cast v5, Lgnu/mapping/Procedure;

    move-object v0, v5

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v13, v0

    .line 80
    .local v13, proc:Lgnu/mapping/Procedure;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 81
    const/16 v17, 0x1

    aget-object v17, p1, v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkawa/standard/map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 115
    :cond_0
    :goto_0
    return-object v17

    .line 82
    :cond_1
    const/16 v17, 0x1

    aget-object v17, p1, v17

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lkawa/standard/map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 83
    sget-object v17, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 86
    .end local v13           #proc:Lgnu/mapping/Procedure;
    .restart local v5       #arity:I
    :cond_2
    const/4 v8, 0x0

    .line 87
    .local v8, last:Lgnu/lists/Pair;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 88
    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 91
    :goto_1
    new-array v14, v5, [Ljava/lang/Object;

    .line 92
    .local v14, rest:[Ljava/lang/Object;
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v14

    move/from16 v3, v18

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Procedure;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 98
    const/4 v10, 0x0

    .line 99
    .local v10, need_apply:I
    new-array v6, v5, [Ljava/lang/Object;

    .line 100
    .local v6, each_args:[Ljava/lang/Object;
    const/16 v17, 0x0

    aget-object v13, p1, v17

    check-cast v13, Lgnu/mapping/Procedure;

    .restart local v13       #proc:Lgnu/mapping/Procedure;
    move-object/from16 v17, v15

    .line 111
    :cond_3
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v5, :cond_6

    .line 113
    aget-object v9, v14, v7

    .line 114
    .local v9, list:Ljava/lang/Object;
    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v9

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 116
    move-object v0, v9

    check-cast v0, Lgnu/lists/Pair;

    move-object v12, v0

    .line 117
    .local v12, pair:Lgnu/lists/Pair;
    add-int v18, v10, v7

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v6, v18

    .line 118
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v14, v7

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 90
    .end local v6           #each_args:[Ljava/lang/Object;
    .end local v7           #i:I
    .end local v9           #list:Ljava/lang/Object;
    .end local v10           #need_apply:I
    .end local v12           #pair:Lgnu/lists/Pair;
    .end local v13           #proc:Lgnu/mapping/Procedure;
    .end local v14           #rest:[Ljava/lang/Object;
    :cond_4
    sget-object v15, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .local v15, result:Lgnu/mapping/Values;
    goto :goto_1

    .line 104
    .end local v15           #result:Lgnu/mapping/Values;
    .restart local v14       #rest:[Ljava/lang/Object;
    :cond_5
    const/4 v10, 0x1

    .line 105
    .restart local v10       #need_apply:I
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v6, v0

    .line 106
    .restart local v6       #each_args:[Ljava/lang/Object;
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, p1, v18

    aput-object v18, v6, v17

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object v13, v0

    .restart local v13       #proc:Lgnu/mapping/Procedure;
    move-object/from16 v17, v15

    goto :goto_2

    .line 120
    .restart local v7       #i:I
    :cond_6
    invoke-virtual {v13, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 121
    .local v16, value:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 123
    new-instance v11, Lgnu/lists/Pair;

    sget-object v18, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .local v11, new_pair:Lgnu/lists/Pair;
    if-nez v8, :cond_7

    .line 125
    move-object v15, v11

    .local v15, result:Lgnu/lists/Pair;
    move-object/from16 v17, v15

    .line 128
    .end local v15           #result:Lgnu/lists/Pair;
    :goto_4
    move-object v8, v11

    goto :goto_2

    .line 127
    :cond_7
    invoke-virtual {v8, v11}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 37
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 138
    invoke-virtual/range {p1 .. p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 140
    .local v5, args:[Lgnu/expr/Expression;
    move-object v0, v5

    array-length v0, v0

    move/from16 v24, v0

    .line 141
    .local v24, nargs:I
    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    move-object/from16 v34, p1

    .line 242
    :goto_0
    return-object v34

    .line 144
    :cond_0
    add-int/lit8 v24, v24, -0x1

    .line 146
    const/16 v34, 0x0

    aget-object v26, v5, v34

    .line 150
    .local v26, proc:Lgnu/expr/Expression;
    invoke-virtual/range {v26 .. v26}, Lgnu/expr/Expression;->side_effects()Z

    move-result v34

    if-nez v34, :cond_1

    const/16 v34, 0x1

    move/from16 v28, v34

    .line 153
    .local v28, procSafeForMultipleEvaluation:Z
    :goto_1
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v14, v0

    .line 154
    .local v14, inits1:[Lgnu/expr/Expression;
    const/16 v34, 0x0

    aput-object v26, v14, v34

    .line 155
    new-instance v19, Lgnu/expr/LetExp;

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 156
    .local v19, let1:Lgnu/expr/LetExp;
    const-string v34, "%proc"

    sget-object v35, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v27

    .line 158
    .local v27, procDecl:Lgnu/expr/Declaration;
    const/16 v34, 0x0

    aget-object v34, v5, v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 161
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v15, v0

    .line 162
    .local v15, inits2:[Lgnu/expr/Expression;
    new-instance v20, Lgnu/expr/LetExp;

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 163
    .local v20, let2:Lgnu/expr/LetExp;
    invoke-virtual/range {v19 .. v20}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 164
    new-instance v22, Lgnu/expr/LambdaExp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    add-int/lit8 v34, v24, 0x1

    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 165
    .local v22, lexp:Lgnu/expr/LambdaExp;
    const/16 v34, 0x0

    aput-object v22, v15, v34

    .line 166
    const-string v34, "%loop"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v23

    .line 167
    .local v23, loopDecl:Lgnu/expr/Declaration;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 170
    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v16, v0

    .line 171
    .local v16, inits3:[Lgnu/expr/Expression;
    new-instance v21, Lgnu/expr/LetExp;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 173
    .local v21, let3:Lgnu/expr/LetExp;
    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v18, v0

    .line 174
    .local v18, largs:[Lgnu/expr/Declaration;
    move/from16 v0, v24

    new-array v0, v0, [Lgnu/expr/Declaration;

    move-object/from16 v25, v0

    .line 175
    .local v25, pargs:[Lgnu/expr/Declaration;
    sget-object v17, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 176
    .local v17, isEq:Lgnu/kawa/functions/IsEq;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move v0, v12

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 178
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "arg"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, argName:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v34

    aput-object v34, v18, v12

    .line 180
    sget-object v34, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    move-object/from16 v0, v21

    move-object v1, v4

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v34

    aput-object v34, v25, v12

    .line 181
    new-instance v34, Lgnu/expr/ReferenceExp;

    aget-object v35, v18, v12

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v34, v16, v12

    .line 182
    aget-object v34, v25, v12

    aget-object v35, v16, v12

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 176
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 150
    .end local v4           #argName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #inits1:[Lgnu/expr/Expression;
    .end local v15           #inits2:[Lgnu/expr/Expression;
    .end local v16           #inits3:[Lgnu/expr/Expression;
    .end local v17           #isEq:Lgnu/kawa/functions/IsEq;
    .end local v18           #largs:[Lgnu/expr/Declaration;
    .end local v19           #let1:Lgnu/expr/LetExp;
    .end local v20           #let2:Lgnu/expr/LetExp;
    .end local v21           #let3:Lgnu/expr/LetExp;
    .end local v22           #lexp:Lgnu/expr/LambdaExp;
    .end local v23           #loopDecl:Lgnu/expr/Declaration;
    .end local v25           #pargs:[Lgnu/expr/Declaration;
    .end local v27           #procDecl:Lgnu/expr/Declaration;
    .end local v28           #procSafeForMultipleEvaluation:Z
    :cond_1
    const/16 v34, 0x0

    move/from16 v28, v34

    goto/16 :goto_1

    .restart local v14       #inits1:[Lgnu/expr/Expression;
    .restart local v15       #inits2:[Lgnu/expr/Expression;
    .restart local v19       #let1:Lgnu/expr/LetExp;
    .restart local v20       #let2:Lgnu/expr/LetExp;
    .restart local v27       #procDecl:Lgnu/expr/Declaration;
    .restart local v28       #procSafeForMultipleEvaluation:Z
    :cond_2
    move/from16 v34, v24

    .line 164
    goto/16 :goto_2

    .line 184
    .restart local v12       #i:I
    .restart local v16       #inits3:[Lgnu/expr/Expression;
    .restart local v17       #isEq:Lgnu/kawa/functions/IsEq;
    .restart local v18       #largs:[Lgnu/expr/Declaration;
    .restart local v21       #let3:Lgnu/expr/LetExp;
    .restart local v22       #lexp:Lgnu/expr/LambdaExp;
    .restart local v23       #loopDecl:Lgnu/expr/Declaration;
    .restart local v25       #pargs:[Lgnu/expr/Declaration;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    const-string v34, "result"

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v34

    move-object/from16 v32, v34

    .line 185
    .local v32, resultDecl:Lgnu/expr/Declaration;
    :goto_4
    add-int/lit8 v34, v24, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v9, v0

    .line 186
    .local v9, doArgs:[Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_5

    add-int/lit8 v34, v24, 0x1

    :goto_5
    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v30, v0

    .line 187
    .local v30, recArgs:[Lgnu/expr/Expression;
    const/4 v12, 0x0

    :goto_6
    move v0, v12

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 189
    add-int/lit8 v34, v12, 0x1

    new-instance v35, Lgnu/expr/ReferenceExp;

    aget-object v36, v25, v12

    invoke-direct/range {v35 .. v36}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v36, "car"

    invoke-static/range {v35 .. v36}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v35

    aput-object v35, v9, v34

    .line 190
    new-instance v34, Lgnu/expr/ReferenceExp;

    aget-object v35, v25, v12

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const-string v35, "cdr"

    invoke-static/range {v34 .. v35}, Lgnu/kawa/reflect/SlotGet;->makeGetField(Lgnu/expr/Expression;Ljava/lang/String;)Lgnu/expr/ApplyExp;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v34

    aput-object v34, v30, v12

    .line 187
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 184
    .end local v9           #doArgs:[Lgnu/expr/Expression;
    .end local v30           #recArgs:[Lgnu/expr/Expression;
    .end local v32           #resultDecl:Lgnu/expr/Declaration;
    :cond_4
    const/16 v34, 0x0

    move-object/from16 v32, v34

    goto :goto_4

    .restart local v9       #doArgs:[Lgnu/expr/Expression;
    .restart local v32       #resultDecl:Lgnu/expr/Declaration;
    :cond_5
    move/from16 v34, v24

    .line 186
    goto :goto_5

    .line 192
    .restart local v30       #recArgs:[Lgnu/expr/Expression;
    :cond_6
    if-nez v28, :cond_7

    .line 193
    new-instance v26, Lgnu/expr/ReferenceExp;

    .end local v26           #proc:Lgnu/expr/Expression;
    invoke-direct/range {v26 .. v27}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 194
    .restart local v26       #proc:Lgnu/expr/Expression;
    :cond_7
    const/16 v34, 0x0

    aput-object v26, v9, v34

    .line 195
    new-instance v34, Lgnu/expr/ApplyExp;

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/map;->applyFieldDecl:Lgnu/expr/Declaration;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v10

    .line 196
    .local v10, doit:Lgnu/expr/Expression;
    new-instance v34, Lgnu/expr/ApplyExp;

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v29

    .line 197
    .local v29, rec:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 199
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v8, v0

    .line 200
    .local v8, consArgs:[Lgnu/expr/Expression;
    const/16 v34, 0x0

    aput-object v10, v8, v34

    .line 201
    const/16 v34, 0x1

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v8, v34

    .line 202
    sget-object v34, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    const-string v35, "make"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v34

    aput-object v34, v30, v24

    .line 204
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 210
    .end local v8           #consArgs:[Lgnu/expr/Expression;
    :goto_7
    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v34, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 211
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 212
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_9

    add-int/lit8 v34, v24, 0x1

    :goto_8
    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v13, v0

    .line 213
    .local v13, initArgs:[Lgnu/expr/Expression;
    new-instance v11, Lgnu/expr/QuoteExp;

    sget-object v34, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 214
    .local v11, empty:Lgnu/expr/QuoteExp;
    move/from16 v12, v24

    :goto_9
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_b

    .line 216
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v7, v0

    .line 217
    .local v7, compArgs:[Lgnu/expr/Expression;
    const/16 v34, 0x0

    new-instance v35, Lgnu/expr/ReferenceExp;

    aget-object v36, v18, v12

    invoke-direct/range {v35 .. v36}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v35, v7, v34

    .line 218
    const/16 v34, 0x1

    aput-object v11, v7, v34

    .line 219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    new-instance v34, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v31, v34

    .line 222
    .local v31, result:Lgnu/expr/Expression;
    :goto_a
    new-instance v34, Lgnu/expr/IfExp;

    new-instance v35, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v35

    move-object/from16 v0, v22

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v31

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 224
    add-int/lit8 v34, v12, 0x1

    aget-object v34, v5, v34

    aput-object v34, v13, v12

    goto :goto_9

    .line 208
    .end local v7           #compArgs:[Lgnu/expr/Expression;
    .end local v11           #empty:Lgnu/expr/QuoteExp;
    .end local v13           #initArgs:[Lgnu/expr/Expression;
    .end local v31           #result:Lgnu/expr/Expression;
    :cond_8
    new-instance v34, Lgnu/expr/BeginExp;

    move-object/from16 v0, v34

    move-object v1, v10

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_7

    :cond_9
    move/from16 v34, v24

    .line 212
    goto/16 :goto_8

    .line 219
    .restart local v7       #compArgs:[Lgnu/expr/Expression;
    .restart local v11       #empty:Lgnu/expr/QuoteExp;
    .restart local v13       #initArgs:[Lgnu/expr/Expression;
    :cond_a
    sget-object v34, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v31, v34

    goto :goto_a

    .line 226
    .end local v7           #compArgs:[Lgnu/expr/Expression;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_c

    .line 227
    aput-object v11, v13, v24

    .line 229
    :cond_c
    new-instance v34, Lgnu/expr/ApplyExp;

    new-instance v35, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v6

    .line 230
    .local v6, body:Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/map;->collect:Z

    move/from16 v34, v0

    if-eqz v34, :cond_d

    .line 232
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    .line 233
    .local v33, reverseArgs:[Lgnu/expr/Expression;
    const/16 v34, 0x0

    aput-object v6, v33, v34

    .line 234
    sget-object v34, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v35, "reverseInPlace"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v6

    .line 237
    .end local v33           #reverseArgs:[Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 239
    if-eqz v28, :cond_e

    move-object/from16 v34, v20

    .line 240
    goto/16 :goto_0

    :cond_e
    move-object/from16 v34, v19

    .line 242
    goto/16 :goto_0
.end method
