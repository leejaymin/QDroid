.class public final Lcom/google/devtools/simple/runtime/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# static fields
.field public static final E:D = 2.718281828459045
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleDataElement;
    .end annotation
.end field

.field public static final PI:D = 3.141592653589793
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleDataElement;
    .end annotation
.end field

.field private static final randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/devtools/simple/runtime/Math;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static Abs(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    if-gez v0, :cond_0

    .line 48
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/devtools/simple/runtime/variants/IntegerVariant;->getIntegerVariant(I)Lcom/google/devtools/simple/runtime/variants/IntegerVariant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/variants/Variant;->mul(Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;

    move-result-object p0

    .line 51
    :cond_0
    return-object p0
.end method

.method public static Atn(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Atn2(DD)D
    .locals 2
    .parameter "y"
    .parameter "x"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Cos(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 87
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static DegreesToRadians(D)D
    .locals 2
    .parameter "d"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 220
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Exp(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 98
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Int(Lcom/google/devtools/simple/runtime/variants/Variant;)J
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Log(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Max(Lcom/google/devtools/simple/runtime/variants/Variant;Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "v1"
    .parameter "v2"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    .line 135
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static Min(Lcom/google/devtools/simple/runtime/variants/Variant;Lcom/google/devtools/simple/runtime/variants/Variant;)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "v1"
    .parameter "v2"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    .line 152
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->getDouble()D

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/variants/Variant;->cmp(Lcom/google/devtools/simple/runtime/variants/Variant;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static RadiansToDegrees(D)D
    .locals 2
    .parameter "r"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 231
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Rnd()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/google/devtools/simple/runtime/Math;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static Sgn(D)I
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 187
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static Sin(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 176
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Sqr(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 198
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Tan(D)D
    .locals 2
    .parameter "v"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 209
    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    return-wide v0
.end method
