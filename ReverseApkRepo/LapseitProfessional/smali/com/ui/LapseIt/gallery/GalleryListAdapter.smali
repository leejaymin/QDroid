.class public Lcom/ui/LapseIt/gallery/GalleryListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GalleryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

.field private static mContext:Landroid/content/Context;

.field private static mLayoutId:I

.field public static mResultJSON:Lorg/json/JSONArray;

.field private static thumbMaxHeight:F

.field private static thumbMaxWidth:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/ui/LapseIt/gallery/GalleryListAdapter;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/ui/LapseIt/gallery/GalleryListAdapter;
    .locals 3
    .parameter "context"
    .parameter "layoutId"

    .prologue
    const/4 v2, 0x1

    .line 42
    sput-object p0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mContext:Landroid/content/Context;

    .line 44
    sput p1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mLayoutId:I

    .line 46
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    .line 49
    const/high16 v0, 0x4303

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->thumbMaxWidth:F

    .line 50
    const/high16 v0, 0x42a0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sput v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->thumbMaxHeight:F

    .line 53
    :cond_0
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    .line 59
    :goto_0
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    return-object v0

    .line 56
    :cond_1
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->INSTANCE:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->setJSONAndPopulate(Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method private setRatingOnItem(Landroid/view/View;F)V
    .locals 8
    .parameter "view"
    .parameter "value"

    .prologue
    const v7, 0x7f0200c0

    const v6, 0x7f0200bf

    .line 154
    const-string v5, "rating_first_star"

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    .local v1, firstStar:Landroid/widget/ImageView;
    const-string v5, "rating_sec_star"

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 156
    .local v3, secStar:Landroid/widget/ImageView;
    const-string v5, "rating_third_star"

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 157
    .local v4, thirdStar:Landroid/widget/ImageView;
    const-string v5, "rating_fourth_star"

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 158
    .local v2, fourthStar:Landroid/widget/ImageView;
    const-string v5, "rating_fifth_star"

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    .local v0, fifthStar:Landroid/widget/ImageView;
    const/high16 v5, 0x40a0

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 161
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    :goto_0
    return-void

    .line 166
    :cond_0
    const/high16 v5, 0x4080

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    .line 167
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 172
    :cond_1
    const/high16 v5, 0x4040

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_2

    .line 173
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_2
    const/high16 v5, 0x4000

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_3

    .line 179
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :cond_3
    const/high16 v5, 0x3f80

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_4

    .line 185
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 202
    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    sget-object v3, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mLayoutId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 80
    .restart local p2
    new-instance v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;-><init>(Lcom/ui/LapseIt/gallery/GalleryListAdapter;Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;)V

    .line 81
    .local v9, contentRenderer:Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;
    const v3, 0x7f0b0021

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lpl/polidea/imagemanager/ManagedImageView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    .line 83
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    sget v4, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->thumbMaxWidth:F

    float-to-int v4, v4

    sget v5, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->thumbMaxHeight:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lpl/polidea/imagemanager/ManagedImageView;->setDesiredDimensions(II)V

    .line 84
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepAspectRatio(Z)V

    .line 85
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setFillWholeView(Z)V

    .line 86
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setAntiAliasing(Z)V

    .line 87
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setPreviewEnabled(Z)V

    .line 88
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setKeepStrongCache(Z)V

    .line 90
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lpl/polidea/imagemanager/ManagedImageView;->setFocusable(Z)V

    .line 92
    const v3, 0x7f0b0023

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->title:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f0b0025

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->description:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f0b0024

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->user:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f0b0022

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->datetime:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->votes:Landroid/widget/TextView;

    .line 98
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    .end local v9           #contentRenderer:Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;

    .line 104
    .restart local v9       #contentRenderer:Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;
    :try_start_0
    sget-object v3, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 106
    .local v17, positionJSON:Lorg/json/JSONObject;
    const-string v3, "title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 107
    .local v19, title:Ljava/lang/String;
    const-string v3, "filename"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, filename:Ljava/lang/String;
    const-string v3, "username"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 109
    .local v21, username:Ljava/lang/String;
    const-string v3, "description"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, description:Ljava/lang/String;
    const-string v3, "datetime"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, datetime:Ljava/lang/String;
    const-string v3, "votes"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 112
    .local v22, votes:I
    const-string v3, "rating_avg"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    .line 113
    .local v18, rating_avg:F
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->title:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->setRatingOnItem(Landroid/view/View;F)V

    .line 117
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 118
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->description:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, formatedDate:Ljava/lang/String;
    const-string v3, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 127
    .local v10, dateSplited:[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v10, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    .line 128
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 129
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->datetime:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_1
    :try_start_2
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->user:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_2

    .line 137
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->votes:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.lapseit.com/_gallery/thumbs/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, filePath:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 144
    .local v20, uriPath:Landroid/net/Uri;
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lpl/polidea/imagemanager/ManagedImageView;->setImage(Landroid/net/Uri;)V

    .line 150
    .end local v10           #dateSplited:[Ljava/lang/String;
    .end local v11           #datetime:Ljava/lang/String;
    .end local v12           #description:Ljava/lang/String;
    .end local v14           #filePath:Ljava/lang/String;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #formatedDate:Ljava/lang/String;
    .end local v17           #positionJSON:Lorg/json/JSONObject;
    .end local v18           #rating_avg:F
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #uriPath:Landroid/net/Uri;
    .end local v21           #username:Ljava/lang/String;
    .end local v22           #votes:I
    :goto_3
    return-object p2

    .line 120
    .restart local v11       #datetime:Ljava/lang/String;
    .restart local v12       #description:Ljava/lang/String;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v17       #positionJSON:Lorg/json/JSONObject;
    .restart local v18       #rating_avg:F
    .restart local v19       #title:Ljava/lang/String;
    .restart local v21       #username:Ljava/lang/String;
    .restart local v22       #votes:I
    :cond_1
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->description:Landroid/widget/TextView;

    const-string v4, "No description yet"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v11           #datetime:Ljava/lang/String;
    .end local v12           #description:Ljava/lang/String;
    .end local v15           #filename:Ljava/lang/String;
    .end local v17           #positionJSON:Lorg/json/JSONObject;
    .end local v18           #rating_avg:F
    .end local v19           #title:Ljava/lang/String;
    .end local v21           #username:Ljava/lang/String;
    .end local v22           #votes:I
    :catch_0
    move-exception v13

    .line 147
    .local v13, e:Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 130
    .end local v13           #e:Lorg/json/JSONException;
    .restart local v10       #dateSplited:[Ljava/lang/String;
    .restart local v11       #datetime:Ljava/lang/String;
    .restart local v12       #description:Ljava/lang/String;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #formatedDate:Ljava/lang/String;
    .restart local v17       #positionJSON:Lorg/json/JSONObject;
    .restart local v18       #rating_avg:F
    .restart local v19       #title:Ljava/lang/String;
    .restart local v21       #username:Ljava/lang/String;
    .restart local v22       #votes:I
    :catch_1
    move-exception v13

    .line 131
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v13           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, v9, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->votes:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public setJSONAndPopulate(Lorg/json/JSONArray;)V
    .locals 0
    .parameter "resultJSON"

    .prologue
    .line 67
    sput-object p1, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->mResultJSON:Lorg/json/JSONArray;

    .line 69
    invoke-virtual {p0}, Lcom/ui/LapseIt/gallery/GalleryListAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method
