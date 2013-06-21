.class final Lorg/mozilla/classfile/ConstantPool;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# static fields
.field static final CONSTANT_Class:B = 0x7t

.field static final CONSTANT_Double:B = 0x6t

.field static final CONSTANT_Fieldref:B = 0x9t

.field static final CONSTANT_Float:B = 0x4t

.field static final CONSTANT_Integer:B = 0x3t

.field static final CONSTANT_InterfaceMethodref:B = 0xbt

.field static final CONSTANT_Long:B = 0x5t

.field static final CONSTANT_Methodref:B = 0xat

.field static final CONSTANT_NameAndType:B = 0xct

.field static final CONSTANT_String:B = 0x8t

.field static final CONSTANT_Utf8:B = 0x1t

.field private static final ConstantPoolSize:I = 0x100

.field private static final MAX_UTF_ENCODING_SIZE:I = 0xffff


# instance fields
.field private cfw:Lorg/mozilla/classfile/ClassFileWriter;

.field private itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsConstantData:Lorg/mozilla/javascript/UintMap;

.field private itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

.field private itsPool:[B

.field private itsPoolTypes:Lorg/mozilla/javascript/UintMap;

.field private itsStringConstHash:Lorg/mozilla/javascript/UintMap;

.field private itsTop:I

.field private itsTopIndex:I

.field private itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 1
    .parameter "cfw"

    .prologue
    .line 4398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4715
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    .line 4716
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    .line 4717
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    .line 4718
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    .line 4719
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    .line 4723
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    .line 4724
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    .line 4399
    iput-object p1, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    .line 4400
    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4401
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 4402
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4403
    return-void
.end method

.method private addNameAndType(Ljava/lang/String;Ljava/lang/String;)S
    .locals 6
    .parameter "name"
    .parameter "type"

    .prologue
    const/16 v5, 0xc

    .line 4585
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    .line 4586
    .local v0, nameIndex:S
    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 4587
    .local v1, typeIndex:S
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4588
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v5, v2, v3

    .line 4589
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4590
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4591
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {v2, v3, v5}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4592
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v2, v2

    return v2
.end method


# virtual methods
.method addClass(Ljava/lang/String;)S
    .locals 7
    .parameter "className"

    .prologue
    const/4 v6, 0x7

    const/4 v4, -0x1

    .line 4597
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, p1, v4}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    .line 4598
    .local v1, theIndex:I
    if-ne v1, v4, :cond_1

    .line 4599
    move-object v0, p1

    .line 4600
    .local v0, slashed:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 4601
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4602
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v0, v4}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    .line 4603
    if-eq v1, v4, :cond_0

    .line 4604
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 4607
    :cond_0
    if-ne v1, v4, :cond_1

    .line 4608
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 4609
    .local v2, utf8Index:I
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4610
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v6, v3, v4

    .line 4611
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4612
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .end local v1           #theIndex:I
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4613
    .restart local v1       #theIndex:I
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 4614
    if-eq p1, v0, :cond_1

    .line 4615
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsClassHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 4619
    .end local v0           #slashed:Ljava/lang/String;
    .end local v2           #utf8Index:I
    :cond_1
    invoke-virtual {p0, v1, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 4620
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v3, v1, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4621
    int-to-short v3, v1

    return v3
.end method

.method addConstant(D)I
    .locals 7
    .parameter "k"

    .prologue
    const/4 v6, 0x6

    .line 4464
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4465
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v6, v3, v4

    .line 4466
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 4467
    .local v0, bits:J
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v1, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result v3

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4468
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4469
    .local v2, index:I
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4470
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v3, v2, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4471
    return v2
.end method

.method addConstant(F)I
    .locals 5
    .parameter "k"

    .prologue
    const/4 v4, 0x4

    .line 4454
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4455
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v4, v1, v2

    .line 4456
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 4457
    .local v0, bits:I
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4458
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {v1, v2, v4}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4459
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    return v1
.end method

.method addConstant(I)I
    .locals 4
    .parameter "k"

    .prologue
    const/4 v3, 0x3

    .line 4434
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4435
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v3, v0, v1

    .line 4436
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    iput v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4437
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4438
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v0, v0

    return v0
.end method

.method addConstant(J)I
    .locals 5
    .parameter "k"

    .prologue
    const/4 v4, 0x5

    .line 4443
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4444
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v4, v1, v2

    .line 4445
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {p1, p2, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt64(J[BI)I

    move-result v1

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4446
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4447
    .local v0, index:I
    iget v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4448
    iget-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v1, v0, v4}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4449
    return v0
.end method

.method addConstant(Ljava/lang/String;)I
    .locals 6
    .parameter "k"

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    .line 4476
    const v2, 0xffff

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    and-int v1, v2, v3

    .line 4477
    .local v1, utf8Index:I
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v2, v1, v4}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    .line 4478
    .local v0, theIndex:I
    if-ne v0, v4, :cond_0

    .line 4479
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .end local v0           #theIndex:I
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4480
    .restart local v0       #theIndex:I
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4481
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v5, v2, v3

    .line 4482
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v1, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v2

    iput v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4483
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsStringConstHash:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v2, v1, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4485
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v2, v0, v5}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4486
    return v0
