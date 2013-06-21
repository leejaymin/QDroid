.class final Lorg/mozilla/classfile/ClassFileMethod;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field private itsCodeAttribute:[B

.field private itsFlags:S

.field private itsName:Ljava/lang/String;

.field private itsNameIndex:S

.field private itsType:Ljava/lang/String;

.field private itsTypeIndex:S


# direct methods
.method constructor <init>(Ljava/lang/String;SLjava/lang/String;SS)V
    .locals 0
    .parameter "name"
    .parameter "nameIndex"
    .parameter "type"
    .parameter "typeIndex"
    .parameter "flags"

    .prologue
    .line 4339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4340
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    .line 4341
    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    .line 4342
    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    .line 4343
    iput-short p4, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    .line 4344
    iput-short p5, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    .line 4345
    return-void
.end method


# virtual methods
.method getFlags()S
    .locals 1

    .prologue
    .line 4382
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4372
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    return-object v0
.end method

.method getWriteSize()I
    .locals 1

    .prologue
    .line 4367
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method setCodeAttribute([B)V
    .locals 0
    .parameter "codeAttribute"

    .prologue
    .line 4349
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    .line 4350
    return-void
.end method

.method write([BI)I
    .locals 3
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 4354
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4355
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4356
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4358
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4359
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4361
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 4362
    return p2
.end method
