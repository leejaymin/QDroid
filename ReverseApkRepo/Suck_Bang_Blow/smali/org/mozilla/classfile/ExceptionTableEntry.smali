.class final Lorg/mozilla/classfile/ExceptionTableEntry;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field itsCatchType:S

.field itsEndLabel:I

.field itsHandlerLabel:I

.field itsStartLabel:I


# direct methods
.method constructor <init>(IIIS)V
    .locals 0
    .parameter "startLabel"
    .parameter "endLabel"
    .parameter "handlerLabel"
    .parameter "catchType"

    .prologue
    .line 4264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4265
    iput p1, p0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 4266
    iput p2, p0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 4267
    iput p3, p0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 4268
    iput-short p4, p0, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    .line 4269
    return-void
.end method
