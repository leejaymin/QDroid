.class final Lorg/mozilla/classfile/ClassFileField;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field private itsAttr1:S

.field private itsAttr2:S

.field private itsAttr3:S

.field private itsFlags:S

.field private itsHasAttributes:Z

.field private itsIndex:I

.field private itsNameIndex:S

.field private itsTypeIndex:S


# direct methods
.method constructor <init>(SSS)V
    .locals 1
    .parameter "nameIndex"
    .parameter "typeIndex"
    .parameter "flags"

    .prologue
    .line 4281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4282
    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    .line 4283
    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    .line 4284
    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    .line 4285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    .line 4286
    return-void
.end method


# virtual methods
.method getWriteSize()I
    .locals 2

    .prologue
    .line 4317
    const/4 v0, 0x6

    .line 4318
    .local v0, size:I
    iget-boolean v1, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v1, :cond_0

    .line 4319
    add-int/lit8 v0, v0, 0x2

    .line 4323
    :goto_0
    return v0

    .line 4321
    :cond_0
    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method setAttributes(SSSI)V
    .locals 1
    .parameter "attr1"
    .parameter "attr2"
    .parameter "attr3"
    .parameter "index"

    .prologue
    .line 4290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    .line 4291
    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr1:S

    .line 4292
    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr2:S

    .line 4293
    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr3:S

    .line 4294
    iput p4, p0, Lorg/mozilla/classfile/ClassFileField;->itsIndex:I

    .line 4295
    return-void
.end method

.method write([BI)I
    .locals 1
    .parameter "data"
    .parameter "offset"

    .prologue
    .line 4299
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4300
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4301
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4302
    iget-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v0, :cond_0

    .line 4304
    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4312
    :goto_0
    return p2

    .line 4306
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4307
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr1:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4308
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr2:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4309
    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr3:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    .line 4310
    iget v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsIndex:I

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    goto :goto_0
.end method