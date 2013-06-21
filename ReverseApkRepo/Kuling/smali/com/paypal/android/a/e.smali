.class public final Lcom/paypal/android/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "en_us,es_ar,pt_br,en_gb,en_au,de_at,en_de,en_be,nl_be,fr_be,fr_ch,en_ca,fr_ca,fr_fr,en_fr,de_de,en_de,zh_hk,en_hk,en_in,it_it,ja_jp,en_jp,es_mx,en_mx,nl_nl,en_nl,pl_pl,en_pl,en_sg,es_es,en_es,de_ch,en_ch,fr_ch,zh_tw,en_tw"

    sput-object v0, Lcom/paypal/android/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLjava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/paypal/android/a/e;->c:Ljava/text/NumberFormat;

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    sget-object v0, Lcom/paypal/android/a/e;->c:Ljava/text/NumberFormat;

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    sput-object v0, Lcom/paypal/android/a/e;->c:Ljava/text/NumberFormat;

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/a/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/a/e;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/paypal/android/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 8

    const/16 v5, 0x2caf

    const/16 v4, 0x2c90

    const/16 v3, 0x2ff6

    const/4 v6, 0x0

    const/4 v2, -0x1

    if-nez p0, :cond_29

    const-string v0, "en_US"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/a/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "en_US"

    :cond_0
    sget-object v1, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/DecimalFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    check-cast p0, Ljava/text/DecimalFormat;

    sput-object p0, Lcom/paypal/android/a/e;->c:Ljava/text/NumberFormat;

    const-string v1, "en_us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    const v0, 0x55df9

    move v1, v0

    move v0, v5

    :goto_1
    const-string v2, "com/paypal/android/utils/data/locale.bin"

    invoke-static {v2}, Lcom/paypal/android/a/d;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/paypal/android/a/d;->a(II[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    move v1, v6

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_27

    aget-object v2, v0, v1

    const-string v3, "\" = \""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\" = \""

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v6

    const/16 v4, 0x22

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\";"

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/paypal/android/a/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const-string v1, "es_ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    const v0, 0x5ec2f

    const/16 v1, 0x2d05

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_4
    const-string v1, "pt_br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    const v0, 0xf91b

    const/16 v1, 0x311c

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_5
    const-string v1, "en_gb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_6

    const v0, 0x58aa8

    const/16 v1, 0x2d8a

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_6
    const-string v1, "en_au"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_7

    const v0, 0x1b4ef

    const/16 v1, 0x2ed6

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_7
    const-string v1, "de_at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8

    const v0, 0x4ff25

    const/16 v1, 0x3213

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_8
    const-string v1, "en_de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_9

    const v0, 0x4a6e6

    move v1, v0

    move v0, v4

    goto/16 :goto_1

    :cond_9
    const-string v1, "en_be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a

    const/16 v0, 0x688d

    const/16 v1, 0x2cc3

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_a
    const-string v1, "nl_be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b

    move v0, v3

    move v1, v6

    goto/16 :goto_1

    :cond_b
    const-string v1, "fr_be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_c

    const v0, 0x363e3

    const/16 v1, 0x3490

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_c
    const-string v1, "fr_ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_d

    const v0, 0x5b832

    const/16 v1, 0x33fd

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_d
    const-string v1, "en_ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    const v0, 0x44e04

    move v1, v0

    move v0, v5

    goto/16 :goto_1

    :cond_e
    const-string v1, "fr_ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f

    const v0, 0xc28c

    const/16 v1, 0x368f

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_f
    const-string v1, "fr_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10

    const v0, 0x61934

    const/16 v1, 0x33b7

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_10
    const-string v1, "en_fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_11

    const v0, 0x3c504

    const/16 v1, 0x2ca9

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_11
    const-string v1, "de_de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_12

    const v0, 0x1e3c5

    const/16 v1, 0x3211

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_12
    const-string v1, "en_de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_13

    const v0, 0x4a6e6

    move v1, v0

    move v0, v4

    goto/16 :goto_1

    :cond_13
    const-string v1, "zh_hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_14

    const v0, 0x421e6

    const/16 v1, 0x2c1e

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_14
    const-string v1, "en_hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_15

    const v0, 0x2d2cc

    const/16 v1, 0x2cc1

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_15
    const-string v1, "en_in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_16

    const v0, 0x215d6

    const/16 v1, 0x2d4f

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_16
    const-string v1, "it_it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_17

    const v0, 0x27455

    const/16 v1, 0x31c2

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_17
    const-string v1, "ja_jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_18

    const/16 v0, 0x3897

    move v1, v3

    goto/16 :goto_1

    :cond_18
    const-string v1, "en_jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_19

    const v0, 0x4d376

    const/16 v1, 0x2baf

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_19
    const-string v1, "es_mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1a

    const v0, 0x3f1ad

    const/16 v1, 0x3039

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_1a
    const-string v1, "en_mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1b

    const v0, 0x47ab3

    const/16 v1, 0x2c33

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_1b
    const-string v1, "nl_nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1c

    move v0, v3

    move v1, v6

    goto/16 :goto_1

    :cond_1c
    const-string v1, "en_nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1d

    const/16 v0, 0x688d

    const/16 v1, 0x2cc3

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_1d
    const-string v1, "pl_pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1e

    const v0, 0x32e41

    const/16 v1, 0x35a2

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_1e
    const-string v1, "en_pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1f

    const v0, 0x2ff8d

    const/16 v1, 0x2eb4

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_1f
    const-string v1, "en_sg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_20

    const v0, 0x9550

    const/16 v1, 0x2d3c

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_20
    const-string v1, "es_es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_21

    const v0, 0x24325

    const/16 v1, 0x3130

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_21
    const-string v1, "en_es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_22

    const v0, 0x2a617

    const/16 v1, 0x2cb5

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_22
    const-string v1, "de_ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_23

    const v0, 0x182dc

    const/16 v1, 0x3213

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_23
    const-string v1, "en_ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_24

    const v0, 0x39873

    const/16 v1, 0x2c91

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_24
    const-string v1, "fr_ch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_25

    const v0, 0x5b832

    const/16 v1, 0x33fd

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_25
    const-string v1, "zh_tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_26

    const v0, 0x156c7

    const/16 v1, 0x2c15

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_26
    const-string v1, "en_tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_28

    const v0, 0x53138

    const/16 v1, 0x2cc1

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_1

    :cond_27
    return-void

    :cond_28
    move v0, v6

    move v1, v6

    goto/16 :goto_1

    :cond_29
    move-object v0, p0

    goto/16 :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    sub-int v2, v1, v3

    if-le v2, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_3

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    :cond_2
    move v0, v3

    :goto_1
    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x2b

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "1"

    const-string v5, ""

    const/16 v0, 0x34

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v7, v0, v3

    const-string v1, "44"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "61"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "54"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "43"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "32"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "55"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "41"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "56"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "86"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "506"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "357"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "420"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "49"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "45"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "593"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "372"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "34"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "358"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "33"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "30"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "852"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "36"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "353"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "972"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "91"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "354"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "39"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "81"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "82"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "370"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "352"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "371"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "377"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "356"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "52"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "60"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "31"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "47"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "64"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "48"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "351"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "46"

    aput-object v2, v0, v1

    const-string v1, "65"

    aput-object v1, v0, v6

    const/16 v1, 0x2c

    const-string v2, "386"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "421"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "66"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "90"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "886"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "598"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "58"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "27"

    aput-object v2, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    if-eq v0, v1, :cond_13

    const-string v1, "UK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "44"

    goto :goto_1

    :cond_3
    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "61"

    goto :goto_1

    :cond_4
    const-string v1, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "33"

    goto :goto_1

    :cond_5
    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, ""

    move-object v0, v5

    goto :goto_1

    :cond_6
    const-string v1, "DK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, ""

    move-object v0, v5

    goto :goto_1

    :cond_7
    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, ""

    move-object v0, v5

    goto :goto_1

    :cond_8
    const-string v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "34"

    goto :goto_1

    :cond_9
    const-string v1, "IT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "39"

    goto :goto_1

    :cond_a
    const-string v1, "NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_b
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_c
    const-string v1, "PL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_d
    const-string v1, "BR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_e
    const-string v1, "RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_f
    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_10
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_11
    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_12
    const-string v1, "MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ""

    move-object v0, v5

    goto/16 :goto_1

    :cond_13
    const-string v0, "1"

    move-object v0, v7

    goto/16 :goto_1
.end method
