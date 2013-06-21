.class final Lorg/mozilla/classfile/TypeInfo;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# static fields
.field static final DOUBLE:I = 0x3

.field static final FLOAT:I = 0x2

.field static final INTEGER:I = 0x1

.field static final LONG:I = 0x4

.field static final NULL:I = 0x5

.field static final OBJECT_TAG:I = 0x7

.field static final TOP:I = 0x0

.field static final UNINITIALIZED_THIS:I = 0x6

.field static final UNINITIALIZED_VAR_TAG:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final OBJECT(I)I
    .locals 1
    .parameter "constantPoolIndex"

    .prologue
    .line 4957
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static final OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I
    .locals 1
    .parameter "type"
    .parameter "pool"

    .prologue
    .line 4961
    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v0

    return v0
.end method

.method static final UNINITIALIZED_VARIABLE(I)I
    .locals 1
    .parameter "bytecodeOffset"

    .prologue
    .line 4965
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static final fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I
    .locals 2
    .parameter "type"
    .parameter "pool"

    .prologue
    const/4 v1, 0x1

    .line 4993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 4994
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 5008
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    move v0, v1

    .line 5011
    :goto_0
    return v0

    .line 5002
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 5004
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 5006
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 5011
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v0

    goto :goto_0

    .line 4994
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_1
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_3
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method static getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "internalName"

    .prologue
    .line 5138
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5139
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 5140
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final getPayload(I)I
    .locals 1
    .parameter "typeInfo"

    .prologue
    .line 4973
    ushr-int/lit8 v0, p0, 0x8

    return v0
.end method

