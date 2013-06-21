.class public Lten/thirty/three/resistoridlite/OhmFormatter;
.super Ljava/lang/Object;
.source "OhmFormatter.java"


# static fields
.field static final micro:Ljava/lang/String;

.field private static ohmDigitformatter:Ljava/text/DecimalFormat;

.field static final omega:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2126

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0xb5

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->micro:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->ohmDigitformatter:Ljava/text/DecimalFormat;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Round3(D)D
    .locals 6
    .parameter "d"

    .prologue
    const-wide v4, 0x408f400000000000L

    .line 64
    mul-double v0, p0, v4

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    return-wide v0
.end method

.method public static format(DI)Ljava/lang/String;
    .locals 5
    .parameter "ohm"
    .parameter "maxFracDigits"

    .prologue
    .line 14
    const-string v0, ""

    .line 15
    .local v0, ohmStringtmp:Ljava/lang/String;
    const-string v1, ""

    .line 16
    .local v1, strTemp:Ljava/lang/String;
    sget-object v1, Lten/thirty/three/resistoridlite/OhmFormatter;->ohmDigitformatter:Ljava/text/DecimalFormat;

    .end local v1           #strTemp:Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 18
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, 0x4028

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_0

    .line 19
    .end local p2
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4028

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "T"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 46
    .local p2, ohmStringtmp:Ljava/lang/String;
    :goto_0
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, -0x3fd8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<0p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, strTemp:Ljava/lang/String;
    :goto_1
    const-wide/high16 v1, 0x7ff0

    cmpl-double p0, p0, v1

    if-nez p0, :cond_9

    .line 56
    .end local p0
    const-string p0, "%s%s"

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .end local p2           #ohmStringtmp:Ljava/lang/String;
    const/4 p2, 0x1

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    .end local v0           #strTemp:Ljava/lang/String;
    aput-object v0, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :goto_2
    return-object p0

    .line 21
    .local v0, ohmStringtmp:Ljava/lang/String;
    .restart local p0
    :cond_0
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, 0x4022

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_1

    .line 22
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4022

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "G"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto :goto_0

    .line 24
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_1
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, 0x4018

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_2

    .line 25
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4018

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 27
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_2
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, 0x4008

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_3

    .line 28
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4008

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "k"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 30
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_3
    const-wide/high16 v1, 0x4024

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_4

    .line 32
    sget-object p2, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 33
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_4
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, -0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_5

    .line 34
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, -0x3ff8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 36
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_5
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, -0x3fe8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_6

    .line 37
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, -0x3fe8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->micro:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 39
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_6
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, -0x3fde

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_7

    .line 40
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, -0x3fde

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "n"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 42
    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .restart local v0       #ohmStringtmp:Ljava/lang/String;
    :cond_7
    const-wide/high16 v1, 0x4024

    const-wide/high16 v3, -0x3fd8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    cmpl-double p2, p0, v1

    if-ltz p2, :cond_a

    .line 43
    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, -0x3fde

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    move-result-wide v0

    div-double/2addr p0, v0

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "p"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->omega:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0

    .line 51
    :cond_8
    sget-object v0, Lten/thirty/three/resistoridlite/OhmFormatter;->ohmDigitformatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .local v0, strTemp:Ljava/lang/String;
    goto/16 :goto_1

    .line 59
    .end local p0
    :cond_9
    const-string p0, "%s%s"

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .end local v0           #strTemp:Ljava/lang/String;
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .end local p2           #ohmStringtmp:Ljava/lang/String;
    .local v0, ohmStringtmp:Ljava/lang/String;
    .restart local p0
    :cond_a
    move-object p2, v0

    .end local v0           #ohmStringtmp:Ljava/lang/String;
    .restart local p2       #ohmStringtmp:Ljava/lang/String;
    goto/16 :goto_0
.end method
