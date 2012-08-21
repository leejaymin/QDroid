.class public Ledu/umich/PowerTutor/phone/SapphirePowerCalculator;
.super Ledu/umich/PowerTutor/phone/DreamPowerCalculator;
.source "SapphirePowerCalculator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Ledu/umich/PowerTutor/phone/SapphireConstants;

    invoke-direct {v0, p1}, Ledu/umich/PowerTutor/phone/SapphireConstants;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 0
    .parameter "coeffs"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    .line 41
    return-void
.end method