.method static final getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .parameter "typeInfo"
    .parameter "pool"

    .prologue
    .line 4983
    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 4984
    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getPayload(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 4986
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expecting object type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final getTag(I)I
    .locals 1
    .parameter "typeInfo"

    .prologue
    .line 4969
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static isTwoWords(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 5015
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static merge(IILorg/mozilla/classfile/ConstantPool;)I
    .locals 5
    .parameter "current"
    .parameter "incoming"
    .parameter "pool"

    .prologue
    .line 5037
    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v1

    .line 5038
    .local v1, currentTag:I
    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v3

    .line 5039
    .local v3, incomingTag:I
    const/4 v0, 0x7

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 5040
    .local v0, currentIsObject:Z
    :goto_0
    const/4 v2, 0x7

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    .line 5042
    .local v2, incomingIsObject:Z
    :goto_1
    if-eq p0, p1, :cond_0

    if-eqz v0, :cond_3

    const/4 v4, 0x5

    if-ne p1, v4, :cond_3

    .line 5090
    .end local v0           #currentIsObject:Z
    .end local v1           #currentTag:I
    .end local v2           #incomingIsObject:Z
    .end local v3           #incomingTag:I
    .end local p0
    :cond_0
    :goto_2
    return p0

    .line 5039
    .restart local v1       #currentTag:I
    .restart local v3       #incomingTag:I
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5040
    .restart local v0       #currentIsObject:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 5044
    .restart local v2       #incomingIsObject:Z
    :cond_3
    if-eqz v1, :cond_4

    if-nez v3, :cond_5

    .line 5046
    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    .line 5047
    :cond_5
    const/4 v1, 0x5

    if-ne p0, v1, :cond_6

    .end local v1           #currentTag:I
    if-eqz v2, :cond_6

    move p0, p1

    .line 5048
    goto :goto_2

    .line 5049
    :cond_6
    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    .line 5050
    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v0

    .line 5051
    .local v0, currentName:Ljava/lang/String;
    invoke-static {p1, p2}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v3

    .line 5055
    .local v3, incomingName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5056
    .local v1, currentlyGeneratedName:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .end local v2           #incomingIsObject:Z
    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5063
    .local v2, currentlyGeneratedSuperName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5064
    move-object v0, v2

    .line 5066
    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #currentlyGeneratedName:Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 5067
    move-object v1, v2

    .end local v3           #incomingName:Ljava/lang/String;
    .local v1, incomingName:Ljava/lang/String;
    move-object v2, v1

    .line 5070
    .end local v1           #incomingName:Ljava/lang/String;
    .local v2, incomingName:Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Lorg/mozilla/classfile/TypeInfo;->getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5071
    .local v1, currentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2}, Lorg/mozilla/classfile/TypeInfo;->getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5073
    .local v0, incomingClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .end local v2           #incomingName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 5075
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    move p0, p1

    .line 5076
    goto :goto_2

    .line 5077
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5083
    :cond_9
    const-string p0, "java/lang/Object"

    .end local p0
    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p0

    goto :goto_2

    .line 5085
    .restart local p0
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 5086
    .local v0, commonClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_c

    .line 5087
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5088
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 5089
    .local p0, name:Ljava/lang/String;
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5090
    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p0

    goto :goto_2

    .line 5092
    .local p0, current:I
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 5096
    .end local v0           #commonClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #currentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad merge attempt between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #current:I
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " and "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lorg/mozilla/classfile/TypeInfo;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .local v0, currentName:Ljava/lang/String;
    .local v2, currentlyGeneratedSuperName:Ljava/lang/String;
    .restart local v3       #incomingName:Ljava/lang/String;
    .restart local p0       #current:I
    .restart local p1
    :cond_d
    move-object v2, v3

    .end local v3           #incomingName:Ljava/lang/String;
    .local v2, incomingName:Ljava/lang/String;
    goto :goto_3
.end method

.method static print([II[IILorg/mozilla/classfile/ConstantPool;)V
    .locals 2
    .parameter "locals"
    .parameter "localsTop"
    .parameter "stack"
    .parameter "stackTop"
    .parameter "pool"

    .prologue
    .line 5167
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "locals: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5168
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, p4}, Lorg/mozilla/classfile/TypeInfo;->toString([IILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "stack: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 5170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p2, p3, p4}, Lorg/mozilla/classfile/TypeInfo;->toString([IILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 5172
    return-void
.end method

.method static print([I[ILorg/mozilla/classfile/ConstantPool;)V
    .locals 2
    .parameter "locals"
    .parameter "stack"
    .parameter "pool"

    .prologue
    .line 5162
    array-length v0, p0

    array-length v1, p1

    invoke-static {p0, v0, p1, v1, p2}, Lorg/mozilla/classfile/TypeInfo;->print([II[IILorg/mozilla/classfile/ConstantPool;)V

    .line 5163
    return-void
.end method

.method static toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "pool"

    .prologue
    .line 5102
    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    .line 5103
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 5119
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 5120
    invoke-static {p0, p1}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    .line 5122
    :goto_0
    return-object v1

    .line 5105
    :pswitch_0
    const-string v1, "top"

    goto :goto_0

    .line 5107
    :pswitch_1
    const-string v1, "int"

    goto :goto_0

    .line 5109
    :pswitch_2
    const-string v1, "float"

    goto :goto_0

    .line 5111
    :pswitch_3
    const-string v1, "double"

    goto :goto_0

    .line 5113
    :pswitch_4
    const-string v1, "long"

    goto :goto_0

    .line 5115
    :pswitch_5
    const-string v1, "null"

    goto :goto_0

    .line 5117
    :pswitch_6
    const-string v1, "uninitialized_this"

    goto :goto_0

    .line 5121
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 5122
    const-string v1, "uninitialized"

    goto :goto_0

    .line 5124
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toString([IILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .locals 3
    .parameter "types"
    .parameter "typesTop"
    .parameter "pool"

    .prologue
    .line 5149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5150
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5152
    if-lez v0, :cond_0

    .line 5153
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5155
    :cond_0
    aget v2, p0, v0

    invoke-static {v2, p2}, Lorg/mozilla/classfile/TypeInfo;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5157
    :cond_1
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static toString([ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .parameter "types"
    .parameter "pool"

    .prologue
    .line 5145
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lorg/mozilla/classfile/TypeInfo;->toString([IILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
