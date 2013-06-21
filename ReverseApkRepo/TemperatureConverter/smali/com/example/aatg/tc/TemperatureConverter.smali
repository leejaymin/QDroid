.class public Lcom/example/aatg/tc/TemperatureConverter;
.super Ljava/lang/Object;
.source "TemperatureConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/aatg/tc/TemperatureConverter$OP;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_ZERO_C:D = -273.15

.field public static final ABSOLUTE_ZERO_F:D = -459.67

.field public static final ERROR_MESSAGE_BELOW_ZERO_FMT:Ljava/lang/String; = "Invalid temperature: %.2f%c below absolute zero"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static celsiusToFahrenheit(D)D
    .locals 5
    .parameter "c"

    .prologue
    .line 35
    const-wide v0, -0x3f8eed999999999aL

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 36
    new-instance v0, Lcom/example/aatg/tc/InvalidTemperatureException;

    .line 37
    const-string v1, "Invalid temperature: %.2f%c below absolute zero"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x43

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lcom/example/aatg/tc/InvalidTemperatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    const-wide v0, 0x3ffccccccccccccdL

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4040

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static fahrenheitToCelsius(D)D
    .locals 5
    .parameter "f"

    .prologue
    .line 27
    const-wide v0, -0x3f834547ae147ae1L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 28
    new-instance v0, Lcom/example/aatg/tc/InvalidTemperatureException;

    .line 29
    const-string v1, "Invalid temperature: %.2f%c below absolute zero"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x46

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lcom/example/aatg/tc/InvalidTemperatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    const-wide/high16 v0, 0x4040

    sub-double v0, p0, v0

    const-wide v2, 0x3ffccccccccccccdL

    div-double/2addr v0, v2

    return-wide v0
.end method
