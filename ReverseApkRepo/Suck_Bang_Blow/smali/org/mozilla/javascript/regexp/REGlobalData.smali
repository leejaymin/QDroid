.class Lorg/mozilla/javascript/regexp/REGlobalData;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

.field cp:I

.field lastParen:I

.field multiline:Z

.field parens:[J

.field regexp:Lorg/mozilla/javascript/regexp/RECompiled;

.field skipped:I

.field stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parens_index(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 2757
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    aget-wide v0, v0, p1

    long-to-int v0, v0

    return v0
.end method

.method parens_length(I)I
    .locals 3
    .parameter "i"

    .prologue
    .line 2765
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    aget-wide v0, v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method set_parens(III)V
    .locals 6
    .parameter "i"
    .parameter "index"
    .parameter "length"

    .prologue
    .line 2770
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    int-to-long v1, p2

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 2771
    return-void
.end method
