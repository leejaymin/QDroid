.class public Lcom/wolfram/android/alpha/QueryResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "QueryResultAdapter.java"


# static fields
.field private static final ASSUMPTIONS_VIEW:I = 0x3

.field private static final DIDYOUMEAN_VIEW:I = 0x2

.field private static final EXAMPLEPAGE_VIEW:I = 0x6

.field private static final FOOTER_VIEW:I = 0x7

.field private static final RELATEDEXAMPLES_VIEW:I = 0x5

.field private static final SPLAT_VIEW_NO_DATATYPES:I = 0x1

.field private static final SPLAT_VIEW_WITH_DATATYPES:I = 0x4

.field private static isRestore:Z

.field private static logger:Ljava/util/logging/Logger;

.field public static weatherBannerPosition:I


# instance fields
.field private No_of_RelatedQueries_to_display:I

.field private banners:[Lcom/wolfram/alpha/WABanner;

.field private computationViewPosition:I

.field private generalizationViewPosition:I

.field private hasAssumptionsView:Z

.field private hasComputationView:Z

.field private hasDataTypesinSplatView:Z

.field private hasDidYouMeanView:Z

.field private hasExamplePageView:Z

.field private hasFooterView:Z

.field private hasFormulaView:Z

.field private hasGeneralizationComputationView:Z

.field private hasGeneralizationView:Z

.field private hasLanguageMsgView:Z

.field private hasRecalculateView:Z

.field private hasRelatedExamplesView:Z

.field private hasRelatedQueriesView:Z

.field private hasWarningsView:Z

.field private hasWeatherBannerView:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private isComputationGeneralizationDone:Z

.field private isSplat:Z

.field private numItems:I

.field private podHashCodes:[I

.field private pods:[Lcom/wolfram/alpha/WAPod;

.field private queryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private recalculateViewPosition:I

.field private relatedQueriesViewPosition:I

.field private views:[Landroid/view/View;

.field private wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "com.wolfram.android.alpha.QueryResultAdapter"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 1
    .parameter "wolframAlphaActivity"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isComputationGeneralizationDone:Z

    .line 677
    const/4 v0, 0x4

    iput v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->No_of_RelatedQueries_to_display:I

    .line 102
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .line 103
    invoke-static {p1}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 105
    return-void
.end method

.method private getFooterView()Landroid/view/View;
    .locals 19

    .prologue
    .line 851
    const/4 v11, 0x0

    .line 853
    .local v11, resultsFooter:Landroid/view/ViewGroup;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030085

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .end local v11           #resultsFooter:Landroid/view/ViewGroup;
    check-cast v11, Landroid/view/ViewGroup;

    .line 874
    .restart local v11       #resultsFooter:Landroid/view/ViewGroup;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object v14, v0

    invoke-interface {v14}, Lcom/wolfram/alpha/WAQueryResult;->getSources()[Lcom/wolfram/alpha/WASourceInfo;

    move-result-object v12

    .line 875
    .local v12, sources:[Lcom/wolfram/alpha/WASourceInfo;
    array-length v14, v12

    if-lez v14, :cond_0

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f03008a

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 877
    .local v13, sourcesText:Landroid/widget/TextView;
    const v14, 0x7f0c000f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 878
    const v14, 0x7f080004

    sget-object v15, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_SOURCE_INFORMATION:Ljava/lang/Integer;

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 880
    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 882
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-direct {v5, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 883
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v14, 0xa

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 884
    const/16 v14, 0xa

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030088

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v11, v14, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 887
    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #sourcesText:Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object v14, v0

    invoke-interface {v14}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedLinks()[Lcom/wolfram/alpha/WARelatedLink;

    move-result-object v9

    .line 888
    .local v9, relatedLinks:[Lcom/wolfram/alpha/WARelatedLink;
    array-length v14, v9

    if-lez v14, :cond_1

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f03008a

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 890
    .local v10, relatedLinksText:Landroid/widget/TextView;
    const v14, 0x7f0c000d

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(I)V

    .line 891
    const v14, 0x7f080004

    sget-object v15, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RELATED_LINKS:Ljava/lang/Integer;

    invoke-virtual {v10, v14, v15}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 893
    array-length v14, v12

    if-lez v14, :cond_3

    const/4 v14, 0x2

    move v7, v14

    .line 894
    .local v7, pos:I
    :goto_1
    invoke-virtual {v11, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 896
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-direct {v5, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 897
    .restart local v5       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v14, 0xa

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 898
    const/16 v14, 0xa

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030088

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v11, v14, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 903
    .end local v5           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #pos:I
    .end local v10           #relatedLinksText:Landroid/widget/TextView;
    :cond_1
    const v14, 0x7f0e0091

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 904
    .local v1, copyRightLink:Landroid/widget/TextView;
    const-string v4, "www.wolfram.com/mathematica/"

    .line 905
    .local v4, link:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 906
    .local v6, pattern:Ljava/util/regex/Pattern;
    const-string v14, "http://"

    invoke-static {v1, v6, v14}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 910
    const v14, 0x7f0e0093

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 911
    .local v2, copyRightLink2:Landroid/widget/TextView;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0020

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Wolfram Alpha LLC"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    const v14, 0x7f0e003b

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 916
    .local v3, give_us_feedback:Landroid/widget/TextView;
    const v14, 0x7f0c003d

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    .line 917
    const v14, 0x7f080004

    sget-object v15, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_GIVE_FEEDBACK:Ljava/lang/Integer;

    invoke-virtual {v3, v14, v15}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 919
    const v14, 0x7f0e003d

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 920
    .local v8, recommend_this_app:Landroid/widget/TextView;
    const v14, 0x7f0c008f

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(I)V

    .line 921
    const v14, 0x7f080004

    sget-object v15, Lcom/wolfram/android/alpha/activity/WolframAlpha;->TYPE_RECOMMEND_THIS_APP:Ljava/lang/Integer;

    invoke-virtual {v8, v14, v15}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 923
    return-object v11

    .line 856
    .end local v1           #copyRightLink:Landroid/widget/TextView;
    .end local v2           #copyRightLink2:Landroid/widget/TextView;
    .end local v3           #give_us_feedback:Landroid/widget/TextView;
    .end local v4           #link:Ljava/lang/String;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    .end local v8           #recommend_this_app:Landroid/widget/TextView;
    .end local v9           #relatedLinks:[Lcom/wolfram/alpha/WARelatedLink;
    .end local v12           #sources:[Lcom/wolfram/alpha/WASourceInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    const v15, 0x7f030084

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .end local v11           #resultsFooter:Landroid/view/ViewGroup;
    check-cast v11, Landroid/view/ViewGroup;

    .restart local v11       #resultsFooter:Landroid/view/ViewGroup;
    goto/16 :goto_0

    .line 893
    .restart local v9       #relatedLinks:[Lcom/wolfram/alpha/WARelatedLink;
    .restart local v10       #relatedLinksText:Landroid/widget/TextView;
    .restart local v12       #sources:[Lcom/wolfram/alpha/WASourceInfo;
    :cond_3
    const/4 v14, 0x1

    move v7, v14

    goto/16 :goto_1
.end method

.method private getRelatedQueriesView([Ljava/lang/String;)Landroid/view/View;
    .locals 27
    .parameter "relatedQueries"

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030078

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 683
    .local v23, view:Landroid/view/View;
    const v24, 0x7f0e0083

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TableLayout;

    .line 685
    .local v11, panel:Landroid/widget/TableLayout;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->No_of_RelatedQueries_to_display:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move v0, v8

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 687
    aget-object v14, p1, v8

    .line 689
    .local v14, relatedQuery:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030082

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 690
    .local v15, relatedQueryView:Landroid/view/View;
    const v24, 0x7f0e008f

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 691
    .local v12, query:Landroid/widget/TextView;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {v15, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 696
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object v0, v5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v5, TLParams:Landroid/widget/TableLayout$LayoutParams;
    const/16 v9, 0xa

    .local v9, leftMargin:I
    const/16 v19, 0x3

    .local v19, topMargin:I
    const/16 v17, 0xa

    .local v17, rightMargin:I
    const/4 v6, 0x3

    .line 698
    .local v6, bottomMargin:I
    move-object v0, v5

    move v1, v9

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 701
    new-instance v22, Landroid/widget/TableRow$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 702
    .local v22, trParams:Landroid/widget/TableRow$LayoutParams;
    const/16 v10, 0xa

    .local v10, leftMargin_TR:I
    const/16 v20, 0x3

    .local v20, topMargin_TR:I
    const/16 v18, 0xa

    .local v18, rightMargin_TR:I
    const/4 v7, 0x3

    .line 703
    .local v7, bottomMargin_TR:I
    move-object/from16 v0, v22

    move v1, v10

    move/from16 v2, v20

    move/from16 v3, v18

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 706
    add-int/lit8 v24, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->No_of_RelatedQueries_to_display:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 707
    new-instance v21, Landroid/widget/TableRow;

    invoke-virtual {v11}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 708
    .local v21, tr:Landroid/widget/TableRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030082

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 709
    .local v16, relatedQueryView_next:Landroid/view/View;
    const v24, 0x7f0e008f

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 710
    .local v13, query_next:Landroid/widget/TextView;
    add-int/lit8 v24, v8, 0x1

    aget-object v24, p1, v24

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    add-int/lit8 v24, v8, 0x1

    aget-object v24, p1, v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 712
    move-object/from16 v0, v21

    move-object v1, v15

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    const/16 v24, 0x1

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 715
    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 716
    add-int/lit8 v8, v8, 0x1

    .line 685
    .end local v13           #query_next:Landroid/widget/TextView;
    .end local v16           #relatedQueryView_next:Landroid/view/View;
    .end local v21           #tr:Landroid/widget/TableRow;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 718
    :cond_0
    invoke-virtual {v11, v15, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 722
    .end local v5           #TLParams:Landroid/widget/TableLayout$LayoutParams;
    .end local v6           #bottomMargin:I
    .end local v7           #bottomMargin_TR:I
    .end local v9           #leftMargin:I
    .end local v10           #leftMargin_TR:I
    .end local v12           #query:Landroid/widget/TextView;
    .end local v14           #relatedQuery:Ljava/lang/String;
    .end local v15           #relatedQueryView:Landroid/view/View;
    .end local v17           #rightMargin:I
    .end local v18           #rightMargin_TR:I
    .end local v19           #topMargin:I
    .end local v20           #topMargin_TR:I
    .end local v22           #trParams:Landroid/widget/TableRow$LayoutParams;
    :cond_1
    return-object v23
.end method

.method private getViewForSplat(I)Landroid/view/View;
    .locals 29
    .parameter "position"

    .prologue
    .line 737
    const/16 v24, 0x0

    .line 739
    .local v24, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    const/16 v26, 0x1

    sub-int v26, p1, v26

    move/from16 v25, v26

    .line 740
    .local v25, viewType:I
    :goto_0
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDataTypesinSplatView:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 741
    add-int/lit8 v25, v25, 0x1

    .line 742
    :cond_0
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDidYouMeanView:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    .line 743
    add-int/lit8 v25, v25, 0x1

    .line 744
    :cond_1
    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 745
    add-int/lit8 v25, v25, 0x1

    .line 746
    :cond_2
    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDataTypesinSplatView:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    .line 747
    add-int/lit8 v25, v25, 0x1

    .line 748
    :cond_3
    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedExamplesView:Z

    move/from16 v26, v0

    if-nez v26, :cond_4

    .line 749
    add-int/lit8 v25, v25, 0x1

    .line 750
    :cond_4
    const/16 v26, 0x6

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasExamplePageView:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    .line 751
    add-int/lit8 v25, v25, 0x1

    .line 753
    :cond_5
    packed-switch v25, :pswitch_data_0

    .line 845
    .end local v25           #viewType:I
    .end local p1
    :cond_6
    :goto_1
    return-object v24

    .restart local p1
    :cond_7
    move/from16 v25, p1

    .line 739
    goto :goto_0

    .line 755
    .restart local v25       #viewType:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getLanguageMessage()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03005a

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 758
    const v26, 0x7f0e0060

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 759
    .local v8, englishText:Landroid/widget/TextView;
    const v26, 0x7f0e005f

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 760
    .local v9, foreignText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getLanguageMessage()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getLanguageMessage()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 762
    .end local v8           #englishText:Landroid/widget/TextView;
    .end local v9           #foreignText:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getExamplePage()Lcom/wolfram/alpha/WAExamplePage;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f030011

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 765
    const v26, 0x106000d

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 768
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f030096

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 769
    const v26, 0x7f0e009e

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 770
    .local v22, tipsColumn:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getTips()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_6

    aget-object v19, v4, v10

    .line 771
    .local v19, tip:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f030094

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 772
    .local v21, tipView:Landroid/view/View;
    const v26, 0x7f0e009c

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 773
    .local v20, tipTextView:Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 770
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 780
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v19           #tip:Ljava/lang/String;
    .end local v20           #tipTextView:Landroid/widget/TextView;
    .end local v21           #tipView:Landroid/view/View;
    .end local v22           #tipsColumn:Landroid/widget/LinearLayout;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03001c

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 781
    const v26, 0x7f0e001c

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 782
    .local v17, textView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getDidYouMeans()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getDidYouMeans()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 787
    .end local v17           #textView:Landroid/widget/TextView;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/wolfram/android/alpha/view/AssumptionsView;->createFromXML(Landroid/content/Context;[Lcom/wolfram/alpha/WAAssumption;)Lcom/wolfram/android/alpha/view/AssumptionsView;

    move-result-object v24

    .line 788
    goto/16 :goto_1

    .line 791
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getFutureTopic()Lcom/wolfram/alpha/WAFutureTopic;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f030039

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 794
    const v26, 0x7f0e0043

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getFutureTopic()Lcom/wolfram/alpha/WAFutureTopic;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAFutureTopic;->getTopic()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    const v26, 0x7f0e0044

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getFutureTopic()Lcom/wolfram/alpha/WAFutureTopic;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAFutureTopic;->getMessage()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 801
    .restart local p1
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03007c

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedExamples()[Lcom/wolfram/alpha/WARelatedExample;

    move-result-object v4

    .local v4, arr$:[Lcom/wolfram/alpha/WARelatedExample;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v10, 0x0

    .end local v25           #viewType:I
    .restart local v10       #i$:I
    :goto_3
    if-ge v10, v13, :cond_6

    aget-object v15, v4, v10

    .line 803
    .local v15, re:Lcom/wolfram/alpha/WARelatedExample;
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getCategory()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_b

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f03007a

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 805
    .local v16, reView:Landroid/view/View;
    const v26, 0x7f0e0086

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 806
    .local v23, titleView:Landroid/widget/TextView;
    const v26, 0x7f0e0087

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 807
    .local v14, linkView:Landroid/widget/TextView;
    const v26, 0x7f0e0088

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 808
    .local v7, descView:Landroid/widget/TextView;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getCategory()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getInput()Ljava/lang/String;

    move-result-object v26

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getInput()Ljava/lang/String;

    move-result-object v26

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 811
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getDescription()Ljava/lang/String;

    move-result-object v26

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    const v26, 0x7f0e0085

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 813
    .local v18, thumbView:Landroid/widget/ImageView;
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getCategory()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 814
    invoke-interface {v15}, Lcom/wolfram/alpha/WARelatedExample;->getCategoryThumb()Lcom/wolfram/alpha/WAImage;

    move-result-object v11

    .line 816
    .local v11, image:Lcom/wolfram/alpha/WAImage;
    invoke-interface {v11}, Lcom/wolfram/alpha/WAImage;->acquireImage()V

    .line 817
    invoke-interface {v11}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v12

    .line 818
    .local v12, imageFile:Ljava/io/File;
    if-eqz v12, :cond_a

    .line 819
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 820
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_a

    .line 821
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 823
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    :cond_a
    move-object/from16 v0, v24

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    .end local v7           #descView:Landroid/widget/TextView;
    .end local v11           #image:Lcom/wolfram/alpha/WAImage;
    .end local v12           #imageFile:Ljava/io/File;
    .end local v14           #linkView:Landroid/widget/TextView;
    .end local v16           #reView:Landroid/view/View;
    .end local v18           #thumbView:Landroid/widget/ImageView;
    .end local v23           #titleView:Landroid/widget/TextView;
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 829
    .end local v4           #arr$:[Lcom/wolfram/alpha/WARelatedExample;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v15           #re:Lcom/wolfram/alpha/WARelatedExample;
    .restart local v25       #viewType:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAQueryResult;->getExamplePage()Lcom/wolfram/alpha/WAExamplePage;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WAExamplePage;->getCategory()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v26, v0

    const v27, 0x7f030026

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 832
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    .end local v25           #viewType:I
    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/activity/ExamplesActivity;->populateExamples(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 833
    :catch_0
    move-exception v26

    goto/16 :goto_1

    .line 839
    .end local v6           #category:Ljava/lang/String;
    .restart local v25       #viewType:I
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getFooterView()Landroid/view/View;

    move-result-object v24

    .line 840
    goto/16 :goto_1

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private declared-synchronized mergeGeneralizationResultXML([Lcom/wolfram/alpha/WAPod;)[Lcom/wolfram/alpha/WAPod;
    .locals 5
    .parameter "genPods"

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 635
    .local v1, oldPods:[Lcom/wolfram/alpha/WAPod;
    const/4 v2, 0x0

    new-array v0, v2, [Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 636
    .local v0, allPods:[Lcom/wolfram/alpha/impl/WAPodImpl;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 637
    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v0, v2, [Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 638
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    const/4 v2, 0x0

    array-length v3, v1

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    monitor-exit p0

    return-object v0

    .line 634
    .end local v0           #allPods:[Lcom/wolfram/alpha/impl/WAPodImpl;
    .end local v1           #oldPods:[Lcom/wolfram/alpha/WAPod;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized mergeRecalculateResultXML([Lcom/wolfram/alpha/WAPod;)[Lcom/wolfram/alpha/WAPod;
    .locals 14
    .parameter "recalcPods"

    .prologue
    const/4 v13, 0x1

    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 554
    .local v8, oldPods:[Lcom/wolfram/alpha/WAPod;
    const/4 v2, 0x0

    .line 555
    .local v2, allpods:[Lcom/wolfram/alpha/WAPod;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    move-object v3, v8

    .local v3, arr$:[Lcom/wolfram/alpha/WAPod;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v7, v3, v5

    .local v7, oldPod:Lcom/wolfram/alpha/WAPod;
    check-cast v7, Lcom/wolfram/alpha/impl/WAPodImpl;

    .end local v7           #oldPod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 557
    :cond_0
    array-length v11, p1

    if-lez v11, :cond_5

    .line 558
    move-object v3, p1

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v9, v3, v5

    .line 559
    .local v9, recalcPod:Lcom/wolfram/alpha/WAPod;
    const/4 v10, 0x0

    .line 560
    .local v10, recalcPodinserted:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v13

    if-ge v4, v11, :cond_3

    .line 561
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v9}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-gt v11, v12, :cond_1

    add-int/lit8 v11, v4, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v9}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-le v11, v12, :cond_1

    .line 563
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v9}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 564
    move-object v0, v9

    check-cast v0, Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object v11, v0

    invoke-interface {v1, v4, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget v11, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    sub-int/2addr v11, v13

    iput v11, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 571
    :goto_3
    const/4 v10, 0x1

    .line 560
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 569
    :cond_2
    add-int/lit8 v12, v4, 0x1

    move-object v0, v9

    check-cast v0, Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object v11, v0

    invoke-interface {v1, v12, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 553
    .end local v1           #allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    .end local v2           #allpods:[Lcom/wolfram/alpha/WAPod;
    .end local v3           #arr$:[Lcom/wolfram/alpha/WAPod;
    .end local v4           #i:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #oldPods:[Lcom/wolfram/alpha/WAPod;
    .end local v9           #recalcPod:Lcom/wolfram/alpha/WAPod;
    .end local v10           #recalcPodinserted:Z
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 574
    .restart local v1       #allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    .restart local v2       #allpods:[Lcom/wolfram/alpha/WAPod;
    .restart local v3       #arr$:[Lcom/wolfram/alpha/WAPod;
    .restart local v4       #i:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #oldPods:[Lcom/wolfram/alpha/WAPod;
    .restart local v9       #recalcPod:Lcom/wolfram/alpha/WAPod;
    .restart local v10       #recalcPodinserted:Z
    :cond_3
    if-nez v10, :cond_4

    .line 575
    :try_start_1
    check-cast v9, Lcom/wolfram/alpha/impl/WAPodImpl;

    .end local v9           #recalcPod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 579
    .end local v4           #i:I
    .end local v10           #recalcPodinserted:Z
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v2, v11, [Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 580
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_6

    .line 581
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/WAPod;

    aput-object v11, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 583
    :cond_6
    monitor-exit p0

    return-object v2
.end method


# virtual methods
.method public declared-synchronized appendPods([Lcom/wolfram/alpha/WAPod;Z)V
    .locals 20
    .parameter "recalcPods"
    .parameter "isTryAgain"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->mergeRecalculateResultXML([Lcom/wolfram/alpha/WAPod;)[Lcom/wolfram/alpha/WAPod;

    move-result-object v6

    .line 468
    .local v6, allPods:[Lcom/wolfram/alpha/WAPod;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    add-int v10, v16, v17

    .line 469
    .local v10, newNumItems:I
    array-length v11, v6

    .line 472
    .local v11, newNumPods:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    move/from16 v16, v0

    if-lez v16, :cond_a

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    move/from16 v17, v0

    aget-object v15, v16, v17

    .line 474
    .local v15, recalcView:Landroid/view/View;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_3

    if-eqz v11, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f0300a6

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    move/from16 v17, v0

    aput-object v15, v16, v17

    .line 509
    :goto_0
    new-array v12, v11, [I

    .line 510
    .local v12, newPodHashCodes:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v12

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v5, 0x0

    .line 515
    .local v5, addedFooter:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 516
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 518
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 519
    :cond_1
    const/4 v5, 0x1

    .line 525
    :cond_2
    new-array v7, v10, [Landroid/view/View;

    .line 526
    .local v7, allViews:[Landroid/view/View;
    const/4 v14, 0x0

    .line 527
    .local v14, positionOfFirstViewAfterPods:I
    :goto_1
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 528
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 483
    .end local v5           #addedFooter:Z
    .end local v7           #allViews:[Landroid/view/View;
    .end local v12           #newPodHashCodes:[I
    .end local v14           #positionOfFirstViewAfterPods:I
    :cond_3
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAQueryResult;->getTimedoutScanners()[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f030011

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 487
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 489
    add-int/lit8 v10, v10, -0x1

    .line 490
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    move/from16 v17, v0

    aput-object v15, v16, v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 466
    .end local v6           #allPods:[Lcom/wolfram/alpha/WAPod;
    .end local v10           #newNumItems:I
    .end local v11           #newNumPods:I
    .end local v15           #recalcView:Landroid/view/View;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 493
    .restart local v6       #allPods:[Lcom/wolfram/alpha/WAPod;
    .restart local v10       #newNumItems:I
    .restart local v11       #newNumPods:I
    .restart local v15       #recalcView:Landroid/view/View;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->computationViewPosition:I

    move/from16 v17, v0

    aget-object v9, v16, v17

    .line 494
    .local v9, compView:Landroid/view/View;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v8

    .line 495
    .local v8, app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    if-eqz p2, :cond_6

    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setComputationTimedOutResultsAvailable(Z)V

    .line 496
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/wolfram/alpha/WAQueryResult;->setComputationView(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/wolfram/alpha/WAQueryResult;->getComputationView()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    .line 499
    sget-boolean v16, Lcom/wolfram/android/alpha/QueryResultAdapter;->isRestore:Z

    if-nez v16, :cond_7

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getComputationTimedOutResultsAvailable()Z

    move-result v16

    if-nez v16, :cond_7

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f0300a4

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 504
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->computationViewPosition:I

    move/from16 v17, v0

    aput-object v9, v16, v17

    goto/16 :goto_0

    .line 502
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    const v17, 0x7f0300a6

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto :goto_2

    .line 530
    .end local v8           #app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .end local v9           #compView:Landroid/view/View;
    .restart local v5       #addedFooter:Z
    .restart local v7       #allViews:[Landroid/view/View;
    .restart local v12       #newPodHashCodes:[I
    .restart local v14       #positionOfFirstViewAfterPods:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_4
    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    if-nez v5, :cond_d

    const/16 v17, 0x1

    :goto_5
    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    :goto_6
    add-int v13, v16, v17

    .line 535
    .local v13, numViewsAfterPods:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v13

    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v13

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v7

    move/from16 v3, v18

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 539
    if-eqz v5, :cond_9

    .line 540
    move-object v0, v7

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    const/16 v17, 0x0

    aput-object v17, v7, v16

    .line 542
    :cond_9
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 543
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    .line 544
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    .line 546
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setOldQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    .end local v5           #addedFooter:Z
    .end local v7           #allViews:[Landroid/view/View;
    .end local v12           #newPodHashCodes:[I
    .end local v13           #numViewsAfterPods:I
    .end local v14           #positionOfFirstViewAfterPods:I
    .end local v15           #recalcView:Landroid/view/View;
    :cond_a
    monitor-exit p0

    return-void

    .line 532
    .restart local v5       #addedFooter:Z
    .restart local v7       #allViews:[Landroid/view/View;
    .restart local v12       #newPodHashCodes:[I
    .restart local v14       #positionOfFirstViewAfterPods:I
    .restart local v15       #recalcView:Landroid/view/View;
    :cond_b
    const/16 v16, 0x0

    goto :goto_3

    :cond_c
    const/16 v17, 0x0

    goto :goto_4

    :cond_d
    const/16 v17, 0x0

    goto :goto_5

    :cond_e
    const/16 v17, 0x0

    goto :goto_6
.end method

.method public declared-synchronized appendRelatedQueries([Ljava/lang/String;)V
    .locals 8
    .parameter "relatedQueries"

    .prologue
    const/4 v7, 0x1

    .line 648
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 650
    .local v1, newNumItems:I
    new-array v0, v1, [Landroid/view/View;

    .line 654
    .local v0, allViews:[Landroid/view/View;
    array-length v3, p1

    if-lez v3, :cond_0

    .line 655
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getRelatedQueriesView([Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 656
    .local v2, view:Landroid/view/View;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setRelatedQueriesView(Z)V

    .line 664
    :goto_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    array-length v3, v3

    if-eqz v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    array-length v6, v6

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    array-length v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aput-object v2, v0, v3

    .line 667
    array-length v3, v0

    sub-int/2addr v3, v7

    iget-object v4, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    iget-object v5, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    array-length v5, v5

    sub-int/2addr v5, v7

    aget-object v4, v4, v5

    aput-object v4, v0, v3

    .line 673
    :goto_1
    iput v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 674
    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    .line 659
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 660
    .restart local v2       #view:Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setRelatedQueriesView(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    .end local v0           #allViews:[Landroid/view/View;
    .end local v1           #newNumItems:I
    .end local v2           #view:Landroid/view/View;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 669
    .restart local v0       #allViews:[Landroid/view/View;
    .restart local v1       #newNumItems:I
    .restart local v2       #view:Landroid/view/View;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    array-length v6, v6

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 670
    array-length v3, v0

    sub-int/2addr v3, v7

    aput-object v2, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized appendgeneralizationPods([Lcom/wolfram/alpha/WAPod;)V
    .locals 13
    .parameter "genPods"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 592
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->mergeGeneralizationResultXML([Lcom/wolfram/alpha/WAPod;)[Lcom/wolfram/alpha/WAPod;

    move-result-object v0

    .line 594
    .local v0, allPods:[Lcom/wolfram/alpha/WAPod;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    .line 596
    iget v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    array-length v8, p1

    add-int v3, v7, v8

    .line 597
    .local v3, newNumItems:I
    array-length v4, v0

    .line 600
    .local v4, newNumPods:I
    iget v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    if-lez v7, :cond_1

    .line 601
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    iget v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    aget-object v2, v7, v8

    .line 602
    .local v2, genView:Landroid/view/View;
    if-nez v4, :cond_0

    .line 604
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0300a6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 605
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    iget v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    aput-object v2, v7, v8

    .line 606
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    .end local v2           #genView:Landroid/view/View;
    :goto_0
    monitor-exit p0

    return-void

    .line 609
    .restart local v2       #genView:Landroid/view/View;
    :cond_0
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isComputationGeneralizationDone:Z

    .line 614
    .end local v2           #genView:Landroid/view/View;
    :cond_1
    new-array v5, v4, [I

    .line 615
    .local v5, newPodHashCodes:[I
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    array-length v10, v10

    invoke-static {v7, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    new-array v1, v3, [Landroid/view/View;

    .line 621
    .local v1, allViews:[Landroid/view/View;
    iget-boolean v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    if-nez v7, :cond_2

    move v6, v12

    .line 623
    .local v6, numViewsAfterAllPods:I
    :goto_1
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    invoke-static {v7, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    iget-object v7, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    array-length v8, v8

    sub-int/2addr v8, v6

    array-length v9, v1

    sub-int/2addr v9, v6

    invoke-static {v7, v8, v1, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iput v3, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 627
    iput-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 628
    iput-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    .line 629
    iput-object v5, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    .end local v0           #allPods:[Lcom/wolfram/alpha/WAPod;
    .end local v1           #allViews:[Landroid/view/View;
    .end local v3           #newNumItems:I
    .end local v4           #newNumPods:I
    .end local v5           #newPodHashCodes:[I
    .end local v6           #numViewsAfterAllPods:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0       #allPods:[Lcom/wolfram/alpha/WAPod;
    .restart local v1       #allViews:[Landroid/view/View;
    .restart local v3       #newNumItems:I
    .restart local v4       #newNumPods:I
    .restart local v5       #newPodHashCodes:[I
    :cond_2
    move v6, v11

    .line 621
    goto :goto_1
.end method

.method public fade_Old_ResultsView(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "FadeOut"

    .prologue
    .line 223
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    return v0
.end method

.method public declared-synchronized getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v0

    .line 235
    .local v0, podIndex:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    aget-object v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v0           #podIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 252
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized getQueryResult()Lcom/wolfram/alpha/WAQueryResult;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aget-object v26, v29, p1

    .line 257
    .local v26, view:Landroid/view/View;
    if-nez p1, :cond_2

    .line 259
    if-nez v26, :cond_0

    .line 260
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 261
    new-instance v26, Landroid/view/View;

    .end local v26           #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 262
    .restart local v26       #view:Landroid/view/View;
    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    const v30, 0x7f0e007f

    invoke-virtual/range {v29 .. v30}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 265
    .local v23, qv:Lcom/wolfram/android/alpha/view/QueryInputView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/QueryInputView;->setWAActivity(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V

    .line 272
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    .end local v23           #qv:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local p2
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v26

    .line 268
    .restart local p2
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030072

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 269
    const v29, 0x7f0e007f

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/wolfram/android/alpha/view/QueryInputView;

    .line 270
    .restart local v23       #qv:Lcom/wolfram/android/alpha/view/QueryInputView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/QueryInputView;->setWAActivity(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v23           #qv:Lcom/wolfram/android/alpha/view/QueryInputView;
    .end local v26           #view:Landroid/view/View;
    .end local p2
    :catchall_0
    move-exception v29

    monitor-exit p0

    throw v29

    .line 274
    .restart local v26       #view:Landroid/view/View;
    .restart local p2
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 276
    if-nez v26, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/wolfram/alpha/WAQueryResult;->getWarnings()[Lcom/wolfram/alpha/WAWarning;

    move-result-object v28

    .line 278
    .local v28, warnings:[Lcom/wolfram/alpha/WAWarning;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_5

    const/16 v29, 0x0

    aget-object v29, v28, v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/wolfram/alpha/WAReinterpretWarning;

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 280
    const/16 v29, 0x0

    aget-object v27, v28, v29

    check-cast v27, Lcom/wolfram/alpha/WAReinterpretWarning;

    .line 281
    .local v27, warning:Lcom/wolfram/alpha/WAReinterpretWarning;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f0300aa

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 282
    const v29, 0x7f0e00ae

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    invoke-interface/range {v27 .. v27}, Lcom/wolfram/alpha/WAReinterpretWarning;->getText()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const v29, 0x7f0e00af

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-interface/range {v27 .. v27}, Lcom/wolfram/alpha/WAReinterpretWarning;->getNew()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-interface/range {v27 .. v27}, Lcom/wolfram/alpha/WAReinterpretWarning;->getAlternatives()[Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, alternatives:[Ljava/lang/String;
    move-object v0, v6

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_3

    .line 286
    const v29, 0x7f0e00b1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 290
    .local v7, alternativesView:Lcom/wolfram/android/alpha/view/FlowLayout;
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 291
    .local v18, moreInterpretationsLabel:Landroid/widget/TextView;
    const v29, 0x7f0c0013

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    const v29, 0x7f0a0017

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    const/16 v29, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f07024d

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    const/16 v29, 0x0

    const/16 v30, 0x5

    const/16 v31, 0x6

    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 295
    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    .line 297
    move-object v8, v6

    .local v8, arr$:[Ljava/lang/String;
    move-object v0, v8

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    aget-object v5, v8, v16

    .line 298
    .local v5, alt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030076

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 299
    .local v9, b:Landroid/widget/Button;
    invoke-virtual {v9, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v7, v9}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    .line 297
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 303
    .end local v5           #alt:Ljava/lang/String;
    .end local v7           #alternativesView:Lcom/wolfram/android/alpha/view/FlowLayout;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #b:Landroid/widget/Button;
    .end local v16           #i$:I
    .end local v17           #len$:I
    .end local v18           #moreInterpretationsLabel:Landroid/widget/TextView;
    :cond_3
    const v29, 0x7f0e00b0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v29, 0x7f0e00b1

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .end local v6           #alternatives:[Ljava/lang/String;
    .end local v27           #warning:Lcom/wolfram/alpha/WAReinterpretWarning;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 308
    .restart local p2
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f0300ac

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 309
    const v29, 0x7f0e00b5

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 310
    .local v25, textView:Landroid/widget/TextView;
    const-string v24, ""

    .line 311
    .local v24, text:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move v0, v15

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 312
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    aget-object v30, v28, v15

    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WAWarning;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 313
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    sub-int v29, v29, v30

    move v0, v15

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 314
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 311
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 316
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 320
    .end local v15           #i:I
    .end local v24           #text:Ljava/lang/String;
    .end local v25           #textView:Landroid/widget/TextView;
    .end local v28           #warnings:[Lcom/wolfram/alpha/WAWarning;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 323
    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getViewForSplat(I)Landroid/view/View;

    move-result-object v26

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 325
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 326
    :cond_a
    if-nez v26, :cond_0

    .line 327
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v29

    if-nez v29, :cond_c

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/wolfram/android/alpha/view/AssumptionsView;->createFromXML(Landroid/content/Context;[Lcom/wolfram/alpha/WAAssumption;)Lcom/wolfram/android/alpha/view/AssumptionsView;

    move-result-object v26

    .line 334
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 335
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getPaddingBottom()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 337
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 330
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->wolframAlphaActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/wolfram/android/alpha/view/AssumptionsView;->createFromXML(Landroid/content/Context;[Lcom/wolfram/alpha/WAAssumption;)Lcom/wolfram/android/alpha/view/AssumptionsView;

    move-result-object v26

    goto :goto_5

    .line 339
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_f

    :cond_e
    const/16 v29, 0x3

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 343
    :cond_f
    if-nez v26, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030037

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 347
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    const/16 v29, 0x1

    move/from16 v0, p1

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    const/16 v29, 0x2

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    :cond_11
    const/16 v29, 0x3

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    :cond_14
    const/16 v29, 0x4

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    .line 349
    :cond_15
    if-nez v26, :cond_0

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->banners:[Lcom/wolfram/alpha/WABanner;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->banners:[Lcom/wolfram/alpha/WABanner;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v10, v29, v30

    .line 352
    .local v10, banner:Lcom/wolfram/alpha/WABanner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f0300ae

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/wolfram/android/alpha/view/WeatherBannerView;

    .line 353
    .local v11, bannerView:Lcom/wolfram/android/alpha/view/WeatherBannerView;
    invoke-virtual {v11, v10}, Lcom/wolfram/android/alpha/view/WeatherBannerView;->populate(Lcom/wolfram/alpha/WABanner;)V

    .line 354
    move-object/from16 v26, v11

    .line 355
    sput p1, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    sget v30, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    aput-object v26, v29, v30

    goto/16 :goto_1

    .line 359
    .end local v10           #banner:Lcom/wolfram/alpha/WABanner;
    .end local v11           #bannerView:Lcom/wolfram/android/alpha/view/WeatherBannerView;
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isComputationGeneralizationDone:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    move/from16 v29, v0

    move/from16 v0, p1

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 360
    if-nez v26, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f03003b

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 362
    const v29, 0x7f0e0047

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 363
    .local v13, generalization_header_desc:Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WAGeneralization;->getDescription()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object v0, v13

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    const v29, 0x7f0e0048

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 365
    .local v14, generalization_header_topic:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lcom/wolfram/alpha/WAGeneralization;->getTopic()Ljava/lang/String;

    move-result-object v29

    move-object v0, v14

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 369
    .end local v13           #generalization_header_desc:Landroid/widget/TextView;
    .end local v14           #generalization_header_topic:Landroid/widget/TextView;
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v21

    .line 371
    .local v21, podIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ge v0, v1, :cond_19

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    aget-object v20, v29, v21

    .line 375
    .local v20, pod:Lcom/wolfram/alpha/WAPod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    move-object/from16 v29, v0

    aget v12, v29, v21

    .line 376
    .local v12, cachedHashCode:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->hashCode()I

    move-result v19

    .line 377
    .local v19, newHashCode:I
    if-eqz v26, :cond_18

    move/from16 v0, v19

    move v1, v12

    if-eq v0, v1, :cond_0

    .line 378
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030064

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/wolfram/android/alpha/view/PodView;

    .line 379
    .local v22, podView:Lcom/wolfram/android/alpha/view/PodView;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/view/PodView;->populate(Lcom/wolfram/alpha/WAPod;Lcom/wolfram/android/alpha/QueryResultAdapter;I)V

    .line 380
    move-object/from16 v26, v22

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    move-object/from16 v29, v0

    aput v19, v29, v21

    .line 388
    invoke-interface/range {v20 .. v20}, Lcom/wolfram/alpha/WAPod;->isError()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 389
    new-instance v29, Landroid/widget/AbsListView$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, 0x1

    invoke-direct/range {v29 .. v31}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 393
    .end local v12           #cachedHashCode:I
    .end local v19           #newHashCode:I
    .end local v20           #pod:Lcom/wolfram/alpha/WAPod;
    .end local v22           #podView:Lcom/wolfram/android/alpha/view/PodView;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 396
    if-nez v26, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030074

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    .line 399
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    .line 400
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->computationViewPosition:I

    goto/16 :goto_1

    .line 403
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 407
    :cond_1b
    if-nez v26, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030074

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    .line 410
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    move/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Lcom/wolfram/alpha/WAQueryResult;->setGeneralizationViewPosition(I)V

    goto/16 :goto_1

    .line 413
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1e

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getComputationTimedOutResultsAvailable()Z

    move-result v29

    if-eqz v29, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1e

    .line 415
    :cond_1d
    if-nez v26, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f0300a6

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 419
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_20

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getComputationTimedOutResultsAvailable()Z

    move-result v29

    if-nez v29, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_20

    .line 422
    :cond_1f
    if-nez v26, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f0300a4

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 426
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-nez v29, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v29, v0

    if-nez v29, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x2

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    move/from16 v29, v0

    if-nez v29, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_24

    .line 428
    :cond_22
    if-nez v26, :cond_0

    .line 429
    sget-boolean v29, Lcom/wolfram/android/alpha/QueryResultAdapter;->isRestore:Z

    if-eqz v29, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueries()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getRelatedQueriesView([Ljava/lang/String;)Landroid/view/View;

    move-result-object v26

    .line 431
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    .line 432
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->relatedQueriesViewPosition:I

    goto/16 :goto_1

    .line 430
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030074

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    goto :goto_6

    .line 434
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    move/from16 v29, v0

    if-eqz v29, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    sget-boolean v29, Lcom/wolfram/android/alpha/QueryResultAdapter;->isRestore:Z

    if-nez v29, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->relatedQueriesViewPosition:I

    move/from16 v29, v0

    if-nez v29, :cond_25

    .line 435
    if-nez v26, :cond_0

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v29, v0

    const v30, 0x7f030074

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    aput-object v26, v29, p1

    goto/16 :goto_1

    .line 442
    :cond_25
    if-nez v26, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    move-object/from16 v29, v0

    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->getFooterView()Landroid/view/View;

    move-result-object v26

    aput-object v26, v29, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public positionToPodIndex(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isComputationGeneralizationDone:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 934
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 936
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    if-eqz v0, :cond_1

    .line 937
    add-int/lit8 p1, p1, -0x1

    .line 938
    :cond_1
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    if-eqz v0, :cond_2

    .line 939
    add-int/lit8 p1, p1, -0x1

    .line 940
    :cond_2
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    if-eqz v0, :cond_3

    .line 941
    add-int/lit8 p1, p1, -0x1

    .line 942
    :cond_3
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    if-eqz v0, :cond_4

    .line 943
    add-int/lit8 p1, p1, -0x1

    .line 944
    :cond_4
    return p1
.end method

.method public declared-synchronized setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResult"

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V
    .locals 12
    .parameter "queryResult"
    .parameter "isRestore"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 121
    sput-boolean p2, Lcom/wolfram/android/alpha/QueryResultAdapter;->isRestore:Z

    .line 125
    iget v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v6, v8

    .line 128
    .local v6, oldQueryInputView:Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_16

    .line 129
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->isSuccess()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->isError()Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v11

    :goto_1
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    .line 130
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-eqz v8, :cond_2

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getDataTypes()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_2

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getDataTypes()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v11

    :goto_2
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDataTypesinSplatView:Z

    .line 131
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v8

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 132
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getBanners()[Lcom/wolfram/alpha/WABanner;

    move-result-object v8

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->banners:[Lcom/wolfram/alpha/WABanner;

    .line 133
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->banners:[Lcom/wolfram/alpha/WABanner;

    if-eqz v8, :cond_3

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getBanners()[Lcom/wolfram/alpha/WABanner;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_3

    move v8, v11

    :goto_3
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    .line 134
    const/4 v8, 0x0

    sput v8, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    .line 135
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    .line 136
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    .line 137
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getAssumptions()[Lcom/wolfram/alpha/WAAssumption;

    move-result-object v0

    .local v0, arr$:[Lcom/wolfram/alpha/WAAssumption;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v4, :cond_5

    aget-object v1, v0, v2

    .line 138
    .local v1, assumption:Lcom/wolfram/alpha/WAAssumption;
    invoke-interface {v1}, Lcom/wolfram/alpha/WAAssumption;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Formula"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 139
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    .line 137
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0           #arr$:[Lcom/wolfram/alpha/WAAssumption;
    .end local v1           #assumption:Lcom/wolfram/alpha/WAAssumption;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #oldQueryInputView:Landroid/view/View;
    :cond_0
    move-object v6, v9

    .line 125
    goto :goto_0

    .restart local v6       #oldQueryInputView:Landroid/view/View;
    :cond_1
    move v8, v10

    .line 129
    goto :goto_1

    :cond_2
    move v8, v10

    .line 130
    goto :goto_2

    :cond_3
    move v8, v10

    .line 133
    goto :goto_3

    .line 141
    .restart local v0       #arr$:[Lcom/wolfram/alpha/WAAssumption;
    .restart local v1       #assumption:Lcom/wolfram/alpha/WAAssumption;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 120
    .end local v0           #arr$:[Lcom/wolfram/alpha/WAAssumption;
    .end local v1           #assumption:Lcom/wolfram/alpha/WAAssumption;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #oldQueryInputView:Landroid/view/View;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 146
    .restart local v0       #arr$:[Lcom/wolfram/alpha/WAAssumption;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v6       #oldQueryInputView:Landroid/view/View;
    :cond_5
    const/4 v3, 0x0

    .line 147
    .local v3, isReinterpretWarning:Z
    :try_start_1
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getWarnings()[Lcom/wolfram/alpha/WAWarning;

    move-result-object v0

    .local v0, arr$:[Lcom/wolfram/alpha/WAWarning;
    array-length v4, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    .line 148
    .local v7, w:Lcom/wolfram/alpha/WAWarning;
    invoke-interface {v7}, Lcom/wolfram/alpha/WAWarning;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "reinterpret"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 149
    const/4 v3, 0x1

    .line 153
    .end local v7           #w:Lcom/wolfram/alpha/WAWarning;
    :cond_6
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getWarnings()[Lcom/wolfram/alpha/WAWarning;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_b

    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-eqz v8, :cond_7

    if-eqz v3, :cond_b

    :cond_7
    move v8, v11

    :goto_7
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    .line 154
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    array-length v5, v8

    .line 155
    .local v5, numPods:I
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-nez v8, :cond_8

    if-lez v5, :cond_c

    :cond_8
    move v8, v11

    :goto_8
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    .line 156
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    .line 157
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-eqz v8, :cond_d

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getDidYouMeans()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_d

    move v8, v11

    :goto_9
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDidYouMeanView:Z

    .line 158
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-eqz v8, :cond_e

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedExamples()[Lcom/wolfram/alpha/WARelatedExample;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_e

    move v8, v11

    :goto_a
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedExamplesView:Z

    .line 159
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getLanguageMessage()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-le v8, v11, :cond_f

    move v8, v11

    :goto_b
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasLanguageMsgView:Z

    .line 160
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getExamplePage()Lcom/wolfram/alpha/WAExamplePage;

    move-result-object v8

    if-eqz v8, :cond_10

    move v8, v11

    :goto_c
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasExamplePageView:Z

    .line 161
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRecalculate()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getRecalculateURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_11

    if-nez p2, :cond_11

    move v8, v11

    :goto_d
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    .line 165
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    .line 166
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralization()Lcom/wolfram/alpha/WAGeneralization;

    move-result-object v8

    if-eqz v8, :cond_12

    move v8, v11

    :goto_e
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    .line 167
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    if-eqz v8, :cond_13

    if-nez p2, :cond_13

    move v8, v11

    :goto_f
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    .line 168
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getGeneralizationViewPosition()I

    move-result v8

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    .line 169
    iput-boolean p2, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isComputationGeneralizationDone:Z

    .line 170
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getComputationView()Z

    move-result v8

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    .line 171
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->computationViewPosition:I

    .line 172
    if-nez p2, :cond_15

    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueriesURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_14

    move v8, v11

    :goto_10
    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    .line 174
    :goto_11
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->relatedQueriesViewPosition:I

    .line 203
    .end local v0           #arr$:[Lcom/wolfram/alpha/WAWarning;
    .end local v2           #i$:I
    .end local v3           #isReinterpretWarning:Z
    .end local v4           #len$:I
    :goto_12
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    if-eqz v8, :cond_21

    .line 206
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    if-eqz v8, :cond_17

    move v8, v11

    :goto_13
    add-int/lit8 v8, v8, 0x2

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    if-eqz v9, :cond_18

    move v9, v11

    :goto_14
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDidYouMeanView:Z

    if-eqz v9, :cond_19

    move v9, v11

    :goto_15
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    if-eqz v9, :cond_1a

    move v9, v11

    :goto_16
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedExamplesView:Z

    if-eqz v9, :cond_1b

    move v9, v11

    :goto_17
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasExamplePageView:Z

    if-eqz v9, :cond_1c

    move v9, v11

    :goto_18
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    if-eqz v9, :cond_1d

    move v9, v11

    :goto_19
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    if-eqz v9, :cond_1e

    move v9, v11

    :goto_1a
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    if-eqz v9, :cond_1f

    :cond_9
    move v9, v11

    :goto_1b
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    if-eqz v9, :cond_20

    move v9, v11

    :goto_1c
    add-int/2addr v8, v9

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    .line 214
    :goto_1d
    iget v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    .line 216
    iget-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    const/4 v9, 0x0

    aput-object v6, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 147
    .end local v5           #numPods:I
    .restart local v0       #arr$:[Lcom/wolfram/alpha/WAWarning;
    .restart local v2       #i$:I
    .restart local v3       #isReinterpretWarning:Z
    .restart local v4       #len$:I
    .restart local v7       #w:Lcom/wolfram/alpha/WAWarning;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .end local v7           #w:Lcom/wolfram/alpha/WAWarning;
    :cond_b
    move v8, v10

    .line 153
    goto/16 :goto_7

    .restart local v5       #numPods:I
    :cond_c
    move v8, v10

    .line 155
    goto/16 :goto_8

    :cond_d
    move v8, v10

    .line 157
    goto/16 :goto_9

    :cond_e
    move v8, v10

    .line 158
    goto/16 :goto_a

    :cond_f
    move v8, v10

    .line 159
    goto/16 :goto_b

    :cond_10
    move v8, v10

    .line 160
    goto/16 :goto_c

    :cond_11
    move v8, v10

    .line 161
    goto/16 :goto_d

    :cond_12
    move v8, v10

    .line 166
    goto/16 :goto_e

    :cond_13
    move v8, v10

    .line 167
    goto/16 :goto_f

    :cond_14
    move v8, v10

    .line 172
    goto :goto_10

    .line 173
    :cond_15
    :try_start_2
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getRelatedQueriesView()Z

    move-result v8

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    goto/16 :goto_11

    .line 177
    .end local v0           #arr$:[Lcom/wolfram/alpha/WAWarning;
    .end local v2           #i$:I
    .end local v3           #isReinterpretWarning:Z
    .end local v4           #len$:I
    .end local v5           #numPods:I
    :cond_16
    const/4 v5, 0x0

    .line 178
    .restart local v5       #numPods:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->isSplat:Z

    .line 179
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDataTypesinSplatView:Z

    .line 180
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    .line 181
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->podHashCodes:[I

    .line 182
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    .line 183
    const/4 v8, 0x0

    sput v8, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    .line 184
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    .line 185
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    .line 186
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    .line 187
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    .line 188
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasDidYouMeanView:Z

    .line 189
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedExamplesView:Z

    .line 190
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasLanguageMsgView:Z

    .line 191
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasExamplePageView:Z

    .line 192
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    .line 193
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->recalculateViewPosition:I

    .line 194
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    .line 195
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    .line 196
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->generalizationViewPosition:I

    .line 197
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    .line 198
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->computationViewPosition:I

    .line 199
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    .line 200
    const/4 v8, 0x0

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->relatedQueriesViewPosition:I

    goto/16 :goto_12

    :cond_17
    move v8, v10

    .line 206
    goto/16 :goto_13

    :cond_18
    move v9, v10

    goto/16 :goto_14

    :cond_19
    move v9, v10

    goto/16 :goto_15

    :cond_1a
    move v9, v10

    goto/16 :goto_16

    :cond_1b
    move v9, v10

    goto/16 :goto_17

    :cond_1c
    move v9, v10

    goto/16 :goto_18

    :cond_1d
    move v9, v10

    goto/16 :goto_19

    :cond_1e
    move v9, v10

    goto/16 :goto_1a

    :cond_1f
    move v9, v10

    goto/16 :goto_1b

    :cond_20
    move v9, v10

    goto/16 :goto_1c

    .line 211
    :cond_21
    iget-boolean v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWeatherBannerView:Z

    if-eqz v8, :cond_23

    move v8, v11

    :goto_1e
    add-int/lit8 v8, v8, 0x1

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasWarningsView:Z

    if-eqz v9, :cond_24

    move v9, v11

    :goto_1f
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasAssumptionsView:Z

    if-eqz v9, :cond_25

    move v9, v11

    :goto_20
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFormulaView:Z

    if-eqz v9, :cond_26

    move v9, v11

    :goto_21
    add-int/2addr v8, v9

    add-int/2addr v8, v5

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasFooterView:Z

    if-eqz v9, :cond_27

    move v9, v11

    :goto_22
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRecalculateView:Z

    if-eqz v9, :cond_28

    move v9, v11

    :goto_23
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationView:Z

    if-nez v9, :cond_22

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasGeneralizationComputationView:Z

    if-eqz v9, :cond_29

    :cond_22
    move v9, v11

    :goto_24
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasComputationView:Z

    if-eqz v9, :cond_2a

    move v9, v11

    :goto_25
    add-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->hasRelatedQueriesView:Z

    if-eqz v9, :cond_2b

    move v9, v11

    :goto_26
    add-int/2addr v8, v9

    iput v8, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->numItems:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1d

    :cond_23
    move v8, v10

    goto :goto_1e

    :cond_24
    move v9, v10

    goto :goto_1f

    :cond_25
    move v9, v10

    goto :goto_20

    :cond_26
    move v9, v10

    goto :goto_21

    :cond_27
    move v9, v10

    goto :goto_22

    :cond_28
    move v9, v10

    goto :goto_23

    :cond_29
    move v9, v10

    goto :goto_24

    :cond_2a
    move v9, v10

    goto :goto_25

    :cond_2b
    move v9, v10

    goto :goto_26
.end method

.method public declared-synchronized swapBanner(Lcom/wolfram/alpha/WABanner;)V
    .locals 3
    .parameter "banner"

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->banners:[Lcom/wolfram/alpha/WABanner;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 458
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->views:[Landroid/view/View;

    sget v1, Lcom/wolfram/android/alpha/QueryResultAdapter;->weatherBannerPosition:I

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized swapPod(ILcom/wolfram/alpha/WAPod;)V
    .locals 2
    .parameter "position"
    .parameter "pod"

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->positionToPodIndex(I)I

    move-result v0

    .line 452
    .local v0, podIndex:I
    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryResultAdapter;->pods:[Lcom/wolfram/alpha/WAPod;

    aput-object p2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-void

    .line 451
    .end local v0           #podIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
