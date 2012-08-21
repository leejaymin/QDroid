.class public Ledu/umich/PowerTutor/phone/PhoneSelector;
.super Ljava/lang/Object;
.source "PhoneSelector.java"


# static fields
.field public static final OLED_PHONES:[Ljava/lang/String; = null

.field public static final PHONE_DREAM:I = 0x1

.field public static final PHONE_PASSION:I = 0x3

.field public static final PHONE_SAPPHIRE:I = 0x2

.field public static final PHONE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PhoneSelector"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 58
    const-string v2, "bravo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 59
    const-string v2, "passion"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 60
    const-string v2, "GT-I9000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 61
    const-string v2, "inc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 62
    const-string v2, "legend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 63
    const-string v2, "GT-I7500"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 64
    const-string v2, "SPH-M900"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 65
    const-string v2, "SGH-I897"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 66
    const-string v2, "SGH-T959"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 67
    const-string v2, "desirec"

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Ledu/umich/PowerTutor/phone/PhoneSelector;->OLED_PHONES:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateComponents(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ledu/umich/PowerTutor/components/PowerComponent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ledu/umich/PowerTutor/phone/PowerFunction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, components:Ljava/util/List;,"Ljava/util/List<Ledu/umich/PowerTutor/components/PowerComponent;>;"
    .local p2, functions:Ljava/util/List;,"Ljava/util/List<Ledu/umich/PowerTutor/phone/PowerFunction;>;"
    invoke-static {p0}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getConstants(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhoneConstants;

    move-result-object v1

    .line 134
    .local v1, constants:Ledu/umich/PowerTutor/phone/PhoneConstants;
    invoke-static {p0}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getCalculator(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhonePowerCalculator;

    move-result-object v0

    .line 140
    .local v0, calculator:Ledu/umich/PowerTutor/phone/PhonePowerCalculator;
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->hasOled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    new-instance v3, Ledu/umich/PowerTutor/components/OLED;

    invoke-direct {v3, p0, v1}, Ledu/umich/PowerTutor/components/OLED;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$1;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$1;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    new-instance v3, Ledu/umich/PowerTutor/components/CPU;

    invoke-direct {v3, v1}, Ledu/umich/PowerTutor/components/CPU;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$3;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$3;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v3

    const-string v4, "wifi.interface"

    invoke-virtual {v3, v4}, Ledu/umich/PowerTutor/util/SystemInfo;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, wifiInterface:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Ledu/umich/PowerTutor/components/Wifi;

    invoke-direct {v3, p0, v1}, Ledu/umich/PowerTutor/components/Wifi;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$4;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$4;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    invoke-interface {v1}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegInterface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    new-instance v3, Ledu/umich/PowerTutor/components/Threeg;

    invoke-direct {v3, p0, v1}, Ledu/umich/PowerTutor/components/Threeg;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$5;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$5;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_1
    new-instance v3, Ledu/umich/PowerTutor/components/GPS;

    invoke-direct {v3, p0, v1}, Ledu/umich/PowerTutor/components/GPS;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$6;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$6;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v3, Ledu/umich/PowerTutor/components/Audio;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/components/Audio;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$7;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$7;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {}, Ledu/umich/PowerTutor/util/NotificationService;->available()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    new-instance v3, Ledu/umich/PowerTutor/components/Sensors;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/components/Sensors;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$8;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$8;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_2
    return-void

    .line 147
    .end local v2           #wifiInterface:Ljava/lang/String;
    :cond_3
    new-instance v3, Ledu/umich/PowerTutor/components/LCD;

    invoke-direct {v3, p0}, Ledu/umich/PowerTutor/components/LCD;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v3, Ledu/umich/PowerTutor/phone/PhoneSelector$2;

    invoke-direct {v3, v0}, Ledu/umich/PowerTutor/phone/PhoneSelector$2;-><init>(Ledu/umich/PowerTutor/phone/PhonePowerCalculator;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getCalculator(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhonePowerCalculator;
    .locals 4
    .parameter "context"

    .prologue
    .line 114
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->hasOled()Z

    move-result v0

    .line 123
    .local v0, oled:Z
    const-string v2, "PhoneSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Phone type not recognized ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), using "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    if-eqz v0, :cond_0

    const-string v1, "Passion"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " calculator"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-eqz v0, :cond_1

    new-instance v1, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;-><init>(Landroid/content/Context;)V

    .end local v0           #oled:Z
    :goto_1
    return-object v1

    .line 116
    :pswitch_0
    new-instance v1, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 118
    :pswitch_1
    new-instance v1, Ledu/umich/PowerTutor/phone/SapphirePowerCalculator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/SapphirePowerCalculator;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 120
    :pswitch_2
    new-instance v1, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/PassionPowerCalculator;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 124
    .restart local v0       #oled:Z
    :cond_0
    const-string v1, "Dream"

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getConstants(Landroid/content/Context;)Ledu/umich/PowerTutor/phone/PhoneConstants;
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->hasOled()Z

    move-result v0

    .line 106
    .local v0, oled:Z
    const-string v2, "PhoneSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Phone type not recognized ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), using "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    if-eqz v0, :cond_0

    const-string v1, "Passion"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " constants"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_1

    new-instance v1, Ledu/umich/PowerTutor/phone/PassionConstants;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/PassionConstants;-><init>(Landroid/content/Context;)V

    .end local v0           #oled:Z
    :goto_1
    return-object v1

    .line 99
    :pswitch_0
    new-instance v1, Ledu/umich/PowerTutor/phone/DreamConstants;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/DreamConstants;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 101
    :pswitch_1
    new-instance v1, Ledu/umich/PowerTutor/phone/SapphireConstants;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/SapphireConstants;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 103
    :pswitch_2
    new-instance v1, Ledu/umich/PowerTutor/phone/PassionConstants;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/PassionConstants;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 107
    .restart local v0       #oled:Z
    :cond_0
    const-string v1, "Dream"

    goto :goto_0

    .line 109
    :cond_1
    new-instance v1, Ledu/umich/PowerTutor/phone/DreamConstants;

    invoke-direct {v1, p0}, Ledu/umich/PowerTutor/phone/DreamConstants;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getPhoneType()I
    .locals 2

    .prologue
    .line 90
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 91
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "sapphire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "passion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasOled()Z
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ledu/umich/PowerTutor/phone/PhoneSelector;->OLED_PHONES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 86
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 82
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Ledu/umich/PowerTutor/phone/PhoneSelector;->OLED_PHONES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x1

    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static phoneSupported()Z
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
