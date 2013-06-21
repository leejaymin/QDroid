.class public Lgnu/bytecode/ClassTypeWriter;
.super Ljava/io/PrintWriter;
.source "ClassTypeWriter.java"


# static fields
.field public static final PRINT_CONSTANT_POOL:I = 0x1

.field public static final PRINT_CONSTANT_POOL_INDEXES:I = 0x2

.field public static final PRINT_VERBOSE:I = 0x7

.field public static final PRINT_VERSION:I = 0x4


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field flags:I


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V
    .locals 0
    .parameter "ctype"
    .parameter "stream"
    .parameter "flags"

    .prologue
    .line 35
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 36
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 37
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V
    .locals 0
    .parameter "ctype"
    .parameter "stream"
    .parameter "flags"

    .prologue
    .line 28
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 29
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 30
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 31
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintStream;I)V
    .locals 1
    .parameter "ctype"
    .parameter "stream"
    .parameter "flags"

    .prologue
    .line 54
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 55
    .local v0, writer:Lgnu/bytecode/ClassTypeWriter;
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 56
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 57
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "ctype"
    .parameter "stream"
    .parameter "flags"

    .prologue
    .line 47
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    .line 48
    .local v0, writer:Lgnu/bytecode/ClassTypeWriter;
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 49
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 50
    return-void
.end method


# virtual methods
.method public print()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Classfile format major version: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 65
    const-string v0, ", minor version: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 67
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 69
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printConstantPool()V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printClassInfo()V

    .line 72
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printFields()V

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printMethods()V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes()V

    .line 75
    return-void
.end method

