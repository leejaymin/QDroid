.class public abstract Lgnu/mapping/MethodProc;
.super Lgnu/mapping/ProcedureN;
.source "MethodProc.java"


# static fields
.field public static final NO_MATCH:I = -0x1

.field public static final NO_MATCH_AMBIGUOUS:I = -0xd0000

.field public static final NO_MATCH_BAD_TYPE:I = -0xc0000

.field public static final NO_MATCH_TOO_FEW_ARGS:I = -0xf0000

.field public static final NO_MATCH_TOO_MANY_ARGS:I = -0xe0000

.field static final unknownArgTypes:[Lgnu/bytecode/Type;


# instance fields
.field protected argTypes:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    const/4 v1, 0x0

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    sput-object v0, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .parameter "code"
    .parameter "proc"
    .parameter "args"

    .prologue
    .line 93
    int-to-short v0, p0

    .line 94
    .local v0, arg:I
    const/high16 v1, -0x1

    and-int/2addr p0, v1

    .line 95
    const/high16 v1, -0xc

    if-eq p0, v1, :cond_0

    .line 96
    new-instance v1, Lgnu/mapping/WrongArguments;

    array-length v2, p2

    invoke-direct {v1, p1, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    .line 97
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lgnu/mapping/WrongType;

    if-lez v0, :cond_1

    const/4 v2, 0x1

    sub-int v2, v0, v2

    aget-object v2, p2, v2

    :goto_1
    invoke-direct {v1, p1, v0, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static mostSpecific([Lgnu/mapping/MethodProc;I)I
    .locals 11
    .parameter "procs"
    .parameter "length"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 161
    if-gt p1, v9, :cond_0

    .line 162
    sub-int v9, p1, v9

    .line 212
    :goto_0
    return v9

    .line 164
    :cond_0
    aget-object v0, p0, v10

    .line 167
    .local v0, best:Lgnu/mapping/MethodProc;
    const/4 v3, 0x0

    .line 170
    .local v3, bests:[Lgnu/mapping/MethodProc;
    const/4 v1, 0x0

    .line 172
    .local v1, bestn:I
    const/4 v4, 0x1

    .local v4, i:I
    move v2, v1

    .end local v1           #bestn:I
    .local v2, bestn:I
    :goto_1
    if-ge v4, p1, :cond_7

    .line 174
    aget-object v6, p0, v4

    .line 175
    .local v6, method:Lgnu/mapping/MethodProc;
    if-eqz v0, :cond_3

    .line 177
    invoke-static {v0, v6}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v8

    .line 178
    .local v8, winner:Lgnu/mapping/MethodProc;
    if-nez v8, :cond_2

    .line 180
    if-nez v3, :cond_1

    .line 181
    new-array v3, p1, [Lgnu/mapping/MethodProc;

    .line 182
    :cond_1
    aput-object v0, v3, v10

    .line 183
    aput-object v6, v3, v9

    .line 184
    const/4 v1, 0x2

    .line 185
    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    const/4 v0, 0x0

    .line 172
    .end local v8           #winner:Lgnu/mapping/MethodProc;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #bestn:I
    .restart local v2       #bestn:I
    goto :goto_1

    .line 187
    .restart local v8       #winner:Lgnu/mapping/MethodProc;
    :cond_2
    if-ne v8, v6, :cond_9

    .line 189
    move-object v0, v6

    .line 190
    move v1, v4

    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    goto :goto_2

    .line 195
    .end local v1           #bestn:I
    .end local v8           #winner:Lgnu/mapping/MethodProc;
    .restart local v2       #bestn:I
    :cond_3
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v2, :cond_6

    .line 197
    aget-object v7, v3, v5

    .line 198
    .local v7, old:Lgnu/mapping/MethodProc;
    invoke-static {v7, v6}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v8

    .line 199
    .restart local v8       #winner:Lgnu/mapping/MethodProc;
    if-ne v8, v7, :cond_4

    move v1, v2

    .line 200
    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    goto :goto_2

    .line 201
    .end local v1           #bestn:I
    .restart local v2       #bestn:I
    :cond_4
    if-nez v8, :cond_5

    .line 203
    add-int/lit8 v1, v2, 0x1

    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    aput-object v6, v3, v2

    goto :goto_2

    .line 195
    .end local v1           #bestn:I
    .restart local v2       #bestn:I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 208
    .end local v7           #old:Lgnu/mapping/MethodProc;
    .end local v8           #winner:Lgnu/mapping/MethodProc;
    :cond_6
    move-object v0, v6

    .line 209
    move v1, v4

    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    goto :goto_2

    .line 212
    .end local v1           #bestn:I
    .end local v5           #j:I
    .end local v6           #method:Lgnu/mapping/MethodProc;
    .restart local v2       #bestn:I
    :cond_7
    if-nez v0, :cond_8

    const/4 v9, -0x1

    goto :goto_0

    :cond_8
    move v9, v2

    goto :goto_0

    .restart local v6       #method:Lgnu/mapping/MethodProc;
    .restart local v8       #winner:Lgnu/mapping/MethodProc;
    :cond_9
    move v1, v2

    .end local v2           #bestn:I
    .restart local v1       #bestn:I
    goto :goto_2
.end method

.method public static mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;
    .locals 9
    .parameter "proc1"
    .parameter "proc2"

    .prologue
    .line 113
    const/4 v5, 0x0

    .line 115
    .local v5, not1:Z
    const/4 v6, 0x0

    .line 116
    .local v6, not2:Z
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v3

    .line 117
    .local v3, min1:I
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v4

    .line 118
    .local v4, min2:I
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v0

    .line 119
    .local v0, max1:I
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v1

    .line 120
    .local v1, max2:I
    if-ltz v0, :cond_0

    if-lt v0, v4, :cond_1

    :cond_0
    if-ltz v1, :cond_2

    if-ge v1, v3, :cond_2

    .line 122
    :cond_1
    const/4 p0, 0x0

    move p1, v6

    .end local v6           #not2:Z
    .local p1, not2:Z
    move-object v0, p0

    move p0, v5

    .line 155
    .end local v0           #max1:I
    .end local v1           #max2:I
    .end local v3           #min1:I
    .end local v4           #min2:I
    .end local v5           #not1:Z
    .local p0, not1:Z
    :goto_0
    return-object v0

    .line 123
    .restart local v0       #max1:I
    .restart local v1       #max2:I
    .restart local v3       #min1:I
    .restart local v4       #min2:I
    .restart local v5       #not1:Z
    .restart local v6       #not2:Z
    .local p0, proc1:Lgnu/mapping/MethodProc;
    .local p1, proc2:Lgnu/mapping/MethodProc;
    :cond_2
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v2

    .line 124
    .local v2, num1:I
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v7

    .line 125
    .local v7, num2:I
    if-le v2, v7, :cond_4

    .line 126
    .local v2, limit:I
    :goto_1
    if-eq v0, v1, :cond_d

    .line 128
    if-gez v0, :cond_3

    .line 129
    const/4 v0, 0x1

    .end local v6           #not2:Z
    .local v0, not2:Z
    move v6, v0

    .line 130
    .end local v0           #not2:Z
    .restart local v6       #not2:Z
    :cond_3
    if-gez v1, :cond_d

    .line 131
    const/4 v0, 0x1

    .end local v5           #not1:Z
    .local v0, not1:Z
    move v1, v6

    .line 133
    .end local v6           #not2:Z
    .local v1, not2:Z
    :goto_2
    if-ge v3, v4, :cond_5

    .line 134
    const/4 v1, 0x1

    move v3, v1

    .end local v1           #not2:Z
    .local v3, not2:Z
    move v1, v0

    .line 137
    .end local v0           #not1:Z
    .local v1, not1:Z
    :goto_3
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v3

    .end local v3           #not2:Z
    .local v4, not2:Z
    move v3, v1

    .end local v1           #not1:Z
    .local v3, not1:Z
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_4
    if-ge v1, v2, :cond_9

    .line 139
    invoke-virtual {p0, v1}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v0

    .line 140
    .local v0, t1:Lgnu/bytecode/Type;
    invoke-virtual {p1, v1}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v5

    .line 141
    .local v5, t2:Lgnu/bytecode/Type;
    invoke-virtual {v0, v5}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    .line 142
    .local v0, comp:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_6

    .line 144
    .end local v5           #t2:Lgnu/bytecode/Type;
    const/4 v4, 0x1

    .line 145
    if-eqz v3, :cond_6

    .line 146
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #not2:Z
    .local p1, not2:Z
    move-object v0, p0

    move p0, v3

    .end local v3           #not1:Z
    .local p0, not1:Z
    goto :goto_0

    .local v0, max1:I
    .local v1, max2:I
    .local v2, num1:I
    .local v3, min1:I
    .local v4, min2:I
    .local v5, not1:Z
    .restart local v6       #not2:Z
    .local p0, proc1:Lgnu/mapping/MethodProc;
    .local p1, proc2:Lgnu/mapping/MethodProc;
    :cond_4
    move v2, v7

    .line 125
    goto :goto_1

    .line 135
    .end local v5           #not1:Z
    .end local v6           #not2:Z
    .local v0, not1:Z
    .local v1, not2:Z
    .local v2, limit:I
    :cond_5
    if-le v3, v4, :cond_c

    .line 136
    const/4 v0, 0x1

    move v3, v1

    .end local v1           #not2:Z
    .local v3, not2:Z
    move v1, v0

    .end local v0           #not1:Z
    .local v1, not1:Z
    goto :goto_3

    .line 148
    .local v0, comp:I
    .local v1, i:I
    .local v3, not1:Z
    .local v4, not2:Z
    :cond_6
    const/4 v5, 0x1

    if-ne v0, v5, :cond_8

    .line 150
    const/4 v0, 0x1

    .line 151
    .end local v3           #not1:Z
    .local v0, not1:Z
    if-eqz v4, :cond_7

    .line 152
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #not2:Z
    .local p1, not2:Z
    move v8, v0

    .end local v0           #not1:Z
    .local v8, not1:Z
    move-object v0, p0

    move p0, v8

    .end local v8           #not1:Z
    .local p0, not1:Z
    goto :goto_0

    .restart local v0       #not1:Z
    .restart local v4       #not2:Z
    .local p0, proc1:Lgnu/mapping/MethodProc;
    .local p1, proc2:Lgnu/mapping/MethodProc;
    :cond_7
    move v3, v0

    .line 137
    .end local v0           #not1:Z
    .restart local v3       #not1:Z
    :cond_8
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_4

    .line 155
    :cond_9
    if-eqz v4, :cond_a

    .end local p0           #proc1:Lgnu/mapping/MethodProc;
    :goto_5
    move p1, v4

    .end local v4           #not2:Z
    .local p1, not2:Z
    move-object v0, p0

    move p0, v3

    .end local v3           #not1:Z
    .local p0, not1:Z
    goto :goto_0

    .restart local v3       #not1:Z
    .restart local v4       #not2:Z
    .local p0, proc1:Lgnu/mapping/MethodProc;
    .local p1, proc2:Lgnu/mapping/MethodProc;
    :cond_a
    if-eqz v3, :cond_b

    move-object p0, p1

    goto :goto_5

    :cond_b
    const/4 p0, 0x0

    goto :goto_5

    .local v0, not1:Z
    .local v1, not2:Z
    .local v3, min1:I
    .local v4, min2:I
    :cond_c
    move v3, v1

    .end local v1           #not2:Z
    .local v3, not2:Z
    move v1, v0

    .end local v0           #not1:Z
    .local v1, not1:Z
    goto :goto_3

    .local v1, max2:I
    .local v3, min1:I
    .restart local v5       #not1:Z
    .restart local v6       #not2:Z
    :cond_d
    move v1, v6

    .end local v6           #not2:Z
    .local v1, not2:Z
    move v0, v5

    .end local v5           #not1:Z
    .restart local v0       #not1:Z
    goto :goto_2
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    array-length v1, p1

    invoke-static {p0, v1}, Lgnu/mapping/MethodProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 103
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 104
    .local v0, ctx:Lgnu/mapping/CallContext;
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 105
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 4
    .parameter "index"

    .prologue
    .line 60
    iget-object v2, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    instance-of v2, v2, [Lgnu/bytecode/Type;

    if-nez v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 63
    :cond_0
    iget-object p0, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Lgnu/bytecode/Type;

    move-object v0, p0

    check-cast v0, [Lgnu/bytecode/Type;

    move-object v1, v0

    .line 64
    .local v1, atypes:[Lgnu/bytecode/Type;
    array-length v2, v1

    if-lt p1, v2, :cond_1

    .line 65
    array-length v2, v1

    const/4 v3, 0x1

    sub-int p1, v2, v3

    .line 66
    :cond_1
    aget-object v2, v1, p1

    return-object v2
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 8
    .parameter "argTypes"

    .prologue
    const/4 v7, -0x1

    .line 20
    array-length v0, p1

    .line 21
    .local v0, argCount:I
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v3

    .line 22
    .local v3, num:I
    and-int/lit16 v6, v3, 0xfff

    if-lt v0, v6, :cond_0

    if-ltz v3, :cond_1

    shr-int/lit8 v6, v3, 0xc

    if-le v0, v6, :cond_1

    :cond_0
    move v6, v7

    .line 35
    :goto_0
    return v6

    .line 25
    :cond_1
    const/4 v5, 0x1

    .line 26
    .local v5, result:I
    move v2, v0

    .local v2, i:I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 28
    invoke-virtual {p0, v2}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v4

    .line 29
    .local v4, ptype:Lgnu/bytecode/Type;
    aget-object v6, p1, v2

    invoke-virtual {v4, v6}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    .line 30
    .local v1, code:I
    const/4 v6, -0x3

    if-ne v1, v6, :cond_3

    move v6, v7

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    if-gez v1, :cond_2

    .line 33
    const/4 v5, 0x0

    goto :goto_1

    .end local v1           #code:I
    .end local v4           #ptype:Lgnu/bytecode/Type;
    :cond_4
    move v6, v5

    .line 35
    goto :goto_0
.end method

.method public numParameters()I
    .locals 4

    .prologue
    .line 41
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v2

    .line 42
    .local v2, num:I
    shr-int/lit8 v0, v2, 0xc

    .line 43
    .local v0, max:I
    if-ltz v0, :cond_0

    move v3, v0

    .line 47
    :goto_0
    return v3

    .line 46
    :cond_0
    and-int/lit16 v1, v2, 0xfff

    .line 47
    .local v1, min:I
    add-int/lit8 v3, v1, 0x1

    goto :goto_0
.end method

.method protected resolveParameterTypes()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    .line 56
    return-void
.end method
