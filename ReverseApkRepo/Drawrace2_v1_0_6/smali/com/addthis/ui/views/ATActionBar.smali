.class public Lcom/addthis/ui/views/ATActionBar;
.super Landroid/widget/RelativeLayout;
.source "ATActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBar"


# instance fields
.field private leftSideLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/addthis/ui/views/ATActionBarListener;

.field private mParentContext:Landroid/content/Context;

.field private rightSideLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    .line 40
    iput-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mListener:Lcom/addthis/ui/views/ATActionBarListener;

    .line 46
    iput-object p1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    .line 50
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "atactionbar"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 51
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "color"

    const-string v3, "actionbar_background_color"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->setBackgroundResource(I)V

    .line 56
    return-void
.end method

.method private getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;
    .locals 2
    .parameter "ctx"
    .parameter "imageResource"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 151
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, btn1:Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 156
    invoke-virtual {v0, p3}, Landroid/widget/ImageButton;->setId(I)V

    .line 157
    return-object v0
.end method

.method private setFavoriteView()V
    .locals 5

    .prologue
    .line 99
    .line 100
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v1, "string"

    const-string v2, "fav_activity_title"

    invoke-static {v0, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/addthis/ui/views/ATActionBar;->setActionBarTitle(I)V

    .line 102
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 103
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addthis/core/Config;->getAddRemoveFavServices()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    .line 105
    iget-object v2, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "ateditbtnstate"

    invoke-static {v2, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 104
    invoke-direct {p0, v1, v2, v3}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    const-string v0, "ActionBar"

    const-string v1, "Clicked action button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->mListener:Lcom/addthis/ui/views/ATActionBarListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->mListener:Lcom/addthis/ui/views/ATActionBarListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/addthis/ui/views/ATActionBarListener;->actionItemClicked(Lcom/addthis/ui/views/ATActionBar;I)V

    .line 192
    :cond_0
    return-void
.end method

.method public setActionBarOnClickListener(Lcom/addthis/ui/views/ATActionBarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/addthis/ui/views/ATActionBar;->mListener:Lcom/addthis/ui/views/ATActionBarListener;

    .line 167
    return-void
.end method

.method public setActionBarTitle(I)V
    .locals 4
    .parameter "title"

    .prologue
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "textLabel"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, actionLabel:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "textLabel"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 174
    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, actionLabel:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public setLogoutBtn(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 131
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    .line 132
    const-string v1, "drawable"

    const-string v2, "atlogoutbtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 131
    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public setWebShareBtn(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    .line 124
    const-string v1, "drawable"

    const-string v2, "atbrowserbtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 123
    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public setupActionItems(I)V
    .locals 6
    .parameter "view"

    .prologue
    .line 69
    .line 70
    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "leftItem"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 69
    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    .line 72
    iget-object v3, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v4, "drawable"

    const-string v5, "atdismissbtnstate"

    invoke-static {v3, v4, v5}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, v2, v3, v4}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "rightItem"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 73
    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    .line 76
    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "textLabel"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 75
    invoke-virtual {p0, v1}, Lcom/addthis/ui/views/ATActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    .local v0, actionLabel:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/addthis/core/Config;->configObject()Lcom/addthis/core/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/addthis/core/Config;->getActionBarFont()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v3, "color"

    const-string v4, "actionbar_title_color"

    invoke-static {v2, v3, v4}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    .line 95
    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/addthis/ui/views/ATActionBar;->setFavoriteView()V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Lcom/addthis/ui/views/ATActionBar;->mParentContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "allservice_activity_title"

    invoke-static {v1, v2, v3}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showEditView(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    const-string v1, "drawable"

    const-string v2, "atmorebtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 117
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    const-string v1, "drawable"

    const-string v2, "atbackbtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public showShareView(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->rightSideLayout:Landroid/widget/LinearLayout;

    .line 142
    const-string v1, "drawable"

    const-string v2, "ateditbtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 141
    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    iget-object v0, p0, Lcom/addthis/ui/views/ATActionBar;->leftSideLayout:Landroid/widget/LinearLayout;

    .line 146
    const-string v1, "drawable"

    const-string v2, "atdismissbtnstate"

    invoke-static {p1, v1, v2}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, v1, v2}, Lcom/addthis/ui/views/ATActionBar;->getButton(Landroid/content/Context;II)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method
