.class Lorg/mozilla/javascript/regexp/REBackTrackData;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field continuation_op:I

.field continuation_pc:I

.field cp:I

.field lastParen:I

.field parens:[J

.field previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

.field stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/regexp/REGlobalData;II)V
    .locals 1
    .parameter "gData"
    .parameter "op"
    .parameter "pc"

    .prologue
    .line 2716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2717
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2718
    iput p2, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuation_op:I

    .line 2719
    iput p3, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuation_pc:I

    .line 2720
    iget v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->lastParen:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->lastParen:I

    .line 2721
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    if-eqz v0, :cond_0

    .line 2722
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    .line 2724
    :cond_0
    iget v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    .line 2725
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2726
    return-void
.end method
