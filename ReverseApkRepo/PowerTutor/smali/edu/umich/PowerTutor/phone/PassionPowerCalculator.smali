.class public Ledu/umich/PowerTutor/phone/PassionPowerCalculator;
.super Ledu/umich/PowerTutor/phone/DreamPowerCalculator;
.source "PassionPowerCalculator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    new-instance v0, Ledu/umich/PowerTutor/phone/PassionConstants;

    invoke-direct {v0, p1}, Ledu/umich/PowerTutor/phone/PassionConstants;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 0
    .parameter "coeffs"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getOledPower(Ledu/umich/PowerTutor/components/OLED$OledData;)D
    .locals 6
    .parameter "data"

    .prologue
    .line 46
    iget-boolean v0, p1, Ledu/umich/PowerTutor/components/OLED$OledData;->screenOn:Z

    if-nez v0, :cond_0

    .line 47
    const-wide/16 v0, 0x0

    .line 53
    :goto_0
    return-wide v0

    .line 49
    :cond_0
    iget-wide v0, p1, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v0}, Ledu/umich/PowerTutor/phone/PhoneConstants;->oledBasePower()D

    move-result-wide v0

    iget-object v2, p0, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->lcdBrightness()D

    move-result-wide v2

    iget v4, p1, Ledu/umich/PowerTutor/components/OLED$OledData;->brightness:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v0}, Ledu/umich/PowerTutor/phone/PhoneConstants;->oledBasePower()D

    move-result-wide v0

    iget-wide v2, p1, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    iget v4, p1, Ledu/umich/PowerTutor/components/OLED$OledData;->brightness:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0
.end method
