.class public Lcom/wolfram/android/alpha/activity/ExamplesActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "ExamplesActivity.java"


# static fields
.field public static final EXAMPLES_CATEGORY_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.examples_category"

.field public static final EXAMPLES_INPUT_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.examples_input"


# instance fields
.field isRootActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method

.method public static populateExamples(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "examplesPanel"
    .parameter "titleView"
    .parameter "exampleCategory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 77
    .local v0, assetManager:Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 78
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #inputStream:Ljava/io/InputStream;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Examples/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3
    const-string v1, ".xml"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 79
    .local v2, inputStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v0, rdr:Ljava/io/Reader;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p3

    .line 81
    .local p3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {p3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 82
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 84
    invoke-static {p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v1

    .line 90
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .local p0, eventType:I
    move p3, p0

    .line 92
    .end local v0           #rdr:Ljava/io/Reader;
    .end local p0           #eventType:I
    .local p3, eventType:I
    :goto_0
    const/4 p0, 0x1

    if-eq p3, p0, :cond_8

    .line 93
    const/4 p0, 0x1

    .line 94
    .local p0, advanceToNext:Z
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 95
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, tag:Ljava/lang/String;
    const-string p3, "category"

    .end local p3           #eventType:I
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 97
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p3

    .line 98
    .local p3, nextEvent:I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p3

    .line 99
    .local p3, category:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v3           #tag:Ljava/lang/String;
    .end local p3           #category:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz p0, :cond_7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .local p0, eventType:I
    :goto_2
    move p3, p0

    .end local p0           #eventType:I
    .local p3, eventType:I
    goto :goto_0

    .line 101
    .end local p3           #eventType:I
    .restart local v3       #tag:Ljava/lang/String;
    .local p0, advanceToNext:Z
    :cond_1
    const-string p3, "section-title"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, ref:Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, text:Ljava/lang/String;
    const/4 p3, 0x0

    .local p3, doneWithSection:Z
    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v3, v0

    .line 106
    .end local v0           #ref:Ljava/lang/String;
    .local v3, ref:Ljava/lang/String;
    :goto_3
    if-nez p3, :cond_3

    .line 107
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 108
    .local v0, nextEvent:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    const-string v6, "link"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    const/4 p3, 0x0

    const-string v0, "ref"

    .end local v0           #nextEvent:I
    .end local p3           #doneWithSection:Z
    invoke-interface {v5, p3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .end local v3           #ref:Ljava/lang/String;
    .local v0, ref:Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 111
    .end local v4           #text:Ljava/lang/String;
    .local v3, text:Ljava/lang/String;
    const/4 p3, 0x1

    .restart local p3       #doneWithSection:Z
    :goto_4
    move-object v4, v3

    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    move-object v3, v0

    .line 117
    .end local v0           #ref:Ljava/lang/String;
    .local v3, ref:Ljava/lang/String;
    goto :goto_3

    .line 112
    .local v0, nextEvent:I
    :cond_2
    const/4 v6, 0x4

    if-ne v0, v6, :cond_b

    .line 113
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 114
    .end local v4           #text:Ljava/lang/String;
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 115
    const/4 p3, 0x1

    move-object v8, v0

    .end local v0           #text:Ljava/lang/String;
    .local v8, text:Ljava/lang/String;
    move-object v0, v3

    .end local v3           #ref:Ljava/lang/String;
    .local v0, ref:Ljava/lang/String;
    move-object v3, v8

    .end local v8           #text:Ljava/lang/String;
    .local v3, text:Ljava/lang/String;
    goto :goto_4

    .line 118
    .end local v0           #ref:Ljava/lang/String;
    .local v3, ref:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_3
    const p3, 0x7f030024

    const/4 v0, 0x0

    invoke-virtual {v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .end local p3           #doneWithSection:Z
    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 119
    .local p3, sectionView:Landroid/widget/TextView;
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 128
    .end local v3           #ref:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    :goto_5
    const v0, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 124
    .restart local v3       #ref:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3, v0, v3, v4, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 125
    .end local v3           #ref:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_5

    .line 130
    .end local p3           #sectionView:Landroid/widget/TextView;
    .local v3, tag:Ljava/lang/String;
    :cond_5
    const-string p3, "caption"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 131
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    .line 132
    .local p3, caption:Ljava/lang/String;
    const v0, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, captionView:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const p3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .end local p3           #caption:Ljava/lang/String;
    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    const/4 p3, 0x1

    .local p3, keepOn:Z
    move v0, p3

    .end local p3           #keepOn:Z
    .local v0, keepOn:Z
    move-object p3, v3

    .line 138
    .end local v3           #tag:Ljava/lang/String;
    .local p3, tag:Ljava/lang/String;
    :goto_6
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 140
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 141
    .end local p3           #tag:Ljava/lang/String;
    .local v4, tag:Ljava/lang/String;
    const-string p3, "input"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 142
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    .line 143
    .local p3, input:Ljava/lang/String;
    const v3, 0x7f030022

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 144
    .local v3, queryView:Landroid/widget/TextView;
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p3, v4

    .line 146
    .end local v4           #tag:Ljava/lang/String;
    .local p3, tag:Ljava/lang/String;
    goto :goto_6

    .line 147
    .end local v3           #queryView:Landroid/widget/TextView;
    .end local p3           #tag:Ljava/lang/String;
    .restart local v4       #tag:Ljava/lang/String;
    :cond_6
    const/4 p3, 0x0

    .line 148
    .end local v0           #keepOn:Z
    .local p3, keepOn:Z
    const/4 p0, 0x0

    move v0, p3

    .end local p3           #keepOn:Z
    .restart local v0       #keepOn:Z
    move-object p3, v4

    .end local v4           #tag:Ljava/lang/String;
    .local p3, tag:Ljava/lang/String;
    goto :goto_6

    .line 153
    .end local v0           #keepOn:Z
    .end local p3           #tag:Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    goto/16 :goto_2

    .line 156
    .end local p0           #advanceToNext:Z
    .local p3, eventType:I
    :cond_8
    if-eqz v2, :cond_9

    .line 157
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 158
    :cond_9
    return-void

    .local v0, text:Ljava/lang/String;
    .local v3, ref:Ljava/lang/String;
    .restart local p0       #advanceToNext:Z
    .local p3, doneWithSection:Z
    :cond_a
    move-object v8, v0

    .end local v0           #text:Ljava/lang/String;
    .restart local v8       #text:Ljava/lang/String;
    move-object v0, v3

    .end local v3           #ref:Ljava/lang/String;
    .local v0, ref:Ljava/lang/String;
    move-object v3, v8

    .end local v8           #text:Ljava/lang/String;
    .local v3, text:Ljava/lang/String;
    goto/16 :goto_4

    .local v0, nextEvent:I
    .local v3, ref:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :cond_b
    move-object v0, v3

    .end local v3           #ref:Ljava/lang/String;
    .local v0, ref:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #text:Ljava/lang/String;
    .local v3, text:Ljava/lang/String;
    goto/16 :goto_4
.end method


# virtual methods
.method public exampleQueryClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "queryView"

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.wolfram.android.alpha.examples_input"

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->finish()V

    .line 179
    return-void
.end method

.method public exampleSectionClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "sectionView"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, category:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/ExamplesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.examples_category"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/16 v2, 0x2a

    invoke-virtual {p0, v1, v2}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    if-nez p3, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v4, 0x7f030028

    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->setContentView(I)V

    .line 50
    :try_start_0
    sget-object v4, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 51
    sget-object v4, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const v5, 0x7f0e0020

    invoke-virtual {p0, v5}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 56
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.wolfram.android.alpha.examples_category"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, category:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 58
    const-string v0, "CalculateExamples"

    .line 59
    iput-boolean v9, p0, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->isRootActivity:Z

    .line 63
    :cond_1
    const v4, 0x7f0e0021

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 64
    .local v1, examplesPanel:Landroid/widget/LinearLayout;
    const v4, 0x7f0e001f

    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, titleView:Landroid/widget/TextView;
    invoke-static {p0, v1, v3, v0}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->populateExamples(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .end local v1           #examplesPanel:Landroid/widget/LinearLayout;
    .end local v3           #titleView:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v4

    goto :goto_1

    .line 52
    .end local v0           #category:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    goto :goto_0
.end method
