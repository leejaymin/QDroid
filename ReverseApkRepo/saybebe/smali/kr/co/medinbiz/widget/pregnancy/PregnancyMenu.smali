.class public Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;
.super Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;
.source "PregnancyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private isImsin:Z

.field private mTitleView:Landroid/widget/TextView;

.field private month:I

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private radio_baby:Landroid/widget/RadioButton;

.field private radio_imsin:Landroid/widget/RadioButton;

.field private scr:Landroid/widget/ScrollView;

.field private week:I

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyCommon;-><init>()V

    .line 25
    iput v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->week:I

    .line 26
    iput v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->month:I

    .line 27
    iput-boolean v3, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->isImsin:Z

    .line 32
    iput-object p1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    .line 33
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 37
    sget v1, Lkr/co/medinbiz/R$layout;->preg_main_160:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    .line 42
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mTitleView:Landroid/widget/TextView;

    .line 43
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->imsin_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_imsin:Landroid/widget/RadioButton;

    .line 44
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_baby:Landroid/widget/RadioButton;

    .line 45
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_imsin:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_baby:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getHcode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "saybebe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cal_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 49
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    :goto_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_month:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->scr:Landroid/widget/ScrollView;

    .line 56
    invoke-direct {p0}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->setUserInfo()V

    .line 57
    iget-boolean v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->isImsin:Z

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_imsin:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    const-string v1, "imsin"

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->chagePage(Ljava/lang/String;)V

    .line 64
    :goto_2
    return-void

    .line 39
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->preg_main:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->cal_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->radio_baby:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    const-string v1, "baby"

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->chagePage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private chagePage(Ljava/lang/String;)V
    .locals 13
    .parameter "sect"

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, end:I
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->scr:Landroid/widget/ScrollView;

    invoke-virtual {v10}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 125
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, big_layout:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    .line 127
    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 129
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    const-string v10, "baby"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 132
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lkr/co/medinbiz/R$string;->childcare_info:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/16 v2, 0x1a

    .line 138
    :cond_0
    :goto_0
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v5, line:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    if-lt v3, v2, :cond_2

    .line 210
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->scr:Landroid/widget/ScrollView;

    invoke-virtual {v10, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 211
    return-void

    .line 134
    .end local v3           #i:I
    .end local v5           #line:Landroid/widget/LinearLayout;
    :cond_1
    const-string v10, "imsin"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 135
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lkr/co/medinbiz/R$string;->pregnancy_info:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/16 v2, 0x2a

    goto :goto_0

    .line 145
    .restart local v3       #i:I
    .restart local v5       #line:Landroid/widget/LinearLayout;
    :cond_2
    move v8, v3

    .line 146
    .local v8, position:I
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v9, tmpT:Landroid/widget/TextView;
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    const/16 v11, 0x24

    invoke-static {v10, v11}, Lkr/co/medinbiz/util/Dip;->getPixel(Landroid/content/Context;I)I

    move-result v1

    .line 148
    .local v1, box:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v6, ll:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lkr/co/medinbiz/util/Dip;->getPixel(Landroid/content/Context;I)I

    move-result v7

    .line 150
    .local v7, margin:I
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lkr/co/medinbiz/util/Dip;->getPixel(Landroid/content/Context;I)I

    move-result v4

    .line 151
    .local v4, l_margin:I
    invoke-virtual {v6, v4, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    const/high16 v10, 0x4160

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 156
    sget v11, Lkr/co/medinbiz/R$color;->month_btn_text_color:I

    .line 155
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    add-int/lit8 v10, v2, -0x1

    if-ne v3, v10, :cond_7

    .line 158
    const-string v10, "baby"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 159
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lkr/co/medinbiz/R$string;->month:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_3
    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    rem-int/lit8 v10, v3, 0x7

    if-eqz v10, :cond_4

    add-int/lit8 v10, v2, -0x1

    if-ne v3, v10, :cond_5

    .line 200
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v5, Landroid/widget/LinearLayout;

    .end local v5           #line:Landroid/widget/LinearLayout;
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 202
    .restart local v5       #line:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 202
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 205
    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 160
    :cond_6
    const-string v10, "imsin"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 161
    iget-object v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lkr/co/medinbiz/R$string;->week:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 164
    :cond_7
    const-string v10, "baby"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->month:I

    if-le v10, v3, :cond_9

    .line 167
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_befor_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    :cond_8
    :goto_3
    new-instance v10, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;

    invoke-direct {v10, p0, p1, v8}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;-><init>(Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 168
    :cond_9
    iget v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->month:I

    if-ne v10, v3, :cond_a

    .line 169
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_today_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 171
    :cond_a
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 173
    :cond_b
    const-string v10, "imsin"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->week:I

    if-le v10, v3, :cond_c

    .line 176
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_befor_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 177
    :cond_c
    iget v10, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->week:I

    if-ne v10, v3, :cond_d

    .line 178
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_today_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 180
    :cond_d
    sget v10, Lkr/co/medinbiz/R$drawable;->btn_month:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private setUserInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    new-instance v0, Lkr/co/medinbiz/util/DateCounter;

    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lkr/co/medinbiz/util/DateCounter;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, dc:Lkr/co/medinbiz/util/DateCounter;
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    sget v5, Lkr/co/medinbiz/R$id;->info:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, info:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 86
    .local v1, format:Ljava/lang/String;
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getIsLogin()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getLoginType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "saybebe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4}, Lkr/co/medinbiz/helper/PreferencesManager;->getBabydue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_3

    .line 88
    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->isDueDateError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 90
    sget v5, Lkr/co/medinbiz/R$string;->imsin_info6:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->dueDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 89
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->isBabyCare()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    iput-boolean v7, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->isImsin:Z

    .line 94
    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->babyMonth()I

    move-result v4

    iput v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->month:I

    .line 95
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 96
    sget v5, Lkr/co/medinbiz/R$string;->imsin_info3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->babyMonth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->dueDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->babyDay()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 95
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->weekCount()[I

    move-result-object v3

    .line 99
    .local v3, week:[I
    aget v4, v3, v7

    iput v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->week:I

    .line 100
    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->isSameDate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    sget v5, Lkr/co/medinbiz/R$string;->imsin_info2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aget v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->dueDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 101
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 105
    sget v5, Lkr/co/medinbiz/R$string;->imsin_info1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aget v6, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aget v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->dueDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0}, Lkr/co/medinbiz/util/DateCounter;->dueCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 104
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 110
    .end local v3           #week:[I
    :cond_3
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 111
    sget v5, Lkr/co/medinbiz/R$string;->imsin_info4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    goto/16 :goto_0

    .line 115
    :cond_4
    iget-object v4, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lkr/co/medinbiz/R$string;->imsin_info5:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 72
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->baby_btn:I

    if-ne v0, v1, :cond_1

    .line 73
    const-string v1, "baby"

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->chagePage(Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->imsin_btn:I

    if-ne v0, v1, :cond_2

    .line 75
    const-string v1, "imsin"

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->chagePage(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->cal_btn:I

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->mContext:Landroid/content/Context;

    sget-object v4, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->CALCLASS:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
