.class public Lgnu/expr/GenericProc;
.super Lgnu/mapping/MethodProc;
.source "GenericProc.java"


# instance fields
.field count:I

.field maxArgs:I

.field protected methods:[Lgnu/mapping/MethodProc;

.field minArgs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static make([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .locals 1
    .parameter "args"

    .prologue
    .line 280
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 281
    .local v0, result:Lgnu/expr/GenericProc;
    invoke-virtual {v0, p0}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 282
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lgnu/mapping/MethodProc;)V
    .locals 8
    .parameter "method"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v4, :cond_7

    .line 43
    const/16 v4, 0x8

    new-array v4, v4, [Lgnu/mapping/MethodProc;

    iput-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 52
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v2, v4, :cond_1

    .line 54
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v4, v4, v2

    invoke-static {p1, v4}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v0

    .line 55
    .local v0, best:Lgnu/mapping/MethodProc;
    if-ne v0, p1, :cond_8

    .line 58
    .end local v0           #best:Lgnu/mapping/MethodProc;
    :cond_1
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v2, v4, :cond_2

    .line 59
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    iget-object v5, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    add-int/lit8 v6, v2, 0x1

    iget v7, p0, Lgnu/expr/GenericProc;->count:I

    sub-int/2addr v7, v2

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :cond_2
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v4, v2

    .line 62
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v3

    .line 63
    .local v3, n:I
    iget v4, p0, Lgnu/expr/GenericProc;->minArgs:I

    if-lt v3, v4, :cond_3

    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    if-nez v4, :cond_4

    .line 64
    :cond_3
    iput v3, p0, Lgnu/expr/GenericProc;->minArgs:I

    .line 65
    :cond_4
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v3

    .line 66
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget v4, p0, Lgnu/expr/GenericProc;->maxArgs:I

    if-le v3, v4, :cond_6

    .line 67
    :cond_5
    iput v3, p0, Lgnu/expr/GenericProc;->maxArgs:I

    .line 68
    :cond_6
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgnu/expr/GenericProc;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 44
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_7
    :try_start_1
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    iget-object v5, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 46
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Lgnu/mapping/MethodProc;

    .line 47
    .local v1, copy:[Lgnu/mapping/MethodProc;
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lgnu/expr/GenericProc;->count:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v1           #copy:[Lgnu/mapping/MethodProc;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 52
    .restart local v0       #best:Lgnu/mapping/MethodProc;
    .restart local v2       #i:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected declared-synchronized add([Lgnu/mapping/MethodProc;)V
    .locals 3
    .parameter "procs"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    array-length v1, p1

    .line 34
    .local v1, n:I
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v2, :cond_0

    .line 35
    new-array v2, v1, [Lgnu/mapping/MethodProc;

    iput-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 36
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 37
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    monitor-exit p0

    return-void

    .line 33
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 92
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 93
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    :goto_0
    return-object v4

    .line 94
    :cond_0
    array-length v4, p1

    invoke-static {p0, v4}, Lgnu/expr/GenericProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 95
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 96
    .local v0, ctx:Lgnu/mapping/CallContext;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v4, :cond_2

    .line 98
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v4, v1

    .line 99
    .local v3, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v3, p1, v0}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v2

    .line 100
    .local v2, m:I
    if-nez v2, :cond_1

    .line 101
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v2           #m:I
    .end local v3           #method:Lgnu/mapping/MethodProc;
    :cond_2
    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v4
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 6
    .parameter "args"

    .prologue
    const/4 v5, 0x1

    .line 108
    const/4 v0, -0x1

    .line 109
    .local v0, best:I
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 111
    iget-object v4, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v4, v1

    .line 112
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    .line 113
    .local v3, result:I
    if-ne v3, v5, :cond_1

    move v4, v5

    .line 118
    .end local v2           #method:Lgnu/mapping/MethodProc;
    .end local v3           #result:I
    :goto_1
    return v4

    .line 115
    .restart local v2       #method:Lgnu/mapping/MethodProc;
    .restart local v3       #result:I
    :cond_1
    if-nez v3, :cond_0

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .end local v2           #method:Lgnu/mapping/MethodProc;
    .end local v3           #result:I
    :cond_2
    move v4, v0

    .line 118
    goto :goto_1
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 123
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 124
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v3

    .line 133
    :goto_0
    return v3

    .line 125
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 127
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 128
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    .line 129
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 130
    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 133
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 138
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 139
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 148
    :goto_0
    return v3

    .line 140
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 142
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 143
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 144
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 145
    goto :goto_0

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 148
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 153
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 154
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 163
    :goto_0
    return v3

    .line 155
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 157
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 158
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 159
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 160
    goto :goto_0

    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 163
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 168
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 178
    :goto_0
    return v3

    .line 170
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v3, :cond_2

    .line 172
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v3, v1

    .line 173
    .local v2, method:Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 174
    .local v0, code:I
    if-nez v0, :cond_1

    move v3, v5

    .line 175
    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v0           #code:I
    .end local v2           #method:Lgnu/mapping/MethodProc;
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 178
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    .line 184
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 185
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v1, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 186
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v7, v1, :cond_2

    .line 188
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v1, v7

    .local v0, method:Lgnu/mapping/MethodProc;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 189
    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    .line 190
    .local v6, code:I
    if-nez v6, :cond_1

    move v1, v8

    .line 191
    goto :goto_0

    .line 186
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 193
    .end local v0           #method:Lgnu/mapping/MethodProc;
    .end local v6           #code:I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 194
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 19
    .parameter "args"
    .parameter "ctx"

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v17

    .line 251
    :goto_0
    return v17

    .line 201
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    .line 202
    .local v4, alen:I
    new-array v7, v4, [Lgnu/bytecode/Type;

    .line 203
    .local v7, atypes:[Lgnu/bytecode/Type;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v14

    .line 207
    .local v14, language:Lgnu/expr/Language;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v4, :cond_3

    .line 209
    aget-object v5, p1, v13

    .line 211
    .local v5, arg:Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 212
    sget-object v6, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .line 221
    .local v6, atype:Lgnu/bytecode/Type;
    :goto_2
    aput-object v6, v7, v13

    .line 207
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 215
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 216
    .local v3, aclass:Ljava/lang/Class;
    if-eqz v14, :cond_2

    .line 217
    invoke-virtual {v14, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    .restart local v6       #atype:Lgnu/bytecode/Type;
    goto :goto_2

    .line 219
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_2
    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    .restart local v6       #atype:Lgnu/bytecode/Type;
    goto :goto_2

    .line 223
    .end local v3           #aclass:Ljava/lang/Class;
    .end local v5           #arg:Ljava/lang/Object;
    .end local v6           #atype:Lgnu/bytecode/Type;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object v10, v0

    .line 224
    .local v10, codes:[I
    const/4 v11, 0x0

    .line 225
    .local v11, defCount:I
    const/4 v15, 0x0

    .line 226
    .local v15, maybeCount:I
    const/4 v8, -0x1

    .line 227
    .local v8, bestIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v9

    .line 230
    .local v9, code:I
    if-nez v11, :cond_4

    if-ltz v9, :cond_4

    .line 231
    move v8, v12

    .line 232
    :cond_4
    if-lez v9, :cond_6

    .line 233
    add-int/lit8 v11, v11, 0x1

    .line 236
    :cond_5
    :goto_4
    aput v9, v10, v12

    .line 227
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 234
    :cond_6
    if-nez v9, :cond_5

    .line 235
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 238
    .end local v9           #code:I
    :cond_7
    const/16 v17, 0x1

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    if-nez v11, :cond_9

    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 239
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v17

    goto/16 :goto_0

    .line 240
    :cond_9
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/GenericProc;->count:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 242
    aget v9, v10, v12

    .line 243
    .restart local v9       #code:I
    if-ltz v9, :cond_a

    if-nez v9, :cond_b

    if-lez v11, :cond_b

    .line 240
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 245
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    move-object/from16 v17, v0

    aget-object v16, v17, v12

    .line 246
    .local v16, method:Lgnu/mapping/MethodProc;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    .line 247
    if-nez v9, :cond_a

    .line 248
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 250
    .end local v9           #code:I
    .end local v16           #method:Lgnu/mapping/MethodProc;
    :cond_c
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 251
    const/16 v17, -0x1

    goto/16 :goto_0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lgnu/expr/GenericProc;->minArgs:I

    iget v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method

.method public final setProperties([Ljava/lang/Object;)V
    .locals 8
    .parameter "args"

    .prologue
    .line 256
    array-length v1, p1

    .line 257
    .local v1, alen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 259
    aget-object v2, p1, v3

    .line 260
    .local v2, arg:Ljava/lang/Object;
    instance-of v7, v2, Lgnu/expr/Keyword;

    if-eqz v7, :cond_2

    .line 262
    move-object v0, v2

    check-cast v0, Lgnu/expr/Keyword;

    move-object v4, v0

    .line 263
    .local v4, key:Lgnu/expr/Keyword;
    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, name:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    aget-object v6, p1, v3

    .line 265
    .local v6, value:Ljava/lang/Object;
    const-string v7, "name"

    if-ne v5, v7, :cond_0

    .line 266
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 257
    .end local v2           #arg:Ljava/lang/Object;
    .end local v4           #key:Lgnu/expr/Keyword;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .restart local v2       #arg:Ljava/lang/Object;
    .restart local v4       #key:Lgnu/expr/Keyword;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/Object;
    :cond_0
    const-string v7, "method"

    if-ne v5, v7, :cond_1

    .line 268
    check-cast v6, Lgnu/mapping/MethodProc;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p0, v6}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 270
    .restart local v6       #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lgnu/expr/GenericProc;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 273
    .end local v4           #key:Lgnu/expr/Keyword;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_2
    check-cast v2, Lgnu/mapping/MethodProc;

    .end local v2           #arg:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_1

    .line 275
    :cond_3
    return-void
.end method
