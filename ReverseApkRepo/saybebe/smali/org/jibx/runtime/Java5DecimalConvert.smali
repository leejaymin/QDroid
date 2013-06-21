.class public abstract Lorg/jibx/runtime/Java5DecimalConvert;
.super Ljava/lang/Object;
.source "Java5DecimalConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serializeDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