.end method

.method addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 8
    .parameter "className"
    .parameter "fieldName"
    .parameter "fieldType"

    .prologue
    const/16 v7, 0x9

    const/4 v5, -0x1

    .line 4626
    new-instance v2, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v2, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4629
    .local v2, ref:Lorg/mozilla/classfile/FieldOrMethodRef;
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2, v5}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v3

    .line 4630
    .local v3, theIndex:I
    if-ne v3, v5, :cond_0

    .line 4631
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 4632
    .local v1, ntIndex:S
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    .line 4633
    .local v0, classIndex:S
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4634
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v7, v4, v5

    .line 4635
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v4

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4636
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v4

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4637
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .end local v3           #theIndex:I
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4638
    .restart local v3       #theIndex:I
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsFieldRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 4640
    .end local v0           #classIndex:S
    .end local v1           #ntIndex:S
    :cond_0
    invoke-virtual {p0, v3, v2}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 4641
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v4, v3, v7}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4642
    int-to-short v4, v3

    return v4
.end method

.method addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 7
    .parameter "className"
    .parameter "methodName"
    .parameter "methodType"

    .prologue
    const/16 v6, 0xb

    .line 4670
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 4671
    .local v1, ntIndex:S
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    .line 4672
    .local v0, classIndex:S
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4673
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v6, v3, v4

    .line 4674
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4675
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v1, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v3

    iput v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4676
    new-instance v2, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v2, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4678
    .local v2, r:Lorg/mozilla/classfile/FieldOrMethodRef;
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {p0, v3, v2}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 4679
    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    invoke-virtual {v3, v4, v6}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4680
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v3, v3

    return v3
.end method

.method addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S
    .locals 8
    .parameter "className"
    .parameter "methodName"
    .parameter "methodType"

    .prologue
    const/16 v7, 0xa

    const/4 v5, -0x1

    .line 4648
    new-instance v2, Lorg/mozilla/classfile/FieldOrMethodRef;

    invoke-direct {v2, p1, p2, p3}, Lorg/mozilla/classfile/FieldOrMethodRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4651
    .local v2, ref:Lorg/mozilla/classfile/FieldOrMethodRef;
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2, v5}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v3

    .line 4652
    .local v3, theIndex:I
    if-ne v3, v5, :cond_0

    .line 4653
    invoke-direct {p0, p2, p3}, Lorg/mozilla/classfile/ConstantPool;->addNameAndType(Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 4654
    .local v1, ntIndex:S
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    .line 4655
    .local v0, classIndex:S
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4656
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    aput-byte v7, v4, v5

    .line 4657
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v4

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4658
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v5, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v4

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4659
    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .end local v3           #theIndex:I
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4660
    .restart local v3       #theIndex:I
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsMethodRefHash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4, v2, v3}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 4662
    .end local v0           #classIndex:S
    .end local v1           #ntIndex:S
    :cond_0
    invoke-virtual {p0, v3, v2}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 4663
    iget-object v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v4, v3, v7}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4664
    int-to-short v4, v3

    return v4
.end method

