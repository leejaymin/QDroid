.class public Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
.super Lkankan/wheel/widget/NumericWheelAdapter;
.source "FormatNumericWheelAdapter.java"


# instance fields
.field private formatter:Ljava/text/NumberFormat;

.field private maxCharacterLength:I


# direct methods
.method public constructor <init>(IILjava/text/NumberFormat;I)V
    .locals 1
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "formatter"
    .parameter "maxCharLength"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lkankan/wheel/widget/NumericWheelAdapter;-><init>(II)V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 22
    iput-object p3, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    .line 23
    iput p4, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 24
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getMinValue()I

    move-result v1

    add-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    return v0
.end method

.method public setFormatter(Ljava/text/NumberFormat;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 26
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->formatter:Ljava/text/NumberFormat;

    .line 27
    return-void
.end method

.method public setMaximumLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 45
    iput p1, p0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->maxCharacterLength:I

    .line 46
    return-void
.end method
