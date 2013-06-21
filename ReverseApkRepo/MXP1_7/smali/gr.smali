.class public Lgr;
.super Ljava/lang/Object;


# static fields
.field public static 癤욱븳援:I

.field public static 궗:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x28

    const/16 v5, 0x14

    const/16 v4, 0xa

    const/16 v3, 0x271a

    const/4 v2, 0x0

    sput v2, Lgr;->궗:I

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    sput v2, Lgr;->癤욱븳援:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :sswitch_0
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2710

    sput v0, Lgr;->궗:I

    goto :goto_0

    :cond_2
    const-string v0, "Sony Ericsson"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2724

    sput v0, Lgr;->궗:I

    goto :goto_0

    :sswitch_1
    const-string v0, "HTC"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2738

    sput v0, Lgr;->궗:I

    goto :goto_0

    :sswitch_2
    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x274c

    sput v0, Lgr;->궗:I

    goto :goto_0

    :sswitch_3
    const-string v0, "Motorola"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2742

    sput v0, Lgr;->궗:I

    goto :goto_0

    :sswitch_4
    const-string v0, "Acer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput v3, Lgr;->궗:I

    goto :goto_0

    :cond_3
    const-string v0, "archos"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x272e

    sput v0, Lgr;->궗:I

    goto :goto_0

    :cond_4
    const-string v0, "ainol"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2756

    sput v0, Lgr;->궗:I

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "KTTech"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2760

    sput v0, Lgr;->궗:I

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "rockchip"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x276a

    sput v0, Lgr;->궗:I

    goto/16 :goto_0

    :pswitch_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput v4, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I91"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput v5, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-N700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput v6, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_7
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S583"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x32

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x34

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_9
    const-string v0, "Galaxy Nexus"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-T959"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    sput v4, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput v5, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    const/16 v0, 0x15

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHV-E160"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sput v6, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M240"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x32

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_10
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x33

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_11
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M290"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x34

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-SGH-I717"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x29

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "A500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lgr;->궗:I

    if-ne v0, v3, :cond_13

    const/16 v0, 0xaa

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_13
    const-string v0, "A70H"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lgr;->궗:I

    const/16 v1, 0x272e

    if-ne v0, v1, :cond_1

    const/16 v0, 0x46

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "W500"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Lgr;->궗:I

    if-ne v0, v3, :cond_14

    const/16 v0, 0xaa

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_14
    const-string v0, "WXG-7F29"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "Nexus S"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x3c

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_15
    const-string v0, "Nexus One"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x3d

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_16
    const-string v0, "NOVO7PALADIN"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xbe

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MZ60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "E10i"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lgr;->궗:I

    const/16 v1, 0x2724

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_8
    const-string v0, "Transformer Prime TF201"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6e

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_9
    const-string v0, "Kindle Fire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x78

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_17
    sget v0, Lgr;->궗:I

    const/16 v1, 0x2760

    if-ne v0, v1, :cond_1

    const-string v0, "KM-E100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_a
    const-string v0, "HTC Desire"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x8c

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_18
    const-string v0, "HTC_X515E"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa0

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_b
    const-string v0, "Desire HD"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x96

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :cond_19
    const-string v0, "Dell Venue"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd2

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "LG-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "U370"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_1a
    const/16 v0, 0xb4

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    :pswitch_d
    sget v0, Lgr;->궗:I

    const/16 v1, 0x276a

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "U30GT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xdc

    sput v0, Lgr;->癤욱븳援:I

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x48 -> :sswitch_1
        0x4b -> :sswitch_5
        0x4c -> :sswitch_2
        0x4d -> :sswitch_3
        0x52 -> :sswitch_6
        0x53 -> :sswitch_0
        0x61 -> :sswitch_4
        0x6d -> :sswitch_3
        0x72 -> :sswitch_6
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_d
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
