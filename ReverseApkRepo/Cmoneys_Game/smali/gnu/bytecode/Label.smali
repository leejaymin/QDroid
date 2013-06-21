.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lgnu/bytecode/Label;->position:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 36
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public define(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 133
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 138
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 139
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 140
    return-void
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 119
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/Error;

    const-string v1, "label definition more than once"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    iput v0, p0, Lgnu/bytecode/Label;->position:I

    .line 122
    iget v0, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    .line 123
    iget v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    if-ltz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 125
    :cond_1
    return-void
.end method

.method public final defined()Z
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .parameter "code"

    .prologue
    .line 93
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p1, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 99
    return-void

    .line 95
    :cond_1
    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    goto :goto_0
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 103
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    iget-object v2, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v3, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 105
    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .locals 8
    .parameter "locals"
    .parameter "usedLocals"
    .parameter "stack"
    .parameter "usedStack"

    .prologue
    const/4 v6, 0x0

    .line 47
    :goto_0
    if-lez p2, :cond_0

    .line 49
    const/4 v5, 0x1

    sub-int v5, p2, v5

    aget-object v2, p1, v5

    .line 50
    .local v2, last:Lgnu/bytecode/Type;
    if-eqz v2, :cond_2

    .line 53
    .end local v2           #last:Lgnu/bytecode/Type;
    :cond_0
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez v5, :cond_5

    .line 55
    if-nez p4, :cond_3

    .line 56
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 62
    :goto_1
    if-nez p2, :cond_4

    .line 63
    sget-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 89
    :cond_1
    :goto_2
    return-void

    .line 47
    .restart local v2       #last:Lgnu/bytecode/Type;
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 59
    .end local v2           #last:Lgnu/bytecode/Type;
    :cond_3
    new-array v5, p4, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 60
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-static {p3, v6, v5, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 66
    :cond_4
    new-array v5, p2, [Lgnu/bytecode/Type;

    iput-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 67
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    invoke-static {p1, v6, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 72
    :cond_5
    move v0, p4

    .line 73
    .local v0, SP:I
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v4, v5

    .line 74
    .local v4, slen:I
    if-eq v0, v4, :cond_6

    .line 76
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inconsistent stack len was:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_7

    .line 79
    iget-object v5, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iget-object v6, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v6, v6, v1

    aget-object v7, p3, v1

    invoke-static {v6, v7}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v5, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 81
    :cond_7
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge p2, v5, :cond_8

    move v3, p2

    .line 82
    .local v3, min:I
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_9

    .line 84
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v6, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v6, v6, v1

    aget-object v7, p1, v1

    invoke-static {v6, v7}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v6

    aput-object v6, v5, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 81
    .end local v3           #min:I
    :cond_8
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    move v3, v5

    goto :goto_4

    .line 86
    .restart local v3       #min:I
    :cond_9
    move v1, p2

    :goto_6
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 87
    iget-object v5, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method setTypesSame(Lgnu/bytecode/Label;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 109
    iget-object v0, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 110
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 111
    return-void
.end method
