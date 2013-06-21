.class public Lcom/wolfram/android/alpha/view/PodView;
.super Landroid/widget/LinearLayout;
.source "PodView.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field public static states:[Lcom/wolfram/alpha/WAPodState;

.field private static subpodSeparatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field private IsPod_ImageMap:Z

.field private Location_HorizontalScrollViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ToggleView_OFF:Landroid/widget/ImageView;

.field private ToggleView_ON:Landroid/widget/ImageView;

.field private activityMeter:Landroid/view/View;

.field private adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

.field private inflater:Landroid/view/LayoutInflater;

.field private isToggleArrowsClicked:Z

.field logger:Ljava/util/logging/Logger;

.field private pod:Lcom/wolfram/alpha/WAPod;

.field private podPositionInAdapter:I

.field podTitleView:Landroid/widget/TextView;

.field subpodViews:[Lcom/wolfram/android/alpha/view/SubpodView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/wolfram/android/alpha/view/PodView;->subpodSeparatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    new-array v0, v3, [Lcom/wolfram/alpha/WAPodState;

    sput-object v0, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    .line 68
    sget-object v0, Lcom/wolfram/android/alpha/view/PodView;->subpodSeparatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-string v0, "com.wolfram.android.alpha.view.PodView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->logger:Ljava/util/logging/Logger;

    .line 55
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->IsPod_ImageMap:Z

    .line 56
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->Location_HorizontalScrollViews:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    .line 60
    iput-object v1, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/wolfram/android/alpha/view/PodView;->activityMeter:Landroid/view/View;

    .line 74
    return-void
.end method

.method private ImageMap_ToggleArrows([Lcom/wolfram/alpha/WAPodState;)V
    .locals 2
    .parameter "states"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v0}, Lcom/wolfram/alpha/WAPod;->getToggleArrows_Clicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ONClick([Lcom/wolfram/alpha/WAPodState;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    new-instance v1, Lcom/wolfram/android/alpha/view/PodView$1;

    invoke-direct {v1, p0, p1}, Lcom/wolfram/android/alpha/view/PodView$1;-><init>(Lcom/wolfram/android/alpha/view/PodView;[Lcom/wolfram/alpha/WAPodState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    new-instance v1, Lcom/wolfram/android/alpha/view/PodView$2;

    invoke-direct {v1, p0, p1}, Lcom/wolfram/android/alpha/view/PodView$2;-><init>(Lcom/wolfram/android/alpha/view/PodView;[Lcom/wolfram/alpha/WAPodState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFFClick([Lcom/wolfram/alpha/WAPodState;)V

    goto :goto_0
.end method

.method private populateAllSubpods()V
    .locals 34

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAPod;->getSubpods()[Lcom/wolfram/alpha/WASubpod;

    move-result-object v32

    .line 229
    .local v32, subpods:[Lcom/wolfram/alpha/WASubpod;
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v23, v0

    .line 230
    .local v23, numSubpods:I
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v24, scaleFactor_ArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 232
    aget-object v26, v32, v17

    .line 234
    .local v26, subpod:Lcom/wolfram/alpha/WASubpod;
    const/high16 v5, 0x3f80

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WASubpod;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f0300a0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 238
    .local v30, subpodTitleView:Landroid/widget/TextView;
    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WASubpod;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;)V

    .line 242
    .end local v30           #subpodTitleView:Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f03009a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    .line 246
    .local v28, subpodScrollView:Landroid/view/View;
    :try_start_0
    sget-object v5, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 247
    sget-object v5, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v6, v7

    move-object v0, v5

    move-object/from16 v1, v28

    move-object v2, v6

    invoke-static {v0, v1, v2}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;)V

    .line 251
    const/4 v5, 0x1

    sub-int v5, v23, v5

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 253
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getChildCount()I

    move-result v5

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HorizontalScrollView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->Location_HorizontalScrollViews:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 262
    .end local v19           #i1:I
    :cond_3
    const v5, 0x7f0e00a0

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 263
    .local v31, subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v6, v0

    invoke-interface {v6}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object v2, v5

    move-object v3, v6

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wolfram/android/alpha/view/SubpodView;->populate(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    invoke-interface/range {v26 .. v26}, Lcom/wolfram/alpha/WASubpod;->getSubpodStates()[Lcom/wolfram/alpha/WASubpodState;

    move-result-object v33

    .line 268
    .local v33, substates:[Lcom/wolfram/alpha/WASubpodState;
    const/16 v16, 0x0

    .line 270
    .local v16, hasSubpodstateButtons:Z
    const v5, 0x7f0e006a

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->activityMeter:Landroid/view/View;

    .line 272
    if-eqz v33, :cond_9

    .line 273
    move-object/from16 v14, v33

    .local v14, arr$:[Lcom/wolfram/alpha/WASubpodState;
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v25, v14, v18

    .line 274
    .local v25, state:Lcom/wolfram/alpha/WASubpodState;
    invoke-interface/range {v25 .. v25}, Lcom/wolfram/alpha/WASubpodState;->getNames()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4

    .line 275
    const/16 v16, 0x1

    .line 273
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 278
    .end local v25           #state:Lcom/wolfram/alpha/WASubpodState;
    :cond_5
    if-eqz v16, :cond_8

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f03009b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 280
    .local v27, subpodFooterView:Landroid/view/View;
    const v5, 0x7f0e00a1

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 282
    .local v13, SubpodStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    move-object/from16 v14, v33

    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v25, v14, v18

    .line 283
    .restart local v25       #state:Lcom/wolfram/alpha/WASubpodState;
    invoke-interface/range {v25 .. v25}, Lcom/wolfram/alpha/WASubpodState;->getNames()[Ljava/lang/String;

    move-result-object v22

    .line 285
    .local v22, names:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 282
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 287
    :cond_6
    const/4 v5, 0x0

    aget-object v21, v22, v5

    .line 289
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f03006c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 290
    .local v15, button:Landroid/widget/Button;
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 292
    new-instance v5, Lcom/wolfram/android/alpha/PodStateButtonData;

    invoke-interface/range {v25 .. v25}, Lcom/wolfram/alpha/WASubpodState;->getPodState()Lcom/wolfram/alpha/WAPodState;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/view/PodView;->podPositionInAdapter:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v8, v0

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v9, v0

    invoke-interface {v9}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->activityMeter:Landroid/view/View;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    move-object v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/wolfram/android/alpha/PodStateButtonData;-><init>(Lcom/wolfram/alpha/WAPodState;ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v13, v15}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 296
    .end local v15           #button:Landroid/widget/Button;
    .end local v21           #name:Ljava/lang/String;
    .end local v22           #names:[Ljava/lang/String;
    .end local v25           #state:Lcom/wolfram/alpha/WASubpodState;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;)V

    .line 302
    .end local v13           #SubpodStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    .end local v27           #subpodFooterView:Landroid/view/View;
    :cond_8
    const/4 v5, 0x1

    sub-int v5, v23, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_9

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    const v6, 0x7f03009e

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 305
    .local v29, subpodSeparator:Landroid/view/View;
    sget-object v5, Lcom/wolfram/android/alpha/view/PodView;->subpodSeparatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v14           #arr$:[Lcom/wolfram/alpha/WASubpodState;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v29           #subpodSeparator:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/view/PodView;->IsPod_ImageMap:Z

    move v5, v0

    if-nez v5, :cond_a

    invoke-virtual/range {v31 .. v31}, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMap()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 315
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/android/alpha/view/PodView;->IsPod_ImageMap:Z

    .line 231
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 320
    .end local v16           #hasSubpodstateButtons:Z
    .end local v26           #subpod:Lcom/wolfram/alpha/WASubpod;
    .end local v28           #subpodScrollView:Landroid/view/View;
    .end local v31           #subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    .end local v33           #substates:[Lcom/wolfram/alpha/WASubpodState;
    :cond_b
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v6, v0

    invoke-interface {v6}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void

    .line 248
    .restart local v26       #subpod:Lcom/wolfram/alpha/WASubpod;
    .restart local v28       #subpodScrollView:Landroid/view/View;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method

.method private populateImageMapElemsofSubpods([Lcom/wolfram/alpha/WAPodState;)V
    .locals 12
    .parameter "states"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 327
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->Location_HorizontalScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v7, v2, v3

    .local v7, i1:I
    :goto_0
    if-ltz v7, :cond_0

    .line 329
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->Location_HorizontalScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/PodView;->removeViewAt(I)V

    .line 327
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAPod;->getSubpods()[Lcom/wolfram/alpha/WASubpod;

    move-result-object v10

    .line 335
    .local v10, subpods:[Lcom/wolfram/alpha/WASubpod;
    array-length v8, v10

    .line 336
    .local v8, numSubpods:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 337
    aget-object v1, v10, v6

    .line 338
    .local v1, subpod:Lcom/wolfram/alpha/WASubpod;
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03009a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 342
    .local v9, subpodScrollView:Landroid/view/View;
    :try_start_0
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 343
    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v11, v3, v5

    invoke-static {v2, v9, v3}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->Location_HorizontalScrollViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v9, v2}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;I)V

    .line 347
    const v2, 0x7f0e00a0

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/view/SubpodView;

    .line 349
    .local v0, subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    iget-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->IsPod_ImageMap:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_2

    .line 354
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/wolfram/android/alpha/view/SubpodView;->populate(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;I)V

    .line 355
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/view/SubpodView;->isWAImageMap()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v11}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/wolfram/android/alpha/view/SubpodView;->populateImageMapButtons(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;ZF)V

    .line 358
    :cond_2
    iget-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    if-nez v2, :cond_3

    .line 361
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v2}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/wolfram/android/alpha/view/SubpodView;->populate(Lcom/wolfram/alpha/WASubpod;Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 364
    .end local v0           #subpodView:Lcom/wolfram/android/alpha/view/SubpodView;
    .end local v1           #subpod:Lcom/wolfram/alpha/WASubpod;
    .end local v9           #subpodScrollView:Landroid/view/View;
    :cond_4
    return-void

    .line 344
    .restart local v1       #subpod:Lcom/wolfram/alpha/WASubpod;
    .restart local v9       #subpodScrollView:Landroid/view/View;
    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method private populatePodFooter([Lcom/wolfram/alpha/WASound;[Lcom/wolfram/alpha/WAInfo;[Lcom/wolfram/alpha/WADefinition;[Lcom/wolfram/alpha/WANote;[Lcom/wolfram/alpha/WAPodState;)V
    .locals 25
    .parameter "sounds"
    .parameter "infos"
    .parameter "definitions"
    .parameter "notes"
    .parameter "states"

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v2, v0

    const v3, 0x7f030067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 369
    .local v22, podFooter:Landroid/widget/LinearLayout;
    const/16 v21, 0x0

    .line 370
    .local v21, playButton:Landroid/view/View;
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_0

    .line 371
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-interface {v2}, Lcom/wolfram/alpha/WASound;->getURL()Ljava/lang/String;

    move-result-object v24

    .line 372
    .local v24, soundURL:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 373
    const v2, 0x7f0e0074

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 374
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .end local v24           #soundURL:Ljava/lang/String;
    :cond_0
    const/16 v16, 0x0

    .line 379
    .local v16, infoButton:Landroid/view/View;
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_6

    .line 380
    move-object/from16 v0, p2

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    if-nez v2, :cond_2

    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    if-nez v2, :cond_2

    .line 384
    const/4 v2, 0x0

    aget-object v15, p2, v2

    .line 386
    .local v15, info:Lcom/wolfram/alpha/WAInfo;
    invoke-interface {v15}, Lcom/wolfram/alpha/WAInfo;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, ""

    invoke-interface {v15}, Lcom/wolfram/alpha/WAInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-interface {v15}, Lcom/wolfram/alpha/WAInfo;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v17, v2, v3

    .line 390
    .local v17, item:Lcom/wolfram/alpha/visitor/Visitable;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wolfram/alpha/WAUnits;

    move v2, v0

    if-eqz v2, :cond_1

    .line 391
    const v2, 0x7f0e0077

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 392
    new-instance v2, Lcom/wolfram/android/alpha/InfoButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v3, v0

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/wolfram/android/alpha/InfoButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 395
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wolfram/alpha/WALink;

    move v2, v0

    if-eqz v2, :cond_2

    .line 396
    const-string v2, "Satellite image"

    move-object/from16 v0, v17

    check-cast v0, Lcom/wolfram/alpha/WALink;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 397
    const v2, 0x7f0e007c

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 398
    move-object/from16 v0, v17

    check-cast v0, Lcom/wolfram/alpha/WALink;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v2

    check-cast v17, Lcom/wolfram/alpha/WALink;

    .end local v17           #item:Lcom/wolfram/alpha/visitor/Visitable;
    invoke-interface/range {v17 .. v17}, Lcom/wolfram/alpha/WALink;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wolfram/android/alpha/activity/MapActivity;->createMapData(Ljava/lang/String;Ljava/lang/String;)Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    move-result-object v2

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 407
    .end local v15           #info:Lcom/wolfram/alpha/WAInfo;
    :cond_2
    :goto_0
    if-nez v16, :cond_3

    .line 410
    const v2, 0x7f0e0075

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 411
    new-instance v2, Lcom/wolfram/android/alpha/InfoButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v3, v0

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/wolfram/android/alpha/InfoButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 413
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 443
    :cond_4
    :goto_1
    const v2, 0x7f0e0073

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 444
    .local v23, podStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    const/16 v12, 0x2a

    .line 446
    .local v12, buttonID:I
    const v2, 0x7f0e006a

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->activityMeter:Landroid/view/View;

    .line 447
    move-object/from16 v10, p5

    .local v10, arr$:[Lcom/wolfram/alpha/WAPodState;
    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v13, v12

    .end local v12           #buttonID:I
    .local v13, buttonID:I
    :goto_2
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    aget-object v3, v10, v14

    .line 448
    .local v3, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v3}, Lcom/wolfram/alpha/WAPodState;->getNames()[Ljava/lang/String;

    move-result-object v20

    .line 451
    .local v20, names:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    move v12, v13

    .line 447
    .end local v13           #buttonID:I
    .restart local v12       #buttonID:I
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12           #buttonID:I
    .restart local v13       #buttonID:I
    goto :goto_2

    .line 400
    .end local v3           #state:Lcom/wolfram/alpha/WAPodState;
    .end local v10           #arr$:[Lcom/wolfram/alpha/WAPodState;
    .end local v13           #buttonID:I
    .end local v14           #i$:I
    .end local v18           #len$:I
    .end local v20           #names:[Ljava/lang/String;
    .end local v23           #podStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    .restart local v15       #info:Lcom/wolfram/alpha/WAInfo;
    .restart local v17       #item:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_5
    const v2, 0x7f0e007b

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 401
    move-object/from16 v0, v16

    check-cast v0, Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/wolfram/alpha/WALink;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 418
    .end local v15           #info:Lcom/wolfram/alpha/WAInfo;
    .end local v17           #item:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    if-gtz v2, :cond_8

    :cond_7
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_4

    .line 420
    :cond_8
    if-eqz p3, :cond_9

    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_9

    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_9

    .line 421
    const v2, 0x7f0e0078

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 422
    new-instance v2, Lcom/wolfram/android/alpha/InfoButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v3, v0

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wolfram/android/alpha/InfoButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 423
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 427
    :cond_9
    if-eqz p3, :cond_a

    move-object/from16 v0, p3

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_a

    .line 428
    const v2, 0x7f0e0079

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 429
    new-instance v2, Lcom/wolfram/android/alpha/InfoButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v3, v0

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wolfram/android/alpha/InfoButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_a
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    if-lez v2, :cond_4

    .line 435
    const v2, 0x7f0e007a

    move-object/from16 v0, v22

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 436
    new-instance v2, Lcom/wolfram/android/alpha/InfoButtonData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v3, v0

    invoke-interface {v3}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wolfram/android/alpha/InfoButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 437
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 453
    .restart local v3       #state:Lcom/wolfram/alpha/WAPodState;
    .restart local v10       #arr$:[Lcom/wolfram/alpha/WAPodState;
    .restart local v13       #buttonID:I
    .restart local v14       #i$:I
    .restart local v18       #len$:I
    .restart local v20       #names:[Ljava/lang/String;
    .restart local v23       #podStateButtonFrame:Lcom/wolfram/android/alpha/view/FlowLayout;
    :cond_b
    const/4 v2, 0x0

    aget-object v19, v20, v2

    .line 454
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v2, v0

    const v4, 0x7f03006c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 455
    .local v11, button:Landroid/widget/Button;
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    new-instance v2, Lcom/wolfram/android/alpha/PodStateButtonData;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/view/PodView;->podPositionInAdapter:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v5, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v6, v0

    invoke-interface {v6}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->activityMeter:Landroid/view/View;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/wolfram/android/alpha/PodStateButtonData;-><init>(Lcom/wolfram/alpha/WAPodState;ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 457
    add-int/lit8 v12, v13, 0x1

    .end local v13           #buttonID:I
    .restart local v12       #buttonID:I
    invoke-virtual {v11, v13}, Landroid/widget/Button;->setId(I)V

    .line 458
    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 467
    .end local v3           #state:Lcom/wolfram/alpha/WAPodState;
    .end local v11           #button:Landroid/widget/Button;
    .end local v12           #buttonID:I
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #names:[Ljava/lang/String;
    .restart local v13       #buttonID:I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;)V

    .line 468
    return-void
.end method

.method private populatePodHeader([Lcom/wolfram/alpha/WAPodState;)V
    .locals 21
    .parameter "states"

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    const v5, 0x7f030069

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 203
    .local v18, podHeader:Lcom/wolfram/android/alpha/view/FlowLayout;
    const v4, 0x7f0e006a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 204
    .local v9, activityMeter:Landroid/view/View;
    move-object/from16 v12, p1

    .local v12, arr$:[Lcom/wolfram/alpha/WAPodState;
    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    aget-object v5, v12, v14

    .line 205
    .local v5, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface {v5}, Lcom/wolfram/alpha/WAPodState;->getNames()[Ljava/lang/String;

    move-result-object v17

    .line 206
    .local v17, names:[Ljava/lang/String;
    invoke-interface {v5}, Lcom/wolfram/alpha/WAPodState;->getInputs()[Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, inputs:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    move-object v4, v0

    const v6, 0x7f03006e

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/wolfram/android/alpha/view/PodStateSpinner;

    .line 210
    .local v19, spinner:Lcom/wolfram/android/alpha/view/PodStateSpinner;
    new-instance v20, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f030092

    move-object/from16 v0, v20

    move-object v1, v4

    move v2, v6

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 211
    .local v20, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 212
    invoke-virtual/range {v19 .. v20}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 213
    invoke-interface {v5}, Lcom/wolfram/alpha/WAPodState;->getCurrentIndex()I

    move-result v13

    .line 214
    .local v13, curIndex:I
    if-ltz v13, :cond_0

    .line 215
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->setSelection(I)V

    .line 217
    :cond_0
    new-instance v4, Lcom/wolfram/android/alpha/PodStateButtonData;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wolfram/android/alpha/view/PodView;->podPositionInAdapter:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v7, v0

    invoke-interface {v7}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    move-object v8, v0

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    move-object v11, v0

    invoke-direct/range {v4 .. v11}, Lcom/wolfram/android/alpha/PodStateButtonData;-><init>(Lcom/wolfram/alpha/WAPodState;ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->setTag(Ljava/lang/Object;)V

    .line 218
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodStateSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    invoke-virtual/range {v18 .. v19}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    .line 204
    .end local v13           #curIndex:I
    .end local v19           #spinner:Lcom/wolfram/android/alpha/view/PodStateSpinner;
    .end local v20           #spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 222
    .end local v5           #state:Lcom/wolfram/alpha/WAPodState;
    .end local v15           #inputs:[Ljava/lang/String;
    .end local v17           #names:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method


# virtual methods
.method public ToggleView_OFFClick([Lcom/wolfram/alpha/WAPodState;)V
    .locals 2
    .parameter "states"

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    .line 184
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAPod;->setToggleArrows_Clicked(Z)V

    .line 187
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/view/PodView;->populateImageMapElemsofSubpods([Lcom/wolfram/alpha/WAPodState;)V

    .line 188
    return-void
.end method

.method public ToggleView_ONClick([Lcom/wolfram/alpha/WAPodState;)V
    .locals 3
    .parameter "states"

    .prologue
    const/4 v2, 0x0

    .line 192
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    .line 193
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/view/PodView;->isToggleArrowsClicked:Z

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/WAPod;->setToggleArrows_Clicked(Z)V

    .line 196
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/view/PodView;->populateImageMapElemsofSubpods([Lcom/wolfram/alpha/WAPodState;)V

    .line 197
    return-void
.end method

.method public populate(Lcom/wolfram/alpha/WAPod;Lcom/wolfram/android/alpha/QueryResultAdapter;I)V
    .locals 18
    .parameter "pod"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 82
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->pod:Lcom/wolfram/alpha/WAPod;

    .line 83
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;

    .line 84
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/android/alpha/view/PodView;->podPositionInAdapter:I

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->inflater:Landroid/view/LayoutInflater;

    .line 93
    const v3, 0x7f0e0069

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 94
    .local v16, podTitleView:Landroid/widget/TextView;
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getAsyncURL()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getPodStates()[Lcom/wolfram/alpha/WAPodState;

    move-result-object v3

    sput-object v3, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    .line 102
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getInfos()[Lcom/wolfram/alpha/WAInfo;

    move-result-object v5

    .line 103
    .local v5, infos:[Lcom/wolfram/alpha/WAInfo;
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getDefinitions()[Lcom/wolfram/alpha/WADefinition;

    move-result-object v6

    .line 104
    .local v6, definitions:[Lcom/wolfram/alpha/WADefinition;
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getNotes()[Lcom/wolfram/alpha/WANote;

    move-result-object v7

    .line 105
    .local v7, notes:[Lcom/wolfram/alpha/WANote;
    invoke-interface/range {p1 .. p1}, Lcom/wolfram/alpha/WAPod;->getSounds()[Lcom/wolfram/alpha/WASound;

    move-result-object v4

    .line 107
    .local v4, sounds:[Lcom/wolfram/alpha/WASound;
    const/4 v12, 0x0

    .line 108
    .local v12, hasPodstateSpinners:Z
    const/4 v11, 0x0

    .line 110
    .local v11, hasPodstateButtons:Z
    sget-object v10, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    .local v10, arr$:[Lcom/wolfram/alpha/WAPodState;
    array-length v14, v10

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_1

    aget-object v17, v10, v13

    .line 111
    .local v17, state:Lcom/wolfram/alpha/WAPodState;
    invoke-interface/range {v17 .. v17}, Lcom/wolfram/alpha/WAPodState;->getNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v8, 0x1

    if-le v3, v8, :cond_0

    .line 112
    const/4 v12, 0x1

    .line 110
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 116
    :cond_0
    const/4 v11, 0x1

    goto :goto_1

    .line 119
    .end local v17           #state:Lcom/wolfram/alpha/WAPodState;
    :cond_1
    const v3, 0x7f0e006b

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFF:Landroid/widget/ImageView;

    .line 120
    const v3, 0x7f0e006c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ON:Landroid/widget/ImageView;

    .line 123
    if-eqz v12, :cond_2

    .line 124
    sget-object v3, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->populatePodHeader([Lcom/wolfram/alpha/WAPodState;)V

    .line 128
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->populateAllSubpods()V

    .line 131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/android/alpha/view/PodView;->IsPod_ImageMap:Z

    move v3, v0

    if-eqz v3, :cond_3

    .line 132
    sget-object v3, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->ImageMap_ToggleArrows([Lcom/wolfram/alpha/WAPodState;)V

    .line 136
    :cond_3
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-nez v11, :cond_4

    array-length v3, v5

    if-gtz v3, :cond_4

    array-length v3, v4

    if-gtz v3, :cond_4

    array-length v3, v6

    if-gtz v3, :cond_4

    array-length v3, v7

    if-lez v3, :cond_5

    .line 137
    :cond_4
    sget-object v8, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/wolfram/android/alpha/view/PodView;->populatePodFooter([Lcom/wolfram/alpha/WASound;[Lcom/wolfram/alpha/WAInfo;[Lcom/wolfram/alpha/WADefinition;[Lcom/wolfram/alpha/WANote;[Lcom/wolfram/alpha/WAPodState;)V

    .line 149
    .end local v4           #sounds:[Lcom/wolfram/alpha/WASound;
    .end local v5           #infos:[Lcom/wolfram/alpha/WAInfo;
    .end local v6           #definitions:[Lcom/wolfram/alpha/WADefinition;
    .end local v7           #notes:[Lcom/wolfram/alpha/WANote;
    .end local v10           #arr$:[Lcom/wolfram/alpha/WAPodState;
    .end local v11           #hasPodstateButtons:Z
    .end local v12           #hasPodstateSpinners:Z
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_5
    :goto_2
    return-void

    .line 142
    .restart local p1
    :cond_6
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/view/PodView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x1010287

    invoke-direct {v9, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    .local v9, activityMeter:Landroid/widget/ProgressBar;
    const/16 v3, 0x30

    invoke-virtual {v9, v3}, Landroid/widget/ProgressBar;->setMinimumHeight(I)V

    .line 144
    const/16 v3, 0x30

    invoke-virtual {v9, v3}, Landroid/widget/ProgressBar;->setMinimumWidth(I)V

    .line 145
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    const/16 v4, 0x30

    invoke-direct {v15, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/view/PodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public removePodView()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/PodView;->removeAllViews()V

    .line 78
    return-void
.end method
