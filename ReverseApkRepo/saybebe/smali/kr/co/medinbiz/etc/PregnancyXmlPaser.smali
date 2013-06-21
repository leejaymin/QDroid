.class public Lkr/co/medinbiz/etc/PregnancyXmlPaser;
.super Ljava/lang/Object;
.source "PregnancyXmlPaser.java"


# instance fields
.field private fis:Ljava/io/InputStream;

.field private mContext:Landroid/content/Context;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getInfoBabyAssetsFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    iget-object v2, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 31
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, strLanguage:Ljava/lang/String;
    const-string v2, "ja"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "info_baby-ja.xml"

    .line 36
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "info_baby.xml"

    goto :goto_0
.end method

.method public getInfoPregnancyAssetsFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 41
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, strLanguage:Ljava/lang/String;
    const-string v2, "ja"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, "info_pregnancy-ja.xml"

    .line 47
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "info_pregnancy.xml"

    goto :goto_0
.end method

.method public info_baby()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/BabyXmlData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, baby_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/BabyXmlData;>;"
    :try_start_0
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->getInfoBabyAssetsFile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->fis:Ljava/io/InputStream;

    .line 54
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    iput-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 55
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 56
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->fis:Ljava/io/InputStream;

    const-string v8, "UTF-8"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 57
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 58
    .local v4, eventType:I
    const/4 v2, 0x0

    .line 59
    .local v2, done:Z
    const/4 v1, 0x0

    .line 60
    .local v1, data:Lkr/co/medinbiz/dto/BabyXmlData;
    const/4 v5, 0x0

    .line 61
    .local v5, name:Ljava/lang/String;
    :goto_0
    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    if-eqz v2, :cond_1

    .line 107
    .end local v1           #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .end local v2           #done:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v6, "lmh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "baby_array !!! == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v0

    .line 63
    .restart local v1       #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .restart local v2       #done:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 97
    :cond_2
    :goto_2
    :try_start_1
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 68
    const-string v6, "week"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    new-instance v1, Lkr/co/medinbiz/dto/BabyXmlData;

    .end local v1           #data:Lkr/co/medinbiz/dto/BabyXmlData;
    invoke-direct {v1}, Lkr/co/medinbiz/dto/BabyXmlData;-><init>()V

    .restart local v1       #data:Lkr/co/medinbiz/dto/BabyXmlData;
    goto :goto_2

    .line 70
    :cond_3
    const-string v6, "boy_height"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->boy_height:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 99
    .end local v1           #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .end local v2           #done:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 101
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 102
    const-string v6, "lmh"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "XmlPullParserException e!!!"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .restart local v2       #done:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v6, "boy_weight"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 73
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->boy_weight:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 103
    .end local v1           #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .end local v2           #done:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 104
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    const-string v6, "lmh"

    const-string v7, "IOException e!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #data:Lkr/co/medinbiz/dto/BabyXmlData;
    .restart local v2       #done:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v6, "girl_height"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 75
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->girl_height:Ljava/lang/String;

    goto :goto_2

    .line 76
    :cond_6
    const-string v6, "girl_weight"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 77
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->girl_weight:Ljava/lang/String;

    goto/16 :goto_2

    .line 78
    :cond_7
    const-string v6, "height_tip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 79
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->height_tip:Ljava/lang/String;

    goto/16 :goto_2

    .line 80
    :cond_8
    const-string v6, "food_tip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 81
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->food_tip:Ljava/lang/String;

    goto/16 :goto_2

    .line 82
    :cond_9
    const-string v6, "health_tip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lkr/co/medinbiz/dto/BabyXmlData;->health_tip:Ljava/lang/String;

    goto/16 :goto_2

    .line 88
    :pswitch_1
    iget-object v6, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v6, "week"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 92
    :cond_a
    const-string v6, "Imsin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 93
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public info_preg()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/PregXmlData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v6, preg_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/PregXmlData;>;"
    :try_start_0
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->getInfoPregnancyAssetsFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->fis:Ljava/io/InputStream;

    .line 115
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    iput-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 116
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    iput-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 117
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v8, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->fis:Ljava/io/InputStream;

    const-string v9, "UTF-8"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 119
    .local v4, eventType:I
    const/4 v1, 0x0

    .line 120
    .local v1, done:Z
    const/4 v0, 0x0

    .line 121
    .local v0, data:Lkr/co/medinbiz/dto/PregXmlData;
    const/4 v5, 0x0

    .line 122
    .local v5, name:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    if-eqz v1, :cond_1

    .line 323
    .end local v0           #data:Lkr/co/medinbiz/dto/PregXmlData;
    .end local v1           #done:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v7, "lmh"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "baby_array !!! == "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-object v6

    .line 124
    .restart local v0       #data:Lkr/co/medinbiz/dto/PregXmlData;
    .restart local v1       #done:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 313
    :cond_2
    :goto_2
    :try_start_1
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 129
    const-string v7, "week"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    new-instance v0, Lkr/co/medinbiz/dto/PregXmlData;

    .end local v0           #data:Lkr/co/medinbiz/dto/PregXmlData;
    invoke-direct {v0}, Lkr/co/medinbiz/dto/PregXmlData;-><init>()V

    .restart local v0       #data:Lkr/co/medinbiz/dto/PregXmlData;
    goto :goto_2

    .line 131
    :cond_3
    const-string v7, "change_baby"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, done_:Z
    :cond_4
    :goto_3
    if-nez v2, :cond_2

    .line 134
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 135
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 136
    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 138
    :pswitch_1
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 139
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->baby_sub:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 315
    .end local v0           #data:Lkr/co/medinbiz/dto/PregXmlData;
    .end local v1           #done:Z
    .end local v2           #done_:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 317
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 318
    const-string v7, "lmh"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "XmlPullParserException e!!!"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0       #data:Lkr/co/medinbiz/dto/PregXmlData;
    .restart local v1       #done:Z
    .restart local v2       #done_:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->baby_note:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 319
    .end local v0           #data:Lkr/co/medinbiz/dto/PregXmlData;
    .end local v1           #done:Z
    .end local v2           #done_:Z
    .end local v4           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 320
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    const-string v7, "lmh"

    const-string v8, "IOException e!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 145
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #data:Lkr/co/medinbiz/dto/PregXmlData;
    .restart local v1       #done:Z
    .restart local v2       #done_:Z
    .restart local v4       #eventType:I
    .restart local v5       #name:Ljava/lang/String;
    :pswitch_2
    :try_start_3
    const-string v7, "change_baby"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 146
    const/4 v2, 0x1

    goto :goto_3

    .line 153
    .end local v2           #done_:Z
    :cond_6
    const-string v7, "change_mom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 154
    const/4 v2, 0x0

    .line 155
    .restart local v2       #done_:Z
    :cond_7
    :goto_4
    if-nez v2, :cond_2

    .line 156
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 157
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 158
    packed-switch v4, :pswitch_data_2

    goto :goto_4

    .line 160
    :pswitch_3
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 161
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->mom_sub:Ljava/lang/String;

    goto :goto_4

    .line 162
    :cond_8
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 163
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->mom_note:Ljava/lang/String;

    goto :goto_4

    .line 167
    :pswitch_4
    const-string v7, "change_mom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 168
    const/4 v2, 0x1

    goto :goto_4

    .line 174
    .end local v2           #done_:Z
    :cond_9
    const-string v7, "check_body"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 175
    const/4 v2, 0x0

    .line 176
    .restart local v2       #done_:Z
    :cond_a
    :goto_5
    if-nez v2, :cond_2

    .line 177
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 178
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 179
    packed-switch v4, :pswitch_data_3

    goto :goto_5

    .line 181
    :pswitch_5
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 182
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->body_sub:Ljava/lang/String;

    goto :goto_5

    .line 183
    :cond_b
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 184
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->body_note:Ljava/lang/String;

    goto :goto_5

    .line 188
    :pswitch_6
    const-string v7, "check_body"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 189
    const/4 v2, 0x1

    goto :goto_5

    .line 195
    .end local v2           #done_:Z
    :cond_c
    const-string v7, "food_info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 196
    const/4 v2, 0x0

    .line 197
    .restart local v2       #done_:Z
    :cond_d
    :goto_6
    if-nez v2, :cond_2

    .line 198
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 199
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 200
    packed-switch v4, :pswitch_data_4

    goto :goto_6

    .line 202
    :pswitch_7
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 203
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->food_sub:Ljava/lang/String;

    goto :goto_6

    .line 204
    :cond_e
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 205
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->food_note:Ljava/lang/String;

    goto :goto_6

    .line 209
    :pswitch_8
    const-string v7, "food_info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 210
    const/4 v2, 0x1

    goto :goto_6

    .line 216
    .end local v2           #done_:Z
    :cond_f
    const-string v7, "caution"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 217
    const/4 v2, 0x0

    .line 218
    .restart local v2       #done_:Z
    :cond_10
    :goto_7
    if-nez v2, :cond_2

    .line 219
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 220
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 221
    packed-switch v4, :pswitch_data_5

    goto :goto_7

    .line 223
    :pswitch_9
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 224
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->cau_sub:Ljava/lang/String;

    goto :goto_7

    .line 225
    :cond_11
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 226
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->cau_note:Ljava/lang/String;

    goto :goto_7

    .line 230
    :pswitch_a
    const-string v7, "caution"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 231
    const/4 v2, 0x1

    goto :goto_7

    .line 237
    .end local v2           #done_:Z
    :cond_12
    const-string v7, "life_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 238
    const/4 v2, 0x0

    .line 239
    .restart local v2       #done_:Z
    :cond_13
    :goto_8
    if-nez v2, :cond_2

    .line 240
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 241
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 242
    packed-switch v4, :pswitch_data_6

    goto :goto_8

    .line 244
    :pswitch_b
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 245
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->life_sub:Ljava/lang/String;

    goto :goto_8

    .line 246
    :cond_14
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 247
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->life_note:Ljava/lang/String;

    goto :goto_8

    .line 251
    :pswitch_c
    const-string v7, "life_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 252
    const/4 v2, 0x1

    goto :goto_8

    .line 258
    .end local v2           #done_:Z
    :cond_15
    const-string v7, "toDady_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 259
    const/4 v2, 0x0

    .line 260
    .restart local v2       #done_:Z
    :cond_16
    :goto_9
    if-nez v2, :cond_2

    .line 261
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 262
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 263
    packed-switch v4, :pswitch_data_7

    goto :goto_9

    .line 265
    :pswitch_d
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 266
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->today_sub:Ljava/lang/String;

    goto :goto_9

    .line 267
    :cond_17
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 268
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->today_note:Ljava/lang/String;

    goto :goto_9

    .line 272
    :pswitch_e
    const-string v7, "toDady_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 273
    const/4 v2, 0x1

    goto :goto_9

    .line 279
    .end local v2           #done_:Z
    :cond_18
    const-string v7, "toBaby_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 280
    const/4 v2, 0x0

    .line 281
    .restart local v2       #done_:Z
    :cond_19
    :goto_a
    if-nez v2, :cond_2

    .line 282
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 283
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 284
    packed-switch v4, :pswitch_data_8

    goto :goto_a

    .line 286
    :pswitch_f
    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 287
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->babytip_sub:Ljava/lang/String;

    goto :goto_a

    .line 288
    :cond_1a
    const-string v7, "note"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 289
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lkr/co/medinbiz/dto/PregXmlData;->babytip_note:Ljava/lang/String;

    goto :goto_a

    .line 293
    :pswitch_10
    const-string v7, "toBaby_tip"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 294
    const/4 v2, 0x1

    goto :goto_a

    .line 304
    .end local v2           #done_:Z
    :pswitch_11
    iget-object v7, p0, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 305
    const-string v7, "week"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 306
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 308
    :cond_1b
    const-string v7, "Imsin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 309
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_11
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 158
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 179
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 200
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 221
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 242
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 263
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 284
    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