.method public print(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "ctype"

    .prologue
    .line 79
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 80
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 81
    return-void
.end method

.method public printAttributes()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 86
    .local v0, attrs:Lgnu/bytecode/AttrContainer;
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 87
    const-string v1, "Attributes (count: "

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 89
    const-string v1, "):"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 91
    return-void
.end method

.method public printAttributes(Lgnu/bytecode/AttrContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 95
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 96
    .local v0, attr:Lgnu/bytecode/Attribute;
    :goto_0
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 96
    iget-object v0, v0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public printClassInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    .line 104
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 105
    const-string v5, "Access flags:"

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v3

    .line 107
    .local v3, modifiers:I
    const/16 v5, 0x43

    invoke-static {v3, v5}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 109
    const-string v5, "This class: "

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 111
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v5, v7}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 112
    const-string v5, " super: "

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 113
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 114
    const-string v5, "<unknown>"

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 123
    const-string v5, "Interfaces (count: "

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 125
    .local v2, interfaces:[I
    if-nez v2, :cond_2

    const/4 v5, 0x0

    move v4, v5

    .line 126
    .local v4, n_interfaces:I
    :goto_1
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 127
    const-string v5, "):"

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 131
    const-string v5, "- Implements: "

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    aget v1, v2, v0

    .line 133
    .local v1, index:I
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 134
    invoke-virtual {p0, v1, v7}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 135
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #interfaces:[I
    .end local v4           #n_interfaces:I
    :cond_0
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v5, :cond_1

    .line 116
    const-string v5, "0"

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 120
    iget-object v5, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v5, v7}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0

    .line 125
    .restart local v2       #interfaces:[I
    :cond_2
    array-length v5, v2

    move v4, v5

    goto :goto_1

    .line 137
    .restart local v0       #i:I
    .restart local v4       #n_interfaces:I
    :cond_3
    return-void
.end method

.method final printConstantOperand(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 219
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 220
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 221
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v1, v2, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 223
    .local v1, pool:[Lgnu/bytecode/CpoolEntry;
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object v0, v1, p1

    .local v0, entry:Lgnu/bytecode/CpoolEntry;
    if-nez v0, :cond_1

    .line 225
    .end local v0           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_0
    const-string v2, "<invalid constant index>"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 228
    .restart local v0       #entry:Lgnu/bytecode/CpoolEntry;
    :cond_1
    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 229
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 230
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0
.end method

.method public printConstantPool()V
    .locals 5

    .prologue
    .line 259
    iget-object v4, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v3, v4, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 260
    .local v3, pool:[Lgnu/bytecode/CpoolEntry;
    iget-object v4, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v2, v4, Lgnu/bytecode/ConstantPool;->count:I

    .line 261
    .local v2, length:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 263
    aget-object v0, v3, v1

    .line 264
    .local v0, entry:Lgnu/bytecode/CpoolEntry;
    if-nez v0, :cond_0

    .line 261
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_0
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 267
    iget v4, v0, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 268
    const-string v4, ": "

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 269
    const/4 v4, 0x2

    invoke-virtual {v0, p0, v4}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 270
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto :goto_1

    .line 272
    .end local v0           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_1
    return-void
.end method

.method final printConstantTersely(II)V
    .locals 3
    .parameter "index"
    .parameter "expected_tag"

    .prologue
    .line 201
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, v2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v1, v2, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 203
    .local v1, pool:[Lgnu/bytecode/CpoolEntry;
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget-object v0, v1, p1

    .local v0, entry:Lgnu/bytecode/CpoolEntry;
    if-nez v0, :cond_1

    .line 205
    .end local v0           #entry:Lgnu/bytecode/CpoolEntry;
    :cond_0
    const-string v2, "<invalid constant index>"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 206
    .restart local v0       #entry:Lgnu/bytecode/CpoolEntry;
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 208
    const-string v2, "<unexpected constant type "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 210
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 213
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    goto :goto_0
.end method

.method public printFields()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 142
    const-string v2, "Fields (count: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v2, v2, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 144
    const-string v2, "):"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, ifield:I
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v2, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .line 148
    .local v0, field:Lgnu/bytecode/Field;
    :goto_0
    if-eqz v0, :cond_2

    .line 150
    const-string v2, "Field name: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    iget v2, v0, Lgnu/bytecode/Field;->name_index:I

    if-eqz v2, :cond_0

    .line 152
    iget v2, v0, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 153
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 154
    iget v2, v0, Lgnu/bytecode/Field;->flags:I

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 155
    const-string v2, " Signature: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 156
    iget v2, v0, Lgnu/bytecode/Field;->signature_index:I

    if-eqz v2, :cond_1

    .line 157
    iget v2, v0, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 158
    :cond_1
    iget-object v2, v0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 159
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 160
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 148
    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 162
    :cond_2
    return-void
.end method

.method public printMethods()V
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 166
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 167
    const-string v2, "Methods (count: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v2, v2, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 169
    const-string v2, "):"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 171
    iget-object v2, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v2, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .line 172
    .local v1, method:Lgnu/bytecode/Method;
    :goto_0
    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 175
    const-string v2, "Method name:"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 176
    iget v2, v1, Lgnu/bytecode/Method;->name_index:I

    if-eqz v2, :cond_0

    .line 177
    iget v2, v1, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 178
    :cond_0
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 179
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 181
    iget v2, v1, Lgnu/bytecode/Method;->access_flags:I

    const/16 v3, 0x4d

    invoke-static {v2, v3}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string v2, " Signature: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 183
    iget v2, v1, Lgnu/bytecode/Method;->signature_index:I

    if-eqz v2, :cond_1

    .line 184
    iget v2, v1, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 185
    :cond_1
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, v1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 188
    if-lez v0, :cond_2

    .line 189
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 190
    :cond_2
    iget-object v2, v1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_3
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 193
    iget-object v2, v1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 194
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 195
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 172
    iget-object v1, v1, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_0

    .line 197
    .end local v0           #i:I
    :cond_4
    return-void
.end method

.method printName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public final printOptionalIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 276
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 278
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 279
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 280
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 282
    :cond_0
    return-void
.end method

.method public final printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 286
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 287
    return-void
.end method

.method public final printQuotedString(Ljava/lang/String;)V
    .locals 7
    .parameter "string"

    .prologue
    const/16 v6, 0x22

    .line 236
    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 238
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 240
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 241
    .local v0, ch:C
    if-ne v0, v6, :cond_1

    .line 242
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/16 v4, 0x20

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_2

    .line 244
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 245
    :cond_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 246
    const-string v4, "\\n"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_3
    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x4

    .local v2, j:I
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 251
    mul-int/lit8 v4, v2, 0x4

    shr-int v4, v0, v4

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2

    .line 254
    .end local v0           #ch:C
    .end local v2           #j:I
    :cond_4
    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 255
    return-void
.end method

.method public final printSignature(Ljava/lang/String;I)I
    .locals 7
    .parameter "sig"
    .parameter "pos"

    .prologue
    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 302
    .local v1, len:I
    if-lt p2, v1, :cond_0

    .line 304
    const-string v6, "<empty signature>"

    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move v6, p2

    .line 344
    :goto_0
    return v6

    .line 307
    :cond_0
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v5

    .line 308
    .local v5, sig_length:I
    if-lez v5, :cond_1

    .line 310
    add-int v6, p2, v5

    invoke-virtual {p1, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    add-int v6, p2, v5

    goto :goto_0

    .line 317
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 318
    .local v0, c:C
    const/16 v6, 0x28

    if-eq v0, v6, :cond_2

    .line 320
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 321
    add-int/lit8 v6, p2, 0x1

    goto :goto_0

    .line 323
    :cond_2
    const/4 v3, 0x0

    .line 324
    .local v3, nargs:I
    add-int/lit8 p2, p2, 0x1

    .line 325
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    move v4, v3

    .line 328
    .end local v3           #nargs:I
    .local v4, nargs:I
    :goto_1
    if-lt p2, v1, :cond_3

    .line 330
    const-string v6, "<truncated method signature>"

    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    move v6, p2

    .line 331
    goto :goto_0

    .line 333
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 334
    const/16 v6, 0x29

    if-ne v0, v6, :cond_4

    .line 336
    add-int/lit8 p2, p2, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 344
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    .line 340
    :cond_4
    add-int/lit8 v3, v4, 0x1

    .end local v4           #nargs:I
    .restart local v3       #nargs:I
    if-lez v4, :cond_5

    .line 341
    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 342
    :cond_5
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result p2

    move v4, v3

    .end local v3           #nargs:I
    .restart local v4       #nargs:I
    goto :goto_1
.end method

.method public final printSignature(Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 421
    if-nez p1, :cond_0

    .line 422
    const-string v0, "<unknown type>"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final printSignature(Ljava/lang/String;)V
    .locals 3
    .parameter "sig"

    .prologue
    .line 409
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, pos:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 411
    .local v0, len:I
    if-ge v1, v0, :cond_0

    .line 413
    const-string v2, "<trailing junk:"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 415
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 417
    :cond_0
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 42
    iput p1, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 43
    return-void
.end method