.method addUtf8(Ljava/lang/String;)S
    .locals 14
    .parameter "k"

    .prologue
    const v13, 0xffff

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 4528
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v9, p1, v10}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v4

    .line 4529
    .local v4, theIndex:I
    if-ne v4, v10, :cond_5

    .line 4530
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4532
    .local v3, strLen:I
    if-le v3, v13, :cond_0

    .line 4533
    const/4 v5, 0x1

    .line 4574
    .local v5, tooBigString:Z
    :goto_0
    if-eqz v5, :cond_5

    .line 4575
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Too big string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4535
    .end local v5           #tooBigString:Z
    :cond_0
    const/4 v5, 0x0

    .line 4538
    .restart local v5       #tooBigString:Z
    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 4539
    iget v6, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4541
    .local v6, top:I
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6           #top:I
    .local v7, top:I
    aput-byte v12, v9, v6

    .line 4542
    add-int/lit8 v6, v7, 0x2

    .line 4544
    .end local v7           #top:I
    .restart local v6       #top:I
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->cfw:Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->getCharBuffer(I)[C

    move-result-object v1

    .line 4545
    .local v1, chars:[C
    invoke-virtual {p1, v11, v3, v1, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 4547
    const/4 v2, 0x0

    .local v2, i:I
    move v7, v6

    .end local v6           #top:I
    .restart local v7       #top:I
    :goto_1
    if-eq v2, v3, :cond_3

    .line 4548
    aget-char v0, v1, v2

    .line 4549
    .local v0, c:I
    if-eqz v0, :cond_1

    const/16 v9, 0x7f

    if-gt v0, v9, :cond_1

    .line 4550
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #top:I
    .restart local v6       #top:I
    int-to-byte v10, v0

    aput-byte v10, v9, v7

    .line 4547
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #top:I
    .restart local v7       #top:I
    goto :goto_1

    .line 4551
    :cond_1
    const/16 v9, 0x7ff

    if-le v0, v9, :cond_2

    .line 4552
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #top:I
    .restart local v6       #top:I
    shr-int/lit8 v10, v0, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    .line 4553
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6           #top:I
    .restart local v7       #top:I
    shr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    .line 4554
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #top:I
    .restart local v6       #top:I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    goto :goto_2

    .line 4556
    .end local v6           #top:I
    .restart local v7       #top:I
    :cond_2
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #top:I
    .restart local v6       #top:I
    shr-int/lit8 v10, v0, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    .line 4557
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    add-int/lit8 v7, v6, 0x1

    .end local v6           #top:I
    .restart local v7       #top:I
    and-int/lit8 v10, v0, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v9, v6

    move v6, v7

    .end local v7           #top:I
    .restart local v6       #top:I
    goto :goto_2

    .line 4561
    .end local v0           #c:I
    .end local v6           #top:I
    .restart local v7       #top:I
    :cond_3
    iget v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x2

    sub-int v8, v7, v9

    .line 4562
    .local v8, utfLen:I
    if-le v8, v13, :cond_4

    .line 4563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 4566
    :cond_4
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v10, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v10, v10, 0x1

    ushr-int/lit8 v11, v8, 0x8

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 4567
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v10, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v10, v10, 0x2

    int-to-byte v11, v8

    aput-byte v11, v9, v10

    .line 4569
    iput v7, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 4570
    iget v4, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .end local v4           #theIndex:I
    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 4571
    .restart local v4       #theIndex:I
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsUtf8Hash:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v9, p1, v4}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 4578
    .end local v1           #chars:[C
    .end local v2           #i:I
    .end local v3           #strLen:I
    .end local v5           #tooBigString:Z
    .end local v7           #top:I
    .end local v8           #utfLen:I
    :cond_5
    invoke-virtual {p0, v4, p1}, Lorg/mozilla/classfile/ConstantPool;->setConstantData(ILjava/lang/Object;)V

    .line 4579
    iget-object v9, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v9, v4, v12}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 4580
    int-to-short v9, v4

    return v9
.end method

.method ensure(I)V
    .locals 5
    .parameter "howMuch"

    .prologue
    const/4 v4, 0x0

    .line 4700
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 4701
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 4702
    .local v0, newCapacity:I
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/2addr v2, p1

    if-le v2, v0, :cond_0

    .line 4703
    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int v0, v2, p1

    .line 4705
    :cond_0
    new-array v1, v0, [B

    .line 4706
    .local v1, tmp:[B
    iget-object v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    iget v3, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4707
    iput-object v1, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 4709
    .end local v0           #newCapacity:I
    .end local v1           #tmp:[B
    :cond_1
    return-void
.end method

.method getConstantData(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 4685
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/UintMap;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getConstantType(I)B
    .locals 2
    .parameter "index"

    .prologue
    .line 4695
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Lorg/mozilla/javascript/UintMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method getUtfEncodingLimit(Ljava/lang/String;II)I
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4506
    sub-int v3, p3, p2

    mul-int/lit8 v3, v3, 0x3

    const v4, 0xffff

    if-gt v3, v4, :cond_0

    move v3, p3

    .line 4523
    :goto_0
    return v3

    .line 4509
    :cond_0
    const v2, 0xffff

    .line 4510
    .local v2, limit:I
    move v1, p2

    .local v1, i:I
    :goto_1
    if-eq v1, p3, :cond_4

    .line 4511
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4512
    .local v0, c:I
    if-eqz v0, :cond_1

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_1

    .line 4513
    add-int/lit8 v2, v2, -0x1

    .line 4519
    :goto_2
    if-gez v2, :cond_3

    move v3, v1

    .line 4520
    goto :goto_0

    .line 4514
    :cond_1
    const/16 v3, 0x7ff

    if-ge v0, v3, :cond_2

    .line 4515
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 4517
    :cond_2
    add-int/lit8 v2, v2, -0x3

    goto :goto_2

    .line 4510
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #c:I
    :cond_4
    move v3, p3

    .line 4523
    goto :goto_0
.end method

.method getWriteSize()I
    .locals 1

    .prologue
    .line 4429
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method isUnderUtfEncodingLimit(Ljava/lang/String;)Z
    .locals 5
    .parameter "s"

    .prologue
    const v4, 0xffff

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4491
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 4492
    .local v0, strLen:I
    mul-int/lit8 v1, v0, 0x3

    if-gt v1, v4, :cond_0

    move v1, v3

    .line 4497
    :goto_0
    return v1

    .line 4494
    :cond_0
    if-le v0, v4, :cond_1

    move v1, v2

    .line 4495
    goto :goto_0

    .line 4497
    :cond_1
    invoke-virtual {p0, p1, v2, v0}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v1

    if-ne v0, v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method setConstantData(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "data"

    .prologue
    .line 4690
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsConstantData:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(ILjava/lang/Object;)V

    .line 4691
    return-void
.end method

.method write([BI)I
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 4421
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    int-to-short v0, v0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4422
    iget-object v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4423
    iget v0, p0, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    add-int/2addr p2, v0

    .line 4424
    return p2
.end method
