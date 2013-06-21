.class Lorg/mozilla/javascript/regexp/REProgState;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

.field continuation_op:I

.field continuation_pc:I

.field index:I

.field max:I

.field min:I

.field previous:Lorg/mozilla/javascript/regexp/REProgState;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 0
    .parameter "previous"
    .parameter "min"
    .parameter "max"
    .parameter "index"
    .parameter "backTrack"
    .parameter "continuation_pc"
    .parameter "continuation_op"

    .prologue
    .line 2693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2694
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2695
    iput p2, p0, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .line 2696
    iput p3, p0, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 2697
    iput p4, p0, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    .line 2698
    iput p7, p0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2699
    iput p6, p0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2700
    iput-object p5, p0, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2701
    return-void
.end method
