.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/Attribute;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z


# instance fields
.field countLocals:I

.field countStack:I

.field data:[B

.field dataLength:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "StackMapTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 26
    return-void
.end method

.method public constructor <init>(I[BLgnu/bytecode/CodeAttr;)V
    .locals 1
    .parameter "numEntries"
    .parameter "data"
    .parameter "code"

    .prologue
    .line 31
    const-string v0, "StackMapTable"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 32
    invoke-virtual {p0, p3}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 33
    iput p1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 34
    iput-object p2, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    .line 35
    array-length v0, p2

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    .line 36
    return-void
.end method

.method private put1(I)V
    .locals 4
    .parameter "val"

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    if-nez v1, :cond_1

    .line 66
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    .line 73
    :cond_0
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    iget v2, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 74
    return-void

    .line 67
    :cond_1
    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    iget-object v2, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 70
    .local v0, tmp:[B
    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    iget v2, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    goto :goto_0
.end method

.method private put2(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 78
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 79
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 80
    return-void
.end method

.method private put2(II)V
    .locals 3
    .parameter "offset"
    .parameter "val"

    .prologue
    .line 84
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 85
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 86
    return-void
.end method

.method static reallocBuffer([II)[I
    .locals 3
    .parameter "buffer"
    .parameter "needed"

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p0, :cond_1

    .line 300
    add-int/lit8 v1, p1, 0xa

    new-array p0, v1, [I

    .line 307
    :cond_0
    :goto_0
    return-object p0

    .line 301
    :cond_1
    array-length v1, p0

    if-le p1, v1, :cond_0

    .line 303
    add-int/lit8 v1, p1, 0xa

    new-array v0, v1, [I

    .line 304
    .local v0, tmp:[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    move-object p0, v0

    goto :goto_0
.end method

.method private u1(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 55
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private u2(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .locals 25
    .parameter "label"
    .parameter "code"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move v14, v0

    .line 143
    .local v14, oldDL:I
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/16 v22, 0x1

    sub-int v13, v21, v22

    .line 144
    .local v13, offset_delta:I
    const/4 v11, 0x0

    .line 145
    .local v11, matchingLocals:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v16, v0

    .line 146
    .local v16, rawLocalsCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v21, v21, v16

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 149
    .local v19, tmp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 152
    .end local v19           #tmp:[I
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v17, v0

    .line 153
    .local v17, rawStackCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v21, v21, v17

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 156
    .restart local v19       #tmp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 159
    .end local v19           #tmp:[I
    :cond_1
    const/16 v20, 0x0

    .line 160
    .local v20, unchangedLocals:I
    const/4 v5, 0x0

    .line 161
    .local v5, curLocalsCount:I
    const/4 v9, 0x0

    .local v9, i:I
    move v6, v5

    .end local v5           #curLocalsCount:I
    .local v6, curLocalsCount:I
    :goto_0
    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    aget v15, v21, v6

    .line 164
    .local v15, prevType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 166
    .local v12, nextType:I
    if-ne v15, v12, :cond_2

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 167
    add-int/lit8 v20, v6, 0x1

    .line 168
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #curLocalsCount:I
    .restart local v5       #curLocalsCount:I
    aput v12, v21, v6

    .line 169
    const/16 v21, 0x3

    move v0, v12

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    const/16 v21, 0x4

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 170
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 161
    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #curLocalsCount:I
    .restart local v6       #curLocalsCount:I
    goto :goto_0

    .line 172
    .end local v12           #nextType:I
    .end local v15           #prevType:I
    :cond_5
    const/4 v7, 0x0

    .line 173
    .local v7, curStackCount:I
    const/4 v9, 0x0

    move v8, v7

    .end local v7           #curStackCount:I
    .local v8, curStackCount:I
    :goto_1
    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    aget v15, v21, v8

    .line 176
    .restart local v15       #prevType:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    aget-object v18, v21, v9

    .line 177
    .local v18, t:Lgnu/bytecode/Type;
    sget-object v21, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 178
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    move-object/from16 v21, v0

    add-int/lit8 v9, v9, 0x1

    aget-object v18, v21, v9

    .line 179
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 180
    .restart local v12       #nextType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8           #curStackCount:I
    .restart local v7       #curStackCount:I
    aput v12, v21, v8

    .line 173
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #curStackCount:I
    .restart local v8       #curStackCount:I
    goto :goto_1

    .line 182
    .end local v12           #nextType:I
    .end local v15           #prevType:I
    .end local v18           #t:Lgnu/bytecode/Type;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v21, v0

    sub-int v10, v6, v21

    .line 183
    .local v10, localsDelta:I
    sget-boolean v21, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v21, :cond_c

    if-nez v10, :cond_c

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    move v0, v8

    move/from16 v1, v21

    if-gt v0, v1, :cond_c

    .line 186
    if-nez v8, :cond_a

    .line 188
    const/16 v21, 0x3f

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    .line 189
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 236
    :cond_8
    :goto_2
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 237
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 238
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/bytecode/Label;->position:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 240
    return-void

    .line 192
    :cond_9
    const/16 v21, 0xfb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 193
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_2

    .line 198
    :cond_a
    const/16 v21, 0x3f

    move v0, v13

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 199
    add-int/lit8 v21, v13, 0x40

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 205
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_2

    .line 202
    :cond_b
    const/16 v21, 0xf7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 203
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_3

    .line 208
    :cond_c
    sget-boolean v21, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v21, :cond_d

    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_d

    const/16 v21, -0x3

    move v0, v10

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 213
    move v0, v10

    add-int/lit16 v0, v0, 0xfb

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 214
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_2

    .line 216
    :cond_d
    sget-boolean v21, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v21, :cond_e

    if-nez v8, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/16 v21, 0x3

    move v0, v10

    move/from16 v1, v21

    if-gt v0, v1, :cond_e

    .line 220
    move v0, v10

    add-int/lit16 v0, v0, 0xfb

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 221
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 222
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_8

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    add-int v22, v20, v9

    aget v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 227
    :cond_e
    const/16 v21, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 228
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 229
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 230
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_f

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    move-object/from16 v21, v0

    aget v21, v21, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 230
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 232
    :cond_f
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 233
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_8

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    move-object/from16 v21, v0

    aget v21, v21, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 233
    add-int/lit8 v9, v9, 0x1

    goto :goto_6
.end method

.method emitVerificationType(I)V
    .locals 2
    .parameter "encoding"

    .prologue
    .line 90
    and-int/lit16 v0, p1, 0xff

    .line 91
    .local v0, tag:I
    invoke-direct {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 92
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 93
    shr-int/lit8 v1, p1, 0x8

    invoke-direct {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 94
    :cond_0
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .locals 5
    .parameter "type"
    .parameter "code"

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p1, :cond_0

    move v3, v4

    .line 132
    :goto_0
    return v3

    .line 101
    :cond_0
    instance-of v3, p1, Lgnu/bytecode/UninitializedType;

    if-eqz v3, :cond_2

    .line 103
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/UninitializedType;

    move-object v2, v0

    .line 104
    .local v2, utype:Lgnu/bytecode/UninitializedType;
    iget-object v1, v2, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 105
    .local v1, label:Lgnu/bytecode/Label;
    if-nez v1, :cond_1

    .line 106
    const/4 v3, 0x6

    goto :goto_0

    .line 108
    :cond_1
    iget v3, v1, Lgnu/bytecode/Label;->position:I

    shl-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 112
    .end local v1           #label:Lgnu/bytecode/Label;
    .end local v2           #utype:Lgnu/bytecode/UninitializedType;
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 113
    instance-of v3, p1, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_3

    .line 115
    iget-object v3, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v3, v4

    .line 126
    goto :goto_0

    .line 118
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 120
    :sswitch_1
    const/4 v3, 0x4

    goto :goto_0

    .line 122
    :sswitch_2
    const/4 v3, 0x2

    goto :goto_0

    .line 124
    :sswitch_3
    const/4 v3, 0x3

    goto :goto_0

    .line 129
    :cond_3
    sget-object v3, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v3, :cond_4

    .line 130
    const/4 v3, 0x5

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ObjectType;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/CpoolClass;->index:I

    shl-int/lit8 v3, v3, 0x8

    or-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_3
        0x46 -> :sswitch_2
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method extractVerificationType(II)I
    .locals 2
    .parameter "startOffset"
    .parameter "tag"

    .prologue
    .line 289
    const/4 v1, 0x7

    if-eq p2, v1, :cond_0

    const/16 v1, 0x8

    if-ne p2, v1, :cond_1

    .line 291
    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    .line 292
    .local v0, value:I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p2, v1

    .line 294
    .end local v0           #value:I
    :cond_1
    return p2
.end method

.method extractVerificationTypes(III[I)I
    .locals 5
    .parameter "startOffset"
    .parameter "count"
    .parameter "startIndex"
    .parameter "buffer"

    .prologue
    .line 313
    move v1, p1

    .local v1, offset:I
    move v2, p3

    .line 314
    .end local p3
    .local v2, startIndex:I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 317
    iget v4, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v1, v4, :cond_0

    .line 318
    const/4 v0, -0x1

    .line 325
    .local v0, encoding:I
    :goto_1
    add-int/lit8 p3, v2, 0x1

    .end local v2           #startIndex:I
    .restart local p3
    aput v0, p4, v2

    move v2, p3

    .line 326
    .end local p3
    .restart local v2       #startIndex:I
    goto :goto_0

    .line 321
    .end local v0           #encoding:I
    :cond_0
    iget-object v4, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v3, v4, v1

    .line 322
    .local v3, tag:I
    invoke-virtual {p0, v1, v3}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v0

    .line 323
    .restart local v0       #encoding:I
    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v4, 0x3

    :goto_2
    add-int/2addr v1, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 327
    .end local v0           #encoding:I
    .end local v3           #tag:I
    :cond_3
    return v1
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .prologue
    .line 38
    iget-object p0, p0, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    .end local p0
    check-cast p0, Lgnu/bytecode/CodeAttr;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 21
    .parameter "dst"

    .prologue
    .line 366
    const-string v19, "Attribute \""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 368
    const-string v19, "\", length:"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 370
    const-string v19, ", number of entries: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 372
    const/4 v11, 0x0

    .line 373
    .local v11, ipos:I
    const/16 v17, -0x1

    .line 374
    .local v17, pc_offset:I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v13

    .line 375
    .local v13, method:Lgnu/bytecode/Method;
    const/4 v9, 0x0

    .line 376
    .local v9, encodedTypes:[I
    invoke-virtual {v13}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    :goto_0
    move-object v0, v13

    iget-object v0, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int v6, v19, v20

    .line 377
    .local v6, curLocals:I
    const/4 v7, 0x0

    .line 378
    .local v7, curStack:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    move/from16 v19, v0

    move v0, v10

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 382
    const/4 v10, -0x1

    .line 489
    :cond_0
    :goto_2
    return-void

    .line 376
    .end local v6           #curLocals:I
    .end local v7           #curStack:I
    .end local v10           #i:I
    :cond_1
    const/16 v19, 0x1

    goto :goto_0

    .line 385
    .restart local v6       #curLocals:I
    .restart local v7       #curStack:I
    .restart local v10       #i:I
    :cond_2
    add-int/lit8 v12, v11, 0x1

    .end local v11           #ipos:I
    .local v12, ipos:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v18

    .line 386
    .local v18, tag:I
    add-int/lit8 v17, v17, 0x1

    .line 387
    const/4 v8, -0x1

    .line 388
    .local v8, delta:I
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 389
    and-int/lit8 v19, v18, 0x3f

    add-int v17, v17, v19

    move v11, v12

    .line 401
    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    :goto_3
    const-string v19, "  offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 403
    const/16 v19, 0x3f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_5

    .line 405
    const-string v19, " - same_frame"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 406
    const/4 v7, 0x0

    .line 483
    :goto_4
    if-gez v11, :cond_10

    .line 485
    const-string v19, "<ERROR - missing data>"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 390
    .end local v11           #ipos:I
    .restart local v12       #ipos:I
    :cond_3
    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 392
    const/4 v11, -0x1

    .line 393
    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    goto :goto_2

    .line 397
    .end local v11           #ipos:I
    .restart local v12       #ipos:I
    :cond_4
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v8

    .line 398
    add-int v17, v17, v8

    .line 399
    add-int/lit8 v11, v12, 0x2

    .end local v12           #ipos:I
    .restart local v11       #ipos:I
    goto :goto_3

    .line 408
    :cond_5
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    const/16 v19, 0xf7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 410
    :cond_6
    const/16 v19, 0x7f

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    const-string v19, " - same_locals_1_stack_item_frame"

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 412
    const/16 v19, 0x1

    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 413
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v19

    move/from16 v3, v20

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 414
    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 415
    const/4 v7, 0x1

    goto :goto_4

    .line 410
    :cond_7
    const-string v19, " - same_locals_1_stack_item_frame_extended"

    goto :goto_5

    .line 417
    :cond_8
    const/16 v19, 0xf6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    .line 419
    const-string v19, " - tag reserved for future use - "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    goto/16 :goto_2

    .line 423
    :cond_9
    const/16 v19, 0xfa

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 425
    const/16 v19, 0xfb

    sub-int v5, v19, v18

    .line 426
    .local v5, count:I
    const-string v19, " - chop_frame - undefine "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 428
    const-string v19, " locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 429
    sub-int/2addr v6, v5

    .line 430
    const/4 v7, 0x0

    .line 431
    goto/16 :goto_4

    .line 432
    .end local v5           #count:I
    :cond_a
    const/16 v19, 0xfb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 434
    const-string v19, " - same_frame_extended"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 435
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 437
    :cond_b
    const/16 v19, 0xfe

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 439
    const/16 v19, 0xfb

    sub-int v5, v18, v19

    .line 440
    .restart local v5       #count:I
    const-string v19, " - append_frame - define "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 442
    const-string v19, " more locals"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 443
    add-int v19, v6, v5

    move-object v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 444
    move-object/from16 v0, p0

    move v1, v11

    move v2, v5

    move v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 445
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v6

    move v3, v5

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 446
    add-int/2addr v6, v5

    .line 447
    const/4 v7, 0x0

    .line 448
    goto/16 :goto_4

    .line 451
    .end local v5           #count:I
    :cond_c
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 453
    const/4 v11, -0x1

    .line 454
    goto/16 :goto_2

    .line 456
    :cond_d
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v15

    .line 457
    .local v15, num_locals:I
    add-int/lit8 v11, v11, 0x2

    .line 458
    const-string v19, " - full_frame.  Locals count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 460
    invoke-static {v9, v15}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 461
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v15

    move/from16 v3, v19

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 462
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move v3, v15

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 463
    move v6, v15

    .line 464
    add-int/lit8 v19, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    .line 466
    const/4 v11, -0x1

    .line 467
    goto/16 :goto_2

    .line 469
    :cond_e
    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v16

    .line 470
    .local v16, num_stack:I
    add-int/lit8 v11, v11, 0x2

    .line 471
    const-string v19, "    (end of locals)"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 473
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v14

    .line 474
    .local v14, nspaces:I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_f

    .line 475
    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_6

    .line 476
    :cond_f
    const-string v19, "       Stack count: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 478
    move-object v0, v9

    move/from16 v1, v16

    invoke-static {v0, v1}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v9

    .line 479
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v16

    move/from16 v3, v19

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v11

    .line 480
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v19

    move/from16 v3, v16

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 481
    move/from16 v7, v16

    goto/16 :goto_4

    .line 378
    .end local v14           #nspaces:I
    .end local v15           #num_locals:I
    .end local v16           #num_stack:I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .parameter "encoding"
    .parameter "dst"

    .prologue
    .line 244
    and-int/lit16 v2, p1, 0xff

    .line 245
    .local v2, tag:I
    packed-switch v2, :pswitch_data_0

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<bad verification type tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 248
    :pswitch_0
    const-string v3, "top/unavailable"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_1
    const-string v3, "integer"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_2
    const-string v3, "float"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_3
    const-string v3, "double"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_4
    const-string v3, "long"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_5
    const-string v3, "null"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_6
    const-string v3, "uninitialized this"

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_7
    shr-int/lit8 v0, p1, 0x8

    .line 270
    .local v0, index:I
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 271
    const/4 v3, 0x7

    invoke-virtual {p2, v0, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_0

    .line 274
    .end local v0           #index:I
    :pswitch_8
    shr-int/lit8 v1, p1, 0x8

    .line 275
    .local v1, offset:I
    const-string v3, "uninitialized object created at "

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_0

    .line 245
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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .parameter "encodings"
    .parameter "startIndex"
    .parameter "count"
    .parameter "dst"

    .prologue
    const/16 v5, 0x20

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, regno:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int v4, p2, p3

    if-ge v1, v4, :cond_5

    .line 340
    aget v0, p1, v1

    .line 341
    .local v0, encoding:I
    and-int/lit16 v3, v0, 0xff

    .line 342
    .local v3, tag:I
    if-lt v1, p2, :cond_0

    .line 344
    const-string v4, "  "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 345
    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    .line 353
    :goto_1
    invoke-virtual {p4, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 354
    const-string v4, ": "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, v0, p4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 356
    invoke-virtual {p4}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 358
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 359
    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 360
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 338
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_3
    const/16 v4, 0xa

    if-ge v2, v4, :cond_4

    .line 350
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 351
    :cond_4
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 362
    .end local v0           #encoding:I
    .end local v3           #tag:I
    :cond_5
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter "dstr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 50
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 51
    return-void
.end method
