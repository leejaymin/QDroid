.class Ledu/umich/PowerTutor/phone/PhoneSelector$8;
.super Ljava/lang/Object;
.source "PhoneSelector.java"

# interfaces
.implements Ledu/umich/PowerTutor/phone/PowerFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/phone/PhoneSelector;->generateComponents(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$calculator:Ledu/umich/PowerTutor/phone/PhonePowerCalculator;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/phone/PhoneSelector$8;->val$calculator:Ledu/umich/PowerTutor/phone/PhonePowerCalculator;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Ledu/umich/PowerTutor/service/PowerData;)D
    .locals 2
    .parameter "data"

    .prologue
    .line 200
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/PhoneSelector$8;->val$calculator:Ledu/umich/PowerTutor/phone/PhonePowerCalculator;

    check-cast p1, Ledu/umich/PowerTutor/components/Sensors$SensorData;

    .end local p1
    invoke-interface {v0, p1}, Ledu/umich/PowerTutor/phone/PhonePowerCalculator;->getSensorPower(Ledu/umich/PowerTutor/components/Sensors$SensorData;)D

    move-result-wide v0

    return-wide v0
.end method
