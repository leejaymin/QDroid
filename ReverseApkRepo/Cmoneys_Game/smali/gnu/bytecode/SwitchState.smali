.class public Lgnu/bytecode/SwitchState;
.super Ljava/lang/Object;
.source "SwitchState.java"


# instance fields
.field after_label:Lgnu/bytecode/Label;

.field cases_label:Lgnu/bytecode/Label;

.field defaultLabel:Lgnu/bytecode/Label;

.field labels:[Lgnu/bytecode/Label;

.field maxValue:I

.field minValue:I

.field numCases:I

.field outerTry:Lgnu/bytecode/TryState;

.field switch_label:Lgnu/bytecode/Label;

.field values:[I


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    .line 63
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    .line 64
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    .line 65
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 68
    return-void
.end method


# virtual methods
.method public addCase(ILgnu/bytecode/CodeAttr;)Z
    .locals 2
    .parameter "value"
    .parameter "code"

    .prologue
    .line 89
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 90
    .local v0, label:Lgnu/bytecode/Label;
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 94
    :goto_0
    invoke-virtual {v0, p2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 95
    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v1

    return v1

    .line 93
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypesSame(Lgnu/bytecode/Label;)V

    goto :goto_0
.end method

.method public addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z
    .locals 2
    .parameter "value"
    .parameter "code"
    .parameter "label"

    .prologue
    .line 101
    invoke-virtual {p0, p1, p3, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v0

    .line 102
    .local v0, ok:Z
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p3, v1}, Lgnu/bytecode/Label;->setTypesSame(Lgnu/bytecode/Label;)V

    .line 103
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 104
    return v0
.end method

.method public addDefault(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 109
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 110
    .local v0, label:Lgnu/bytecode/Label;
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 114
    :goto_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 115
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 113
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypesSame(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 116
    :cond_1
    iput-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 117
    return-void
.end method

.method public exitSwitch(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/Error;

    const-string v1, "exitSwitch cannot exit through a try"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 193
    return-void
.end method

.method public finish(Lgnu/bytecode/CodeAttr;)V
    .locals 14
    .parameter "code"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 199
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-nez v7, :cond_0

    .line 201
    new-instance v7, Lgnu/bytecode/Label;

    invoke-direct {v7, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 202
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {v7, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 203
    const-string v7, "java.lang.RuntimeException"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 204
    .local v2, ex:Lgnu/bytecode/ClassType;
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 205
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 206
    const-string v7, "bad case value!"

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 207
    new-array v0, v9, [Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v7, v0, v11

    .line 208
    .local v0, args:[Lgnu/bytecode/Type;
    const-string v7, "<init>"

    sget-object v8, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v7, v9, v0, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 210
    .local v1, con:Lgnu/bytecode/Method;
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 211
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 213
    .end local v0           #args:[Lgnu/bytecode/Type;
    .end local v1           #con:Lgnu/bytecode/Method;
    .end local v2           #ex:Lgnu/bytecode/ClassType;
    :cond_0
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    iget-object v8, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v7, v8}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 214
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-gt v7, v9, :cond_4

    .line 216
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 217
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ne v7, v9, :cond_3

    .line 219
    iget v7, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-nez v7, :cond_2

    .line 220
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 226
    :goto_0
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v7, v7, v11

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 227
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 228
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 229
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 269
    :cond_1
    :goto_1
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    iget-object v8, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v7, v8}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 270
    return-void

    .line 223
    :cond_2
    iget v7, p0, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 224
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1, v9}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 234
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    .line 237
    :cond_4
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iget v9, p0, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int/2addr v8, v9

    if-lt v7, v8, :cond_6

    .line 239
    iget v7, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iget v8, p0, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0xd

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 240
    invoke-virtual {p1, v12, v13}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 241
    const/16 v7, 0xaa

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 242
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v10, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 243
    iget v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 244
    iget v7, p0, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 245
    iget v7, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, index:I
    iget v3, p0, Lgnu/bytecode/SwitchState;->minValue:I

    .local v3, i:I
    :goto_2
    iget v7, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-gt v3, v7, :cond_1

    .line 249
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v7, v7, v4

    if-ne v7, v3, :cond_5

    iget-object v7, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-object v7, v7, v4

    move-object v6, v7

    move v4, v5

    .line 250
    .end local v5           #index:I
    .restart local v4       #index:I
    .local v6, lab:Lgnu/bytecode/Label;
    :goto_3
    invoke-virtual {p1, v10, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 251
    iget v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 249
    .end local v6           #lab:Lgnu/bytecode/Label;
    :cond_5
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    move-object v6, v7

    goto :goto_3

    .line 256
    .end local v3           #i:I
    .end local v4           #index:I
    :cond_6
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/lit8 v7, v7, 0x8

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 257
    invoke-virtual {p1, v12, v13}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 258
    const/16 v7, 0xab

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 259
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v10, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 260
    iget v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 261
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 262
    const/4 v4, 0x0

    .restart local v4       #index:I
    :goto_4
    iget v7, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ge v4, v7, :cond_1

    .line 264
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v7, v7, v4

    invoke-virtual {p1, v7}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 265
    iget-object v7, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v7, v7, v4

    invoke-virtual {p1, v10, v7}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 266
    iget v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v7, v7, 0x4

    iput v7, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    return v0
.end method

.method public getNumCases()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    return v0
.end method

.method public insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z
    .locals 10
    .parameter "value"
    .parameter "label"
    .parameter "code"

    .prologue
    const/16 v7, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    if-nez v6, :cond_0

    .line 129
    new-array v6, v7, [I

    iput-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 130
    new-array v6, v7, [Lgnu/bytecode/Label;

    iput-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 131
    iput v9, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 132
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    .line 133
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    aput p1, v6, v8

    .line 134
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aput-object p2, v6, v8

    move v6, v9

    .line 181
    :goto_0
    return v6

    .line 137
    :cond_0
    iget-object v5, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 138
    .local v5, old_values:[I
    iget-object v4, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 139
    .local v4, old_labels:[Lgnu/bytecode/Label;
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    iget-object v7, p0, Lgnu/bytecode/SwitchState;->values:[I

    array-length v7, v7

    if-lt v6, v7, :cond_1

    .line 141
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 142
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Lgnu/bytecode/Label;

    iput-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 145
    :cond_1
    iget v6, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-ge p1, v6, :cond_3

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, copyBefore:I
    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    .line 173
    :cond_2
    :goto_1
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    sub-int v0, v6, v1

    .line 174
    .local v0, copyAfter:I
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    add-int/lit8 v7, v1, 0x1

    invoke-static {v5, v1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    invoke-static {v5, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    aput p1, v6, v1

    .line 177
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    add-int/lit8 v7, v1, 0x1

    invoke-static {v4, v1, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    invoke-static {v4, v8, v6, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aput-object p2, v6, v1

    .line 180
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    move v6, v9

    .line 181
    goto :goto_0

    .line 150
    .end local v0           #copyAfter:I
    .end local v1           #copyBefore:I
    :cond_3
    iget v6, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-le p1, v6, :cond_4

    .line 152
    iget v1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 153
    .restart local v1       #copyBefore:I
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    goto :goto_1

    .line 158
    .end local v1           #copyBefore:I
    :cond_4
    const/4 v3, 0x0

    .line 159
    .local v3, low:I
    iget v6, p0, Lgnu/bytecode/SwitchState;->numCases:I

    sub-int v2, v6, v9

    .line 160
    .local v2, hi:I
    const/4 v1, 0x0

    .line 161
    .restart local v1       #copyBefore:I
    :goto_2
    if-gt v3, v2, :cond_6

    .line 163
    add-int v6, v3, v2

    ushr-int/lit8 v1, v6, 0x1

    .line 164
    aget v6, v5, v1

    if-lt v6, p1, :cond_5

    .line 165
    sub-int v2, v1, v9

    goto :goto_2

    .line 167
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_2

    .line 170
    :cond_6
    aget v6, v5, v1

    if-ne p1, v6, :cond_2

    move v6, v8

    .line 171
    goto :goto_0
.end method

.method public switchValuePushed(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 76
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 77
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 78
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 79
    return-void
.end method
