.class public Lgnu/bytecode/ClassFileInput;
.super Ljava/io/DataInputStream;
.source "ClassFileInput.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field str:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V
    .locals 2
    .parameter "ctype"
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object p1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readHeader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/ClassFormatError;

    const-string v1, "invalid magic number"

    invoke-direct {v0, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iput-object v0, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 32
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readClassInfo()V

    .line 33
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFields()V

    .line 34
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readMethods()V

    .line 35
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method public static readClassType(Ljava/io/InputStream;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 45
    .local v0, ctype:Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v1, v0, p0}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 46
    return-object v0
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 31
    .parameter "name"
    .parameter "length"
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v29, "SourceFile"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 178
    new-instance v29, Lgnu/bytecode/SourceFileAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v30

    check-cast p3, Lgnu/bytecode/ClassType;

    .end local p3
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/SourceFileAttr;-><init>(ILgnu/bytecode/ClassType;)V

    .line 306
    :goto_0
    return-object v29

    .line 180
    .restart local p3
    :cond_0
    const-string v29, "Code"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 182
    new-instance v8, Lgnu/bytecode/CodeAttr;

    check-cast p3, Lgnu/bytecode/Method;

    .end local p3
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 183
    .local v8, code:Lgnu/bytecode/CodeAttr;
    const/16 v29, -0x1

    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    move-object v0, v8

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->setMaxStack(I)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    move-object v0, v8

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v9

    .line 187
    .local v9, code_len:I
    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 188
    .local v18, insns:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassFileInput;->readFully([B)V

    .line 189
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->setCode([B)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v14

    .line 191
    .local v14, exception_table_length:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 193
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v27

    .line 194
    .local v27, start_pc:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v13

    .line 195
    .local v13, end_pc:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v16

    .line 196
    .local v16, handler_pc:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    .line 197
    .local v6, catch_type:I
    move-object v0, v8

    move/from16 v1, v27

    move v2, v13

    move/from16 v3, v16

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 191
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 199
    .end local v6           #catch_type:I
    .end local v13           #end_pc:I
    .end local v16           #handler_pc:I
    .end local v27           #start_pc:I
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    move-object/from16 v29, v8

    .line 200
    goto :goto_0

    .line 202
    .end local v8           #code:Lgnu/bytecode/CodeAttr;
    .end local v9           #code_len:I
    .end local v14           #exception_table_length:I
    .end local v17           #i:I
    .end local v18           #insns:[B
    .restart local p3
    :cond_2
    const-string v29, "LineNumberTable"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 204
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    mul-int/lit8 v11, v29, 0x2

    .line 205
    .local v11, count:I
    move v0, v11

    new-array v0, v0, [S

    move-object/from16 v22, v0

    .line 206
    .local v22, numbers:[S
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_3

    .line 208
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v29

    aput-short v29, v22, v17

    .line 206
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 210
    :cond_3
    new-instance v29, Lgnu/bytecode/LineNumbersAttr;

    check-cast p3, Lgnu/bytecode/CodeAttr;

    .end local p3
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/LineNumbersAttr;-><init>([SLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 212
    .end local v11           #count:I
    .end local v17           #i:I
    .end local v22           #numbers:[S
    .restart local p3
    :cond_4
    const-string v29, "LocalVariableTable"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 214
    move-object/from16 v0, p3

    check-cast v0, Lgnu/bytecode/CodeAttr;

    move-object v8, v0

    .line 215
    .restart local v8       #code:Lgnu/bytecode/CodeAttr;
    new-instance v5, Lgnu/bytecode/LocalVarsAttr;

    invoke-direct {v5, v8}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 216
    .local v5, attr:Lgnu/bytecode/LocalVarsAttr;
    invoke-virtual {v5}, Lgnu/bytecode/LocalVarsAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v20

    .line 217
    .local v20, method:Lgnu/bytecode/Method;
    move-object v0, v5

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    move-object/from16 v29, v0

    if-nez v29, :cond_5

    .line 218
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v5

    iput-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 219
    :cond_5
    move-object v0, v5

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    move-object/from16 v26, v0

    .line 220
    .local v26, scope:Lgnu/bytecode/Scope;
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    .line 221
    new-instance v29, Lgnu/bytecode/Label;

    move-object v0, v8

    iget v0, v0, Lgnu/bytecode/CodeAttr;->PC:I

    move/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Lgnu/bytecode/Label;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    iput-object v0, v1, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 222
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v10

    .line 223
    .local v10, constants:Lgnu/bytecode/ConstantPool;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v11

    .line 224
    .restart local v11       #count:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v25, v0

    .line 225
    .local v25, prev_start:I
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v24, v0

    .line 226
    .local v24, prev_end:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_b

    .line 228
    new-instance v28, Lgnu/bytecode/Variable;

    invoke-direct/range {v28 .. v28}, Lgnu/bytecode/Variable;-><init>()V

    .line 229
    .local v28, var:Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v27

    .line 230
    .restart local v27       #start_pc:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    add-int v13, v27, v29

    .line 232
    .restart local v13       #end_pc:I
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move v0, v13

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 235
    :cond_7
    :goto_4
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v29, v0

    move v0, v13

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    .line 237
    :cond_8
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object/from16 v26, v0

    goto :goto_4

    .line 238
    :cond_9
    move-object/from16 v23, v26

    .line 239
    .local v23, parent:Lgnu/bytecode/Scope;
    new-instance v26, Lgnu/bytecode/Scope;

    .end local v26           #scope:Lgnu/bytecode/Scope;
    new-instance v29, Lgnu/bytecode/Label;

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(I)V

    new-instance v30, Lgnu/bytecode/Label;

    move-object/from16 v0, v30

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/Label;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/Scope;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 240
    .restart local v26       #scope:Lgnu/bytecode/Scope;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 241
    move/from16 v25, v27

    .line 242
    move/from16 v24, v13

    .line 244
    .end local v23           #parent:Lgnu/bytecode/Scope;
    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Variable;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Variable;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lgnu/bytecode/Variable;->offset:I

    .line 226
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .end local v13           #end_pc:I
    .end local v27           #start_pc:I
    .end local v28           #var:Lgnu/bytecode/Variable;
    :cond_b
    move-object/from16 v29, v5

    .line 249
    goto/16 :goto_0

    .line 251
    .end local v5           #attr:Lgnu/bytecode/LocalVarsAttr;
    .end local v8           #code:Lgnu/bytecode/CodeAttr;
    .end local v10           #constants:Lgnu/bytecode/ConstantPool;
    .end local v11           #count:I
    .end local v17           #i:I
    .end local v20           #method:Lgnu/bytecode/Method;
    .end local v24           #prev_end:I
    .end local v25           #prev_start:I
    .end local v26           #scope:Lgnu/bytecode/Scope;
    :cond_c
    const-string v29, "Signature"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/Member;

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 253
    new-instance v29, Lgnu/bytecode/SignatureAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v30

    check-cast p3, Lgnu/bytecode/Member;

    .end local p3
    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/SignatureAttr;-><init>(ILgnu/bytecode/Member;)V

    goto/16 :goto_0

    .line 255
    .restart local p3
    :cond_d
    const-string v29, "StackMapTable"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/CodeAttr;

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 257
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v11

    .line 258
    .restart local v11       #count:I
    const/16 v29, 0x2

    sub-int v29, p2, v29

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object v12, v0

    .line 259
    .local v12, data:[B
    const/16 v29, 0x0

    const/16 v30, 0x2

    sub-int v30, p2, v30

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 260
    new-instance v29, Lgnu/bytecode/StackMapTableAttr;

    check-cast p3, Lgnu/bytecode/CodeAttr;

    .end local p3
    move-object/from16 v0, v29

    move v1, v11

    move-object v2, v12

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/StackMapTableAttr;-><init>(I[BLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_0

    .line 262
    .end local v11           #count:I
    .end local v12           #data:[B
    .restart local p3
    :cond_e
    const-string v29, "ConstantValue"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/Field;

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 264
    new-instance v29, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v30

    invoke-direct/range {v29 .. v30}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    goto/16 :goto_0

    .line 266
    :cond_f
    const-string v29, "InnerClasses"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v29, v0

    if-eqz v29, :cond_11

    .line 268
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v29

    mul-int/lit8 v11, v29, 0x4

    .line 269
    .restart local v11       #count:I
    new-array v12, v11, [S

    .line 270
    .local v12, data:[S
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_10

    .line 272
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v29

    aput-short v29, v12, v17

    .line 270
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 274
    :cond_10
    new-instance v29, Lgnu/bytecode/InnerClassesAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    .end local p3
    move-object/from16 v0, v29

    move-object v1, v12

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/InnerClassesAttr;-><init>([SLgnu/bytecode/ClassType;)V

    goto/16 :goto_0

    .line 276
    .end local v11           #count:I
    .end local v12           #data:[S
    .end local v17           #i:I
    .restart local p3
    :cond_11
    const-string v29, "EnclosingMethod"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 278
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    .line 279
    .local v7, class_index:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v21

    .line 280
    .local v21, method_index:I
    new-instance v29, Lgnu/bytecode/EnclosingMethodAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    .end local p3
    move-object/from16 v0, v29

    move v1, v7

    move/from16 v2, v21

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(IILgnu/bytecode/ClassType;)V

    goto/16 :goto_0

    .line 282
    .end local v7           #class_index:I
    .end local v21           #method_index:I
    .restart local p3
    :cond_12
    const-string v29, "Exceptions"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/Method;

    move/from16 v29, v0

    if-eqz v29, :cond_14

    .line 284
    move-object/from16 v0, p3

    check-cast v0, Lgnu/bytecode/Method;

    move-object/from16 v19, v0

    .line 285
    .local v19, meth:Lgnu/bytecode/Method;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v11

    .line 286
    .restart local v11       #count:I
    new-array v15, v11, [S

    .line 287
    .local v15, exn_indices:[S
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_6
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_13

    .line 288
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v29

    aput-short v29, v15, v17

    .line 287
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 289
    :cond_13
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Lgnu/bytecode/Method;->setExceptions([S)V

    .line 290
    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/Method;->getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;

    move-result-object v29

    goto/16 :goto_0

    .line 292
    .end local v11           #count:I
    .end local v15           #exn_indices:[S
    .end local v17           #i:I
    .end local v19           #meth:Lgnu/bytecode/Method;
    :cond_14
    const-string v29, "SourceDebugExtension"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    move/from16 v29, v0

    if-eqz v29, :cond_15

    .line 294
    new-instance v5, Lgnu/bytecode/SourceDebugExtAttr;

    check-cast p3, Lgnu/bytecode/ClassType;

    .end local p3
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 296
    .local v5, attr:Lgnu/bytecode/SourceDebugExtAttr;
    move/from16 v0, p2

    new-array v0, v0, [B

    move-object v12, v0

    .line 297
    .local v12, data:[B
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v29

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 298
    iput-object v12, v5, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    .line 299
    move/from16 v0, p2

    move-object v1, v5

    iput v0, v1, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    move-object/from16 v29, v5

    .line 300
    goto/16 :goto_0

    .line 304
    .end local v5           #attr:Lgnu/bytecode/SourceDebugExtAttr;
    .end local v12           #data:[B
    .restart local p3
    :cond_15
    move/from16 v0, p2

    new-array v0, v0, [B

    move-object v12, v0

    .line 305
    .restart local v12       #data:[B
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v29

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 306
    new-instance v29, Lgnu/bytecode/MiscAttr;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public readAttributes(Lgnu/bytecode/AttrContainer;)I
    .locals 10
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 114
    .local v1, count:I
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v4

    .line 115
    .local v4, last:Lgnu/bytecode/Attribute;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 117
    if-eqz v4, :cond_0

    .line 121
    :goto_1
    invoke-virtual {v4}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v7

    .line 122
    .local v7, next:Lgnu/bytecode/Attribute;
    if-nez v7, :cond_3

    .line 128
    .end local v7           #next:Lgnu/bytecode/Attribute;
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 129
    .local v3, index:I
    iget-object v8, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v8, v8, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    .line 131
    .local v6, nameConstant:Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v5

    .line 132
    .local v5, length:I
    invoke-virtual {v6}, Lgnu/bytecode/CpoolUtf8;->intern()V

    .line 133
    iget-object v8, v6, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p0, v8, v5, p1}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 134
    .local v0, attr:Lgnu/bytecode/Attribute;
    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Lgnu/bytecode/Attribute;->getNameIndex()I

    move-result v8

    if-nez v8, :cond_1

    .line 137
    invoke-virtual {v0, v3}, Lgnu/bytecode/Attribute;->setNameIndex(I)V

    .line 138
    :cond_1
    if-nez v4, :cond_4

    .line 139
    invoke-interface {p1, v0}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 149
    :goto_2
    move-object v4, v0

    .line 115
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0           #attr:Lgnu/bytecode/Attribute;
    .end local v3           #index:I
    .end local v5           #length:I
    .end local v6           #nameConstant:Lgnu/bytecode/CpoolUtf8;
    .restart local v7       #next:Lgnu/bytecode/Attribute;
    :cond_3
    move-object v4, v7

    .line 125
    goto :goto_1

    .line 142
    .end local v7           #next:Lgnu/bytecode/Attribute;
    .restart local v0       #attr:Lgnu/bytecode/Attribute;
    .restart local v3       #index:I
    .restart local v5       #length:I
    .restart local v6       #nameConstant:Lgnu/bytecode/CpoolUtf8;
    :cond_4
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v8

    if-ne v8, v0, :cond_5

    .line 144
    invoke-virtual {v0}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v8

    invoke-interface {p1, v8}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 145
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 147
    :cond_5
    invoke-virtual {v4, v0}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    goto :goto_2

    .line 152
    .end local v0           #attr:Lgnu/bytecode/Attribute;
    .end local v3           #index:I
    .end local v5           #length:I
    .end local v6           #nameConstant:Lgnu/bytecode/CpoolUtf8;
    :cond_6
    return v1
.end method

.method public readClassInfo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x2f

    const/16 v9, 0x2e

    const/4 v8, 0x7

    .line 72
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lgnu/bytecode/ClassType;->access_flags:I

    .line 76
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 77
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v6, v6, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v5, v6, v8}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolClass;

    .line 79
    .local v0, clas:Lgnu/bytecode/CpoolClass;
    iget-object v5, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 80
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 81
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "L"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    iput v6, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 84
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v5, v5, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v5, :cond_0

    .line 85
    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    check-cast v5, Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v5}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 95
    .local v3, nInterfaces:I
    if-lez v3, :cond_1

    .line 97
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v6, v3, [Lgnu/bytecode/ClassType;

    iput-object v6, v5, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 98
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v6, v3, [I

    iput-object v6, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 101
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 102
    .local v2, index:I
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aput v2, v5, v1

    .line 103
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v5, v2, v8}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .end local v0           #clas:Lgnu/bytecode/CpoolClass;
    check-cast v0, Lgnu/bytecode/CpoolClass;

    .line 105
    .restart local v0       #clas:Lgnu/bytecode/CpoolClass;
    iget-object v5, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v5, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 106
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v6

    aput-object v6, v5, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #nInterfaces:I
    :cond_0
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v5, v5, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v6, v6, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v5, v6, v8}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .end local v0           #clas:Lgnu/bytecode/CpoolClass;
    check-cast v0, Lgnu/bytecode/CpoolClass;

    .line 90
    .restart local v0       #clas:Lgnu/bytecode/CpoolClass;
    iget-object v5, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v4, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->setSuper(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .restart local v3       #nInterfaces:I
    :cond_1
    return-void
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0, p0}, Lgnu/bytecode/ConstantPool;-><init>(Ljava/io/DataInputStream;)V

    return-object v0
.end method

.method public readFields()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 313
    .local v5, nFields:I
    iget-object v7, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v7, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 314
    .local v0, constants:Lgnu/bytecode/ConstantPool;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 317
    .local v2, flags:I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    .line 318
    .local v6, nameIndex:I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 319
    .local v1, descriptorIndex:I
    iget-object v7, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->addField()Lgnu/bytecode/Field;

    move-result-object v3

    .line 320
    .local v3, fld:Lgnu/bytecode/Field;
    invoke-virtual {v3, v6, v0}, Lgnu/bytecode/Field;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 321
    invoke-virtual {v3, v1, v0}, Lgnu/bytecode/Field;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 322
    iput v2, v3, Lgnu/bytecode/Field;->flags:I

    .line 323
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 325
    .end local v1           #descriptorIndex:I
    .end local v2           #flags:I
    .end local v3           #fld:Lgnu/bytecode/Field;
    .end local v6           #nameIndex:I
    :cond_0
    return-void
.end method

.method public readFormatVersion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 61
    .local v1, minor:I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 62
    .local v0, major:I
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/high16 v3, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v3, v1

    iput v3, v2, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 63
    return-void
.end method

.method public readHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v0

    .line 52
    .local v0, magic:I
    const v1, -0x35014542

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFormatVersion()V

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readMethods()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 330
    .local v4, nMethods:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 332
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 333
    .local v1, flags:I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 334
    .local v5, nameIndex:I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 335
    .local v0, descriptorIndex:I
    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 336
    .local v3, meth:Lgnu/bytecode/Method;
    invoke-virtual {v3, v5}, Lgnu/bytecode/Method;->setName(I)V

    .line 337
    invoke-virtual {v3, v0}, Lgnu/bytecode/Method;->setSignature(I)V

    .line 338
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v0           #descriptorIndex:I
    .end local v1           #flags:I
    .end local v3           #meth:Lgnu/bytecode/Method;
    .end local v5           #nameIndex:I
    :cond_0
    return-void
.end method

.method public final skipAttribute(I)V
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, read:I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 161
    sub-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lgnu/bytecode/ClassFileInput;->skip(J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 162
    .local v1, skipped:I
    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->read()I

    move-result v2

    if-gez v2, :cond_0

    .line 165
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF while reading class files attributes"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    const/4 v1, 0x1

    .line 169
    :cond_1
    add-int/2addr v0, v1

    .line 170
    goto :goto_0

    .line 171
    .end local v1           #skipped:I
    :cond_2
    return-void
.end method
