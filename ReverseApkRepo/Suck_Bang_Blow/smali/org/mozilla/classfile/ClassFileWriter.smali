.class public Lorg/mozilla/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;,
        Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;
    }
.end annotation


# static fields
.field public static final ACC_ABSTRACT:S = 0x400s

.field public static final ACC_FINAL:S = 0x10s

.field public static final ACC_NATIVE:S = 0x100s

.field public static final ACC_PRIVATE:S = 0x2s

.field public static final ACC_PROTECTED:S = 0x4s

.field public static final ACC_PUBLIC:S = 0x1s

.field public static final ACC_STATIC:S = 0x8s

.field public static final ACC_SUPER:S = 0x20s

.field public static final ACC_SYNCHRONIZED:S = 0x20s

.field public static final ACC_TRANSIENT:S = 0x80s

.field public static final ACC_VOLATILE:S = 0x40s

.field private static final DEBUGCODE:Z = false

.field private static final DEBUGLABELS:Z = false

.field private static final DEBUGSTACK:Z = false

.field private static final ExceptionTableSize:I = 0x4

.field private static final FileHeaderConstant:I = -0x35014542

#the value of this static final field might be set in the static constructor
.field private static final GenerateStackMap:Z = false

.field private static final LineNumberTableSize:I = 0x10

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final MajorVersion:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MinorVersion:I = 0x0

.field private static final SuperBlockStartsSize:I = 0x4


# instance fields
.field private generatedClassName:Ljava/lang/String;

