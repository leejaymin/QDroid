.class public Lkankan/wheel/widget/NumericWheelAdapter;
.super Ljava/lang/Object;
.source "NumericWheelAdapter.java"

# interfaces
.implements Lkankan/wheel/widget/WheelAdapter;


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lkankan/wheel/widget/NumericWheelAdapter;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    .line 55
    iput p2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    .line 56
    return-void
.end method


# virtual methods
.method public getIndex(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    sub-int v0, p1, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 61
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lkankan/wheel/widget/NumericWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    return v0
.end method

.method public getMaximumLength()I
    .locals 4

    .prologue
    .line 74
    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->maxValue:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    .local v0, max:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    .local v1, maxLen:I
    iget v2, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    if-gez v2, :cond_0

    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 79
    :cond_0
    return v1
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    return v0
.end method

.method public getValue(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 91
    iget v0, p0, Lkankan/wheel/widget/NumericWheelAdapter;->minValue:I

    add-int/2addr v0, p1

    return v0
.end method
