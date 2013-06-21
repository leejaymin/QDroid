.class public Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "RelatedLinksActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 4
    .parameter "linkButton"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.webview.title"

    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v2, "com.wolfram.android.alpha.webview.url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v18, 0x7f03007e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v9

    .line 37
    .local v9, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    if-nez v9, :cond_1

    .line 95
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-interface {v9}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedLinks()[Lcom/wolfram/alpha/WARelatedLink;

    move-result-object v12

    .line 44
    .local v12, relatedLinks:[Lcom/wolfram/alpha/WARelatedLink;
    :try_start_0
    sget-object v18, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v18, :cond_2

    .line 45
    sget-object v18, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const v19, 0x7f0e0089

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_2
    :goto_0
    const v18, 0x7f0e008a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 50
    .local v8, panel:Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v10, v12, v6

    .line 54
    .local v10, relatedLink:Lcom/wolfram/alpha/WARelatedLink;
    invoke-interface {v10}, Lcom/wolfram/alpha/WARelatedLink;->getURL()Ljava/lang/String;

    move-result-object v17

    .line 55
    .local v17, url:Ljava/lang/String;
    invoke-interface {v10}, Lcom/wolfram/alpha/WARelatedLink;->getText()Ljava/lang/String;

    move-result-object v15

    .line 56
    .local v15, title:Ljava/lang/String;
    invoke-interface {v10}, Lcom/wolfram/alpha/WARelatedLink;->getSource()Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, source:Ljava/lang/String;
    invoke-interface {v10}, Lcom/wolfram/alpha/WARelatedLink;->getExcerpt()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, excerpt:Ljava/lang/String;
    if-eqz v17, :cond_3

    if-nez v15, :cond_4

    .line 50
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    :cond_4
    const-string v18, "http://en.wikipedia"

    const-string v19, "http://en.m.wikipedia"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 69
    invoke-interface {v10}, Lcom/wolfram/alpha/WARelatedLink;->getImage()Lcom/wolfram/alpha/WAImage;

    move-result-object v7

    .line 70
    .local v7, image:Lcom/wolfram/alpha/WAImage;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lcom/wolfram/alpha/WAImage;->acquireImage()V

    .line 72
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v18

    const v19, 0x7f030080

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 73
    .local v11, relatedLinkView:Landroid/view/View;
    const v18, 0x7f0e008c

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 74
    .local v16, titleView:Landroid/widget/TextView;
    const v18, 0x7f0e008d

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 75
    .local v14, sourceView:Landroid/widget/TextView;
    const v18, 0x7f0e008e

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 77
    .local v5, excerptView:Landroid/widget/TextView;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    if-eqz v4, :cond_6

    .line 80
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v3, bundle:Landroid/os/Bundle;
    const-string v18, "title"

    move-object v0, v3

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v18, "url"

    move-object v0, v3

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v11, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/RelatedLinksActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v18

    const v19, 0x7f030011

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 46
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #excerpt:Ljava/lang/String;
    .end local v5           #excerptView:Landroid/widget/TextView;
    .end local v6           #i:I
    .end local v7           #image:Lcom/wolfram/alpha/WAImage;
    .end local v8           #panel:Landroid/widget/LinearLayout;
    .end local v10           #relatedLink:Lcom/wolfram/alpha/WARelatedLink;
    .end local v11           #relatedLinkView:Landroid/view/View;
    .end local v13           #source:Ljava/lang/String;
    .end local v14           #sourceView:Landroid/widget/TextView;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #titleView:Landroid/widget/TextView;
    .end local v17           #url:Ljava/lang/String;
    :catch_0
    move-exception v18

    goto/16 :goto_0
.end method