.field private itsCodeBuffer:[B

.field private itsCodeBufferTop:I

.field private itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

.field private itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

.field private itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

.field private itsExceptionTableTop:I

.field private itsFields:Lorg/mozilla/javascript/ObjArray;

.field private itsFixupTable:[J

.field private itsFixupTableTop:I

.field private itsFlags:S

.field private itsInterfaces:Lorg/mozilla/javascript/ObjArray;

.field private itsJumpFroms:Lorg/mozilla/javascript/UintMap;

.field private itsLabelTable:[I

.field private itsLabelTableTop:I

.field private itsLineNumberTable:[I

.field private itsLineNumberTableTop:I

.field private itsMaxLocals:S

.field private itsMaxStack:S

.field private itsMethods:Lorg/mozilla/javascript/ObjArray;

.field private itsSourceFileNameIndex:S

.field private itsStackTop:S

.field private itsSuperBlockStarts:[I

.field private itsSuperBlockStartsTop:I

.field private itsSuperClassIndex:S

.field private itsThisClassIndex:S

.field private itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

.field private tmpCharBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "org/mozilla/classfile/ClassFileWriter.class"

    .line 4184
    const/4 v1, 0x0

    .line 4185
    .local v1, is:Ljava/io/InputStream;
    const/16 v2, 0x30

    .local v2, major:I
    const/4 v3, 0x0

    .line 4187
    .local v3, minor:I
    :try_start_0
    const-class v4, Lorg/mozilla/classfile/ClassFileWriter;

    const-string v5, "org/mozilla/classfile/ClassFileWriter.class"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 4189
    if-nez v1, :cond_0

    .line 4190
    const-string v4, "org/mozilla/classfile/ClassFileWriter.class"

    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 4193
    :cond_0
    const/16 v4, 0x8

    new-array v0, v4, [B

    .line 4194
    .local v0, header:[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 4195
    const/4 v4, 0x4

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x5

    aget-byte v5, v0, v5

    or-int v3, v4, v5

    .line 4196
    const/4 v4, 0x6

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x7

    aget-byte v5, v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int v2, v4, v5

    .line 4200
    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 4201
    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 4202
    if-lt v2, v8, :cond_2

    move v4, v7

    :goto_0
    sput-boolean v4, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 4203
    if-eqz v1, :cond_1

    .line 4205
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4210
    .end local v0           #header:[B
    :cond_1
    :goto_1
    return-void

    .restart local v0       #header:[B
    :cond_2
    move v4, v6

    .line 4202
    goto :goto_0

    .line 4197
    .end local v0           #header:[B
    :catch_0
    move-exception v4

    .line 4200
    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 4201
    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 4202
    if-lt v2, v8, :cond_3

    move v4, v7

    :goto_2
    sput-boolean v4, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 4203
    if-eqz v1, :cond_1

    .line 4205
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4206
    :catch_1
    move-exception v4

    goto :goto_1

    :cond_3
    move v4, v6

    .line 4202
    goto :goto_2

    .line 4200
    :catchall_0
    move-exception v4

    sput v3, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    .line 4201
    sput v2, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 4202
    if-lt v2, v8, :cond_5

    move v5, v7

    :goto_3
    sput-boolean v5, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    .line 4203
    if-eqz v1, :cond_4

    .line 4205
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4207
    :cond_4
    :goto_4
    throw v4

    :cond_5
    move v5, v6

    .line 4202
    goto :goto_3

    .line 4206
    .restart local v0       #header:[B
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v0           #header:[B
    :catch_3
    move-exception v5

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "className"
    .parameter "superClassName"
    .parameter "sourceFileName"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4156
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 4157
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 4164
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    .line 4226
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 4237
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    .line 4238
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    .line 4239
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    .line 4256
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 87
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/mozilla/classfile/ConstantPool;

    invoke-direct {v0, p0}, Lorg/mozilla/classfile/ConstantPool;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 89
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    .line 90
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    .line 91
    if-eqz p3, :cond_0

    .line 92
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    .line 96
    :cond_0
    const/16 v0, 0x21

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    .line 97
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    return v0
.end method

.method static synthetic access$100(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->createInitialLocals()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(I)C
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->arrayTypeToName(I)C

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    return v0
.end method

.method static synthetic access$1500(Lorg/mozilla/classfile/ClassFileWriter;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    return v0
.end method

.method static synthetic access$200(Lorg/mozilla/classfile/ClassFileWriter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0
.end method

.method static synthetic access$400(Lorg/mozilla/classfile/ClassFileWriter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/mozilla/classfile/ClassFileWriter;)[Lorg/mozilla/classfile/ExceptionTableEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    return-object v0
.end method

.method static synthetic access$600(Lorg/mozilla/classfile/ClassFileWriter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/javascript/UintMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/mozilla/classfile/ClassFileWriter;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    return-object v0
.end method

.method static synthetic access$900(Lorg/mozilla/classfile/ClassFileWriter;)Lorg/mozilla/classfile/ConstantPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    return-object v0
.end method

.method private addLabelFixup(II)V
    .locals 7
    .parameter "label"
    .parameter "fixupSite"

    .prologue
    const/4 v3, 0x0

    .line 1304
    if-ltz p1, :cond_0

    .line 1305
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad label, no biscuit"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1306
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr p1, v2

    .line 1307
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-lt p1, v2, :cond_1

    .line 1308
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad label"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1309
    :cond_1
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 1310
    .local v1, top:I
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 1311
    :cond_2
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    if-nez v2, :cond_4

    .line 1312
    const/16 v2, 0x28

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    .line 1319
    :cond_3
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 1320
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    int-to-long v3, p1

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, p2

    or-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 1321
    return-void

    .line 1314
    :cond_4
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [J

    .line 1315
    .local v0, tmp:[J
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1316
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    goto :goto_0
.end method

.method private addReservedCodeSpace(I)I
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    .line 1391
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-nez v4, :cond_0

    .line 1392
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No method to add to"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1393
    :cond_0
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 1394
    .local v2, oldTop:I
    add-int v1, v2, p1

    .line 1395
    .local v1, newTop:I
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    array-length v4, v4

    if-le v1, v4, :cond_2

    .line 1396
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    array-length v4, v4

    mul-int/lit8 v0, v4, 0x2

    .line 1397
    .local v0, newSize:I
    if-le v1, v0, :cond_1

    move v0, v1

    .line 1398
    :cond_1
    new-array v3, v0, [B

    .line 1399
    .local v3, tmp:[B
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1400
    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 1402
    .end local v0           #newSize:I
    .end local v3           #tmp:[B
    :cond_2
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 1403
    return v2
.end method

.method private addSuperBlockStart(I)V
    .locals 4
    .parameter "pc"

    .prologue
    const/4 v3, 0x0

    .line 4110
    sget-boolean v1, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v1, :cond_1

    .line 4111
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    if-nez v1, :cond_2

    .line 4112
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 4119
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    aput p1, v1, v2

    .line 4121
    :cond_1
    return-void

    .line 4113
    :cond_2
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    array-length v1, v1

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ne v1, v2, :cond_0

    .line 4114
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 4115
    .local v0, tmp:[I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4117
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    goto :goto_0
.end method

.method private addToCodeBuffer(I)V
    .locals 3
    .parameter "b"

    .prologue
    .line 1379
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    .line 1380
    .local v0, N:I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    int-to-byte v2, p1

    aput-byte v2, v1, v0

    .line 1381
    return-void
.end method

.method private addToCodeInt16(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1385
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    .line 1386
    .local v0, N:I
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v1, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    .line 1387
    return-void
.end method

.method private static arrayTypeToName(I)C
    .locals 2
    .parameter "type"

    .prologue
    .line 2600
    packed-switch p0, :pswitch_data_0

    .line 2618
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad operand"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2602
    :pswitch_0
    const/16 v0, 0x5a

    .line 2616
    :goto_0
    return v0

    .line 2604
    :pswitch_1
    const/16 v0, 0x43

    goto :goto_0

    .line 2606
    :pswitch_2
    const/16 v0, 0x46

    goto :goto_0

    .line 2608
    :pswitch_3
    const/16 v0, 0x44

    goto :goto_0

    .line 2610
    :pswitch_4
    const/16 v0, 0x42

    goto :goto_0

    .line 2612
    :pswitch_5
    const/16 v0, 0x53

    goto :goto_0

    .line 2614
    :pswitch_6
    const/16 v0, 0x49

    goto :goto_0

    .line 2616
    :pswitch_7
    const/16 v0, 0x4a

    goto :goto_0

    .line 2600
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static badStack(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2837
    if-gez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack underflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2839
    .local v0, s:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2838
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too big stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method private static bytecodeStr(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 4087
    const-string v0, ""

    return-object v0
.end method

.method private static classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "descriptor"

    .prologue
    const/4 v1, 0x1

    .line 2628
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static classNameToSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 162
    .local v3, nameLength:I
    add-int/lit8 v1, v3, 0x1

    .line 163
    .local v1, colonPos:I
    add-int/lit8 v4, v1, 0x1

    new-array v0, v4, [C

    .line 164
    .local v0, buf:[C
    const/16 v4, 0x4c

    aput-char v4, v0, v6

    .line 165
    const/16 v4, 0x3b

    aput-char v4, v0, v1

    .line 166
    const/4 v4, 0x1

    invoke-virtual {p0, v6, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 167
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-eq v2, v1, :cond_1

    .line 168
    aget-char v4, v0, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_0

    .line 169
    const/16 v4, 0x2f

    aput-char v4, v0, v2

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-direct {v4, v0, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private createInitialLocals()[I
    .locals 14

    .prologue
    .line 2664
    iget-short v12, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    new-array v1, v12, [I

    .line 2665
    .local v1, initialLocals:[I
    const/4 v4, 0x0

    .line 2670
    .local v4, localsTop:I
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v12}, Lorg/mozilla/classfile/ClassFileMethod;->getFlags()S

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_0

    .line 2671
    const-string v12, "<init>"

    iget-object v13, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v13}, Lorg/mozilla/classfile/ClassFileMethod;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2672
    add-int/lit8 v5, v4, 0x1

    .end local v4           #localsTop:I
    .local v5, localsTop:I
    const/4 v12, 0x6

    aput v12, v1, v4

    move v4, v5

    .line 2679
    .end local v5           #localsTop:I
    .restart local v4       #localsTop:I
    :cond_0
    :goto_0
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v12}, Lorg/mozilla/classfile/ClassFileMethod;->getType()Ljava/lang/String;

    move-result-object v10

    .line 2680
    .local v10, type:Ljava/lang/String;
    const/16 v12, 0x28

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2681
    .local v3, lParenIndex:I
    const/16 v12, 0x29

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 2682
    .local v8, rParenIndex:I
    if-nez v3, :cond_1

    if-gez v8, :cond_3

    .line 2683
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "bad method type"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2674
    .end local v3           #lParenIndex:I
    .end local v8           #rParenIndex:I
    .end local v10           #type:Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .end local v4           #localsTop:I
    .restart local v5       #localsTop:I
    iget-short v12, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v12}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result v12

    aput v12, v1, v4

    move v4, v5

    .end local v5           #localsTop:I
    .restart local v4       #localsTop:I
    goto :goto_0

    .line 2685
    .restart local v3       #lParenIndex:I
    .restart local v8       #rParenIndex:I
    .restart local v10       #type:Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v3, 0x1

    .line 2686
    .local v9, start:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, paramType:Ljava/lang/StringBuilder;
    move v5, v4

    .line 2687
    .end local v4           #localsTop:I
    .restart local v5       #localsTop:I
    :goto_1
    if-ge v9, v8, :cond_5

    .line 2688
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 2711
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2713
    .local v2, internalType:Ljava/lang/String;
    iget-object v12, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-static {v2, v12}, Lorg/mozilla/classfile/TypeInfo;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result v11

    .line 2714
    .local v11, typeInfo:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #localsTop:I
    .restart local v4       #localsTop:I
    aput v11, v1, v5

    .line 2715
    invoke-static {v11}, Lorg/mozilla/classfile/TypeInfo;->isTwoWords(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2716
    add-int/lit8 v4, v4, 0x1

    .line 2718
    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move v5, v4

    .line 2719
    .end local v4           #localsTop:I
    .restart local v5       #localsTop:I
    goto :goto_1

    .line 2697
    .end local v2           #internalType:Ljava/lang/String;
    .end local v11           #typeInfo:I
    :sswitch_0
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2698
    add-int/lit8 v9, v9, 0x1

    .line 2699
    goto :goto_2

    .line 2701
    :sswitch_1
    const/16 v12, 0x3b

    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    add-int/lit8 v0, v12, 0x1

    .line 2702
    .local v0, end:I
    invoke-virtual {v10, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2703
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    move v9, v0

    .line 2705
    goto :goto_2

    .line 2707
    .end local v0           #end:I
    .end local v6           #name:Ljava/lang/String;
    :sswitch_2
    const/16 v12, 0x5b

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2708
    add-int/lit8 v9, v9, 0x1

    .line 2709
    goto :goto_1

    .line 2720
    :cond_5
    return-object v1

    .line 2688
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x4c -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_2
    .end sparse-switch
.end method

.method private static descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "descriptor"

    .prologue
    .line 2637
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2652
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    .line 2650
    :goto_0
    return-object v0

    :pswitch_2
    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->classDescriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2637
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private finalizeSuperBlockStarts()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4130
    sget-boolean v6, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v6, :cond_4

    .line 4131
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    if-ge v4, v6, :cond_0

    .line 4132
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aget-object v2, v6, v4

    .line 4133
    .local v2, ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    iget v6, v2, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v6

    int-to-short v3, v6

    .line 4134
    .local v3, handlerPC:S
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 4131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4136
    .end local v2           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v3           #handlerPC:S
    :cond_0
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->sort([III)V

    .line 4137
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v5, v6, v8

    .line 4138
    .local v5, prev:I
    const/4 v0, 0x1

    .line 4139
    .local v0, copyTo:I
    const/4 v4, 0x1

    :goto_1
    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    if-ge v4, v6, :cond_3

    .line 4140
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aget v1, v6, v4

    .line 4141
    .local v1, curr:I
    if-eq v5, v1, :cond_2

    .line 4142
    if-eq v0, v4, :cond_1

    .line 4143
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    aput v1, v6, v0

    .line 4145
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4146
    move v5, v1

    .line 4139
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4149
    .end local v1           #curr:I
    :cond_3
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 4150
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    sub-int v7, v0, v9

    aget v6, v6, v7

    iget v7, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-ne v6, v7, :cond_4

    .line 4151
    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    sub-int/2addr v6, v9

    iput v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 4154
    .end local v0           #copyTo:I
    .end local v4           #i:I
    .end local v5           #prev:I
    :cond_4
    return-void
.end method

.method private fixLabelGotos()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1325
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 1326
    .local v0, codeBuffer:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    if-ge v4, v8, :cond_2

    .line 1327
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTable:[J

    aget-wide v1, v8, v4

    .line 1328
    .local v1, fixup:J
    const/16 v8, 0x20

    shr-long v8, v1, v8

    long-to-int v5, v8

    .line 1329
    .local v5, label:I
    long-to-int v3, v1

    .line 1330
    .local v3, fixupSite:I
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v7, v8, v5

    .line 1331
    .local v7, pc:I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1333
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8

    .line 1336
    :cond_0
    invoke-direct {p0, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 1337
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    sub-int v9, v3, v10

    invoke-virtual {v8, v7, v9}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 1338
    sub-int v8, v3, v10

    sub-int v6, v7, v8

    .line 1339
    .local v6, offset:I
    int-to-short v8, v6

    if-eq v8, v6, :cond_1

    .line 1340
    new-instance v8, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v9, "Program too complex: too big jump offset"

    invoke-direct {v8, v9}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1343
    :cond_1
    shr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 1344
    add-int/lit8 v8, v3, 0x1

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1346
    .end local v1           #fixup:J
    .end local v3           #fixupSite:I
    .end local v5           #label:I
    .end local v6           #offset:I
    .end local v7           #pc:I
    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 1347
    return-void
.end method

.method private getLabelPC(I)I
    .locals 2
    .parameter "label"

    .prologue
    .line 1294
    if-ltz p1, :cond_0

    .line 1295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad label, no biscuit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_0
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1297
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-lt p1, v0, :cond_1

    .line 1298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v0, v0, p1

    return v0
.end method

.method static getSlashedForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 151
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWriteSize()I
    .locals 4

    .prologue
    .line 2738
    const/4 v1, 0x0

    .line 2740
    .local v1, size:I
    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v2, :cond_0

    .line 2741
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v3, "SourceFile"

    invoke-virtual {v2, v3}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    .line 2744
    :cond_0
    add-int/lit8 v1, v1, 0x8

    .line 2745
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ConstantPool;->getWriteSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x8

    .line 2746
    add-int/lit8 v1, v1, 0x2

    .line 2747
    add-int/lit8 v1, v1, 0x2

    .line 2748
    add-int/lit8 v1, v1, 0x2

    .line 2749
    add-int/lit8 v1, v1, 0x2

    .line 2750
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 2752
    add-int/lit8 v1, v1, 0x2

    .line 2753
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2754
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileField;

    check-cast v2, Lorg/mozilla/classfile/ClassFileField;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileField;->getWriteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 2753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2757
    :cond_1
    add-int/lit8 v1, v1, 0x2

    .line 2758
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2759
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileMethod;

    check-cast v2, Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v2}, Lorg/mozilla/classfile/ClassFileMethod;->getWriteSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 2758
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2762
    :cond_2
    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v2, :cond_3

    .line 2763
    add-int/lit8 v1, v1, 0x2

    .line 2764
    add-int/lit8 v1, v1, 0x2

    .line 2765
    add-int/lit8 v1, v1, 0x4

    .line 2766
    add-int/lit8 v1, v1, 0x2

    .line 2771
    :goto_2
    return v1

    .line 2768
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method static opcodeCount(I)I
    .locals 3
    .parameter "opcode"

    .prologue
    .line 3205
    packed-switch p0, :pswitch_data_0

    .line 3417
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3357
    :pswitch_1
    const/4 v0, 0x0

    .line 3415
    :goto_0
    return v0

    .line 3407
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3411
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 3415
    :pswitch_4
    const/4 v0, -0x1

    goto :goto_0

    .line 3205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static opcodeLength(I)I
    .locals 3
    .parameter "opcode"

    .prologue
    .line 2979
    packed-switch p0, :pswitch_data_0

    .line 3197
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3131
    :pswitch_1
    const/4 v0, 0x1

    .line 3189
    :goto_0
    return v0

    .line 3146
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3181
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 3184
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 3189
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 2979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static putInt16(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 2958
    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2959
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 2960
    add-int/lit8 v0, p2, 0x2

    return v0
.end method

.method static putInt32(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 2965
    add-int/lit8 v0, p2, 0x0

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2966
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2967
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 2968
    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 2969
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method static putInt64(J[BI)I
    .locals 2
    .parameter "value"
    .parameter "array"
    .parameter "offset"

    .prologue
    .line 2830
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result p3

    .line 2831
    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    return v0
.end method

.method private static sizeOfParameters(Ljava/lang/String;)I
    .locals 11
    .parameter "pString"

    .prologue
    .line 2852
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2853
    .local v3, length:I
    const/16 v8, 0x29

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 2854
    .local v5, rightParenthesis:I
    const/4 v8, 0x3

    if-gt v8, v3, :cond_4

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    if-gt v8, v5, :cond_4

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_4

    .line 2858
    const/4 v4, 0x1

    .line 2859
    .local v4, ok:Z
    const/4 v2, 0x1

    .line 2860
    .local v2, index:I
    const/4 v7, 0x0

    .line 2861
    .local v7, stackDiff:I
    const/4 v1, 0x0

    .line 2863
    .local v1, count:I
    :goto_0
    if-eq v2, v5, :cond_0

    .line 2864
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 2866
    const/4 v4, 0x0

    .line 2925
    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    .line 2926
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 2928
    :pswitch_0
    const/4 v4, 0x0

    .line 2947
    :goto_2
    :pswitch_1
    if-eqz v4, :cond_4

    .line 2948
    shl-int/lit8 v8, v1, 0x10

    const v9, 0xffff

    and-int/2addr v9, v7

    or-int/2addr v8, v9

    return v8

    .line 2870
    :sswitch_0
    add-int/lit8 v7, v7, -0x1

    .line 2878
    :sswitch_1
    add-int/lit8 v7, v7, -0x1

    .line 2879
    add-int/lit8 v1, v1, 0x1

    .line 2880
    add-int/lit8 v2, v2, 0x1

    .line 2881
    goto :goto_0

    .line 2883
    :sswitch_2
    add-int/lit8 v2, v2, 0x1

    .line 2884
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2885
    .local v0, c:I
    :goto_3
    const/16 v8, 0x5b

    if-ne v0, v8, :cond_1

    .line 2886
    add-int/lit8 v2, v2, 0x1

    .line 2887
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 2889
    :cond_1
    sparse-switch v0, :sswitch_data_1

    .line 2891
    const/4 v4, 0x0

    .line 2892
    goto :goto_1

    .line 2901
    :sswitch_3
    add-int/lit8 v7, v7, -0x1

    .line 2902
    add-int/lit8 v1, v1, 0x1

    .line 2903
    add-int/lit8 v2, v2, 0x1

    .line 2904
    goto :goto_0

    .line 2910
    .end local v0           #c:I
    :sswitch_4
    add-int/lit8 v7, v7, -0x1

    .line 2911
    add-int/lit8 v1, v1, 0x1

    .line 2912
    add-int/lit8 v2, v2, 0x1

    .line 2913
    const/16 v8, 0x3b

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 2914
    .local v6, semicolon:I
    add-int/lit8 v8, v2, 0x1

    if-gt v8, v6, :cond_2

    if-lt v6, v5, :cond_3

    .line 2917
    :cond_2
    const/4 v4, 0x0

    .line 2918
    goto :goto_1

    .line 2920
    :cond_3
    add-int/lit8 v2, v6, 0x1

    .line 2921
    goto :goto_0

    .line 2932
    .end local v6           #semicolon:I
    :pswitch_2
    add-int/lit8 v7, v7, 0x1

    .line 2942
    :pswitch_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2952
    .end local v1           #count:I
    .end local v2           #index:I
    .end local v4           #ok:Z
    .end local v7           #stackDiff:I
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad parameter signature: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2864
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x44 -> :sswitch_0
        0x46 -> :sswitch_1
        0x49 -> :sswitch_1
        0x4a -> :sswitch_0
        0x4c -> :sswitch_4
        0x53 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_2
    .end sparse-switch

    .line 2926
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 2889
    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_3
        0x46 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4c -> :sswitch_4
        0x53 -> :sswitch_3
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method static stackChange(I)I
    .locals 3
    .parameter "opcode"

    .prologue
    .line 3427
    packed-switch p0, :pswitch_data_0

    .line 3646
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3430
    :pswitch_1
    const/4 v0, -0x4

    .line 3644
    :goto_0
    return v0

    .line 3441
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 3477
    :pswitch_3
    const/4 v0, -0x2

    goto :goto_0

    .line 3547
    :pswitch_4
    const/4 v0, -0x1

    goto :goto_0

    .line 3581
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3624
    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    .line 3644
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    .line 3427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private xop(III)V
    .locals 1
    .parameter "shortOp"
    .parameter "op"
    .parameter "local"

    .prologue
    .line 1128
    packed-switch p3, :pswitch_data_0

    .line 1142
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 1144
    :goto_0
    return-void

    .line 1130
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 1133
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 1136
    :pswitch_2
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 1139
    :pswitch_3
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public acquireLabel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1250
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 1251
    .local v1, top:I
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1252
    :cond_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    if-nez v2, :cond_2

    .line 1253
    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    .line 1260
    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 1261
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 1262
    const/high16 v2, -0x8000

    or-int/2addr v2, v1

    return v2

    .line 1255
    :cond_2
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    .line 1256
    .local v0, tmp:[I
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1257
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    goto :goto_0
.end method

.method public add(I)V
    .locals 3
    .parameter "theOpCode"

    .prologue
    .line 486
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->opcodeCount(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected operands"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_0
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v2

    add-int v0, v1, v2

    .line 489
    .local v0, newStack:I
    if-ltz v0, :cond_1

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_2

    :cond_1
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 492
    :cond_2
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 493
    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 494
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v1, :cond_3

    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 499
    :cond_3
    const/16 v1, 0xbf

    if-ne p1, v1, :cond_4

    .line 500
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 502
    :cond_4
    return-void
.end method

.method public add(II)V
    .locals 12
    .parameter "theOpCode"
    .parameter "theOperand"

    .prologue
    const/16 v10, 0x13

    const/high16 v9, 0x1

    const/16 v8, 0x100

    const/high16 v7, -0x8000

    const-string v11, "out of range index"

    .line 515
    iget-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v6

    add-int v1, v5, v6

    .line 516
    .local v1, newStack:I
    if-ltz v1, :cond_0

    const/16 v5, 0x7fff

    if-ge v5, v1, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 518
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 653
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unexpected opcode for 1 operand"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 523
    :sswitch_0
    iget v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    add-int/lit8 v5, v5, 0x3

    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 542
    :sswitch_1
    and-int v5, p2, v7

    if-eq v5, v7, :cond_3

    .line 543
    if-ltz p2, :cond_2

    const v5, 0xffff

    if-le p2, v5, :cond_3

    .line 544
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Bad label for branch"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 547
    :cond_3
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 548
    .local v0, branchPC:I
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 549
    and-int v5, p2, v7

    if-eq v5, v7, :cond_5

    .line 551
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 552
    add-int v3, p2, v0

    .line 553
    .local v3, target:I
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 554
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v5, v3, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 657
    .end local v0           #branchPC:I
    .end local v3           #target:I
    :goto_0
    int-to-short v5, v1

    iput-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 658
    iget-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v1, v5, :cond_4

    int-to-short v5, v1

    iput-short v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 663
    :cond_4
    return-void

    .line 557
    .restart local v0       #branchPC:I
    :cond_5
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v4

    .line 564
    .local v4, targetPC:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 565
    sub-int v2, v4, v0

    .line 566
    .local v2, offset:I
    invoke-direct {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 567
    invoke-direct {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 568
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v5, v4, v0}, Lorg/mozilla/javascript/UintMap;->put(II)V

    goto :goto_0

    .line 571
    .end local v2           #offset:I
    :cond_6
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addLabelFixup(II)V

    .line 572
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_0

    .line 579
    .end local v0           #branchPC:I
    .end local v4           #targetPC:I
    :sswitch_2
    int-to-byte v5, p2

    if-eq v5, p2, :cond_7

    .line 580
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range byte"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 581
    :cond_7
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 582
    int-to-byte v5, p2

    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    .line 586
    :sswitch_3
    int-to-short v5, p2

    if-eq v5, p2, :cond_8

    .line 587
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range short"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 588
    :cond_8
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 589
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_0

    .line 593
    :sswitch_4
    if-ltz p2, :cond_9

    if-lt p2, v8, :cond_a

    .line 594
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range index"

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 595
    :cond_a
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 596
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    .line 601
    :sswitch_5
    if-ltz p2, :cond_b

    if-lt p2, v9, :cond_c

    .line 602
    :cond_b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range field"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    :cond_c
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 604
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_0

    .line 610
    :sswitch_6
    if-ltz p2, :cond_d

    if-lt p2, v9, :cond_e

    .line 611
    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "out of range index"

    invoke-direct {v5, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 612
    :cond_e
    if-ge p2, v8, :cond_f

    if-eq p1, v10, :cond_f

    const/16 v5, 0x14

    if-ne p1, v5, :cond_11

    .line 616
    :cond_f
    const/16 v5, 0x12

    if-ne p1, v5, :cond_10

    .line 617
    invoke-direct {p0, v10}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 621
    :goto_1
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_0

    .line 619
    :cond_10
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_1

    .line 623
    :cond_11
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 624
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_0

    .line 639
    :sswitch_7
    if-ltz p2, :cond_12

    if-lt p2, v9, :cond_13

    .line 640
    :cond_12
    new-instance v5, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v6, "out of range variable"

    invoke-direct {v5, v6}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 641
    :cond_13
    if-lt p2, v8, :cond_14

    .line 642
    const/16 v5, 0xc4

    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 643
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 644
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto/16 :goto_0

    .line 647
    :cond_14
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 648
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto/16 :goto_0

    .line 518
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_6
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_7
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x3a -> :sswitch_7
        0x99 -> :sswitch_1
        0x9a -> :sswitch_1
        0x9b -> :sswitch_1
        0x9c -> :sswitch_1
        0x9d -> :sswitch_1
        0x9e -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_1
        0xa7 -> :sswitch_0
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_7
        0xb4 -> :sswitch_5
        0xb5 -> :sswitch_5
        0xbc -> :sswitch_4
        0xc6 -> :sswitch_1
        0xc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public add(III)V
    .locals 6
    .parameter "theOpCode"
    .parameter "theOperand1"
    .parameter "theOperand2"

    .prologue
    const/16 v5, 0xc5

    const/high16 v4, 0x1

    const/16 v3, 0x84

    .line 733
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v2

    add-int v0, v1, v2

    .line 734
    .local v0, newStack:I
    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 736
    :cond_1
    if-ne p1, v3, :cond_9

    .line 737
    if-ltz p2, :cond_2

    if-lt p2, v4, :cond_3

    .line 738
    :cond_2
    new-instance v1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v2, "out of range variable"

    invoke-direct {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :cond_3
    if-ltz p3, :cond_4

    if-lt p3, v4, :cond_5

    .line 740
    :cond_4
    new-instance v1, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v2, "out of range increment"

    invoke-direct {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :cond_5
    const/16 v1, 0xff

    if-gt p2, v1, :cond_6

    const/16 v1, -0x80

    if-lt p3, v1, :cond_6

    const/16 v1, 0x7f

    if-le p3, v1, :cond_8

    .line 743
    :cond_6
    const/16 v1, 0xc4

    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 744
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 745
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 746
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 768
    :goto_0
    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 769
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v1, :cond_7

    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 775
    :cond_7
    return-void

    .line 749
    :cond_8
    invoke-direct {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 750
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 751
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    .line 754
    :cond_9
    if-ne p1, v5, :cond_e

    .line 755
    if-ltz p2, :cond_a

    if-lt p2, v4, :cond_b

    .line 756
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "out of range index"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 757
    :cond_b
    if-ltz p3, :cond_c

    const/16 v1, 0x100

    if-lt p3, v1, :cond_d

    .line 758
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "out of range dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :cond_d
    invoke-direct {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 761
    invoke-direct {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 762
    invoke-direct {p0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    goto :goto_0

    .line 765
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected opcode for 2 operands"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public add(ILjava/lang/String;)V
    .locals 4
    .parameter "theOpCode"
    .parameter "className"

    .prologue
    .line 782
    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v3

    add-int v1, v2, v3

    .line 783
    .local v1, newStack:I
    if-ltz v1, :cond_0

    const/16 v2, 0x7fff

    if-ge v2, v1, :cond_1

    :cond_0
    invoke-static {v1}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 784
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 796
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad opcode for class reference"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :pswitch_1
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    .line 790
    .local v0, classIndex:S
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 791
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 799
    int-to-short v2, v1

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 800
    iget-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v1, v2, :cond_2

    int-to-short v2, v1

    iput-short v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 805
    :cond_2
    return-void

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "theOpCode"
    .parameter "className"
    .parameter "fieldName"
    .parameter "fieldType"

    .prologue
    .line 815
    iget-short v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v5

    add-int v3, v4, v5

    .line 816
    .local v3, newStack:I
    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 817
    .local v2, fieldTypeChar:C
    const/16 v4, 0x4a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x44

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v4, 0x2

    move v1, v4

    .line 819
    .local v1, fieldSize:I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 829
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad opcode for field reference"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 817
    .end local v1           #fieldSize:I
    :cond_1
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0

    .line 822
    .restart local v1       #fieldSize:I
    :pswitch_0
    add-int/2addr v3, v1

    .line 832
    :goto_1
    if-ltz v3, :cond_2

    const/16 v4, 0x7fff

    if-ge v4, v3, :cond_3

    :cond_2
    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 833
    :cond_3
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v4, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 835
    .local v0, fieldRefIndex:S
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 836
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 838
    int-to-short v4, v3

    iput-short v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 839
    iget-short v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v3, v4, :cond_4

    int-to-short v4, v3

    iput-short v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 844
    :cond_4
    return-void

    .line 826
    .end local v0           #fieldRefIndex:S
    :pswitch_1
    sub-int/2addr v3, v1

    .line 827
    goto :goto_1

    .line 819
    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addALoad(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1115
    const/16 v0, 0x2a

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1116
    return-void
.end method

.method public addAStore(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1065
    const/16 v0, 0x4b

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1066
    return-void
.end method

.method public addDLoad(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1105
    const/16 v0, 0x26

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1106
    return-void
.end method

.method public addDStore(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1055
    const/16 v0, 0x47

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1056
    return-void
.end method

.method public addExceptionHandler(IIILjava/lang/String;)V
    .locals 7
    .parameter "startLabel"
    .parameter "endLabel"
    .parameter "handlerLabel"
    .parameter "catchClassName"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 1409
    and-int v4, p1, v5

    if-eq v4, v5, :cond_0

    .line 1410
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad startLabel"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1411
    :cond_0
    and-int v4, p2, v5

    if-eq v4, v5, :cond_1

    .line 1412
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad endLabel"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1413
    :cond_1
    and-int v4, p3, v5

    if-eq v4, v5, :cond_2

    .line 1414
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad handlerLabel"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1421
    :cond_2
    if-nez p4, :cond_4

    move v1, v6

    .line 1424
    .local v1, catch_type_index:S
    :goto_0
    new-instance v2, Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/mozilla/classfile/ExceptionTableEntry;-><init>(IIIS)V

    .line 1429
    .local v2, newEntry:Lorg/mozilla/classfile/ExceptionTableEntry;
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 1430
    .local v0, N:I
    if-nez v0, :cond_5

    .line 1431
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/mozilla/classfile/ExceptionTableEntry;

    iput-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 1437
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    aput-object v2, v4, v0

    .line 1438
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 1440
    return-void

    .line 1421
    .end local v0           #N:I
    .end local v1           #catch_type_index:S
    .end local v2           #newEntry:Lorg/mozilla/classfile/ExceptionTableEntry;
    :cond_4
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v4, p4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v4

    move v1, v4

    goto :goto_0

    .line 1432
    .restart local v0       #N:I
    .restart local v1       #catch_type_index:S
    .restart local v2       #newEntry:Lorg/mozilla/classfile/ExceptionTableEntry;
    :cond_5
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    array-length v4, v4

    if-ne v0, v4, :cond_3

    .line 1433
    mul-int/lit8 v4, v0, 0x2

    new-array v3, v4, [Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 1434
    .local v3, tmp:[Lorg/mozilla/classfile/ExceptionTableEntry;
    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1435
    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    goto :goto_1
.end method

.method public addFLoad(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1095
    const/16 v0, 0x22

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1096
    return-void
.end method

.method public addFStore(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1045
    const/16 v0, 0x43

    const/16 v1, 0x38

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1046
    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 4
    .parameter "fieldName"
    .parameter "type"
    .parameter "flags"

    .prologue
    .line 184
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v0

    .line 185
    .local v0, fieldNameIndex:S
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v2, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 186
    .local v1, typeIndex:S
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    new-instance v3, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v3, v0, v1, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SD)V
    .locals 7
    .parameter "fieldName"
    .parameter "type"
    .parameter "flags"
    .parameter "value"

    .prologue
    .line 247
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 248
    .local v1, fieldNameIndex:S
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 249
    .local v2, typeIndex:S
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, v1, v2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 251
    .local v0, field:Lorg/mozilla/classfile/ClassFileField;
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v6, p4, p5}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 255
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SI)V
    .locals 6
    .parameter "fieldName"
    .parameter "type"
    .parameter "flags"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 201
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 202
    .local v1, fieldNameIndex:S
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 203
    .local v2, typeIndex:S
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, v1, v2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 205
    .local v0, field:Lorg/mozilla/classfile/ClassFileField;
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    iget-object v4, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v4, p4}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v5, v4}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 209
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public addField(Ljava/lang/String;Ljava/lang/String;SJ)V
    .locals 7
    .parameter "fieldName"
    .parameter "type"
    .parameter "flags"
    .parameter "value"

    .prologue
    .line 224
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 225
    .local v1, fieldNameIndex:S
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 226
    .local v2, typeIndex:S
    new-instance v0, Lorg/mozilla/classfile/ClassFileField;

    invoke-direct {v0, v1, v2, p3}, Lorg/mozilla/classfile/ClassFileField;-><init>(SSS)V

    .line 228
    .local v0, field:Lorg/mozilla/classfile/ClassFileField;
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v4, "ConstantValue"

    invoke-virtual {v3, v4}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v6, p4, p5}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/mozilla/classfile/ClassFileField;->setAttributes(SSSI)V

    .line 232
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method public addILoad(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1075
    const/16 v0, 0x1a

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1076
    return-void
.end method

.method public addIStore(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1025
    const/16 v0, 0x3b

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1026
    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 115
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result v0

    .line 116
    .local v0, interfaceIndex:S
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "theOpCode"
    .parameter "className"
    .parameter "methodName"
    .parameter "methodType"

    .prologue
    .line 854
    invoke-static {p4}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    move-result v4

    .line 855
    .local v4, parameterInfo:I
    ushr-int/lit8 v3, v4, 0x10

    .line 856
    .local v3, parameterCount:I
    int-to-short v5, v4

    .line 858
    .local v5, stackDiff:I
    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int v2, v6, v5

    .line 859
    .local v2, newStack:I
    invoke-static {p1}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 860
    if-ltz v2, :cond_0

    const/16 v6, 0x7fff

    if-ge v6, v2, :cond_1

    :cond_0
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 862
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 887
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad opcode for method reference"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 867
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 868
    const/16 v6, 0xb9

    if-ne p1, v6, :cond_3

    .line 869
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v6, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    .line 873
    .local v0, ifMethodRefIndex:S
    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    .line 874
    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 875
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeBuffer(I)V

    .line 890
    .end local v0           #ifMethodRefIndex:S
    :goto_0
    int-to-short v6, v2

    iput-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 891
    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v2, v6, :cond_2

    int-to-short v6, v2

    iput-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 896
    :cond_2
    return-void

    .line 878
    :cond_3
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v6, p2, p3, p4}, Lorg/mozilla/classfile/ConstantPool;->addMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    .line 881
    .local v1, methodRefIndex:S
    invoke-direct {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addToCodeInt16(I)V

    goto :goto_0

    .line 862
    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addLLoad(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1085
    const/16 v0, 0x1e

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1086
    return-void
.end method

.method public addLStore(I)V
    .locals 2
    .parameter "local"

    .prologue
    .line 1035
    const/16 v0, 0x3f

    const/16 v1, 0x37

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/classfile/ClassFileWriter;->xop(III)V

    .line 1036
    return-void
.end method

.method public addLineNumberEntry(S)V
    .locals 4
    .parameter "lineNumber"

    .prologue
    const/4 v3, 0x0

    .line 1443
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    if-nez v2, :cond_0

    .line 1444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No method to stop"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1445
    :cond_0
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 1446
    .local v0, N:I
    if-nez v0, :cond_2

    .line 1447
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    .line 1453
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p1

    aput v3, v2, v0

    .line 1454
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 1455
    return-void

    .line 1448
    :cond_2
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 1449
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 1450
    .local v1, tmp:[I
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1451
    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    goto :goto_0
.end method

.method public addLoadConstant(D)V
    .locals 2
    .parameter "k"

    .prologue
    .line 708
    const/16 v0, 0x14

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 709
    return-void
.end method

.method public addLoadConstant(F)V
    .locals 2
    .parameter "k"

    .prologue
    .line 699
    const/16 v0, 0x12

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 700
    return-void
.end method

.method public addLoadConstant(I)V
    .locals 2
    .parameter "k"

    .prologue
    .line 671
    packed-switch p1, :pswitch_data_0

    .line 679
    const/16 v0, 0x12

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 682
    :goto_0
    return-void

    .line 672
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 673
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 674
    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 675
    :pswitch_3
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 676
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 677
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public addLoadConstant(J)V
    .locals 2
    .parameter "k"

    .prologue
    .line 690
    const/16 v0, 0x14

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 691
    return-void
.end method

.method public addLoadConstant(Ljava/lang/String;)V
    .locals 2
    .parameter "k"

    .prologue
    .line 717
    const/16 v0, 0x12

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v1, p1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    .line 718
    return-void
.end method

.method public addLoadThis()V
    .locals 1

    .prologue
    .line 1123
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 1124
    return-void
.end method

.method public addPush(D)V
    .locals 7
    .parameter "k"

    .prologue
    const/16 v6, 0x77

    const-wide/high16 v4, 0x3ff0

    const-wide/16 v2, 0x0

    .line 948
    cmpl-double v0, p1, v2

    if-nez v0, :cond_1

    .line 950
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 951
    div-double v0, v4, p1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 953
    invoke-virtual {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    cmpl-double v0, p1, v4

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x4010

    cmpl-double v0, p1, v0

    if-nez v0, :cond_3

    .line 956
    :cond_2
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 957
    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 958
    invoke-virtual {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 961
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(D)V

    goto :goto_0
.end method

.method public addPush(I)V
    .locals 2
    .parameter "k"

    .prologue
    .line 905
    int-to-byte v0, p1

    if-ne v0, p1, :cond_2

    .line 906
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 907
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 918
    :goto_0
    return-void

    .line 908
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_1

    .line 909
    add-int/lit8 v0, p1, 0x3

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_0

    .line 911
    :cond_1
    const/16 v0, 0x10

    int-to-byte v1, p1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    .line 913
    :cond_2
    int-to-short v0, p1

    if-ne v0, p1, :cond_3

    .line 914
    const/16 v0, 0x11

    int-to-short v1, p1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto :goto_0

    .line 916
    :cond_3
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(I)V

    goto :goto_0
.end method

.method public addPush(J)V
    .locals 3
    .parameter "k"

    .prologue
    .line 932
    long-to-int v0, p1

    .line 933
    .local v0, ik:I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 934
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 935
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(J)V

    goto :goto_0
.end method

.method public addPush(Ljava/lang/String;)V
    .locals 11
    .parameter "k"

    .prologue
    const/16 v10, 0xb6

    const/16 v9, 0x59

    const-string v8, "java/lang/StringBuffer"

    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 973
    .local v2, length:I
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, v2}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v3

    .line 974
    .local v3, limit:I
    if-ne v3, v2, :cond_0

    .line 975
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v0, "java/lang/StringBuffer"

    .line 985
    .local v0, SB:Ljava/lang/String;
    const/16 v5, 0xbb

    const-string v6, "java/lang/StringBuffer"

    invoke-virtual {p0, v5, v8}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    .line 986
    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 987
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    .line 988
    const/16 v5, 0xb7

    const-string v6, "java/lang/StringBuffer"

    const-string v6, "<init>"

    const-string v7, "(I)V"

    invoke-virtual {p0, v5, v8, v6, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/4 v1, 0x0

    .line 991
    .local v1, cursor:I
    :goto_1
    invoke-virtual {p0, v9}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 992
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, s:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    .line 994
    const-string v5, "java/lang/StringBuffer"

    const-string v5, "append"

    const-string v6, "(Ljava/lang/String;)Ljava/lang/StringBuffer;"

    invoke-virtual {p0, v10, v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const/16 v5, 0x57

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 997
    if-ne v3, v2, :cond_1

    .line 1003
    const-string v5, "java/lang/StringBuffer"

    const-string v5, "toString"

    const-string v6, "()Ljava/lang/String;"

    invoke-virtual {p0, v10, v8, v5, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_1
    move v1, v3

    .line 1001
    iget-object v5, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v5, p1, v3, v2}, Lorg/mozilla/classfile/ConstantPool;->getUtfEncodingLimit(Ljava/lang/String;II)I

    move-result v3

    .line 1002
    goto :goto_1
.end method

.method public addPush(Z)V
    .locals 1
    .parameter "k"

    .prologue
    .line 922
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 923
    return-void

    .line 922
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public addTableSwitch(II)I
    .locals 9
    .parameter "low"
    .parameter "high"

    .prologue
    .line 1152
    if-le p1, p2, :cond_0

    .line 1153
    new-instance v6, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad bounds: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1155
    :cond_0
    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    const/16 v7, 0xaa

    invoke-static {v7}, Lorg/mozilla/classfile/ClassFileWriter;->stackChange(I)I

    move-result v7

    add-int v3, v6, v7

    .line 1156
    .local v3, newStack:I
    if-ltz v3, :cond_1

    const/16 v6, 0x7fff

    if-ge v6, v3, :cond_2

    :cond_1
    invoke-static {v3}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 1158
    :cond_2
    sub-int v6, p2, p1

    add-int/lit8 v2, v6, 0x1

    .line 1159
    .local v2, entryCount:I
    iget v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    xor-int/lit8 v6, v6, -0x1

    and-int/lit8 v4, v6, 0x3

    .line 1161
    .local v4, padSize:I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x3

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addReservedCodeSpace(I)I

    move-result v0

    .line 1162
    .local v0, N:I
    move v5, v0

    .line 1163
    .local v5, switchStart:I
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #N:I
    .local v1, N:I
    const/16 v7, -0x56

    aput-byte v7, v6, v0

    .line 1164
    :goto_0
    if-eqz v4, :cond_3

    .line 1165
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #N:I
    .restart local v0       #N:I
    const/4 v7, 0x0

    aput-byte v7, v6, v1

    .line 1166
    add-int/lit8 v4, v4, -0x1

    move v1, v0

    .end local v0           #N:I
    .restart local v1       #N:I
    goto :goto_0

    .line 1168
    :cond_3
    add-int/lit8 v0, v1, 0x4

    .line 1169
    .end local v1           #N:I
    .restart local v0       #N:I
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p1, v6, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v0

    .line 1170
    iget-object v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {p2, v6, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    .line 1172
    int-to-short v6, v3

    iput-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1173
    iget-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v3, v6, :cond_4

    int-to-short v6, v3

    iput-short v6, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 1179
    :cond_4
    return v5
.end method

.method public addVariableDescriptor(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "name"
    .parameter "type"
    .parameter "startPC"
    .parameter "register"

    .prologue
    .line 271
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 272
    .local v2, nameIndex:I
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v1

    .line 273
    .local v1, descriptorIndex:I
    const/4 v3, 0x4

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v3, 0x2

    aput p3, v0, v3

    const/4 v3, 0x3

    aput p4, v0, v3

    .line 274
    .local v0, chunk:[I
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    if-nez v3, :cond_0

    .line 275
    new-instance v3, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v3}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    .line 277
    :cond_0
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public adjustStackTop(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 1367
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    add-int v0, v1, p1

    .line 1368
    .local v0, newStack:I
    if-ltz v0, :cond_0

    const/16 v1, 0x7fff

    if-ge v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/classfile/ClassFileWriter;->badStack(I)V

    .line 1369
    :cond_1
    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1370
    iget-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le v0, v1, :cond_2

    int-to-short v1, v0

    iput-short v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 1375
    :cond_2
    return-void
.end method

.method final getCharBuffer(I)[C
    .locals 2
    .parameter "minimalSize"

    .prologue
    .line 4092
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    array-length v1, v1

    if-le p1, v1, :cond_1

    .line 4093
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 4094
    .local v0, newSize:I
    if-le p1, v0, :cond_0

    move v0, p1

    .line 4095
    :cond_0
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    .line 4097
    .end local v0           #newSize:I
    :cond_1
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->tmpCharBuffer:[C

    return-object v1
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->generatedClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCodeOffset()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    return v0
.end method

.method public getStackTop()S
    .locals 1

    .prologue
    .line 1359
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    return v0
.end method

.method public isUnderStringSizeLimit(Ljava/lang/String;)Z
    .locals 1
    .parameter "k"

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->isUnderUtfEncodingLimit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public markHandler(I)V
    .locals 1
    .parameter "theLabel"

    .prologue
    .line 1288
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1289
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1290
    return-void
.end method

.method public markLabel(I)V
    .locals 2
    .parameter "label"

    .prologue
    .line 1267
    if-ltz p1, :cond_0

    .line 1268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad label, no biscuit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_0
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 1271
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    if-le p1, v0, :cond_1

    .line 1272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only mark label once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_2
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTable:[I

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    aput v1, v0, p1

    .line 1279
    return-void
.end method

.method public markLabel(IS)V
    .locals 0
    .parameter "label"
    .parameter "stackTop"

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->markLabel(I)V

    .line 1284
    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1285
    return-void
.end method

.method public final markTableSwitchCase(II)V
    .locals 2
    .parameter "switchStart"
    .parameter "caseIndex"

    .prologue
    .line 1191
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 1192
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 1193
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    .line 1194
    return-void
.end method

.method public final markTableSwitchCase(III)V
    .locals 3
    .parameter "switchStart"
    .parameter "caseIndex"
    .parameter "stackTop"

    .prologue
    .line 1199
    if-ltz p3, :cond_0

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    if-le p3, v0, :cond_1

    .line 1200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stack index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_1
    int-to-short v0, p3

    iput-short v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1202
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 1203
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 1204
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    .line 1205
    return-void
.end method

.method public final markTableSwitchDefault(I)V
    .locals 2
    .parameter "switchStart"

    .prologue
    .line 1184
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 1185
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 1186
    const/4 v0, -0x1

    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->setTableSwitchJump(III)V

    .line 1187
    return-void
.end method

.method public setFlags(S)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 146
    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    .line 147
    return-void
.end method

.method public setStackTop(S)V
    .locals 0
    .parameter "n"

    .prologue
    .line 1363
    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 1364
    return-void
.end method

.method public setTableSwitchJump(III)V
    .locals 5
    .parameter "switchStart"
    .parameter "caseIndex"
    .parameter "jumpTarget"

    .prologue
    .line 1214
    if-ltz p3, :cond_0

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-le p3, v2, :cond_1

    .line 1215
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad jump target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1216
    :cond_1
    const/4 v2, -0x1

    if-ge p2, v2, :cond_2

    .line 1217
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad case index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1219
    :cond_2
    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 v1, v2, 0x3

    .line 1221
    .local v1, padSize:I
    if-gez p2, :cond_4

    .line 1223
    add-int/lit8 v2, p1, 0x1

    add-int v0, v2, v1

    .line 1227
    .local v0, caseOffset:I
    :goto_0
    if-ltz p1, :cond_3

    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_5

    .line 1230
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is outside a possible range of tableswitch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in already generated code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1225
    .end local v0           #caseOffset:I
    :cond_4
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v3, p2, 0x3

    mul-int/lit8 v3, v3, 0x4

    add-int v0, v2, v3

    .restart local v0       #caseOffset:I
    goto :goto_0

    .line 1234
    :cond_5
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    aget-byte v2, v2, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xaa

    if-eq v2, v3, :cond_6

    .line 1235
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not offset of tableswitch statement"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1238
    :cond_6
    if-ltz v0, :cond_7

    add-int/lit8 v2, v0, 0x4

    iget v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    if-le v2, v3, :cond_8

    .line 1241
    :cond_7
    new-instance v2, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too big case index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1245
    :cond_8
    sub-int v2, p3, p1

    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    invoke-static {v2, v3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    .line 1246
    return-void
.end method

.method public startMethod(Ljava/lang/String;Ljava/lang/String;S)V
    .locals 6
    .parameter "methodName"
    .parameter "type"
    .parameter "flags"

    .prologue
    .line 292
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v2

    .line 293
    .local v2, methodNameIndex:S
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v0, p2}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v4

    .line 294
    .local v4, typeIndex:S
    new-instance v0, Lorg/mozilla/classfile/ClassFileMethod;

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/classfile/ClassFileMethod;-><init>(Ljava/lang/String;SLjava/lang/String;SS)V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 296
    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    .line 297
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addSuperBlockStart(I)V

    .line 299
    return-void
.end method

.method public stopMethod(S)V
    .locals 35
    .parameter "maxLocals"

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    .line 312
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "No method to stop"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 314
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter;->fixLabelGotos()V

    .line 316
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    .line 318
    const/16 v22, 0x0

    .line 319
    .local v22, stackMap:Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
    sget-boolean v32, Lorg/mozilla/classfile/ClassFileWriter;->GenerateStackMap:Z

    if-eqz v32, :cond_1

    .line 320
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/classfile/ClassFileWriter;->finalizeSuperBlockStarts()V

    .line 321
    new-instance v22, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;

    .end local v22           #stackMap:Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;-><init>(Lorg/mozilla/classfile/ClassFileWriter;)V

    .line 322
    .restart local v22       #stackMap:Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->generate()V

    .line 325
    :cond_1
    const/16 v19, 0x0

    .line 326
    .local v19, lineNumberTableLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    add-int/lit8 v19, v32, 0x8

    .line 333
    :cond_2
    const/16 v31, 0x0

    .line 334
    .local v31, variableTableLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v32

    mul-int/lit8 v32, v32, 0xa

    add-int/lit8 v31, v32, 0x8

    .line 341
    :cond_3
    const/16 v24, 0x0

    .line 342
    .local v24, stackMapTableLength:I
    if-eqz v22, :cond_4

    .line 343
    invoke-virtual/range {v22 .. v22}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->computeWriteSize()I

    move-result v25

    .line 344
    .local v25, stackMapWriteSize:I
    if-lez v25, :cond_4

    .line 345
    add-int/lit8 v24, v25, 0x6

    .line 349
    .end local v25           #stackMapWriteSize:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0xe

    add-int/lit8 v32, v32, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    move/from16 v33, v0

    mul-int/lit8 v33, v33, 0x8

    add-int v32, v32, v33

    add-int/lit8 v32, v32, 0x2

    add-int v32, v32, v19

    add-int v32, v32, v31

    add-int v5, v32, v24

    .line 362
    .local v5, attrLength:I
    const/high16 v32, 0x1

    move v0, v5

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 366
    new-instance v32, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;

    const-string v33, "generated bytecode for method exceeds 64K limit."

    invoke-direct/range {v32 .. v33}, Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 369
    :cond_5
    new-array v10, v5, [B

    .line 370
    .local v10, codeAttribute:[B
    const/16 v16, 0x0

    .line 371
    .local v16, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    move-object/from16 v32, v0

    const-string v33, "Code"

    invoke-virtual/range {v32 .. v33}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v9

    .line 372
    .local v9, codeAttrIndex:I
    move v0, v9

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 373
    add-int/lit8 v5, v5, -0x6

    .line 374
    move v0, v5

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v16

    .line 375
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 376
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxLocals:S

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v16

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object v2, v10

    move/from16 v3, v16

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    move/from16 v32, v0

    add-int v16, v16, v32

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    move/from16 v32, v0

    if-lez v32, :cond_9

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 384
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    move/from16 v32, v0

    move v0, v15

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    move-object/from16 v32, v0

    aget-object v13, v32, v15

    .line 386
    .local v13, ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    move-object v0, v13

    iget v0, v0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v32

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v27, v0

    .line 387
    .local v27, startPC:S
    move-object v0, v13

    iget v0, v0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v32

    move/from16 v0, v32

    int-to-short v0, v0

    move v12, v0

    .line 388
    .local v12, endPC:S
    move-object v0, v13

    iget v0, v0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    move-result v32

    move/from16 v0, v32

    int-to-short v0, v0

    move v14, v0

    .line 389
    .local v14, handlerPC:S
    iget-short v7, v13, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    .line 390
    .local v7, catchType:S
    const/16 v32, -0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 391
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "start label not defined"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 392
    :cond_6
    const/16 v32, -0x1

    move v0, v12

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 393
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "end label not defined"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 394
    :cond_7
    const/16 v32, -0x1

    move v0, v14

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 395
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "handler label not defined"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 398
    :cond_8
    move/from16 v0, v27

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 399
    move v0, v12

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 400
    move v0, v14

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 401
    move v0, v7

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 384
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 406
    .end local v7           #catchType:S
    .end local v12           #endPC:S
    .end local v13           #ete:Lorg/mozilla/classfile/ExceptionTableEntry;
    .end local v14           #handlerPC:S
    .end local v15           #i:I
    .end local v27           #startPC:S
    :cond_9
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 409
    :cond_a
    const/4 v6, 0x0

    .line 410
    .local v6, attributeCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    .line 411
    add-int/lit8 v6, v6, 0x1

    .line 412
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    .line 413
    add-int/lit8 v6, v6, 0x1

    .line 414
    :cond_c
    if-lez v24, :cond_d

    .line 415
    add-int/lit8 v6, v6, 0x1

    .line 417
    :cond_d
    move v0, v6

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    move-object/from16 v32, v0

    const-string v33, "LineNumberTable"

    invoke-virtual/range {v32 .. v33}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v18

    .line 422
    .local v18, lineNumberTableAttrIndex:I
    move/from16 v0, v18

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x4

    add-int/lit8 v28, v32, 0x2

    .line 424
    .local v28, tableAttrLength:I
    move/from16 v0, v28

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v16

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 426
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    move/from16 v32, v0

    move v0, v15

    move/from16 v1, v32

    if-ge v0, v1, :cond_e

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTable:[I

    move-object/from16 v32, v0

    aget v32, v32, v15

    move/from16 v0, v32

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v16

    .line 426
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 431
    .end local v15           #i:I
    .end local v18           #lineNumberTableAttrIndex:I
    .end local v28           #tableAttrLength:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    move-object/from16 v32, v0

    const-string v33, "LocalVariableTable"

    invoke-virtual/range {v32 .. v33}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v30

    .line 434
    .local v30, variableTableAttrIndex:I
    move/from16 v0, v30

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v29

    .line 436
    .local v29, varCount:I
    mul-int/lit8 v32, v29, 0xa

    add-int/lit8 v28, v32, 0x2

    .line 437
    .restart local v28       #tableAttrLength:I
    move/from16 v0, v28

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v16

    .line 438
    move/from16 v0, v29

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 439
    const/4 v15, 0x0

    .end local p1
    .restart local v15       #i:I
    :goto_2
    move v0, v15

    move/from16 v1, v29

    if-ge v0, v1, :cond_f

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v8, v0

    .line 441
    .local v8, chunk:[I
    const/16 v32, 0x0

    aget v20, v8, v32

    .line 442
    .local v20, nameIndex:I
    const/16 v32, 0x1

    aget v11, v8, v32

    .line 443
    .local v11, descriptorIndex:I
    const/16 v32, 0x2

    aget v27, v8, v32

    .line 444
    .local v27, startPC:I
    const/16 v32, 0x3

    aget v21, v8, v32

    .line 445
    .local v21, register:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    move/from16 v32, v0

    sub-int v17, v32, v27

    .line 447
    .local v17, length:I
    move/from16 v0, v27

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 448
    move/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 449
    move/from16 v0, v20

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 450
    move v0, v11

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 451
    move/from16 v0, v21

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 439
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 455
    .end local v8           #chunk:[I
    .end local v11           #descriptorIndex:I
    .end local v15           #i:I
    .end local v17           #length:I
    .end local v20           #nameIndex:I
    .end local v21           #register:I
    .end local v27           #startPC:I
    .end local v28           #tableAttrLength:I
    .end local v29           #varCount:I
    .end local v30           #variableTableAttrIndex:I
    :cond_f
    if-lez v24, :cond_10

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    move-object/from16 v32, v0

    const-string v33, "StackMapTable"

    invoke-virtual/range {v32 .. v33}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v23

    .line 458
    .local v23, stackMapTableAttrIndex:I
    move/from16 v26, v16

    .line 459
    .local v26, start:I
    move/from16 v0, v23

    move-object v1, v10

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v16

    .line 460
    move-object/from16 v0, v22

    move-object v1, v10

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->write([BI)I

    move-result v16

    .line 463
    .end local v23           #stackMapTableAttrIndex:I
    .end local v26           #start:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileMethod;->setCodeAttribute([B)V

    .line 465
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 466
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 467
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsLineNumberTableTop:I

    .line 468
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBufferTop:I

    .line 469
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsCurrentMethod:Lorg/mozilla/classfile/ClassFileMethod;

    .line 470
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsMaxStack:S

    .line 471
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsStackTop:S

    .line 472
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsLabelTableTop:I

    .line 473
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsFixupTableTop:I

    .line 474
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsVarDescriptors:Lorg/mozilla/javascript/ObjArray;

    .line 475
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 476
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 477
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/classfile/ClassFileWriter;->itsJumpFroms:Lorg/mozilla/javascript/UintMap;

    .line 478
    return-void
.end method

.method public toByteArray()[B
    .locals 10

    .prologue
    .line 2779
    invoke-direct {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getWriteSize()I

    move-result v1

    .line 2780
    .local v1, dataSize:I
    new-array v0, v1, [B

    .line 2781
    .local v0, data:[B
    const/4 v6, 0x0

    .line 2783
    .local v6, offset:I
    const/4 v7, 0x0

    .line 2784
    .local v7, sourceFileAttributeNameIndex:S
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v8, :cond_0

    .line 2785
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    const-string v9, "SourceFile"

    invoke-virtual {v8, v9}, Lorg/mozilla/classfile/ConstantPool;->addUtf8(Ljava/lang/String;)S

    move-result v7

    .line 2789
    :cond_0
    const v8, -0x35014542

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v6

    .line 2790
    sget v8, Lorg/mozilla/classfile/ClassFileWriter;->MinorVersion:I

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2791
    sget v8, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2792
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    invoke-virtual {v8, v0, v6}, Lorg/mozilla/classfile/ConstantPool;->write([BI)I

    move-result v6

    .line 2793
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFlags:S

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2794
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:S

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2795
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperClassIndex:S

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2796
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2797
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 2798
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsInterfaces:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 2799
    .local v4, interfaceIndex:I
    invoke-static {v4, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2797
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2801
    .end local v4           #interfaceIndex:I
    :cond_1
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2802
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 2803
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsFields:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/classfile/ClassFileField;

    .line 2804
    .local v2, field:Lorg/mozilla/classfile/ClassFileField;
    invoke-virtual {v2, v0, v6}, Lorg/mozilla/classfile/ClassFileField;->write([BI)I

    move-result v6

    .line 2802
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2806
    .end local v2           #field:Lorg/mozilla/classfile/ClassFileField;
    :cond_2
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2807
    const/4 v3, 0x0

    :goto_2
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 2808
    iget-object v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsMethods:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v3}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/classfile/ClassFileMethod;

    .line 2809
    .local v5, method:Lorg/mozilla/classfile/ClassFileMethod;
    invoke-virtual {v5, v0, v6}, Lorg/mozilla/classfile/ClassFileMethod;->write([BI)I

    move-result v6

    .line 2807
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2811
    .end local v5           #method:Lorg/mozilla/classfile/ClassFileMethod;
    :cond_3
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    if-eqz v8, :cond_4

    .line 2812
    const/4 v8, 0x1

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2813
    invoke-static {v7, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2814
    const/4 v8, 0x2

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32(I[BI)I

    move-result v6

    .line 2815
    iget-short v8, p0, Lorg/mozilla/classfile/ClassFileWriter;->itsSourceFileNameIndex:S

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    .line 2820
    :goto_3
    if-eq v6, v1, :cond_5

    .line 2822
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8

    .line 2817
    :cond_4
    const/4 v8, 0x0

    invoke-static {v8, v0, v6}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result v6

    goto :goto_3

    .line 2825
    :cond_5
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "oStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2732
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v0

    .line 2733
    .local v0, array:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2734
    return-void
.end method
