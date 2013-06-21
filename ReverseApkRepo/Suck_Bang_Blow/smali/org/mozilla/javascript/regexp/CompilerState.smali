.class Lorg/mozilla/javascript/regexp/CompilerState;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field classCount:I

.field cp:I

.field cpbegin:[C

.field cpend:I

.field cx:Lorg/mozilla/javascript/Context;

.field flags:I

.field parenCount:I

.field parenNesting:I

.field progLength:I

.field result:Lorg/mozilla/javascript/regexp/RENode;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Context;[CII)V
    .locals 1
    .parameter "cx"
    .parameter "source"
    .parameter "length"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 2665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2666
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    .line 2667
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 2668
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 2669
    iput p3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 2670
    iput p4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 2671
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 2672
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    .line 2673
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 2674
    return-void
.end method
