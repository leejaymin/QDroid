.class public Lcom/jiaonisoft/horoscope/DetailActivity;
.super Landroid/app/Activity;
.source "DetailActivity.java"


# instance fields
.field private mId:I

.field private mNotifySoundID:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mId:I

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/jiaonisoft/horoscope/DetailActivity;)Landroid/media/SoundPool;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jiaonisoft/horoscope/DetailActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mNotifySoundID:I

    return v0
.end method

.method private getLocalData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "data"

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, jo:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #jo:Lorg/json/JSONObject;
    .local v2, jo:Lorg/json/JSONObject;
    move-object v1, v2

    .line 126
    .end local v2           #jo:Lorg/json/JSONObject;
    .restart local v1       #jo:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 124
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getWebData()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, jo:Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://what-new-today.appspot.com/s/horoscope.jsp?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mId:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, url:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-static {v4}, Lcom/jiaonisoft/horoscope/Util;->getFromUrl(Ljava/lang/String;)[B

    move-result-object v0

    .line 112
    .local v0, b:[B
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #jo:Lorg/json/JSONObject;
    .local v3, jo:Lorg/json/JSONObject;
    move-object v2, v3

    .line 116
    .end local v3           #jo:Lorg/json/JSONObject;
    .restart local v2       #jo:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 113
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 114
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private html(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "jo"

    .prologue
    const-string v4, "<body>There\'s error!</body>"

    .line 130
    const/4 v2, 0x0

    .line 133
    .local v2, overview:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 134
    const-string v3, "<body>There\'s error!</body>"

    move-object v3, v4

    .line 157
    :goto_0
    return-object v3

    .line 138
    :cond_0
    :try_start_0
    const-string v3, "overview"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 150
    :goto_1
    if-nez v2, :cond_1

    .line 151
    const-string v3, "<body>There\'s error!</body>"

    move-object v3, v4

    goto :goto_0

    .line 139
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v1, html:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<body>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 43
    new-instance v5, Landroid/media/SoundPool;

    const/16 v6, 0xa

    const/4 v7, 0x5

    invoke-direct {v5, v6, v9, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 44
    iget-object v5, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v6, 0x7f04

    invoke-virtual {v5, p0, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mNotifySoundID:I

    .line 51
    const v5, 0x7f070001

    invoke-virtual {p0, v5}, Lcom/jiaonisoft/horoscope/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    .local v4, text:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/jiaonisoft/horoscope/DetailActivity;->getWebData()Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    .local v2, jo:Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 58
    :try_start_0
    const-string v5, "overview"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, overview:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    :cond_0
    invoke-direct {p0, v4}, Lcom/jiaonisoft/horoscope/DetailActivity;->showError(Landroid/widget/TextView;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v3           #overview:Ljava/lang/String;
    :goto_0
    const v5, 0x7f070002

    invoke-virtual {p0, v5}, Lcom/jiaonisoft/horoscope/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 75
    .local v0, adView:Lcom/admob/android/ads/AdView;
    const-string v5, "funny humor fun video humour comedy jokes game cool"

    invoke-virtual {v0, v5}, Lcom/admob/android/ads/AdView;->setKeywords(Ljava/lang/String;)V

    .line 76
    new-instance v5, Lcom/jiaonisoft/horoscope/DetailActivity$1;

    invoke-direct {v5, p0}, Lcom/jiaonisoft/horoscope/DetailActivity$1;-><init>(Lcom/jiaonisoft/horoscope/DetailActivity;)V

    invoke-virtual {v0, v5}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 94
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "emulator"

    aput-object v6, v5, v8

    .line 95
    const-string v6, "E83D20734F72FB3108F104ABC0FFC738"

    aput-object v6, v5, v9

    .line 94
    invoke-static {v5}, Lcom/admob/android/ads/AdManager;->setTestDevices([Ljava/lang/String;)V

    .line 104
    return-void

    .line 63
    .end local v0           #adView:Lcom/admob/android/ads/AdView;
    .restart local v3       #overview:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<h5>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</h5>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    .end local v3           #overview:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 70
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    invoke-direct {p0, v4}, Lcom/jiaonisoft/horoscope/DetailActivity;->showError(Landroid/widget/TextView;)V

    goto :goto_0

    .line 66
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_2
    invoke-direct {p0, v4}, Lcom/jiaonisoft/horoscope/DetailActivity;->showError(Landroid/widget/TextView;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private showError(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    .line 175
    const-string v0, "<font color=\'blue\'>Oops! There\'s error!</font>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/jiaonisoft/horoscope/DetailActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/jiaonisoft/horoscope/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 37
    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jiaonisoft/horoscope/DetailActivity;->mId:I

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/jiaonisoft/horoscope/DetailActivity;->init()V

    .line 40
    return-void
.end method
