.class public Lcom/zubhium/ZubhiumView;
.super Landroid/widget/ScrollView;
.source "ZubhiumView.java"


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x6

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 235
    iput v0, p0, Lcom/zubhium/ZubhiumView;->left:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->right:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->top:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    .line 24
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->init(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x6

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    iput v0, p0, Lcom/zubhium/ZubhiumView;->left:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->right:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->top:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    .line 29
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x6

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    iput v0, p0, Lcom/zubhium/ZubhiumView;->left:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->right:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->top:I

    iput v0, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    .line 34
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private fillParent()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 242
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getEmailView(Landroid/content/Context;)Landroid/widget/EditText;
    .locals 6
    .parameter "context"

    .prologue
    .line 56
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, text:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, feedbackParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    iget v2, p0, Lcom/zubhium/ZubhiumView;->left:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/zubhium/ZubhiumView;->right:I

    iget v5, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    const-string v2, "zubhiumFeedbackEmail"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 63
    const-string v2, "Email (Optional)."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 67
    return-object v1
.end method

.method private getFeedbackView(Landroid/content/Context;)Landroid/widget/EditText;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x4

    .line 130
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 131
    .local v1, text:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, feedbackParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget v2, p0, Lcom/zubhium/ZubhiumView;->left:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/zubhium/ZubhiumView;->right:I

    iget v5, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    const-string v2, "zubhiumFeedback"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setLines(I)V

    .line 138
    const-string v2, "Share your thoughts with us."

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setId(I)V

    .line 142
    return-object v1
.end method

.method private getMainLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->fillParent()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, mainLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-object v0
.end method

.method private getPrivacyBanner(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, text:Landroid/widget/TextView;
    const-string v2, "zubhiumPrivacyTitle"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 174
    const-string v2, "Privacy"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget v2, p0, Lcom/zubhium/ZubhiumView;->left:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 176
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 177
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 178
    .local v0, privacyParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 181
    return-object v1
.end method

.method private getRadioGroup(Landroid/content/Context;)Landroid/widget/RadioGroup;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 146
    new-instance v3, Landroid/widget/RadioGroup;

    invoke-direct {v3, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 147
    .local v3, optionsGroup:Landroid/widget/RadioGroup;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 148
    .local v4, optionsGroupParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const-string v7, "zubhiumOptionsGroup"

    invoke-virtual {v3, v7}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v3, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 153
    iget v7, p0, Lcom/zubhium/ZubhiumView;->left:I

    iget v8, p0, Lcom/zubhium/ZubhiumView;->right:I

    invoke-virtual {v4, v7, v9, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "Bug"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v7, "Feature"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v7, "Other"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->wrapContent()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 159
    .local v6, radioButtonLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 167
    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Landroid/widget/RadioGroup;->setId(I)V

    .line 168
    return-object v3

    .line 160
    :cond_0
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 161
    .local v5, radioButton:Landroid/widget/RadioButton;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    add-int/lit8 v7, v0, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setId(I)V

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "zubhium"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v3, v5, v0, v6}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSystemDetailView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 12
    .parameter "context"

    .prologue
    .line 185
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 187
    .local v2, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/zubhium/ZubhiumView;->left:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/zubhium/ZubhiumView;->right:I

    iget v11, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    const-string v8, "zubhiumSystemSettingHolder"

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 190
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 194
    .local v7, zubhiumSystemcheckbox:Landroid/widget/CheckBox;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentHeight()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 195
    .local v0, imageParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    iget v8, p0, Lcom/zubhium/ZubhiumView;->left:I

    iget v9, p0, Lcom/zubhium/ZubhiumView;->top:I

    iget v10, p0, Lcom/zubhium/ZubhiumView;->right:I

    iget v11, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    const-string v8, "zubhiumSystemcheckbox"

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setId(I)V

    .line 202
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v4, systemDetailsHeadline:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 204
    .local v5, systemDetailsHeadlineParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x0

    iget v9, p0, Lcom/zubhium/ZubhiumView;->top:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-virtual {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    const v8, 0x1030044

    invoke-virtual {v4, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 209
    const-string v8, "zubhiumSystemDetailsHeadline"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 210
    const-string v8, "Include System Details"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 212
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    .line 215
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 216
    .local v3, systemDetailsDesc:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    .line 217
    .local v6, systemDetailsParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    const/4 v8, 0x3

    const/16 v9, 0xa

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 219
    const/4 v8, 0x1

    const/16 v9, 0x9

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 220
    const v8, 0x1030046

    invoke-virtual {v3, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 221
    const-string v8, "zubhiumSystemDetailsDesc"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 222
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 224
    const-string v8, "Only for debugging."

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 226
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 227
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 230
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 231
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 232
    return-object v1
.end method

.method private getTitleView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 12
    .parameter "context"

    .prologue
    .line 84
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v6, layout:Landroid/widget/RelativeLayout;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v7

    .line 86
    .local v7, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/zubhium/ZubhiumView;->left:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/zubhium/ZubhiumView;->right:I

    iget v11, p0, Lcom/zubhium/ZubhiumView;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    const-string v8, "zubhiumTitleHolder"

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 88
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 90
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v2, appIcon:Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->wrapContent()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 92
    .local v5, imageParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const-string v8, "zubhiumIcon"

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 97
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, appHeadLine:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, appHeadLineParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    const/16 v8, 0xf

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const v8, 0x1030044

    invoke-virtual {v0, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 105
    const-string v8, "zubhiumHeadline"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 106
    const-string v8, "Feedback"

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setId(I)V

    .line 111
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v3, appSummary:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zubhium/ZubhiumView;->matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 114
    .local v4, appSummaryParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 116
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 117
    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    const v8, 0x1030046

    invoke-virtual {v3, p1, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 119
    const-string v8, "zubhiumDescription"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 120
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 126
    return-object v6
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getMainLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 39
    .local v2, mainLayout:Landroid/widget/RelativeLayout;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getTitleView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v6

    .line 40
    .local v6, titleLayout:Landroid/widget/RelativeLayout;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getEmailView(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v0

    .line 41
    .local v0, emailLayout:Landroid/widget/EditText;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getFeedbackView(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v1

    .line 42
    .local v1, feedbackText:Landroid/widget/EditText;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getRadioGroup(Landroid/content/Context;)Landroid/widget/RadioGroup;

    move-result-object v3

    .line 43
    .local v3, optionsGroup:Landroid/widget/RadioGroup;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getPrivacyBanner(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    .line 44
    .local v4, privacyBanner:Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/zubhium/ZubhiumView;->getSystemDetailView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v5

    .line 46
    .local v5, systemDetails:Landroid/widget/RelativeLayout;
    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 47
    const/4 v7, 0x1

    invoke-virtual {v2, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 48
    const/4 v7, 0x2

    invoke-virtual {v2, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 49
    const/4 v7, 0x3

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 50
    const/4 v7, 0x4

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 51
    const/4 v7, 0x5

    invoke-virtual {v2, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/zubhium/ZubhiumView;->addView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method private matchParentHeight()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private matchParentWidth()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private wrapContent()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 238
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
