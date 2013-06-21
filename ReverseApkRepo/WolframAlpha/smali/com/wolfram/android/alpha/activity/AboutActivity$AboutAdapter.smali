.class Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;
.super Landroid/widget/BaseAdapter;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AboutAdapter"
.end annotation


# static fields
.field private static final POSITION_ABOUT:I = 0x0

.field private static final POSITION_ABOUTAPP:I = 0x6

.field private static final POSITION_APPVERSION:I = 0x7

.field private static final POSITION_LOCATION:I = 0x8

.field private static final POSITION_RECOMMEND_ANDROIDMARKET:I = 0x3

.field private static final POSITION_RECOMMEND_EMAIL:I = 0x4

.field private static final POSITION_TERMS:I = 0x5

.field private static final POSITION_TIPS:I = 0x2

.field private static final POSITION_VIDEO:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

.field private views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/AboutActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 145
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->views:[Landroid/view/View;

    .line 146
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 169
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->views:[Landroid/view/View;

    move-object/from16 v18, v0

    aget-object v3, v18, p1

    .line 186
    .local v3, aboutItemView:Landroid/view/View;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 290
    .end local v3           #aboutItemView:Landroid/view/View;
    .local v4, aboutItemView:Landroid/view/View;
    :goto_0
    return-object v4

    .line 189
    .end local v4           #aboutItemView:Landroid/view/View;
    .restart local v3       #aboutItemView:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v7

    .line 191
    .local v7, inflater:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->views:[Landroid/view/View;

    move-object/from16 v18, v0

    aput-object v3, v18, p1

    move-object v4, v3

    .line 290
    .end local v3           #aboutItemView:Landroid/view/View;
    .restart local v4       #aboutItemView:Landroid/view/View;
    goto :goto_0

    .line 194
    .end local v4           #aboutItemView:Landroid/view/View;
    .restart local v3       #aboutItemView:Landroid/view/View;
    :pswitch_0
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 195
    .local v16, textView:Landroid/widget/TextView;
    const v18, 0x7f0c0062

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$000()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 197
    move-object/from16 v3, v16

    .line 198
    goto :goto_1

    .line 201
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_1
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 202
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c0063

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$100()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 204
    move-object/from16 v3, v16

    .line 205
    goto :goto_1

    .line 208
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_2
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 209
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c006b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$200()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 211
    move-object/from16 v3, v16

    .line 212
    goto/16 :goto_1

    .line 215
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_3
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 216
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c0064

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$300()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 218
    move-object/from16 v3, v16

    .line 219
    goto/16 :goto_1

    .line 222
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_4
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 223
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c0067

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$400()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 225
    move-object/from16 v3, v16

    .line 226
    goto/16 :goto_1

    .line 229
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_5
    const v18, 0x7f030002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 230
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c006c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-static {}, Lcom/wolfram/android/alpha/activity/AboutActivity;->access$500()Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 232
    move-object/from16 v3, v16

    .line 233
    goto/16 :goto_1

    .line 237
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_6
    const v18, 0x1090002

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 238
    .restart local v16       #textView:Landroid/widget/TextView;
    const v18, 0x7f0c006d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    const v18, 0x7f0a0032

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 240
    const v18, 0x7f0a0033

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 242
    move-object/from16 v3, v16

    .line 243
    goto/16 :goto_1

    .line 246
    .end local v16           #textView:Landroid/widget/TextView;
    :pswitch_7
    const v18, 0x7f0300a8

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 247
    .local v17, versionView:Landroid/widget/RelativeLayout;
    const v18, 0x7f0e00aa

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 248
    .local v5, firstLine:Landroid/widget/TextView;
    const v18, 0x7f0e00ab

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 249
    .local v15, secondLine:Landroid/widget/TextView;
    const v18, 0x7f0c006e

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 250
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getVersion()Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 252
    move-object/from16 v3, v17

    .line 253
    goto/16 :goto_1

    .line 256
    .end local v5           #firstLine:Landroid/widget/TextView;
    .end local v15           #secondLine:Landroid/widget/TextView;
    .end local v17           #versionView:Landroid/widget/RelativeLayout;
    :pswitch_8
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getLocation()Landroid/location/Location;

    move-result-object v10

    .line 258
    .local v10, loc:Landroid/location/Location;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLocationEnabled()Z

    move-result v18

    if-nez v18, :cond_1

    .line 259
    new-instance v18, Lcom/wolfram/android/alpha/Resources_modified;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v19, 0x7f0c0071

    invoke-virtual/range {v18 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, locString:Ljava/lang/String;
    :goto_2
    const v18, 0x7f0300a8

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 279
    .local v12, locationView:Landroid/widget/RelativeLayout;
    const v18, 0x7f0e00aa

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 280
    .restart local v5       #firstLine:Landroid/widget/TextView;
    const v18, 0x7f0e00ab

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 281
    .restart local v15       #secondLine:Landroid/widget/TextView;
    const v18, 0x7f0c006f

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    const/16 v18, 0x0

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 284
    move-object v3, v12

    .line 285
    goto/16 :goto_1

    .line 260
    .end local v5           #firstLine:Landroid/widget/TextView;
    .end local v11           #locString:Ljava/lang/String;
    .end local v12           #locationView:Landroid/widget/RelativeLayout;
    .end local v15           #secondLine:Landroid/widget/TextView;
    :cond_1
    if-nez v10, :cond_2

    .line 261
    new-instance v18, Lcom/wolfram/android/alpha/Resources_modified;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v19, 0x7f0c0070

    invoke-virtual/range {v18 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #locString:Ljava/lang/String;
    goto :goto_2

    .line 263
    .end local v11           #locString:Ljava/lang/String;
    :cond_2
    new-instance v18, Lcom/wolfram/android/alpha/Resources_modified;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v19, 0x7f0c0072

    invoke-virtual/range {v18 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 264
    .local v13, longLabel:Ljava/lang/String;
    new-instance v18, Lcom/wolfram/android/alpha/Resources_modified;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;->this$0:Lcom/wolfram/android/alpha/activity/AboutActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v19, 0x7f0c0073

    invoke-virtual/range {v18 .. v19}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, latLabel:Ljava/lang/String;
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v18, "#0.000"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v6, formatter:Ljava/text/DecimalFormat;
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v0, v6

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, longitude:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    move-object v0, v6

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, latitude:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #locString:Ljava/lang/String;
    goto/16 :goto_2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 179
    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
