.class public Lcom/magmamobile/mmusia/views/ItemView;
.super Landroid/widget/LinearLayout;
.source "ItemView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/ItemView;->setOrientation(I)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/views/ItemView;->buildView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/magmamobile/mmusia/views/ItemView;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, p1}, Lcom/magmamobile/mmusia/views/ItemView;->buildView(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public buildView(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 39
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .local v3, linearMain:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    const/16 v7, 0x30

    invoke-static {v7}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 44
    sget v7, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_LINEARITEM:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 46
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, img:Landroid/widget/ImageView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/16 v8, 0x30

    invoke-static {v8}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v8

    const/16 v9, 0x30

    invoke-static {v9}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    sget v7, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_IMG:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 50
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-static {v8}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v8

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v10}, Lcom/magmamobile/mmusia/MCommon;->dpi(I)I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 52
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v2, linear:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v6, textTitle:Landroid/widget/TextView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    sget v7, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_TITLE:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 59
    const v7, -0xffff80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 63
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v4, textDate:Landroid/widget/TextView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    sget v7, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DATE:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    .line 66
    const v7, -0x5f5f60

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 71
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v5, textDesc:Landroid/widget/TextView;
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    sget v7, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DESC:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    .line 74
    const v7, -0x3f3f40

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 79
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, divider:Landroid/view/View;
    const v7, -0x3f3f40

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/magmamobile/mmusia/views/ItemView;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/magmamobile/mmusia/views/ItemView;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method
